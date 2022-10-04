<div>
  @push('judul')
  @endpush
  <div class="row">
    <div class="col-3">
      <div class="alert alert-info fade show" role="alert">
        Nama : {{ auth()->user()->nama }}<br>
        No. Peserta : {{ auth()->user()->no_peserta }}
      </div>
    </div>
    <div class="col-9">
      <h3>Materi yang tersedia</h3>
      <hr>
      <div class="row">
        @foreach ($dataUjian as $row)
          @switch($row->materi)
            @case(1)
              <div class="col">
                <div class="card mb-4 rounded-3 shadow-sm">
                  <div class="card-header py-3">
                    <h4 class="my-0 fw-normal">Materi Satu</h4>
                  </div>
                  <div class="card-body">
                    Waktu : {{ \Carbon\CarbonInterval::seconds($row->waktu)->cascade()->forHumans() }}<br>
                    Jumlah Soal : {{ $row->ujianSoal->count() }}
                    @if (\App\Models\JawabanPengguna::where('pengguna_id', auth()->id())->where('ujian_id', $row->getKey())->where('waktu', 0)->count() == 0)
                      <a href="javascript:;" wire:click="buka({{ $row->getKey() }})" type="button"
                        class="w-100 btn btn-lg btn-outline-primary">Mulai</a>
                    @else
                      <a href="/ujian/materisatu?key={{ $row->getKey() }}" type="button"
                        class="w-100 btn btn-lg btn-outline-primary">Lihat Hasil</a>
                    @endif
                  </div>
                </div>
              </div>
            @break

            @case(2)
              <div class="col">
                <div class="card mb-4 rounded-3 shadow-sm">
                  <div class="card-header py-3">
                    <h4 class="my-0 fw-normal">Materi Dua</h4>
                  </div>
                  <div class="card-body">
                    <button type="button" class="w-100 btn btn-lg btn-outline-primary" wire:click="bukaDua">Buka</button>
                  </div>
                </div>
              </div>
            @break

            @case(3)
              <div class="col">
                <div class="card mb-4 rounded-3 shadow-sm">
                  <div class="card-header py-3">
                    <h4 class="my-0 fw-normal">Materi Tiga</h4>
                  </div>
                  <div class="card-body">
                    <button type="button" class="w-100 btn btn-lg btn-outline-primary" wire:click="bukaTiga">Buka</button>
                  </div>
                </div>
              </div>
            @break

            @default
          @endswitch
        @endforeach
      </div>
    </div>
  </div>
</div>
