<div>
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Materi Satu</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item ">Dashboard</li>
            <li class="breadcrumb-item active"><a href="#">Materi Satu</a></li>
          </ol>
        </div>
      </div>
    </div>
  </div>
  <section class="content">
    <div class="container-fluid">
      <div class="row">
        @if ($waktu > 0)
          <div class="col-xl-3">
            <div class="alert alert-primary">
              <div class="row">
                @foreach ($dataJawabanMateriSatu as $index => $row)
                  <div class="col-3 mb-2 ">
                    <button wire:click="$set('soal',{{ $row->getKey() }})"
                      class="btn-xs btn @php if ($row->jawaban != null) {
                                                if ($soal == $row->getKey()){
                                                    echo 'btn-danger';
                                                } else { 
                                                    echo'btn-success';
                                                }
                                            } else {
                                                if ($soal == $row->getKey()){
                                                    echo 'btn-danger';
                                                } else { 
                                                    echo'btn-secondary';
                                                }
                                            } @endphp width-full"
                      style="width:100%">{{ ++$index }}</button>
                  </div>
                @endforeach
              </div>
            </div>
          </div>
          <div class="col-xl-9">
            <div class="card">
              <div class="card-header text-right" wire:ignore>
                Waktu Tersisa: <label id="countdown"></label>
              </div>
              <div class="card-body">
                <strong>Soal:</strong>
                @php
                  echo $tampil->soal;
                @endphp
                <br>
                <table>
                  <tr>
                    <th>
                      <div class="form-check">
                        <input class="form-check-input" type="radio" value="a" wire:model.defer="jawaban"
                          name="jawaban">
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
                        <input class="form-check-input" type="radio" value="b" wire:model.defer="jawaban"
                          name="jawaban">
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
                        <input class="form-check-input" type="radio" value="c" wire:model.defer="jawaban"
                          name="jawaban">
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
                        <input class="form-check-input" type="radio" value="d" wire:model.defer="jawaban"
                          name="jawaban">
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
                        <input class="form-check-input" type="radio" value="e" wire:model.defer="jawaban"
                          name="jawaban">
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
                <button class="btn btn-success" onclick="submit()">Submit</button>
                @error('jawaban')
                  <h6 class="text-danger" style="margin-top: 10px">Jawaban belum diisi</h6>
                @enderror
              </div>
            </div>
          </div>
        @else
          <div class="col-lg-12 text-center">
            <h5 class="text-danger">Waktu Anda Sudah Habis</h5><br>
            <a href="/ujian/materisatu?key={{ $key }}" class="btn btn-primary">Klik Hasil</a>
          </div>
        @endif
      </div>
    </div>
  </section>
  @push('scripts')
    @if ($waktu > 0)
      <script type="text/javascript"></script>
    @endif

    <script>
      var now = new Date('{{ $now }}');
      Livewire.on('reinit', () => {
        $('input[name="jawaban"]').attr('checked', false);
      });

      window.onbeforeunload = function(e) {
        window.livewire.emit('waktu');
        e = e || window.event;

        if (e) {
          e.returnValue = 'Sure?';
        }

        return 'Sure?';
      };

      function submit() {
        var jawaban = $('input[name="jawaban"]:checked').val();
        if (jawaban) {
          window.livewire.emit('submit', jawaban, now);
        }
        console.log();
      }

      CountDownTimer();

      function CountDownTimer() {
        var end = new Date('{{ $end }}');
        var now = new Date('{{ $now }}');

        var _second = 1000;
        var _minute = _second * 60;
        var _hour = _minute * 60;
        var _day = _hour * 24;
        var timer;

        function showRemaining() {
          now.setSeconds(now.getSeconds() + 1);
          var distance = end - now;
          if (distance < 0) {
            window.livewire.emit('waktu', true);
            clearInterval(timer);
            return;
          }

          var days = Math.floor(distance / _day);
          var hours = Math.floor((distance % _day) / _hour);
          var minutes = Math.floor((distance % _hour) / _minute);
          var seconds = Math.floor((distance % _minute) / _second);

          document.getElementById('countdown').innerHTML = hours + ' jam ';
          document.getElementById('countdown').innerHTML += minutes + ' menit ';
          document.getElementById('countdown').innerHTML += seconds + ' detik ';
        }
        timer = setInterval(showRemaining, 1000);
      }
    </script>
  @endpush
</div>
