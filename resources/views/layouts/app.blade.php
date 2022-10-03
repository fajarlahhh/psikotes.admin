<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Hugo 0.101.0">
  <title>Signin Template · Bootstrap v5.2</title>

  <link rel="icon" href="{{ asset('/brand/bootstrap-logo.svg') }}" type="image/gif">
  <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/sign-in/">

  <link href="{{ asset('dist/css/bootstrap.min.css') }}" rel="stylesheet">

  @if (auth()->user()->can('isAdmin'))
    <link href="{{ asset('dist/css/dashboard.css') }}" rel="stylesheet">
  @endif
  <style>
    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
      -webkit-user-select: none;
      -moz-user-select: none;
      user-select: none;
    }

    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }

    .b-example-divider {
      height: 3rem;
      background-color: rgba(0, 0, 0, .1);
      border: solid rgba(0, 0, 0, .15);
      border-width: 1px 0;
      box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
    }

    .b-example-vr {
      flex-shrink: 0;
      width: 1.5rem;
      height: 100vh;
    }

    .bi {
      vertical-align: -.125em;
      fill: currentColor;
    }

    .nav-scroller {
      position: relative;
      z-index: 2;
      height: 2.75rem;
      overflow-y: hidden;
    }

    .nav-scroller .nav {
      display: flex;
      flex-wrap: nowrap;
      padding-bottom: 1rem;
      margin-top: -1px;
      overflow-x: auto;
      text-align: center;
      white-space: nowrap;
      -webkit-overflow-scrolling: touch;
    }
  </style>

  @livewireStyles
</head>

<body>
  @if (auth()->user()->can('isAdmin'))
    <header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
      <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-6" href="#">Hy, {{ auth()->user()->nama }}</a>
      <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse"
        data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="navbar-nav">
        <div class="nav-item text-nowrap">
          <a class="nav-link px-3" id="btn-logout" href="#">Sign out</a>
          <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
          </form>
        </div>
      </div>
    </header>
    @php
      $currentUrl = '/' . Request::path();
    @endphp
    <div class="container-fluid">
      <div class="row">
        <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
          <div class="position-sticky pt-3 sidebar-sticky">
            <ul class="nav flex-column">
              <li class="nav-item">
                <a class="nav-link @if (strpos($currentUrl, '/admin') === 0 && strlen($currentUrl) == strlen('/admin')) active @endif" aria-current="page" href="/admin">
                  <span data-feather="home" class="align-text-bottom"></span>
                  Dashboard
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link @if (strpos($currentUrl, '/admin/datapeserta') === 0 && strlen($currentUrl) == strlen('/admin/datapeserta')) active @endif" aria-current="page"
                  href="/admin/datapeserta">
                  <span data-feather="users" class="align-text-bottom"></span>
                  Data Peserta
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link @if (strpos($currentUrl, '/admin/gantikatasandi') === 0 && strlen($currentUrl) == strlen('/admin/gantikatasandi')) active @endif" aria-current="page"
                  href="/admin/gantikatasandi">
                  <span data-feather="key" class="align-text-bottom"></span>
                  Ganti Kata Sandi
                </a>
              </li>
            </ul>

            <h6
              class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted text-uppercase">
              <span>Soal</span>
            </h6>
            <ul class="nav flex-column mb-2">
              <li class="nav-item">
                <a class="nav-link @if (strpos($currentUrl, '/admin/materisatu') === 0 && strlen($currentUrl) == strlen('/admin/materisatu')) active @endif" href="/admin/materisatu">
                  <span data-feather="file-text" class="align-text-bottom"></span>
                  Materi 1
                </a>
              </li>
              <li class="nav-item" href="/admin/materidua">
                <a class="nav-link @if (strpos($currentUrl, '/admin/materidua') === 0 && strlen($currentUrl) == strlen('/admin/materidua')) active @endif" href="/admin/materidua">
                  <span data-feather="file-text" class="align-text-bottom"></span>
                  Materi 2
                </a>
              </li>
              <li class="nav-item" href="/admin/materitiga">
                <a class="nav-link @if (strpos($currentUrl, '/admin/materitiga') === 0 && strlen($currentUrl) == strlen('/admin/materitiga')) active @endif" href="/admin/materitiga">
                  <span data-feather="file-text" class="align-text-bottom"></span>
                  Materi 3
                </a>
              </li>
            </ul>
          </div>
        </nav>
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
          {{ $slot }}
        </main>
      </div>
    </div>
  @else
    <header class="site-header sticky-top py-1">
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">Hy, {{ auth()->user()->nama }}</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
            aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav me-auto mb-2 mb-md-0">
            </ul>
            <button class="btn btn-outline-success" id="btn-logout" type="button">Logout</button>
            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
            </form>
          </div>
        </div>
      </nav>
    </header>
    <main>
      {{ $slot }}
    </main>
  @endif
  @livewireScripts

  <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
    integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script>
  <script src="{{ asset('/dist/js/dashboard.js') }}"></script>
  <script src="{{ asset('/dist/js/bootstrap.bundle.min.js') }}"></script>
  <script src="{{ asset('/dist/js/jquery.min.js') }}"></script>
  <script>
    $("#btn-logout").on("click", function(e) {
      document.getElementById('logout-form').submit();
    });
  </script>
  @stack('scripts')
</body>

</html>
