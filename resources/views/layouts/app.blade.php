<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', 'ТОиР НЛПУМГ')</title>

    @if (request()->routeIs('showWork', 'showDrenage', 'showProtector', 'showAeroLine'))
        <link href="{{ asset('bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
        <script src="{{ asset('bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    @endif

    <link rel="stylesheet" href="{{ asset('/font-awesome/css/font-awesome.min.css') }}">
    {{-- <link rel="stylesheet" href="{{ asset('/fontawesome-free/css/fontawesome.min.css') }}"> --}}

    {{-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script> --}}

    {{-- <link rel="stylesheet" href="{{ asset('css/app.css') }}">  --}}
    {{-- <link href="https://alex18w.ru/work/css2/style.css" rel="stylesheet" type="text/css" id="theme-opt" /> --}}   
    <link href="../css2/style2.css" rel="stylesheet" type="text/css" id="theme-opt" />
    <link href="../css2/style4.css" rel="stylesheet" type="text/css" id="theme-opt" />
</head>

<body>

    <header style="margin-right: 30%">
        <h2 style="text-align: center; margin-bottom: 0px !important;">Техническое обслуживание и ремонт</h2>
        <h3 style="text-align: center; margin-top: 0px !important;">участок защиты от коррозии</h3>
    </header>

    <div class="content">

        <div class="content-main">
            <main>
                @yield('content')
            </main>
        </div>

        <div class="sidebar">
            <main>
                @yield('sidebar')
            </main>
        </div>
        {{-- <div class="sidebar_show">
            <main>
                @yield('sidebar_show')
            </main>
        </div> --}}
    </div>



    

    <footer>
        {{-- <p>© 2025 Все права защищены</p> --}}
    </footer>

</body>

</html>
