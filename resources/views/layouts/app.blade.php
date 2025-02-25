<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', 'Мой сайт')</title>
    <!-- <link rel="stylesheet" href="{{ asset('css/app.css') }}"> -->
    {{-- <link href="https://alex18w.ru/work/css2/style.css" rel="stylesheet" type="text/css" id="theme-opt" /> --}}
    <link href="https://alex18.ru/work/css2/style1.css" rel="stylesheet" type="text/css" id="theme-opt" />
    <link href="https://alex18.ru/work/css2/style2.css" rel="stylesheet" type="text/css" id="theme-opt" />
    {{-- <link href="../css2/style.css" rel="stylesheet" type="text/css" id="theme-opt" /> --}}
    {{-- <link href="../css2/style2.css" rel="stylesheet" type="text/css" id="theme-opt" /> --}}
</head>

<body>

    <header>
        <h1 style="text-align: center">Техническое обслуживание и ремонт</h1>
        <h2 style="text-align: center">участок защиты от коррозии</h2>
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
    </div>

    <footer>
        <p>© 2025 Все права защищены</p>
    </footer>

</body>

</html>
