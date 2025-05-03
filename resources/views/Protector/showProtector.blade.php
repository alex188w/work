@extends('layouts.app')

@section('content')
    <h3>Установка протекторной защиты</h3>
    <h3>{{ $protector->name }} {{ $gazoprovodName }}</h3>

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
                                href="{{ route('editProtector', ['protector_id' => $work->protector_id, 'work_id' => $work->id]) }}">{{ $work->is_done === 1 ? 'Просмотреть' : 'Выполнить' }}</a>
                        </button>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
    <button class="add"><a class="link"
            href="{{ route('addProtector', ['protector_id' => $protector->id]) }}">Запланировать работу</a></button>
    {{-- <button class="add"><a class="link" href="{{ route('chart', ['ustanovka_id' => $ustanovka->id]) }}">Построить
            график I(t)</a></button> --}}

    {{-- <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#chartModal">
        Открыть график
    </button> --}}





    <!-- Модальное окно для I(t) -->
    <div class="modal fade" id="chartModalI" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">График I(t)</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <canvas id="chartI"></canvas>
                </div>
            </div>
        </div>
    </div>

    <!-- Модальное окно для U(t) -->
    <div class="modal fade" id="chartModalU" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">График U(t)</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center">
                    <canvas id="chartU" class="modal-chart"></canvas>
                </div>
            </div>
        </div>
    </div>


    <!-- Модальное окно для R=U/I(t) -->
    <div class="modal fade" id="chartModalR" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">График R=U/I(t)</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <canvas id="chartR" class="modal-chart"></canvas>
                </div>
            </div>
        </div>
    </div>
@endsection

{{-- @section('sidebar_show') --}}
@section('sidebar')
    <div class="sidebar_show">
        <h3 style="text-align: center; margin-top: 50px; margin-bottom: 50px;">Построить график</h3>
        <div class="button-chart">
            <button class="btn btn-primary open-chart" data-id="{{ $protector->id }}" data-type="I"
                data-bs-target="#chartModalI">
                График Iпр
            </button>
            <button class="btn btn-secondary open-chart" data-id="{{ $protector->id }}" data-type="U"
                data-bs-target="#chartModalU">
                График Uтр-з
            </button>

            <button class="btn btn-success open-chart" data-id="{{ $protector->id }}" data-type="R"
                data-bs-target="#chartModalR">
                График Rпр
            </button>
        </div>
    </div>
    {{-- <script src="{{ asset('js/chart.umd.min.js') }}"></script> --}}
@endsection

{{-- Скрипт для вывода графиков --}}
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        let chartInstances = {
            I: null,
            U: null,
            R: null
        };

        document.querySelectorAll('.open-chart').forEach(button => {
            button.addEventListener('click', function() {
                let ustanovkaId = this.getAttribute('data-id');
                let chartType = this.getAttribute('data-type');
                let modalId = this.getAttribute('data-bs-target');
                // let canvasId = modalId.replace("#chartModal", "chart");
                let canvasId =
                    `chart${chartType}`; // создается id как 'chartI', 'chartU', 'chartR'
                console.log("Generated canvasId:", canvasId);

                let url = `/chart-data/${ustanovkaId}`;
                console.log(url);

                fetch(url)
                    .then(response => response.json())
                    .then(data => {
                        renderChart(data, chartType, canvasId);
                        let modal = new bootstrap.Modal(document.querySelector(modalId));
                        modal.show();
                    });

                closeOtherModals(modalId);
            });
        });

        function renderChart(data, type, canvasId) {
            if (!chartInstances.hasOwnProperty(type)) {
                chartInstances[type] = null;
            }

            if (chartInstances[type] !== null) {
                chartInstances[type].destroy();
            }

            let ctx = document.getElementById(canvasId).getContext('2d');
            let labels = data.map(item => item.work_date);
            let values, label, color;

            if (type === 'I') {
                values = data.map(item => parseFloat(item.Ipr));
                label = 'Ток (A)';
                color = 'blue';
            } else if (type === 'U') {
                values = data.map(item => parseFloat(item.Utr_z));
                label = 'Потенциал (В)';
                color = 'red';
            } else if (type === 'R') {
                values = data.map(item => parseFloat(item.Rpr_tr));
                label = 'Сопротивление (Ω)';
                color = 'green';
            }

            chartInstances[type] = new Chart(ctx, {
                type: 'line',
                data: {
                    labels: labels,
                    datasets: [{
                        label: label,
                        data: values,
                        borderColor: color,
                        backgroundColor: color.replace('1)', '0.2)'),
                        borderWidth: 2
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    scales: {
                        x: {
                            title: {
                                display: true,
                                text: 'Дата'
                            }
                        },
                        y: {
                            title: {
                                display: true,
                                text: label
                            }
                        }
                    }
                }
            });
        }

        function closeOtherModals(currentModalId) {
            document.querySelectorAll('.modal').forEach(modal => {
                if ('#' + modal.id !== currentModalId && modal.classList.contains('show')) {
                    bootstrap.Modal.getInstance(modal).hide();
                }
            });
        }

        document.querySelectorAll('.modal').forEach(modal => {
            modal.addEventListener('hidden.bs.modal', function() {
                let type = modal.id.replace("chartModal", "");
                if (chartInstances[type] !== null) {
                    chartInstances[type].destroy();
                    chartInstances[type] = null;
                }
            });
        });
    });
</script>
