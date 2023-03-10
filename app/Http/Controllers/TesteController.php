<?php

namespace App\Http\Controllers;

use Illuminate\Http\JsonResponse;

class TesteController extends Controller
{
    public function teste(): JsonResponse
    {
        return response()->json([
            'message' => 'Teste funcionando!'
        ], 200);
    }
}
