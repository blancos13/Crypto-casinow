<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Slots;
use App\User;
use Auth;
use App\Payment;

class SlotsController extends Controller
{
    public function getGames(Request $request)
    {
        $show = $request->page * 30 - 30;

        $slots = Slots::orderBy('priority', 'desc')->where([
            [function ($query) use ($request) {
                if(($provider = $request->provider)) {
                    $query->where('provider', $provider)->get();
                }
                if(($search = $request->search)) {
                    $query->where('title', 'like', '%' .$search. '%')->get();
                }
            }]
        ])->where([['show', 1], ['is_live', 0]])->offset($show)->limit(30)->get();

        foreach($slots as $slot) {
            $slot->icon = '/img/slots/'. implode('', explode(' ', $slot->title)) . '.jpg';
        }

        return [
            'games' => $slots
        ];
    }

    public function getGameURI(Request $request)
    {
        $slot = Slots::where('game_id', $request->id)->first();
        $user = User::where('id', Auth::id())->first();

        if(!$slot) {
            return ['error' => 'Игра не найдена'];
        }

        if(!$user) {
            return ['error' => 'Авторизуйтесь'];
        }

        $user_deps = Payment::where('status', 1)->where('user_id', $user->id)->sum('sum');

        //if($user_deps < 100) return ['error' => 'Необходимо пополнить 100р'];

        if($user->api_token == null) {
            $user->api_token = bin2hex(random_bytes(20));
            $user->save();
        }

        $url = "".($user->admin == 3 ? '' : '')."&partner.session={$user->api_token}&game.provider={$slot->provider}&game.alias={$slot->alias}&lang=ru&lobby_url=https://exo.casino/slots&currency=RUB&mobile=false";

        return [
            'url' => $url,
            'image' => $slot->icon,
            'name' => $slot->title
        ];
    }

    public function callback($method, Request $r) {
        //return response(['error' => 'Произошла неизвестная ошибка. Обновите страницу']);

        switch($method) {
            case 'trx.cancel':
                return $this->trxCancel($r);
            break;

            case 'trx.complete':
                return $this->trxComplete($r);
            break;

            case 'check.session':
                return $this->checkSession($r);
            break;

            case 'check.balance':
                return $this->checkBalance($r);
            break;

            case 'withdraw.bet':
                return $this->userBet($r);
            break;

            case 'deposit.win':
                return $this->userWin($r);
            break;

            default:
                throw new \Exception("Unknown method");
        }
    }

    private function trxCancel($data) {
        return response()->json(['status' => 200]);
    }

    private function trxComplete($data) {
        return response()->json(['status' => 200]);
    }

    private function checkSession($data) {
        if(!$data->session) return response()->json(['status' => 404, 'method' => 'check.session', 'message' => 'Unknown session']);
        $user = User::where('api_token', $data->session)->first();
        if(!$user) return response()->json(['status' => 404, 'method' => 'check.session', 'message' => 'Unknown user']);

        return response()->json(['status' => 200, 'method' => 'check.session', 'response' => ['id_player' => $user->id, 'id_group' => 'default', 'balance' => round($user->type_balance == 0 ? $user->balance * 100 : $user->demo_balance * 100)]]);
    }

    private function checkBalance($data) {
        if(!$data->session) return response()->json(['status' => 404, 'method' => 'check.balance', 'message' => 'Unknown session']);
        $user = User::where('api_token', $data->session)->first();
        if(!$user) return response()->json(['status' => 404, 'method' => 'check.balance', 'message' => 'Unknown user']);

        return response()->json(['status' => 200, 'method' => 'check.balance', 'response' => ['currency' => 'RUB', 'balance' => round($user->type_balance == 0 ? $user->balance * 100 : $user->demo_balance * 100)]]);
    }

    public function userBet($data) {
        if(!$data->session) return response()->json(['status' => 404, 'method' => 'withdraw.bet', 'message' => 'Unknown session']);
        $user = User::where('api_token', $data->session)->first();
        if(!$user) return response()->json(['status' => 404, 'method' => 'withdraw.bet', 'message' => 'Unknown user']);

        if($user->type_balance == 0) {
            if($user->balance < ($data->amount / 100)) return response()->json(['status' => 404, 'method' => 'withdraw.bet', 'message' => 'Fail balance']);
        } else {
            if($user->demo_balance < ($data->amount / 100)) return response()->json(['status' => 404, 'method' => 'withdraw.bet', 'message' => 'Fail balance']);
        }

        $wager = ($user->sum_to_withdraw - $data->amount / 100) < 0 ? 0 : $user->sum_to_withdraw - $data->amount / 100;

        if($user->type_balance == 0) {
            $user->balance -= $data->amount / 100;
            $user->sum_to_withdraw = $wager;
        } else {
            $user->demo_balance -= $data->amount / 100;
        }
        $user->save();

        return response()->json(['status' => 200, 'method' => 'withdraw.bet', 'response' => ['currency' => 'RUB', 'balance' => round($user->type_balance == 0 ? $user->balance * 100 : $user->demo_balance * 100)]]);
    }

    public function userWin($data) {
        if(!$data->session) return response()->json(['status' => 404, 'method' => 'deposit.win', 'message' => 'Unknown session']);
        $user = User::where('api_token', $data->session)->first();
        if(!$user) return response()->json(['status' => 404, 'method' => 'deposit.win', 'message' => 'Unknown user']);

        if($user->type_balance == 0) {
            $user->balance += $data->amount / 100;
        } else {
            $user->demo_balance += $data->amount / 100;
        }
        $user->save();

        return response()->json(['status' => 200, 'method' => 'deposit.win', 'response' => ['currency' => 'RUB', 'balance' => round($user->type_balance == 0 ? $user->balance * 100  : $user->demo_balance * 100)]]);
    }
}
