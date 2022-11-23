<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RuangKerja extends Model
{
  use HasFactory;

  protected $table = "ruang_kerja";

  public function materiSatu()
  {
    return $this->hasMany(RuangKerjaMateriSatu::class);
  }

  public function materiDua()
  {
    return $this->hasMany(RuangKerjaMateriDua::class);
  }

  public function materiTiga()
  {
    return $this->hasMany(RuangKerjaMateriTiga::class);
  }

  public function peserta()
  {
    return $this->hasMany(RuangKerjaPeserta::class);
  }
}
