<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class facturas extends Model
{
    use HasFactory;
    protected $table = 'facturas';
    protected $primarykey = 'id';
    protected $fillable = ['clientes_id', 'usuarios_id'];
}
