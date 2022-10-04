<div>
  <div class="row">
    <div class="col-3">
      <div class="alert alert-info fade show" role="alert">
        Nama : {{ auth()->user()->nama }}<br>
        No. Peserta : {{ auth()->user()->no_peserta }}
      </div>
    </div>
    <div class="col">
      <h3>Hasil Materi Satu</h3>
      <hr>
    </div>
  </div>
  <div class="row">
    <div class="col-3">
      &nbsp;
    </div>
    <div class="col">
      <table class="table table-bordered">
        <tr>
          <th style="width: 200px">Benar</th>
          <th style="width: 10px">:</th>
          <td class="text-end">{{ number_format($benar) }}</td>
        </tr>
        <tr>
          <th style="width: 200px">Salah</th>
          <th style="width: 10px">:</th>
          <td class="text-end">{{ number_format($salah) }}</td>
        </tr>
        <tr>
          <th style="width: 200px">Tidak Terjawab</th>
          <th style="width: 10px">:</th>
          <td class="text-end">{{ number_format($belum) }}</td>
        </tr>
      </table>
      <a href="/" class="btn btn-primary">Home</a>
    </div>
  </div>
</div>
