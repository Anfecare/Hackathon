<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class entradas extends Model
{
    use HasFactory;
    protected $table = 'entradas';
    protected $primarykey = 'id';
}
