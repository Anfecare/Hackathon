<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class detalle_facturas extends Model
{
    use HasFactory;
    protected $table = 'detalle_facturas';
    protected $primarykey = 'id';
}
