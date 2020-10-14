<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class sucursales extends Model
{
    use HasFactory;
    protected $table = 'sucursales';
    protected $primarykey = 'id';
    protected $fillable = ['id', 'nombre', 'telefono', 'direccion', 'Empresa' , 'ciudade'];
}
