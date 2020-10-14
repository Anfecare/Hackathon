<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\clientes;
use App\Models\tipodocumentos;
use App\Models\generos;

class ClientesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $cliente = clientes::all();
        $td = tipodocumentos::all();
        $genero = generos::all();
        return json_encode(['clientes'=>$cliente, 'tipodocumento'=>$td, 'generos'=>$genero]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $cliente = clientes::create($request->all());
        return json_encode($cliente);
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
        $cliente = clientes::find($id);
        $cliente->id = $request->id;
        $cliente->tipodocumento = $request->tipodocumento;
        $cliente->nombre = $request->nombre;
        $cliente->apellido = $request->apellido;
        $cliente->telefono = $request->telefono;
        $cliente->direccion = $request->direccion;
        $cliente->genero = $request->genero;
        $genero->update();
        return json_encode($genero);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $cliente = clientes::find($id);
        $cliente->delete();
        return 'EXITO';
    }
}
