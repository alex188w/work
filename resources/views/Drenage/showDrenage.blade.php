@extends('layouts.app')

@section('content')
    <h3>Установка дренажной защиты</h3>
    <h3>{{ $drenage->name }} {{ $gazoprovodName }}</h3>

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
                                href="{{ route('editDrenage', ['drenage_id' => $work->drenage_id, 'work_id' => $work->id]) }}">{{ $work->is_done === 1 ? 'Просмотреть' : 'Выполнить' }}</a>
                        </button>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
    <button class="add"><a class="link" href="{{ route('addDrenage', ['drenage_id' => $drenage->id]) }}">Запланировать
            работу</a></button>

    <!-- Модальное окно для I(t) -->
    <div class="modal fade" id="chartModalImax" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">График I(t)</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <canvas id="chartImax"></canvas>
                </div>
            </div>
        </div>
    </div>

    <!-- Модальное окно для U(t) -->
    <div class="modal fade" id="chartModalUtr_z" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">График Uтр-з</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center">
                    <canvas id="chartUtr_z" class="modal-chart"></canvas>
                </div>
            </div>
        </div>
    </div>

    <!-- Модальное окно для R=U/I(t) -->
    <div class="modal fade" id="chartModalUpol" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">График Uпол</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <canvas id="chartUpol" class="modal-chart"></canvas>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('sidebar')
    <div class="sidebar_show">
        <h3 style="text-align: center; margin-top: 50px; margin-bottom: 50px;">Построить график</h3>
        <div class="button-chart">
            <button class="btn btn-primary open-chart" data-id="{{ $drenage->id }}" data-type="Imax"
                data-bs-target="#chartModalImax">
                График Imax
            </button>
            <button class="btn btn-secondary open-chart" data-id="{{ $drenage->id }}" data-type="Utr_z"
                data-bs-target="#chartModalUtr_z">
                График Uтр-з
            </button>

            <button class="btn btn-success open-chart" data-id="{{ $drenage->id }}" data-type="Upol"
                data-bs-target="#chartModalUpol">
                График Uпол
            </button>
        </div>
    </div>
    <script src="{{ asset('js/chart.umd.min.js') }}"></script>
@endsection

{{-- Скрипт для вывода графиков --}}
{{-- <script src="https://cdn.jsdelivr.net/npm/chart.js"></script> --}}
<script>
    document.addEventListener("DOMContentLoaded", function() {
        let chartInstances = {
            Imax: null,
            Utr_z: null,
            Upol: null
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

            if (type === 'Imax') {
                values = data.map(item => parseFloat(item.Imax));
                label = 'Imax (A)';
                color = 'blue';
            } else if (type === 'Utr_z') {
                values = data.map(item => parseFloat(item.Utr_z));
                label = 'Uтр-з (В)';
                color = 'red';
            } else if (type === 'Upol') {
                values = data.map(item => parseFloat(item.Upol));
                label = 'Upol (B)';
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
