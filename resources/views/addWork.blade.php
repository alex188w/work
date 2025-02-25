<!doctype html>
<html lang="en">

<head>
    <!-- /Yandex.Metrika counter -->
    <meta charset="utf-8" />
    <title>Alex18w</title>
    <link rel="shortcut icon" href="./img/LogoA.JPG">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://alex18.ru/work/css2/style1.css" rel="stylesheet" type="text/css" id="theme-opt" />
    <link href="https://alex18.ru/work/css2/style.css" rel="stylesheet" type="text/css" id="theme-opt" />
    <link href="https://alex18.ru/work/css2/style2.css" rel="stylesheet" type="text/css" id="theme-opt" />
    {{-- <link href="../css2/style.css" rel="stylesheet" type="text/css" id="theme-opt" />
    <link href="../css2/style2.css" rel="stylesheet" type="text/css" id="theme-opt" /> --}}

</head>

<body>
    <div>
        <div class="modal fade show" id="popup442073" tabindex="-1" aria-labelledby="popupLabel442073"
            remove-close="true" data-type="modal-lg modal-center " aria-modal="true" role="dialog"
            style="display: block;">
            <div class="modal-dialog modal-lg modal-center">
                <div class="modal-content bg-body ">
                    <div class="modal-header">
                        <h5 class="modal-title " id="popupLabel442073">Запланировать работу</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"
                            onclick="window.location='{{ route('showWork', ['id' => $ustanovka_id]) }}'"></button>
                    </div>

                    <form action="{{ route('addAction', ['ustanovka_id' => $ustanovka_id]) }}"
                        method="POST">
                        @csrf
                        <div class="message">
                            @if (session('text'))
                                <p style="color: red">{{ session('text') }}</p>
                            @endif
                        </div>
                        <div class="modal-body" style="max-height:75vh; overflow:auto; overflow-x:hidden;">
                            <div class="id_name">
                                <div class="token col-sm-2 pb-2">
                                    <label style="padding-top: 5px;" class="form-label">id установки</label>
                                    <input type="number" id="ustanovka_id" value="{{ $ustanovka_id }}" placeholder=""
                                        name="ustanovka_id" class="form-control form-control-default" required=""
                                        autocomplete="off" data-mask="phone-1" data-init-mask="true">
                                </div>
                                <div class="token col-sm-3 pb-2">
                                    <label style="padding-top: 5px;" class="form-label">Наименование УКЗ</label>
                                    <input type="text" id="ustanovka_name" value="{{ $ustanovkaName }}" placeholder=""
                                        class="form-control form-control-default" required="" autocomplete="off"
                                        data-mask="phone-1" data-init-mask="true">
                                </div>
                                <div class="token col-sm-3 pb-2">
                                    <label style="padding-top: 5px;" class="form-label">Вид работ</label>
                                    <input type="text" id="ustanovka_name1" value="ТО" placeholder=""
                                        name="type_of_work" class="form-control form-control-default" required=""
                                        autocomplete="off" data-mask="phone-1" data-init-mask="true" list="viewWorks" />
                                    <datalist id="viewWorks">
                                        <option>ТО</option>
                                        <option>ТР</option>
                                        <option>ВНЕПЛАНОВЫЕ</option>
                                    </datalist>
                                </div>
                                <div class="token col-sm-3 pb-2">
                                    <label style="padding-top: 5px;" class="form-label">Дата</label>
                                    <input type="date" id="dateField" value="" placeholder="" name="work_date"
                                        class="form-control form-control-default" required="" autocomplete="off"
                                        data-mask="phone-1" data-init-mask="true">
                                </div>
                            </div>
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-light" data-bs-dismiss="modal"
                                onclick="window.location='{{ route('showWork', ['id' => $ustanovka_id]) }}'">Закрыть</button>
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
            $('#ustanovka_id').on('input', function() {
                let id = $(this).val();
                if (id) {
                    $.ajax({
                        url: `{{ url('/get-ustanovka-name') }}/${id}`,
                        type: 'GET',
                        success: function(response) {
                            $('#ustanovka_name').val(response.name);
                        }
                    });
                } else {
                    $('#ustanovka_name').val('');
                }
            });
        });
    </script>

    {{-- подставляем текущую дату в поле ввода date --}}
    <script>
        document.getElementById('dateField').valueAsDate = new Date();
    </script>
</body>

</html>
