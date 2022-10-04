<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Ujian extends Model
{
  use HasFactory, SoftDeletes;

  protected $table = "ujian";

  public function ujianSoal()
  {
    return $this->hasMany(UjianSoal::class);
  }
}
