<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MateriSatu extends Model
{
  use HasFactory;

  protected $table = "materi_satu";
  public $incrementing = false;

  public function detail()
  {
    return $this->hasMany(MateriSatuDetail::class);
  }
}
