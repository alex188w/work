@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>Работы по установкам</h1>

        @foreach ($ustanovkas as $ustanovka)
        

            <div class="card mb-4">
                <div class="card-header">
                    <h3>Установка: {{ $ustanovka->name }}</h3>
                </div>
                <div class="card-body">
                    {{-- Все запланированные работы --}}
                    <h4>Все запланированные работы</h4>
                    @if ($ustanovka->all_works->isNotEmpty())
                        <h3>Установка: {{ $ustanovka->name }}</h3>
                        <ul>
                            @foreach ($ustanovka->all_works as $work)
                                <li>{{ $work->work_date }} - {{ $work->work_description }}</li>
                            @endforeach
                        </ul>
                    @else
                        <p>Нет запланированных работ.</p>
                    @endif

                    {{-- Работы в текущем месяце --}}
                    <h4>Работы в текущем месяце</h4>
                    @if ($ustanovka->month_works->isNotEmpty())
                        <ul>
                            @foreach ($ustanovka->month_works as $work)
                                <li>{{ $work->work_date }} - {{ $work->work_description }}</li>
                            @endforeach
                        </ul>
                    @else
                        <p>В этом месяце работ нет.</p>
                    @endif

                    {{-- Работы на текущей неделе --}}
                    <h4>Работы на текущей неделе</h4>
                    @if ($ustanovka->week_works->isNotEmpty())
                        <ul>
                            @foreach ($ustanovka->week_works as $work)
                                <li>{{ $work->work_date }} - {{ $work->work_description }}</li>
                            @endforeach
                        </ul>
                    @else
                        <p>На этой неделе работ нет.</p>
                    @endif
                </div>
            </div>
        @endforeach
    </div>
@endsection
