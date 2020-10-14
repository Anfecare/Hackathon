<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\generos;

class GenerosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $genero = generos::all();
        return json_encode($genero);
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $genero = generos::create($request->all());
        return json_encode($genero);
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
        $genero = generos::find($id);
        $genero->id = $request->id;
        $genero->genero = $request->genero;
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
        $genero = generos::find($id);
        $genero->delete();
        return 'EXITO';
    }
}
