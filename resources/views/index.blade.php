@extends('layouts.app')

@section('content')
    <div class="container">
        <h2 style="text-align: center">Газопроводы Невьянское ЛПУМГ</h2>
        <div class="gazoprovod">
            <h3 align="center" class="gazoprovod__title">Название</h3>
            {{-- <h3 align="center">Протяженость</h3> --}}
        </div>
        <div>
            @foreach ($gazoprovods as $gazoprovod)
                <div class="gazoprovod">
                    <button class="gazoprovod__list" onclick="toggleUstanovki({{ $gazoprovod->id }})">🔽</button>
                    <h3 class="gazoprovod__name">{{ $gazoprovod->name }}</h3>
                    {{-- <h3 align="center" class="gazoprovod__km">{{ $gazoprovod->km }}</h3> --}}
                </div>

                <ul id="ustanovkas-{{ $gazoprovod->id }}" style="display: none;">
                    @foreach ($gazoprovod->ustanovkas as $ustanovka)
                        <a href="{{ route('showWork', $ustanovka->id) }}" class="btn btn-primary">
                            <h3>Установка катодной защиты {{ $ustanovka->name }}</h3>
                        </a>
                    @endforeach
                </ul>
            @endforeach
        </div>
    </div>
    <script>
        function toggleUstanovki(id) {
            let el = document.getElementById('ustanovkas-' + id);
            el.style.display = (el.style.display === 'none') ? 'block' : 'none';
        }
    </script>
@endsection

@section('sidebar')
    <h2 style="text-align: center">Запланированные работы</h2>

    {{-- <div>
            @foreach ($gazoprovods as $gazoprovod)
       
                <ul id="ustanovkas-{{ $gazoprovod->id }}">

                    <div class="container">
                        <h1>Список установок и даты проведенных работ</h1>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Название</th>
                                    <th>Даты проведенных работ</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($ustanovkas as $ustanovka)
                                    <tr>
                                        <td>{{ $ustanovka->id }}</td>
                                        <td>{{ $ustanovka->name }}</td>
                                        <td>
                                            @if ($ustanovka->work_date->isNotEmpty())
                                                <ul>
                                                    @foreach ($ustanovka->work_dates as $date)
                                                        <li>{{ \Carbon\Carbon::parse($date)->format('d.m.Y') }}</li>
                                                    @endforeach
                                                </ul>
                                            @else
                                                <span class="text-muted">Нет записей</span>
                                            @endif
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>               
                </ul>
            @endforeach
        </div> --}}

    {{-- <div class="container">
            <h1>Список установок и даты проведенных работ</h1>
            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Название</th>
                        <th>Даты проведенных работ</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($ustanovkas as $ustanovka)
                        <tr>
                            <td>{{ $ustanovka->id }}</td>
                            <td>{{ $ustanovka->name }}</td>
                            <td>
                                @if ($ustanovka->work_date->isNotEmpty())
                                    <ul>
                                        @foreach ($ustanovka->work_dates as $date)
                                            <li>{{ \Carbon\Carbon::parse($date)->format('d.m.Y') }}</li>
                                        @endforeach
                                    </ul>
                                @else
                                    <span class="text-muted">Нет записей</span>
                                @endif
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div> --}}

    <h3>Текущая неделя</h3>
    <div class="container">
        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Название</th>
                    <th>Даты проведенных работ</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($ustanovkas as $ustanovka)
                    <tr>
                        @if ($ustanovka->week_works->isNotEmpty())
                            {{ $ustanovka->name }}
                            <ul>
                                @foreach ($ustanovka->week_works as $work)
                                    <li>{{ \Carbon\Carbon::parse($work->work_date)->format('d.m.Y') }} -
                                        {{ $work->type_of_work }}</li>
                                    <p>Техника: {{ $work->auto }}</p>
                                @endforeach
                            </ul>


                            <td>{{ $ustanovka->id }}</td>
                            <td>{{ $ustanovka->name }}</td>
                            <td>
                                <ul>
                                    @foreach ($ustanovka->week_works as $work)
                                        <li>{{ \Carbon\Carbon::parse($work->work_date)->format('d.m.Y') }} -
                                            {{ $work->type_of_work }} Техника: {{ $work->auto }}</li>
                                        
                                    @endforeach
                                </ul>
                            @else
                                {{-- <span class="text-muted">Нет записей</span> --}}
                        @endif
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <h3>Текущий месяц</h3>
    <ul>
        <div class="container">
            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Название</th>
                        <th>Даты проведенных работ</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($ustanovkas as $ustanovka)
                        <tr>
                            @if ($ustanovka->month_works->isNotEmpty())
                                <td>{{ $ustanovka->id }}</td>
                                <td>{{ $ustanovka->name }}</td>
                                <td>
                                    <ul>
                                        @foreach ($ustanovka->month_works as $work)
                                            <li>{{ $work->work_date }} - {{ $work->type_of_work }}</li>
                                        @endforeach
                                    </ul>
                                @else
                                    {{-- <span class="text-muted">Нет записей</span> --}}
                            @endif
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </ul>
@endsection
