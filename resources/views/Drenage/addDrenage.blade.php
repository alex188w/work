<!doctype html>
<html lang="en">

<head>
    <!-- /Yandex.Metrika counter -->
    <meta charset="utf-8" />
    <title>ТОиР НЛПУМГ</title>
    {{-- <link rel="shortcut icon" href="./img/LogoA.JPG"> --}}
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    {{-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css"
        integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous"> --}}
    <link rel="stylesheet" href="{{ asset('/font-awesome/css/font-awesome.min.css') }}">
    {{-- <link href="https://alex18.ru/work/css2/style1.css" rel="stylesheet" type="text/css" id="theme-opt" />
    <link href="https://alex18.ru/work/css2/style.css" rel="stylesheet" type="text/css" id="theme-opt" />
    <link href="https://alex18.ru/work/css2/style2.css" rel="stylesheet" type="text/css" id="theme-opt" /> --}}
    <link href="../css2/style.css" rel="stylesheet" type="text/css" id="theme-opt" />
    <link href="../css2/style2.css" rel="stylesheet" type="text/css" id="theme-opt" />
    <link href="../css2/style4.css" rel="stylesheet" type="text/css" id="theme-opt" />

</head>

<body>
    <div class="modal fade show" id="popup442073" tabindex="-1" aria-labelledby="popupLabel442073" remove-close="true"
        data-type="modal-lg modal-center " aria-modal="true" role="dialog" style="display: block;">
        <div class="modal-dialog modal-lg modal-center">
            <div class="modal-content bg-add">
                <div class="modal-header">
                    <div class="modal-title">
                        <h5 id="popupLabel442073">Запланировать работу</h5>
                        <div class="message">
                            @if (session('text'))
                                <p style="color: red; margin-bottom: 0px;">{{ session('text') }}</p>
                            @endif
                        </div>
                    </div>

                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"
                        onclick="window.location='{{ route('showDrenage', ['id' => $drenage_id]) }}'"></button>
                </div>

                <form action="{{ route('addDrenagePost', ['drenage_id' => $drenage_id]) }}" method="POST">
                    @csrf

                    <div class="modal-body" style="max-height:75vh; overflow:auto; overflow-x:hidden;">
                        <div class="id_name">
                            <div class="token col-sm-2 pb-2">
                                <label style="padding-top: 5px;" class="form-label">id установки</label>
                                <input type="number" id="drenage_id" value="{{ $drenage_id }}" placeholder=""
                                    name="drenage_id" class="form-control form-control-default" required=""
                                    autocomplete="off" data-mask="phone-1" data-init-mask="true">
                            </div>
                            <div class="token col-sm-3 pb-2">
                                <label style="padding-top: 5px;" class="form-label">Наименование УКЗ</label>
                                <input type="text" id="drenage_name" value="{{ $drenageName }}" placeholder=""
                                    class="form-control form-control-default" required="" autocomplete="off"
                                    data-mask="phone-1" data-init-mask="true">
                            </div>

                            <div class="token col-sm-3 pb-2">
                                <label style="padding-top: 5px;" class="form-label">Дата</label>
                                <input type="date" id="dateField" value="" placeholder="" name="work_date"
                                    class="form-control form-control-default" required="" autocomplete="off"
                                    data-mask="phone-1" data-init-mask="true">
                            </div>

                            <div class="token col-sm-3 pb-2">
                                <label style="padding-top: 5px;" class="form-label">Вид работ</label>
                                <div style="position: relative; display: inline-block; width: 100%;">
                                    <div class="box">
                                        <select id="ustanovka_name1" placeholder="" name="type_of_work" required>
                                            <option value="ТО">ТО</option>
                                            <option value="ТР">ТР</option>
                                            <option value="ВНЕПЛАНОВЫЕ">ВНЕПЛАНОВЫЕ</option>
                                        </select>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div>
                        <p>Запланированная техника</p>
                        <div class="id_name-auto">

                            <div class="token col-sm-3 pb-2 select">
                                <div style="position: relative; display: inline-block; width: 100%;">
                                    <div class="box">
                                        <select id="ustanovka_name1" placeholder="" name="auto1" required>
                                            <option value="Урал КУНГ">Урал КУНГ</option>
                                            <option value="УАЗ">УАЗ</option>
                                            <option value="Автовышка">Автовышка</option>
                                            <option value="Экскаватор JCB">Экскаватор JCB</option>
                                            <option value="КАМАЗ бортовой">КАМАЗ бортовой</option>
                                        </select>

                                    </div>
                                </div>
                            </div>

                            <div class="token col-sm-3 pb-2 select">
                                <div style="position: relative; display: inline-block; width: 100%;">
                                    <div class="box">
                                        <select id="ustanovka_name1" placeholder="" name="auto2">
                                            <option value="">Добавить...</option>
                                            <option value="Урал КУНГ">Урал КУНГ</option>
                                            <option value="УАЗ">УАЗ</option>
                                            <option value="Автовышка">Автовышка</option>
                                            <option value="Экскаватор JCB">Экскаватор JCB</option>
                                            <option value="КАМАЗ бортовой">КАМАЗ бортовой</option>
                                        </select>

                                    </div>
                                </div>
                            </div>

                            <div class="token col-sm-3 pb-2 select">
                                <div style="position: relative; display: inline-block; width: 100%;">
                                    <div class="box">
                                        <select id="ustanovka_name1" placeholder="" name="auto3">
                                            <option value="">Добавить...</option>
                                            <option value="Урал КУНГ">Урал КУНГ</option>
                                            <option value="УАЗ">УАЗ</option>
                                            <option value="Автовышка">Автовышка</option>
                                            <option value="Экскаватор JCB">Экскаватор JCB</option>
                                            <option value="КАМАЗ бортовой">КАМАЗ бортовой</option>
                                        </select>

                                    </div>
                                </div>
                            </div>



                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-light" data-bs-dismiss="modal"
                                onclick="window.location='{{ route('showDrenage', ['id' => $drenage_id]) }}'">Закрыть</button>
                            <div class="submit-save">
                                <button type="submit" name="submit"
                                    class="btn js-form-btn btn-primary auto">Добавить</button>
                            </div>
                        </div>
                        <input type="hidden" name="is_done" value="1">
                        <input type="hidden" name="csrf_token" value="XfJveHBZrE">
                    </div>
                </form>

                @if ($errors->any())
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li style="color: red">{{ $error }}</li>
                        @endforeach
                    </ul>
                @endif
            </div>
        </div>
    </div>

    {{-- Скрипт для подстановки названия УКЗ после введения id --}}
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#drenage_id').on('input', function() {
                let id = $(this).val();
                if (id) {
                    $.ajax({
                        url: `{{ url('/get-drenage-name') }}/${id}`,
                        type: 'GET',
                        success: function(response) {
                            $('#drenage_name').val(response.name);
                        }
                    });
                } else {
                    $('#drenage_name').val('');
                }
            });
        });
    </script>

    {{-- подставляем текущую дату в поле ввода date --}}
    <script>
        const arrow = document.querySelector('span');
        const input = document.querySelector('#drenage_name1');

        arrow.addEventListener('click', () => {
            input.focus(); // Фокус на поле
            input.dispatchEvent(new KeyboardEvent('keydown', {
                key: 'ArrowDown'
            })); // Имитация нажатия клавиши вниз
        });

        input.addEventListener('focus', () => {
            arrow.style.transform = 'translateY(-50%) rotate(180deg)'; // Поворачиваем стрелку
        });

        input.addEventListener('blur', () => {
            setTimeout(() => {
                arrow.style.transform = 'translateY(-50%) rotate(0deg)'; // Возвращаем стрелку
            }, 200);
        });
    </script>
</body>

</html>
