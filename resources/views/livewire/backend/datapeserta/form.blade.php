<div>
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">{{ $key ? 'Edit' : 'Tambah' }} Data Peserta</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Data Peserta</a></li>
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
                <div class="form-group">
                  <label for="nama">Nama</label>
                  <input type="text" class="form-control" id="nama" wire:model.defer="nama"
                    placeholder="Nama">
                </div>
                <div class="form-group">
                  <label for="noPeserta">No. Peserta</label>
                  <input type="text" class="form-control" id="noPeserta" wire:model.defer="noPeserta"
                    placeholder="No. Peserta">
                </div>
                @if (!$key)
                  <div class="form-group">
                    <label for="kataSandi">Kata Sandi</label>
                    <input type="text" class="form-control" id="kataSandi" readonly value="{{ $kataSandi }}">
                  </div>
                @else
                  <div class="form-group">
                    <label for="kataSandi">Kata Sandi</label>
                    <div class="input-group">
                      <input type="text" class="form-control" id="kataSandi" readonly value="{{ $kataSandi }}">
                      <span class="input-group-append">
                        <button type="button" wire:click="generateKataSandi" class="btn btn-info btn-flat">Ganti
                          Kata Sandi</button>
                      </span>
                    </div>
                  </div>
                @endif
              </div>
              <div class="card-footer">
                <input type="submit" value="Submit" class="btn btn-success">
                <a href="/admin/datapeserta" class="btn btn-danger">Batal</a>
              </div>
            </div>
          </form>
        </div>
      </div>
      <x-alert />
      <x-info />
    </div>
  </section>
</div>
