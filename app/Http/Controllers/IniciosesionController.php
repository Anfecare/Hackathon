<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\usuarios;
use Illuminate\validation\ValidationException;

class IniciosesionController extends Controller
{
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) 
    {

        

        $user = usuarios::where('email', $request->email)->first();

        if($user){
            if($user->password == $request->password){
                $respuesta = 'Credenciales Correctas';
                return json_encode($respuesta);
            }else{
                $respuesta = 'Credenciales Incorrectas';
                return json_encode($respuesta);
            }
            
        }
        else{
            $respuesta = 'Credenciales Incorrectas';
            return json_encode($respuesta);
        }
    }

}
