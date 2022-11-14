<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UjianPengguna extends Model
{
  use HasFactory;
  protected $table = "ujian_pengguna";

  public function ujian()
  {
    return $this->belongsTo(Ujian::class);
  }
}
