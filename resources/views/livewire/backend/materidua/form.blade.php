<div>
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">{{ $key ? 'Edit' : 'Tambah' }} Materi Satu</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item">Materi</li>
            <li class="breadcrumb-item">Satu</li>
            <li class="breadcrumb-item active"><a href="#">{{ $key ? 'Edit' : 'Tambah' }}</a></li>
          </ol>
        </div>
      </div>
    </div>
  </div>
  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <form wire:submit.prevent="submit">
            <div class="card">
              <div class="card-header">
                Form
              </div>
              <div class="card-body">
                <div wire:ignore>
                  <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Soal</label>
                    <textarea id="editor" rows="10">{{ $data->soal }}</textarea>
                  </div>
                </div>

                <div class="alert alert-info text-dark">
                  Pilihan Jawaban :
                  <div wire:ignore>
                    <table>
                      <tr>
                        <th>a.</th>
                        <td>
                          <input type="number" class="form-control" wire:model.defer="a" placeholder="Nilai">
                        </td>
                      </tr>
                      <tr>
                        <th>b.</th>
                        <td>
                          <input type="number" class="form-control" wire:model.defer="b" placeholder="Nilai">
                        </td>
                      </tr>
                      <tr>
                        <th>c.</th>
                        <td>
                          <input type="number" class="form-control" wire:model.defer="c" placeholder="Nilai">
                        </td>
                      </tr>
                      <tr>
                        <th>d.</th>
                        <td>
                          <input type="number" class="form-control" wire:model.defer="d" placeholder="Nilai">
                        </td>
                      </tr>
                    </table>
                  </div>
                </div>
              </div>
              <div class="card-footer">
                <input type="submit" value="Submit" class="btn btn-success">
                <a href="/admin/materidua" class="btn btn-danger">Batal</a>
              </div>
            </div>
          </form>
        </div>
      </div>
      <x-alert />
      <x-info />
    </div>
  </section>
  @push('scripts')
    <script src="https://cdn.ckeditor.com/ckeditor5/35.1.0/classic/ckeditor.js"></script>
    <script src="https://ckeditor.com/apps/ckfinder/3.5.0/ckfinder.js"></script>

    <script>
      ClassicEditor
        .create(document.querySelector('#editor'), {
          ckfinder: {
            uploadUrl: '{{ route('file.upload') . '?_token=' . csrf_token() }}',
            options: {
              resourceType: 'Images'
            }
          }
        }).then(soal => {
          soal.ui.focusTracker.on('change:isFocused', (evt, name, isFocused) => {
            if (!isFocused) {
              window.livewire.emit('set:setsoal', soal.getData());
            }
          });
        })
        .catch(error => {
          console.error(error);
        });
    </script>
  @endpush
</div>
