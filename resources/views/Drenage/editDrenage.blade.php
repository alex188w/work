<!doctype html>
<html lang="en">

<meta name="csrf-token" content="{{ csrf_token() }}">

<head>
    {{-- @vite(['resources/css/app.css', 'resources/js/app.js']) --}}
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ТОиР НЛПУМГ</title>
    {{-- <link rel="shortcut icon" href="./img/LogoA.JPG"> --}}
    {{-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.3/css/lightbox.min.css" rel="stylesheet"> --}}
    <link rel="stylesheet" href="{{ asset('lightbox/css/lightbox.min.css') }}">
    <link rel="stylesheet" href="{{ asset('/font-awesome/css/font-awesome.min.css') }}">
    <link href="{{ asset('css2/style.css') }}" rel="stylesheet" type="text/css" id="theme-opt">
    <link href="{{ asset('css2/style2.css') }}" rel="stylesheet" type="text/css" id="theme-opt">
    <link href="{{ asset('css2/style4.css') }}" rel="stylesheet" type="text/css" id="theme-opt">

</head>

<body>
    <div class="modal fade show" id="popup442073" tabindex="-1" aria-labelledby="popupLabel442073" remove-close="true"
        data-type="modal-lg modal-center " aria-modal="true" role="dialog" style="display: block;">
        <div class="modal-dialog modal-lg modal-center">
            <div class="modal-content bg-body ">
                <div class="modal-header">
                    <div class="modal-title">
                        <h5 id="popupLabel442073">
                            {{ $work->is_done === 1 ? 'Изменить результаты проведения' : 'Внести результаты проведения' }}
                        </h5>
                        <div class="message">
                            @if (session('text'))
                                <p style="color: red; margin-bottom: 0px;">{{ session('text') }}</p>
                            @endif
                        </div>

                    </div>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"
                        onclick="window.location='{{ route('showDrenage', ['id' => $drenage_id]) }}'"></button>
                </div>

                <form id="updateForm"
                    action="{{ route('updateDrenage', ['drenage_id' => $drenage_id, 'work_id' => $work->id]) }}"
                    enctype="multipart/form-data" method="POST">
                    @csrf

                    <div class="modal-body">
                        <div class="id_name">
                            <div class="token col-sm-2 pb-2">
                                <label style="padding-top: 5px;" class="form-label">id установки</label>
                                <input type="number" id="drenage_id" value="{{ $work->drenage_id }}" placeholder=""
                                    name="drenage_id" class="form-control form-control-default" required=""
                                    autocomplete="off" data-mask="phone-1" data-init-mask="true">
                            </div>
                            <div class="token col-sm-3 pb-2">
                                <label style="padding-top: 5px;" class="form-label">Наименование</label>
                                <input type="text" name="drenage_name" id="drenage_name" value="{{ $drenageName }}"
                                    placeholder="" class="form-control form-control-default" required=""
                                    autocomplete="off" data-mask="phone-1" data-init-mask="true">
                            </div>

                            <div class="token col-sm-3 pb-2">
                                <label style="padding-top: 5px;" class="form-label">Дата</label>
                                <input type="date" id="dateField" value="{{ $work->work_date }}" placeholder=""
                                    name="work_date" class="form-control form-control-default" required=""
                                    autocomplete="off" data-mask="phone-1" data-init-mask="true">
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

                        <div class="parametr">
                            <div class="form-data">
                                <label style="padding-top: 5px;" class="form-label">Imax, A</label>
                                <input type="double" id="drenage_id3" value="{{ $work->Imax }}" placeholder=""
                                    name="Imax" class="form-control form-control-default" autocomplete="off"
                                    data-mask="phone-1" data-init-mask="true">
                            </div>
                            <div class="form-data">
                                <label style="padding-top: 5px;" class="form-label">Imin</label>
                                <input type="double" id="drenage_id4" value="{{ $work->Imin }}" placeholder=""
                                    name="Imin" class="form-control form-control-default" autocomplete="off"
                                    data-mask="phone-1" data-init-mask="true">
                            </div>
                            <div class="form-data">
                                <label style="padding-top: 5px;" class="form-label">Iср</label>
                                <input type="double" id="drenage_id7" value="{{ $work->Icp }}" placeholder=""
                                    name="Icp" class="form-control form-control-default" autocomplete="off"
                                    data-mask="phone-1" data-init-mask="true">
                            </div>
                            <div class="form-data">
                                <label style="padding-top: 5px;" class="form-label">Uтр-з</label>
                                <input type="double" id="drenage_id8" value="{{ $work->Utr_z }}" placeholder=""
                                    name="Utr_z" class="form-control form-control-default" autocomplete="off"
                                    data-mask="phone-1" data-init-mask="true">
                            </div>
                            <div class="form-data">
                                <label style="padding-top: 5px;" class="form-label">Uтр-р</label>
                                <input type="double" id="drenage_id8" value="{{ $work->Utr_r }}" placeholder=""
                                    name="Utr_r" class="form-control form-control-default" autocomplete="off"
                                    data-mask="phone-1" data-init-mask="true">
                            </div>

                            <div class="form-data">
                                <label style="padding-top: 5px;" class="form-label">Uпол</label>
                                <input type="double" id="drenage_id8" value="{{ $work->Upol }}" placeholder=""
                                    name="Upol" class="form-control form-control-default" autocomplete="off"
                                    data-mask="phone-1" data-init-mask="true">
                            </div>
                        </div>

                        <div class="work">
                            <div class="worker">
                                <div class="token col-sm- pb-1">
                                    <label style="padding-top: 5px;" class="form-label">Исполнители</label>
                                    <textarea placeholder="" style="height:100px" name="work_performers" id="question" class="form-control"
                                        rows="2" autocomplete="off" maxlength="2000">{{ $work->work_performers }}</textarea>
                                </div>
                                <div class="token col-sm-5 pb-1">
                                    <label style="padding-top: 5px;" class="form-label">Описание работ</label>
                                    <textarea placeholder="" style="height:100px" name="work_description" class="form-control" rows="5"
                                        autocomplete="off" maxlength="2000">{{ $work->work_description }}</textarea>
                                </div>
                                <div class="token col-sm-4 pb-1">
                                    <label style="padding-top: 5px;" class="form-label">Выявленные замечания</label>
                                    <textarea placeholder="{{ $work->remarks }}" style="height:100px" name="remarks" class="form-control"
                                        rows="5" autocomplete="off" maxlength="2000">{{ $work->remarks }}</textarea>
                                </div>
                            </div>
                        </div>

                        <div class="journal">
                            <div class="journal-check">
                                <label style="padding-top: 5px; text-align: center" class="form-label"
                                    for="image">Техническая документация:</label>
                                <div class="view-journal">

                                    <input type="hidden" name="is_done" id="is_done" value="0">

                                    <div class="submit-save">
                                        <p class="journal-title">Журнал выдачи заданий</p>
                                        <input type="checkbox" class="done-checkbox" value="1">
                                    </div>
                                    <div class="submit-save">
                                        <p class="journal-title">Журнал выдачи ключей</p>
                                        <input type="checkbox" class="done-checkbox" value="1">
                                    </div>
                                    <div class="submit-save">
                                        <p class="journal-title">Полевой журнал УКЗ</p>
                                        <input type="checkbox" class="done-checkbox" value="1">
                                    </div>
                                    <div class="submit-save">
                                        <p class="journal-title">Журнал эксп. и ремонта</p>
                                        <input type="checkbox" class="done-checkbox" value="1">
                                    </div>                                    
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-light" data-bs-dismiss="modal"
                            onclick="window.location='{{ route('showWork', ['id' => $drenage_id]) }}'">Закрыть</button>
                        <div class="submit-save">
                            <button type="submit" name="submit"
                                class="btn js-form-btn btn-primary auto">Сохранить</button>
                        </div>
                    </div>
                    <input type="hidden" name="csrf_token" value="XfJveHBZrE">
                </form>

                <form id="uploadForm" onsubmit="return false;"
                    action="{{ route('work.upload', ['ustanovka_id' => $drenage_id, 'work_id' => $work->id]) }}"
                    enctype="multipart/form-data" method="POST">
                    @csrf

                    <div class="photo">
                        <div class="photo-add">
                            <label style="padding: 5px 0 0 5px;" class="form-label" for="image">Загрузить
                                изображение:</label>
                            <div class="drop-area" id="drop-area">
                                <p class="photo-text">Перетащите изображение сюда или</p>
                                <input type="file" id="imageInput" name="imageInput" accept="image/*"
                                    style="display: none">
                                <button style="margin: 0 auto; width: 150px;" type="button"
                                    class="bg-light btn-light"
                                    onclick="document.getElementById('imageInput').click();">Выбрать
                                    файл</button>

                                <button style="margin: 0 auto; width: 150px;" id="uploadButton"
                                    class="bg-light btn-light" type="submit">Загрузить</button>
                                {{-- Скрытые поля для drenage_id и work_id --}}
                                <input type="hidden" id="drenage_id" name="drenage_id"
                                    value="{{ $drenage_id }}">
                                <input type="hidden" id="work_id" name="work_id" value="{{ $work->id }}">

                                <!-- Превью загруженного изображения -->
                                <img id="imagePreview" src="" alt="Загруженное изображение"
                                    style="margin: 0 auto; margin-top: 10px; max-width: 150px; display: none;">

                                <div id="uploadMessage" style="display: none; color: #6668f5; font-weight: bold;">
                                </div>
                            </div>
                        </div>

                        <div class="photo-view">
                            <label style="padding-top: 5px; text-align: center" class="form-label"
                                for="image">Загруженные
                                изображения:</label>
                            <div class="view-area" id="drop-area">
                                <div class="pre-view">
                                    @foreach (array_slice($files, 0, 2) as $file)
                                        <a href="{{ asset('storage/' . $file) }}" data-lightbox="gallery">
                                            <img src="{{ asset('storage/' . $file) }}" alt="Image"
                                                style="max-height: 65px; margin-bottom: 10px;">
                                        </a>
                                    @endforeach
                                </div>
                                <!-- Скрытый блок для всех изображений -->
                                <div style="display: none;">
                                    @foreach (array_slice($files, 2) as $file)
                                        <a href="{{ asset('storage/' . $file) }}" data-lightbox="gallery"></a>
                                    @endforeach
                                </div>
                            </div>
                        </div>

                    </div>
                    <input type="hidden" name="csrf_token" value="XfJveHBZrE">
                </form>
            </div>
        </div>
    </div>

    {{-- Скрипт для отправки is_done=1, если все чекбоксы -> check --}}
    <script>
        document.getElementById("updateForm").addEventListener("submit", function(event) {
            let checkboxes = document.querySelectorAll(".done-checkbox");
            let allChecked = Array.from(checkboxes).every(checkbox => checkbox.checked);

            document.getElementById("is_done").value = allChecked ? "1" : "0";
        });
    </script>

    {{-- Скрипт для загрузки и сохранения изображений --}}
    <script>
        document.addEventListener("DOMContentLoaded", function(event) {
            event.preventDefault();
            event.stopPropagation(); // Блокируем дальнейшее распространение события

            const dropArea = document.getElementById("drop-area");
            const imageUrlField = document.getElementById("image-url");
            const imagePreview = document.getElementById('imagePreview');
            // const imageFull = document.getElementById('imageFull');
            const uploadButton = document.getElementById('uploadButton');
            const drenageId = document.getElementById("drenage_id").value;
            const workId = document.getElementById("work_id").value;
            let messageDiv = document.getElementById('uploadMessage');
            let selectedFile;

            // Получение файла из input
            const fileInput = document.getElementById('imageInput');

            // Предотвращаем поведение по умолчанию для событий перетаскивания
            ['dragenter', 'dragover', 'dragleave', 'drop'].forEach(eventName => {
                dropArea.addEventListener(eventName, preventDefaults, false);
            });

            function preventDefaults(e) {
                e.preventDefault();
                e.stopPropagation();
            }

            // Перетаскивание файлов
            dropArea.addEventListener("dragover", (event) => {
                event.preventDefault();
                dropArea.style.backgroundColor = "#f3f3f3";
            });

            dropArea.addEventListener("dragleave", () => {
                dropArea.style.backgroundColor = "white";
            });

            // Обработчик для выбора файла через перетаскивание
            dropArea.addEventListener("drop", (event) => {
                event.preventDefault();
                dropArea.classList.remove("dragover");
                const file = event.dataTransfer.files[0];
                handleFile(file);
            });

            // Обработчик для выбора файла через кнопку
            fileInput.addEventListener("change", (event) => {
                const file = event.target.files[0];
                handleFile(file);
            });

            function handleFile(file) {
                selectedFile = file;
                const reader = new FileReader();
                reader.onload = function(e) {
                    // Устанавливаем источник изображения
                    imagePreview.src = e.target.result;
                    imagePreview.style.display = 'block'; // Показываем изображение                
                };
                reader.readAsDataURL(file); // Чтение файла как URL
            }

            // Создание FormData и добавление файла
            uploadButton.addEventListener('click', () => {
                event.preventDefault(); // Отключаем стандартное поведение формы
                if (!selectedFile) {
                    alert('Сначала выберите изображение.');
                    return;
                }
                console.log('загрузка файла')
                // function uploadFile(file) {
                const formData = new FormData();
                formData.append('image', selectedFile);
                formData.append('_token', '{{ csrf_token() }}');

                // Отправка AJAX-запроса
                fetch(`/upload/${drenageId}/${workId}`, {
                        method: 'POST',
                        body: formData,
                        headers: {
                            'X-Requested-With': 'XMLHttpRequest',
                        },
                    })
                    .then(response => response.json())
                    .then(data => {
                        if (data.success) {
                            console.log('файл загружен');
                            imagePreview.src = '';
                            imagePreview.style.display = 'none'; // Скрываем изображение
                            messageDiv.textContent = data.message; // Выводим текст сообщения
                            messageDiv.style.display = 'block'; // Показываем div
                            // messageDiv.style.color = 'green'; // Задаем цвет                 
                        } else {
                            alert('Ошибка: ' + data.message);
                            messageDiv.textContent = 'Ошибка: ' + data.message;
                            messageDiv.style.display = 'block';
                            messageDiv.style.color = 'red'; // Красный цвет для ошибок
                        }
                    })
                    .catch(error => {
                        messageDiv.textContent = 'Ошибка загрузки';
                        messageDiv.style.display = 'block';
                        messageDiv.style.color = 'red';
                        console.error('Ошибка загрузки:', error);
                    });
            });
        });
    </script>
    <script src="{{ asset('js/jquery-3.7.1.js') }}"></script>
    {{-- <script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.3/js/lightbox.min.js"></script> --}}
    <script src="{{ asset('lightbox/js/lightbox.min.js') }}"></script>
</body>

</html>
