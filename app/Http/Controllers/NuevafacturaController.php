<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\clientes;
use App\Models\tipodocumentos;
use App\Models\generos;
use App\Models\productos;
use App\Models\facturas;
use App\Models\detalle_facturas;

class NuevafacturaController extends Controller
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
        $producto = productos::all();
        $factura = facturas::all();
        $detalle_factura = detalle_facturas::all();
        return json_encode(['clientes'=>$cliente, 'tipodocumento'=>$td, 'generos'=>$genero, 'productos'=>$producto, 'facturas'=>$factura, 'detalle_factura'=>$detalle_factura]);
    }

    /**  
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $cliente = new clientes;
        $cliente->id = $request->idcliente;
        $cliente->tipodocumento = $request->tipodocumento;
        $cliente->nombre = $request->nombre;
        $cliente->apellido = $request->apellido;
        $cliente->telefono = $request->telefono;
        $cliente->direccion = $request->direccion;
        $cliente->genero = $request->genero;
        $cliente->save();
        
        $factura = new facturas;
        $factura->clientes_id = $request->clientes_id;
        $factura->usuarios_id = $request->usuarios_id;
        $factura->save();

        $detalle = new detalle_facturas;
        while($request->array){
        $inser = $detalle::create($request->i->all());
        }
        

        return json_encode(['factura'=>$factura, 'detalles'=>$detalle, 'cliente'=>$cliente]);
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $factura = facturas::find($id);
        $factura->delete();
        return 'EXITO';
    }
}
