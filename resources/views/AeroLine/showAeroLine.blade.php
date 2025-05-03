@extends('layouts.app')

@section('content')
    <h3>Воздушная линия электропередачи</h3>
    <h3>{{ $aeroLine->name }}</h3>

    <h3 style="margin-top: 50px; display:flex; justify-content: center;">Запланированные работы</h3>
    <table>
        <thead>
            <tr>
                <th width="100" height="50">Дата</th>
                <th width="100" height="50">Вид работы</th>
                <th width="300" height="50">Запланированная техника</th>
                <th width="200" height="50">Статус</th>
                <th width="200" height="50"></th>
            </tr>
        </thead>

        <tbody class="realized">
            @foreach ($works as $work)
                <tr>
                    <td width="100">{{ $work->work_date }}</td>
                    <td width="200">{{ $work->type_of_work }}</td>
                    <td width="300">{{ $work->auto }}</td>
                    <td width="200">
                        <p>{{ $work->is_done === 1 ? 'Выполнено' : 'Запланировано' }}</p>
                    </td>

                    <td width="100">
                        <button class="{{ $work->is_done === 1 ? 'completed' : 'bg-info btn-info not_completed' }}">
                            <a class="link"
                                href="{{ route('editAeroLine', ['aeroLine_id' => $work->aeroLine_id, 'work_id' => $work->id]) }}">{{ $work->is_done === 1 ? 'Просмотреть' : 'Выполнить' }}</a>
                        </button>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
    <button class="add"><a class="link"
            href="{{ route('addAeroLine', ['aeroLine_id' => $aeroLine->id]) }}">Запланировать работу</a></button>
@endsection

