<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RuangKerjaPeserta extends Model
{
  use HasFactory;
  protected $table = "ruang_kerja_peserta";
  protected $fillable = ['ruang_kerja_id', 'nomor', 'nama', 'kata_sandi', 'kata_sandi_show'];
}
