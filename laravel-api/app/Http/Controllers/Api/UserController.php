<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\User\StoreUserRequest;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index(Request $request)
    {
        return $request->user();
    }

    public function store(StoreUserRequest $request)
    {
        $user = User::create($request->validated());

        return response()->json([
            'user'    => $user,
            'message' => 'User created!',
        ], 201);
    }
}
