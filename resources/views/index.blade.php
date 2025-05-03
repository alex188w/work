@extends('layouts.app')

@section('content')
    <div style="margin-top: 30px;" class="name-ustanovka">
        <button class="gazoprovod__list" onclick="toggleUstanovka()"></button>
        {{-- <h2 style="padding-left: 10px" class="gazoprovod__name"><strong>Установки катодной защиты</strong></h2> --}}
        <h2 style="padding-left: 10px" class="gazoprovod__name">Установки катодной защиты</h2>
    </div>


    <div id="gazoprovods" style="display: none; padding-left: 30px">
        @foreach ($gazoprovods as $gazoprovod)
            <div class="gazoprovod">
                <button class="gazoprovod__list" onclick="toggleUstanovkas({{ $gazoprovod->id }})"></button>
                <h3 style="padding-left: 10px" class="gazoprovod__name">{{ $gazoprovod->name }}</h3>
                {{-- <h3 align="center" class="gazoprovod__km">{{ $gazoprovod->km }}</h3> --}}
            </div>

            <ul id="ustanovkas-{{ $gazoprovod->id }}" style="display: none; padding-left: 125px">
                @foreach ($gazoprovod->ustanovkas as $ustanovka)
                    <a href="{{ route('showWork', $ustanovka->id) }}" class="btn btn-primary">
                        <h3>Установка катодной защиты {{ $ustanovka->name }}</h3>
                    </a>
                @endforeach
            </ul>
        @endforeach
    </div>

    <div class="name-ustanovka">
        <button class="gazoprovod__list" onclick="toggleDrenage()"></button>
        <h2 style="padding-left: 10px" class="gazoprovod__name">Установки дренажной защиты</h2>
    </div>

    <div id="drenages" style="display: none; padding-left: 30px">
        @foreach ($gazoprovods as $gazoprovod)
            @if ($gazoprovod->drenages->isNotEmpty())
                <div class="gazoprovod">
                    <button class="gazoprovod__list" onclick="toggleDrenages({{ $gazoprovod->id }})"></button>
                    <h3 style="padding-left: 10px" class="gazoprovod__name">{{ $gazoprovod->name }}</h3>
                </div>

                <ul id="drenages-{{ $gazoprovod->id }}" style="display: none; padding-left: 125px">
                    @foreach ($gazoprovod->drenages as $drenage)
                        <a href="{{ route('showDrenage', $drenage->id) }}" class="btn btn-primary">
                            <h3>Установка дренажной защиты {{ $drenage->name }}</h3>
                        </a>
                    @endforeach
                </ul>
            @endif
        @endforeach
    </div>

    <div class="name-ustanovka">
        <button class="gazoprovod__list" onclick="toggleProtector()"></button>
        <h2 style="padding-left: 10px" class="gazoprovod__name">Установки протекторной защиты</h2>
    </div>

    <div id="protectors" style="display: none; padding-left: 30px">
        @foreach ($gazoprovods as $gazoprovod)
            @if ($gazoprovod->protectors->isNotEmpty())
                <div class="gazoprovod">
                    <button class="gazoprovod__list" onclick="toggleProtectors({{ $gazoprovod->id }})"></button>
                    <h3 style="padding-left: 10px" class="gazoprovod__name">{{ $gazoprovod->name }}</h3>
                </div>

                <ul id="protectors-{{ $gazoprovod->id }}" style="display: none; padding-left: 125px">
                    @foreach ($gazoprovod->protectors as $protector)
                        <a href="{{ route('showProtector', $protector->id) }}" class="btn btn-primary">
                            <h3>Установка протекторной защиты {{ $protector->name }}</h3>
                        </a>
                    @endforeach
                </ul>
            @endif
        @endforeach
    </div>

    <div class="name-ustanovka">
        <button class="gazoprovod__list" onclick="toggleAeroLine()"></button>
        <h2 style="padding-left: 10px" class="gazoprovod__name">Воздушные линии электропередачи</h2>
    </div>

    <div id="aeroLines" style="display: none; padding-left: 30px">
        @foreach ($gazoprovods as $gazoprovod)
            @if ($gazoprovod->aeroLines->isNotEmpty())
                {{-- <div class="gazoprovod">
                    <button class="gazoprovod__list" onclick="toggleAeroLines({{ $gazoprovod->id }})"></button>
                    <h3 style="padding-left: 10px" class="gazoprovod__name">{{ $gazoprovod->name }}</h3>
                </div> --}}

                <ul id="aeroLines-{{ $gazoprovod->id }}" style="padding-left: 125px">
                    @foreach ($gazoprovod->aeroLines as $aeroLine)
                        <a href="{{ route('showAeroLine', $aeroLine->id) }}" class="btn btn-primary">
                            <h3>{{ $aeroLine->name }}</h3>
                        </a>
                    @endforeach
                </ul>
            @endif
        @endforeach
    </div>

    {{-- <div class="name-ustanovka">
        <button class="gazoprovod__list" onclick="toggleDrenage()"></button>        
        <h2 style="padding-left: 10px" class="gazoprovod__name">Вставки электроизолирующие</h2>
    </div> --}}
@endsection

@section('sidebar')
    <h2 style="text-align: center; margin-bottom: 0px;">Запланированные работы</h2>
    <div class="works">
        <div class="works_not_completed">
            <h3><strong>Невыполненные</strong></h3>
            @if (collect($ustanovkas)->pluck('past_works')->flatten()->isNotEmpty())
                <div style="margin-bottom: 35px" class="container">
                    <div class="week">
                        @foreach ($ustanovkas as $ustanovka)
                            @if (isset($ustanovka->past_works) && $ustanovka->past_works->isNotEmpty())
                                <p class="unperformed name">
                                    {{ $ustanovka->name }}
                                </p>
                                @foreach ($ustanovka->past_works as $work)
                                    <a class="link"
                                        href="{{ route('edit', ['ustanovka_id' => $work->ustanovka_id, 'work_id' => $work->id]) }}">
                                        <li class="unperformed">
                                            {{ \Carbon\Carbon::parse($work->work_date)->format('d.m.Y') }} -
                                            {{ $work->type_of_work }} Техника: {{ $work->auto }}
                                        </li>
                                    </a>
                                @endforeach
                            @endif
                        @endforeach
                    </div>
                </div>
            @endif
        </div>
        <div class="works_not_completed">
            @if (collect($drenages)->pluck('past_works')->flatten()->isNotEmpty())
                <div style="margin-bottom: 35px" class="container">
                    <div class="week">
                        @foreach ($drenages as $drenage)
                            @if (isset($drenage->past_works) && $drenage->past_works->isNotEmpty())
                                <p class="unperformed name">
                                    {{ $drenage->name }}
                                </p>
                                @foreach ($drenage->past_works as $work)
                                    <a class="link"
                                        href="{{ route('editDrenage', ['drenage_id' => $work->drenage_id, 'work_id' => $work->id]) }}">
                                        <li class="unperformed">
                                            {{ \Carbon\Carbon::parse($work->work_date)->format('d.m.Y') }} -
                                            {{ $work->type_of_work }} Техника: {{ $work->auto }}
                                        </li>
                                    </a>
                                @endforeach
                            @endif
                        @endforeach
                    </div>
                </div>
            @endif
        </div>
        <div class="works_not_completed">
            @if (collect($protectors)->pluck('past_works')->flatten()->isNotEmpty())
                <div style="margin-bottom: 35px" class="container">
                    <div class="week">
                        @foreach ($protectors as $protector)
                            @if (isset($protector->past_works) && $protector->past_works->isNotEmpty())
                                <p class="unperformed name">
                                    {{ $protector->name }}
                                </p>
                                @foreach ($protector->past_works as $work)
                                    <a class="link"
                                        href="{{ route('editProtector', ['protector_id' => $work->protector_id, 'work_id' => $work->id]) }}">
                                        <li class="unperformed">
                                            {{ \Carbon\Carbon::parse($work->work_date)->format('d.m.Y') }} -
                                            {{ $work->type_of_work }} Техника: {{ $work->auto }}
                                        </li>
                                    </a>
                                @endforeach
                            @endif
                        @endforeach
                    </div>
                </div>
            @endif
        </div>
        <div class="works_not_completed">
            @if (collect($aeroLines)->pluck('past_works')->flatten()->isNotEmpty())
                <div style="margin-bottom: 35px" class="container">
                    <div class="week">
                        @foreach ($aeroLines as $aeroLine)
                            @if (isset($aeroLine->past_works) && $aeroLine->past_works->isNotEmpty())
                                <p class="unperformed name">
                                    {{ $aeroLine->name }}
                                </p>
                                @foreach ($aeroLine->past_works as $work)
                                    <a class="link"
                                        href="{{ route('editAeroLine', ['aeroLine_id' => $work->aeroLine_id, 'work_id' => $work->id]) }}">
                                        <li class="unperformed">
                                            {{ \Carbon\Carbon::parse($work->work_date)->format('d.m.Y') }} -
                                            {{ $work->type_of_work }} Техника: {{ $work->auto }}
                                        </li>
                                    </a>
                                @endforeach
                            @endif
                        @endforeach
                    </div>
                </div>
            @endif
        </div>

        <div class="work_Week">
            <div class="name-ustanovka" style="padding-left: 0px;">
                <button class="gazoprovod__list" onclick="toggleWeek()"></button>
                <h3 style="margin: 0; padding-left: 10px;"><strong>Текущая неделя</strong></h3>
            </div>

            <div id="container-week" style="display: none; margin-bottom: 35px;" class="container-week">
                @foreach ($ustanovkas as $ustanovka)
                    @php
                        $weekWorks = $ustanovka->week_works->filter(fn($work) => $work->is_done == 0);
                    @endphp
                    {{-- <h3>Установка: {{ $ustanovka->name }}</h3>
                <p>Работы на этой неделе: {{ $ustanovka->week_works->count() }}</p> --}}
                    @if ($weekWorks->isNotEmpty())
                        <p style="margin-bottom: 0px; margin-top: 20px; text-align: start;">
                            <strong>{{ $ustanovka->name }}</strong>
                        </p>
                        @foreach ($weekWorks as $work)
                            <a class="link"
                                href="{{ route('edit', ['ustanovka_id' => $work->ustanovka_id, 'work_id' => $work->id]) }}">
                                <li>{{ \Carbon\Carbon::parse($work->work_date)->format('d.m.Y') }} -
                                    {{ $work->type_of_work }} Техника: {{ $work->auto }}</li>
                            </a>
                        @endforeach
                    @endif
                @endforeach

                @foreach ($drenages as $drenage)
                    @php
                        $weekWorks = $drenage->week_works->filter(fn($work) => $work->is_done == 0);
                    @endphp
                    {{-- <h3>Дренаж: {{ $drenage->name }}</h3>
                    <p>Работы на этой неделе: {{ $drenage->week_works->count() }}</p> --}}
                    @if ($weekWorks->isNotEmpty())
                        <p style="margin-bottom: 0px; margin-top: 20px; text-align: start;">
                            <strong>{{ $drenage->name }}</strong>
                        </p>
                        @foreach ($weekWorks as $work)
                            <a class="link"
                                href="{{ route('editDrenage', ['drenage_id' => $work->drenage_id, 'work_id' => $work->id]) }}">
                                <li>{{ \Carbon\Carbon::parse($work->work_date)->format('d.m.Y') }} -
                                    {{ $work->type_of_work }} Техника: {{ $work->auto }}</li>
                            </a>
                        @endforeach
                    @endif
                @endforeach

                @foreach ($protectors as $protector)
                    @php
                        $weekWorks = $protector->week_works->filter(fn($work) => $work->is_done == 0);
                    @endphp
                    {{-- <h3>Протектор: {{ $protector->name }}</h3>
                    <p>Работы на этой неделе: {{ $protector->week_works->count() }}</p> --}}
                    @if ($weekWorks->isNotEmpty())
                        <p style="margin-bottom: 0px; margin-top: 20px; text-align: start;">
                            <strong>{{ $protector->name }}</strong>
                        </p>
                        @foreach ($weekWorks as $work)
                            <a class="link"
                                href="{{ route('editProtector', ['protector_id' => $work->protector_id, 'work_id' => $work->id]) }}">
                                <li>{{ \Carbon\Carbon::parse($work->work_date)->format('d.m.Y') }} -
                                    {{ $work->type_of_work }} Техника: {{ $work->auto }}</li>
                            </a>
                        @endforeach
                    @endif
                @endforeach

                @foreach ($aeroLines as $aeroLine)
                    @php
                        $weekWorks = $aeroLine->week_works->filter(fn($work) => $work->is_done == 0);
                    @endphp
                    {{-- <h3>Аэролиния: {{ $aeroLine->name }}</h3>
                    <p>Работы на этой неделе: {{ $aeroLine->week_works->count() }}</p> --}}
                    @if ($weekWorks->isNotEmpty())
                        <p style="margin-bottom: 0px; margin-top: 20px; text-align: start;">
                            <strong>{{ $aeroLine->name }}</strong>
                        </p>
                        @foreach ($weekWorks as $work)
                            <a class="link"
                                href="{{ route('editAeroLine', ['aeroLine_id' => $work->aeroLine_id, 'work_id' => $work->id]) }}">
                                <li>{{ \Carbon\Carbon::parse($work->work_date)->format('d.m.Y') }} -
                                    {{ $work->type_of_work }} Техника: {{ $work->auto }}</li>
                            </a>
                        @endforeach
                    @endif
                @endforeach

            </div>
        </div>

        <div class="work_month">
            <div class="name-ustanovka" style="padding-left: 0px; margin-top: 30px;">
                <button class="gazoprovod__list" onclick="toggleMonth()"></button>
                <h3 style="padding-left: 10px;"><strong>Текущий месяц</strong></h3>
            </div>

            <div id="container-month" style="display: none; margin-bottom: 35px;" class="month">
                <div class="work_month_ustanovkas">
                    @if (collect($ustanovkas)->pluck('all_works')->flatten()->isNotEmpty())
                        <h3 style="padding-left: 10px;"><strong>Установки катодной защиты</strong></h3>
                        @foreach ($ustanovkas as $ustanovka)
                            @if ($ustanovka->month_works->isNotEmpty())
                                <p style="margin-bottom: 0px; margin-top: 20px; text-align: start;">
                                    <strong>{{ $ustanovka->name }}</strong>
                                </p>
                                @foreach ($ustanovka->month_works as $work)
                                    <a class="link"
                                        href="{{ route('edit', ['ustanovka_id' => $work->ustanovka_id, 'work_id' => $work->id]) }}">
                                        <li>
                                            {{ $work->type_of_work }} Техника: {{ $work->auto }}</li>
                                    </a>
                                @endforeach
                            @endif
                        @endforeach
                    @endif
                </div>
                <div class="work_month_ustanovkas">
                    @if (collect($drenages)->pluck('all_works')->flatten()->isNotEmpty())
                        <h3 style="padding-left: 10px;"><strong>Установки дренажной защиты</strong></h3>
                        @foreach ($drenages as $drenage)
                            @if ($drenage->month_works->isNotEmpty())
                                <p style="margin-bottom: 0px; margin-top: 20px; text-align: start;">
                                    <strong>{{ $drenage->name }}</strong>
                                </p>
                                @foreach ($drenage->month_works as $work)
                                    <a class="link"
                                        href="{{ route('editDrenage', ['drenage_id' => $work->drenage_id, 'work_id' => $work->id]) }}">
                                        <li>
                                            {{ $work->type_of_work }} Техника: {{ $work->auto }}</li>
                                    </a>
                                @endforeach
                            @endif
                        @endforeach
                    @endif
                </div>
                <div class="work_month_ustanovkas">
                    @if (collect($protectors)->pluck('all_works')->flatten()->isNotEmpty())
                        <h3 style="padding-left: 10px;"><strong>Установки протекторной защиты</strong></h3>
                        @foreach ($protectors as $protector)
                            @if ($protector->month_works->isNotEmpty())
                                <p style="margin-bottom: 0px; margin-top: 20px; text-align: start;">
                                    <strong>{{ $protector->name }}</strong>
                                </p>
                                @foreach ($protector->month_works as $work)
                                    <a class="link"
                                        href="{{ route('editProtector', ['protector_id' => $work->protector_id, 'work_id' => $work->id]) }}">
                                        <li>
                                            {{ $work->type_of_work }} Техника: {{ $work->auto }}</li>
                                    </a>
                                @endforeach
                            @endif
                        @endforeach
                    @endif
                </div>
                <div class="work_month_ustanovkas">
                    @if (collect($aeroLines)->pluck('all_works')->flatten()->isNotEmpty())
                        <h3 style="padding-left: 10px;"><strong>Воздушные линии электропередачи</strong></h3>
                        @foreach ($aeroLines as $aeroLine)
                            @if ($aeroLine->month_works->isNotEmpty())
                                <p style="margin-bottom: 0px; margin-top: 20px; text-align: start;">
                                    <strong>{{ $aeroLine->name }}</strong>
                                </p>
                                @foreach ($aeroLine->month_works as $work)
                                    <a class="link"
                                        href="{{ route('editAeroLine', ['aeroLine_id' => $work->aeroLine_id, 'work_id' => $work->id]) }}">
                                        <li>
                                            {{ $work->type_of_work }} Техника: {{ $work->auto }}</li>
                                    </a>
                                @endforeach
                            @endif
                        @endforeach
                    @endif
                </div>

            </div>

        </div>

    </div>
@endsection

<script>
    function toggleWeek() {
        let el = document.getElementById('container-week');
        el.style.display = (el.style.display === 'none') ? 'block' : 'none';
    }

    function toggleMonth() {
        let el = document.getElementById('container-month');
        el.style.display = (el.style.display === 'none') ? 'block' : 'none';
    }

    function toggleUstanovka() {
        let el = document.getElementById('gazoprovods');
        el.style.display = (el.style.display === 'none') ? 'block' : 'none';
    }

    function toggleUstanovkas(id) {
        let el = document.getElementById('ustanovkas-' + id);
        el.style.display = (el.style.display === 'none') ? 'block' : 'none';
    }

    function toggleDrenage() {
        let block = document.getElementById("drenages");
        block.style.display = block.style.display === "none" ? "block" : "none";
    }

    function toggleDrenages(id) {
        let block = document.getElementById("drenages-" + id);
        block.style.display = block.style.display === "none" ? "block" : "none";
    }

    function toggleProtector() {
        let block = document.getElementById("protectors");
        block.style.display = block.style.display === "none" ? "block" : "none";
    }

    function toggleProtectors(id) {
        let block = document.getElementById("protectors-" + id);
        block.style.display = block.style.display === "none" ? "block" : "none";
    }

    function toggleAeroLine() {
        let block = document.getElementById("aeroLines");
        block.style.display = block.style.display === "none" ? "block" : "none";
    }

    function toggleAeroLines(id) {
        let block = document.getElementById("aeroLines-" + id);
        block.style.display = block.style.display === "none" ? "block" : "none";
    }
</script>
