<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class tipodocumentos extends Model
{
    use HasFactory;
    protected $table = 'tipodocumentos';
    protected $primarykey = 'id';
    protected $fillable = ['nombre'];
}
