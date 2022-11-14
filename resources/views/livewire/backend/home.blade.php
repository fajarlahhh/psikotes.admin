<div>
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Dashboard</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item active"><a href="#">Dashboard</a></li>
          </ol>
        </div>
      </div>
    </div>
  </div>
  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-4">
          <div class="card card-default">
            <div class="card-header">
              <h4 class="card-title">Materi Satu</h4>
            </div>
            <div class="card-body">
              <div class="mb-3">
                Jumlah Peserta : {{ \App\Models\Pengguna::where('level', 2)->count() }}<br>
                Jumlah Soal : {{ \App\Models\MateriSatu::count() }}<br>
                <input type="number" step="1" @if ($bukaSatu) disabled @endif min="0"
                  wire:model.defer="waktuSatu" class="form-control" id="floatingPassword" placeholder="Waktu (Detik)">
                @error('waktuSatu')
                  <small class="text-danger">Waktu harus ditentukan</small>
                @enderror
              </div>
              @if ($bukaSatu)
                <button type="button" class="w-100 btn btn-lg btn-outline-primary"
                  wire:click="tutupSatu">Tutup</button>
              @else
                <button type="button" class="w-100 btn btn-lg btn-outline-primary" wire:click="bukaSatu">Buka</button>
              @endif
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="card card-default">
            <div class="card-header">
              <h4 class="card-title">Materi Dua</h4>
            </div>
            <div class="card-body">
              <div class="mb-3">
                Jumlah Peserta : {{ \App\Models\Pengguna::where('level', 2)->count() }}<br>
                Jumlah Soal : {{ \App\Models\MateriDua::count() }}<br>
                <input type="number" step="1" @if ($bukaDua) disabled @endif min="0"
                  wire:model.defer="waktuDua" class="form-control" id="floatingPassword" placeholder="Waktu (Detik)">
                @error('waktuDua')
                  <small class="text-danger">Waktu harus ditentukan</small>
                @enderror
              </div>
              @if ($bukaDua)
                <button type="button" class="w-100 btn btn-lg btn-outline-primary" wire:click="tutupDua">Tutup</button>
              @else
                <button type="button" class="w-100 btn btn-lg btn-outline-primary" wire:click="bukaDua">Buka</button>
              @endif
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="card card-default">
            <div class="card-header">
              <h4 class="card-title">Materi Tiga</h4>
            </div>
            <div class="card-body">
              <div class="mb-3">
                <input type="number" step="1" @if ($bukaTiga) disabled @endif min="0"
                  wire:model.defer="waktuTiga" class="form-control" id="floatingPassword" placeholder="Waktu (Detik)">
                @error('waktuTiga')
                  <small class="text-danger">Waktu harus ditentukan</small>
                @enderror
              </div>
              @if ($bukaTiga)
                <button type="button" class="w-100 btn btn-lg btn-outline-primary"
                  wire:click="tutupTiga">Tutup</button>
              @else
                <button type="button" class="w-100 btn btn-lg btn-outline-primary" wire:click="bukaTiga">Buka</button>
              @endif
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>
