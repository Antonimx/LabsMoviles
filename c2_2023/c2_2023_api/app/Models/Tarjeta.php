<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Tarjeta extends Model
{
    protected $table = 'tarjetas';
    public $timestamps = true;
    protected $fillable = ['propietario','marca','color', 'numero', 'valido_hasta', 'cupo', 'monto_utilizado'];
    protected $guarded = ['id','created_at','updated_at'];
}
