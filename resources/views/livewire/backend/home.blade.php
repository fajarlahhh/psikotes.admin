<div>
  <h4 class="mt-4">Dashboard</h4>
  <hr>
  <div class="row row-cols-1 row-cols-md-3 mt-4 text-center">
    <div class="col">
      <div class="card mb-4 rounded-3 shadow-sm">
        <div class="card-header py-3">
          <h4 class="my-0 fw-normal">Materi Satu</h4>
        </div>
        <div class="card-body">
          <div class="mb-3">
            <input type="number" step="1" @if ($bukaSatu) disabled @endif min="0"
              wire:model.defer="waktuSatu" class="form-control" id="floatingPassword" placeholder="Waktu (Detik)">
          </div>
          @if ($bukaSatu)
            <button type="button" class="w-100 btn btn-lg btn-outline-primary" wire:click="tutupSatu">Tutup</button>
          @else
            <button type="button" class="w-100 btn btn-lg btn-outline-primary" wire:click="bukaSatu">Buka</button>
          @endif
        </div>
      </div>
    </div>
    {{-- <div class="col">
      <div class="card mb-4 rounded-3 shadow-sm">
        <div class="card-header py-3">
          <h4 class="my-0 fw-normal">Materi Dua</h4>
        </div>
        <div class="card-body">
          <div class="mb-3">
            <input type="number" step="1" @if ($bukaDua) disabled @endif min="0"
              wire:model.defer="waktuDua" class="form-control" id="floatingPassword" placeholder="Waktu (Detik)">
          </div>
          @if ($bukaDua)
            <button type="button" class="w-100 btn btn-lg btn-outline-primary" wire:click="tutupDua">Tutup</button>
          @else
            <button type="button" class="w-100 btn btn-lg btn-outline-primary" wire:click="bukaDua">Buka</button>
          @endif
        </div>
      </div>
    </div>
    <div class="col">
      <div class="card mb-4 rounded-3 shadow-sm">
        <div class="card-header py-3">
          <h4 class="my-0 fw-normal">Materi Tiga</h4>
        </div>
        <div class="card-body">
          <div class="mb-3">
            <input type="number" step="1" @if ($bukaTiga) disabled @endif min="0"
              wire:model.defer="waktuTiga" class="form-control" id="floatingPassword" placeholder="Waktu (Detik)">
          </div>
          @if ($bukaTiga)
            <button type="button" class="w-100 btn btn-lg btn-outline-primary" wire:click="tutupTiga">Tutup</button>
          @else
            <button type="button" class="w-100 btn btn-lg btn-outline-primary" wire:click="bukaTiga">Buka</button>
          @endif
        </div>
      </div>
    </div> --}}
  </div>
</div>
