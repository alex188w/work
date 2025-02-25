<!doctype html>
<html lang="en">

<meta name="csrf-token" content="{{ csrf_token() }}">

<head>
    {{-- @vite(['resources/css/app.css', 'resources/js/app.js']) --}}
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alex18w</title>
    <link rel="shortcut icon" href="./img/LogoA.JPG">
    {{-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> --}}
    {{-- <link href="path/to/lightbox.css" rel="stylesheet"> --}}
    <link href="https://alex18.ru/work/css2/style1.css" rel="stylesheet" type="text/css" id="theme-opt" />
    <link href="https://alex18.ru/work/css2/style.css" rel="stylesheet" type="text/css" id="theme-opt" />
    <link href="https://alex18.ru/work/css2/style2.css" rel="stylesheet" type="text/css" id="theme-opt" />
    {{-- <script src="../css2/script.js"></script> --}}
    {{-- <link href="../css2/style.css" rel="stylesheet" type="text/css" id="theme-opt" />
    <link href="../css2/style2.css" rel="stylesheet" type="text/css" id="theme-opt" /> --}}
</head>

<body>
    {{-- @extends('layouts.app')
@section('content')
    <h2>Редактирование работы</h2> --}}

    <div class="modal fade show" id="popup442073" tabindex="-1" aria-labelledby="popupLabel442073" remove-close="true"
        data-type="modal-lg modal-center " aria-modal="true" role="dialog" style="display: block;">
        <div class="modal-dialog modal-lg modal-center">
            <div class="modal-content bg-body ">
                <div class="modal-header">
                    <h5 class="modal-title " id="popupLabel442073">
                        {{ $work->is_done === 1 ? 'Изменить результаты проведения' : 'Внести результаты проведения' }}
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"
                        onclick="window.location='{{ route('showWork', ['id' => $ustanovka_id]) }}'"></button>
                </div>

                <form id="uploadForm"
                    action="{{ route('update', ['ustanovka_id' => $ustanovka_id, 'work_id' => $work->id]) }}"
                    enctype="multipart/form-data" method="POST">
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
                                <input type="number" id="ustanovka_id" value="{{ $work->ustanovka_id }}" placeholder=""
                                    name="ustanovka_id" class="form-control form-control-default" required=""
                                    autocomplete="off" data-mask="phone-1" data-init-mask="true">
                            </div>
                            <div class="token col-sm-3 pb-2">
                                <label style="padding-top: 5px;" class="form-label">Наименование</label>
                                <input type="text" id="ustanovka_name" value="{{ $ustanovkaName }}" placeholder=""
                                    class="form-control form-control-default" required="" autocomplete="off"
                                    data-mask="phone-1" data-init-mask="true">
                            </div>
                            <div class="token col-sm-3 pb-2">
                                <label style="padding-top: 5px;" class="form-label">Вид работ</label>
                                <input type="text" id="ustanovka_name1" value="{{ $work->type_of_work }}"
                                    placeholder="" name="type_of_work" class="form-control form-control-default"
                                    required="" autocomplete="off" data-mask="phone-1" data-init-mask="true"
                                    list="viewWorks" />
                                <datalist id="viewWorks">
                                    <option>ТО</option>
                                    <option>ТР</option>
                                    <option>ВНЕПЛАНОВЫЕ</option>
                                </datalist>
                            </div>
                            <div class="token col-sm-3 pb-2">
                                <label style="padding-top: 5px;" class="form-label">Дата</label>
                                <input type="date" id="dateField" value="{{ $work->work_date }}" placeholder=""
                                    name="work_date" class="form-control form-control-default" required=""
                                    autocomplete="off" data-mask="phone-1" data-init-mask="true">
                            </div>
                        </div>

                        <div class="parametr">
                            <div class="token col-sm-2 pb-2">
                                <label style="padding-top: 5px;" class="form-label">I, A</label>
                                <input type="double" id="ustanovka_id3" value="{{ $work->I }}" placeholder=""
                                    name="I" class="form-control form-control-default" required=""
                                    autocomplete="off" data-mask="phone-1" data-init-mask="true">
                            </div>
                            <div class="token col-sm-3 pb-2">
                                <label style="padding-top: 5px;" class="form-label">U, B</label>
                                <input type="double" id="ustanovka_id4" value="{{ $work->U }}" placeholder=""
                                    name="U" class="form-control form-control-default" required=""
                                    autocomplete="off" data-mask="phone-1" data-init-mask="true">
                            </div>

                            <div class="token col-sm-3 pb-2">
                                <label style="padding-top: 5px;" class="form-label">Uсум</label>
                                <input type="double" id="ustanovka_id7" value="{{ $work->Usum }}" placeholder=""
                                    name="Usum" class="form-control form-control-default" required=""
                                    autocomplete="off" data-mask="phone-1" data-init-mask="true">
                            </div>
                            <div class="token col-sm-3 pb-2">
                                <label style="padding-top: 5px;" class="form-label">Uпол</label>
                                <input type="double" id="ustanovka_id8" value="{{ $work->Upol }}" placeholder=""
                                    name="Upol" class="form-control form-control-default" required=""
                                    autocomplete="off" data-mask="phone-1" data-init-mask="true">
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
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-light" data-bs-dismiss="modal"
                            onclick="window.location='{{ route('showWork', ['id' => $ustanovka_id]) }}'">Закрыть</button>
                        <div class="submit-save">
                            <p class="save-text">Работа проведена!</p>
                            <button type="submit" name="submit"
                                class="btn js-form-btn btn-primary auto">Сохранить</button>
                        </div>
                    </div>
                    <input type="hidden" name="is_done" value="1">
                    <input type="hidden" name="csrf_token" value="XfJveHBZrE">
                </form>

                <form id="uploadForm"
                    action="{{ route('work.upload', ['ustanovka_id' => $ustanovka_id, 'work_id' => $work->id]) }}"
                    enctype="multipart/form-data" method="POST">
                    @csrf

                    <div class="photo">
                        <div class="photo-add">                 
                            <label style="padding: 5px 0 0 5px;" class="form-label" for="image">Загрузить изображение:</label>
                            <div class="drop-area" id="drop-area">
                                <p class="photo-text">Перетащите изображение сюда или</p>
                                <input type="file" id="imageInput" name="imageInput" accept="image/*"
                                    style="display: none">
                                <button style="margin: 0 auto; width: 150px;" type="button"
                                    class="bg-light btn-light"
                                    onclick="document.getElementById('imageInput').click();">Выбрать
                                    файл</button>
                                <button style="margin: 0 auto; width: 150px;" id="uploadButton"
                                    class="bg-light btn-light" type="submit"
                                    style="margin-top: 10px;">Загрузить</button>

                                {{-- Скрытые поля для ustanovka_id и work_id --}}
                                <input type="hidden" id="ustanovka_id" name="ustanovka_id"
                                    value="{{ $ustanovka_id }}">
                                <input type="hidden" id="work_id" name="work_id" value="{{ $work->id }}">

                                <!-- Превью загруженного изображения -->
                                <img id="imagePreview" src="" alt="Загруженное изображение"
                                    style="margin: 0 auto; margin-top: 10px; max-width: 150px; display: none;">

                                {{-- <a id="imageFull" href="" data-lightbox="gallery">
                                    <img id="imagePreview" src="" alt="Просмотреть">
                                </a> --}}

                                {{-- <a id="imageFull" style="display: none;" href="">Просмотреть</a> --}}
                                {{-- Адрес изображения для предпросмотра --}}
                                {{-- <input type="text" id="image-url" name="image_url"
                                value="{{ $work->image_path ?? '' }}" readonly> --}}
                            </div>
                        </div>
                        <div class="photo-view">
                            <label style="padding-top: 5px; text-align: center" class="form-label" for="image">Загруженные изображения:</label>
                            <div class="view-area" id="drop-area">
                                <div class="pre-view">
                                    <!-- Кнопка для открытия галереи -->
                                    {{-- <button id="openGallery">Открыть галерею</button> --}}
                                    @foreach ($files as $file)
                                        {{-- <div id="gallery" style="display: none;">
                                            @foreach ($files as $file)
                                                @php
                                                    // Получаем URL изображения
                                                    $url = Storage::url($file);
                                                @endphp
                                                <a href="{{ $url }}" data-lightbox="gallery">
                                                    <img src="{{ $url }}" alt="Изображение" width="100">
                                                </a>
                                            @endforeach
                                        </div> --}}

                                        <a href="{{ Storage::url($file) }}" data-lightbox="gallery">
                                            <img src="{{ Storage::url($file) }}" alt="Image"
                                                style="max-width: 100px; margin-bottom: 10px;">
                                        </a>
                                    @endforeach
                                </div>
                            </div>

                        </div>

                    </div>
                    <input type="hidden" name="csrf_token" value="XfJveHBZrE">
                </form>
{{-- 
                @if ($errors->any())
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li style="color: red">{{ $error }}</li>
                        @endforeach
                    </ul>
                @endif --}}
            </div>
        </div>
    </div>
    {{-- @endsection --}}

    <script>
        document.addEventListener("DOMContentLoaded", function(event) {
            event.preventDefault();
            event.stopPropagation(); // Блокируем дальнейшее распространение события

            const dropArea = document.getElementById("drop-area");
            const imageUrlField = document.getElementById("image-url");
            const imagePreview = document.getElementById('imagePreview');
            const imageFull = document.getElementById('imageFull');
            const uploadButton = document.getElementById('uploadButton');
            const ustanovkaId = document.getElementById("ustanovka_id").value;
            const workId = document.getElementById("work_id").value;
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
                    imageFull.style.display = 'block';
                    imageFull.href = imagePreview.src;
                    // uploadFile(file);                    
                };
                reader.readAsDataURL(file); // Чтение файла как URL
            }

            // Создание FormData и добавление файла
            uploadButton.addEventListener('click', () => {
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

                fetch(`/work/work/upload/${ustanovkaId}/${workId}`, {
                        method: 'POST',
                        body: formData,
                        headers: {
                            'X-Requested-With': 'XMLHttpRequest',
                        },
                    })
                    .then(response => response.json())
                    .then(data => {
                        if (data.success) {
                            // Обновление превью изображения
                            // imagePreview.src = data.image_url;
                            // imagePreview.style.display = 'block';
                            // imageFull.href = data.image_url;
                        } else {
                            alert('Ошибка: ' + data.message);
                        }
                    })
                    .catch(error => console.error('Ошибка:', error));

            });
        });
    </script>
    {{-- Скрипт для получения галереи загруженныхи изображений --}}
    {{-- <script src="{{ asset('js/lightbox.min.js') }}"></script>
    <script>
        document.getElementById('openGallery').addEventListener('click', function() {
            // Отображаем галерею
            document.getElementById('gallery').style.display = 'block';
            // Инициируем клик на первом изображении
            document.querySelector('#gallery a').click();
        });
    </script> --}}
</body>

</html>
