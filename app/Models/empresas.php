<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class empresas extends Model
{
    use HasFactory;
    protected $table = 'empresas';
    protected $primarykey = 'id';
    protected $fillable = ['id','nombre','telefono','direccion','ciudad'];
}
