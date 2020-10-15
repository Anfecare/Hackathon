<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\usuarios;
use App\Models\tipodocumentos;
use App\Models\roles;
use App\Models\generos;
use App\Models\ciudades;

class UsuariosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $usuario = usuarios::all();
        $rol = roles::all();
        $genero = generos::all();
        $ciudad = ciudades::all();
        return json_encode(['usuarios'=>$usuario, 'roles'=>$rol, 'generos'=>$genero, 'ciudades'=>$ciudad]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $usuario = usuarios::create($request->all());
        return json_encode($usuario);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $usuario = usuarios::find($id);
        $usuario->id = $request->id;
        $usuario->tipodocumento = $request->tipodocumento;
        $usuario->nombre = $request->nombre;
        $usuario->apellido = $request->apellido;
        $usuario->telefono = $request->telefono;
        $usuario->direccion = $request->direccion;
        $usuario->rol = $request->rol;
        $usuario->genero = $request->genero;
        $usuario->ciudad = $request->ciudad;
        $usuario->email = $request->email;
        $usuario->password = $request->password;
        $usuario->update();
        return json_encode($usuario);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $usuario = usuarios::find($id);
        $usuario->delete();
        return 'EXITO';
    }
}
