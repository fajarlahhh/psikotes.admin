<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class MateriTiga extends Model
{
  use HasFactory, SoftDeletes;
  protected $table = "materi_tiga";

  public function detail()
  {
    return $this->hasMany(MateriTigaDetail::class);
  }
}
