<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" href="css/base.css">
</head>

<body>

@if (Route::has('login'))
    <div class="hidden fixed top-0 right-0 px-6 py-4 sm:block">
        @auth
            <a href="{{ url('dashboard') }}" class="text-sm text-gray-700 underline">Home</a>
        @else
            <a href="{{ url('login') }}" class="text-sm text-gray-700 underline">Login</a>

            @if (Route::has('register'))
                <a href="{{ route('register') }}" class="ml-4 text-sm text-gray-700 underline">Register</a>
            @endif
        @endauth
    </div>
@endif


    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="{{ route('home') }}">Appname</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">DIET & NUTRITION </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">FITNESS </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">NEWS</a>
                    </li>
                </ul>
                <section class="navbar-text lang-section">
                    <h6>
                        <a href="{{ url('locale/en') }}" class="{{App::isLocale('en') ? 'active' : ''}}">En</a>
                        |
                        <a href="{{ url('locale/es') }}" class="{{App::isLocale('es') ? 'active' : ''}}">Es</a>
                    </h6>
                </section>
            </div>
        </div>
    </nav>
  </div>
</nav>
    <div class="d-flex bg-light" id="usrLevels">
        <div>
            <p>Basic</p>
        </div>
        <div class="selected">
            <p>Intermediate</p>
        </div>
        <div>
            <p>Advanced</p>
        </div>
    </div>

    @yield('content')

    <footer class="bg-dark text-white text-center p-2">
        <h1 class="mt-1">Appname</h1>
        <div class="mt-3 footer-links d-flex flex-column flex-md-row">
            <a>Privacy</a>
            <a>Terms of Service</a>
            <a>Ad Choices</a>
            <a>Web Accessibility</a>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous">
    </script>
</body>

</html>