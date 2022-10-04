<div>
  <div class="row">
    <div class="col-3">
      <div class="alert alert-info fade show" role="alert">
        Nama : {{ auth()->user()->nama }}<br>
        No. Peserta : {{ auth()->user()->no_peserta }}
      </div>
    </div>
    <div class="col">
      <div class="row">
        <div class="col-4">
          <h3>Materi Satu</h3>
        </div>
        <div class="col pt-2 text-end">
          <div wire:poll.1000ms="decrementWaktu">
            Waktu Tersisa:
            {{ $waktu > 0? \Carbon\CarbonInterval::seconds($waktu)->cascade()->forHumans(): '0 second' }}
          </div>
        </div>
      </div>
      <hr>
    </div>
  </div>
  @if ($waktu > 0)
    <div class="row">
      <div class="col">
        <div class="alert alert-primary">
          <div class="row">
            @foreach ($dataJawabanPengguna as $index => $row)
              <div class="col-4 mb-2 ">
                <button wire:click="$set('soal',{{ $row->getKey() }})"
                  class="btn-xs btn @if ($row->jawaban != null) @if ($soal == $row->id)
                      btn-danger
                  @else btn-success @endif
@else
btn-secondary @endif width-full"
                  style="width:100%">{{ ++$index }}</button>
              </div>
            @endforeach
          </div>
        </div>
      </div>
      <div class="col-9">
        @php
          echo $tampil->soal;
        @endphp
        <br>
        <table>
          <tr>
            <th>
              <div class="form-check">
                <input class="form-check-input" type="radio" wire:model="jawaban" value="a" id="pilihan">
                <label class="form-check-label" for="flexRadioDefault1">
                  <p>a. &nbsp;</p>
                </label>
              </div>
            </th>
            <td>@php
              echo $tampil->a;
            @endphp</td>
          </tr>
          <tr>
            <th>
              <div class="form-check">
                <input class="form-check-input" type="radio" wire:model="jawaban" value="b" id="pilihan">
                <label class="form-check-label" for="flexRadioDefault1">
                  <p>b. &nbsp;</p>
                </label>
              </div>
            </th>
            <td>@php
              echo $tampil->b;
            @endphp</td>
          </tr>
          <tr>
            <th>
              <div class="form-check">
                <input class="form-check-input" type="radio" wire:model="jawaban" value="c" id="pilihan">
                <label class="form-check-label" for="flexRadioDefault1">
                  <p>c. &nbsp;</p>
                </label>
              </div>
            </th>
            <td>@php
              echo $tampil->c;
            @endphp</td>
          </tr>
          <tr>
            <th>
              <div class="form-check">
                <input class="form-check-input" type="radio" wire:model="jawaban" value="d" id="pilihan">
                <label class="form-check-label" for="flexRadioDefault1">
                  <p>d. &nbsp;</p>
                </label>
              </div>
            </th>
            <td>@php
              echo $tampil->d;
            @endphp</td>
          </tr>
          <tr>
            <th>
              <div class="form-check">
                <input class="form-check-input" type="radio" wire:model="jawaban" value="e" id="pilihan">
                <label class="form-check-label" for="flexRadioDefault1">
                  <p>e. &nbsp;</p>
                </label>
              </div>
            </th>
            <td>@php
              echo $tampil->e;
            @endphp</td>
          </tr>
        </table>
        <button class="btn btn-success" wire:click="submit">Submit</button>
        @error('jawaban')
          <h6 class="text-danger" style="margin-top: 10px">Jawaban belum diisi</h6>
        @enderror
      </div>
    </div>
  @else
    <div class="row">
      <div class="col-3">
        &nbsp;
      </div>
      <div class="col text-center">
        <h5 class="text-danger">Waktu Anda Sudah Habis</h5><br>
        <a href="/ujian/materisatu?key={{ $key }}" class="btn btn-primary">Klik Hasil</a>
      </div>
    </div>
  @endif
  @push('scripts')
    @if ($waktu > 0)
      <script type="text/javascript">
        // window.onbeforeunload = function() {
        //   return "Dude, are you sure you want to leave? Think of the kittens!";
        // }
      </script>
    @endif
  @endpush
</div>
