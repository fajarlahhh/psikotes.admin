<div>
  <div class="card">
    <div class="card-header form-inline">
      Jenis :&nbsp;
      <select wire:model="jenis" class="form-control">
        @for ($i = 1; $i < 21; $i++)
          <option value="{{ $i }}">{{ $i }}</option>
        @endfor
      </select>
    </div>
    <div class="card-body table-responsive">
      <form wire:submit.prevent="submit">
        <table class="table table-bordered">
          <tr>
            <th>No.</th>
            <th>Soal</th>
            <th>Aspek</th>
            <th>Kunci</th>
            <th class="width-100"></th>
          </tr>
          @foreach ($data as $no => $row)
            <tr>
              <td>{{ $no + 1 }}</td>
              <td>{!! $row->soal !!}</td>
              <td>{{ $row->aspek }}</td>
              <td>{{ $row->kunci }}</td>
              <td>
                @if ($key == $row->getKey())
                  <a href="javascript:;" class="btn btn-danger" wire:click="hapus">Ya</a>
                  <a href="javascript:;" class="btn btn-secondary" wire:click="setKey">Batal</a>
                @else
                  <a href="javascript:;" class="btn btn-danger" wire:click="setKey({{ $row->getKey() }})"
                    class="btn btn-danger">Hapus</a>
                @endif
              </td>
            </tr>
          @endforeach
          <tr>
            <td colspan="5" class="text-dark" style="background: antiquewhite">
              <h4>Data Baru</h4>
              <hr>
              <div class="form-group" wire:ignore>
                <label>Soal</label>
                <textarea id="soal" class="form-control text-dark"></textarea>
              </div>
              <div class="form-group">
                <label>Kunci</label>
                <select wire:model.defer="kunci" class="form-control">
                  <option value="">-- Pilih Kunci Jawaban</option>
                  <option value="A">A</option>
                  <option value="B">B</option>
                  <option value="C">C</option>
                  <option value="D">D</option>
                  <option value="E">E</option>
                </select>
              </div>
              <div class="form-group">
                <label>Aspek</label>
                <input type="text" class="form-control" wire:model.defer="aspek">
              </div>
              <input type="submit" value="Submit" class="btn btn-success">
              <br>
              <x-alert />
              <x-info />
            </td>
          </tr>
        </table>
      </form>
    </div>
  </div>
  @push('scripts')
    <script src="https://cdn.ckeditor.com/ckeditor5/35.1.0/classic/ckeditor.js"></script>
    <script src="https://ckeditor.com/apps/ckfinder/3.5.0/ckfinder.js"></script>
    <script>
      ClassicEditor
        .create(document.querySelector('#soal'), {
          ckfinder: {
            uploadUrl: '{{ route('file.upload') . '?_token=' . csrf_token() }}',
            options: {
              resourceType: 'Images'
            }
          }
        }).then(soal => {
          soal.ui.focusTracker.on('change:isFocused', (evt, name, isFocused) => {
            if (!isFocused) {
              window.livewire.emit('setsoal', soal.getData());
            }
          });
        })
        .catch(error => {
          console.error(error);
        });

      Livewire.on('reinitialize', id => {
        ClassicEditor
          .create(document.querySelector('#soal'), {
            ckfinder: {
              uploadUrl: '{{ route('file.upload') . '?_token=' . csrf_token() }}',
              options: {
                resourceType: 'Images'
              }
            }
          }).then(soal => {
            soal.ui.focusTracker.on('change:isFocused', (evt, name, isFocused) => {
              if (!isFocused) {
                window.livewire.emit('setsoal', soal.getData());
              }
            });
          })
          .catch(error => {
            console.error(error);
          });
      });
    </script>
  @endpush
</div>
