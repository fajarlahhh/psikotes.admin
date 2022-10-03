<div>
  <form wire:submit.prevent="submit">
    <img class="mb-4" src="{{ asset('/brand/bootstrap-logo.svg') }}" alt="" width="72" height="57">
    <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

    <div class="form-floating">
      <input type="text" wire:model.defer="noPeserta" class="form-control" id="floatingInput"
        placeholder="No. Peserta">
      <label for="floatingInput">No. Peserta</label>
    </div>
    <div class="form-floating">
      <input type="password" wire:model.defer="kataSandi" class="form-control" id="floatingPassword"
        placeholder="Kata Sandi">
      <label for="floatingPassword">Kata Sandi</label>
    </div>

    <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me"> Remember me
      </label>
    </div>
    <input type="submit" class="w-100 btn btn-lg btn-primary" value="Sign in">
    <br>
    <br>
    <x-alert />
    <x-info />
  </form>
</div>
