document.addEventListener("DOMContentLoaded", function () {
    let dropArea = document.getElementById("drop-area");
    let fileInput = document.getElementById("file-input");

    // Перетаскивание файлов
    dropArea.addEventListener("dragover", (event) => {
        event.preventDefault();
        dropArea.style.backgroundColor = "#f3f3f3";
    });

    dropArea.addEventListener("dragleave", () => {
        dropArea.style.backgroundColor = "white";
    });

    dropArea.addEventListener("drop", (event) => {
        event.preventDefault();
        dropArea.style.backgroundColor = "white";
        let file = event.dataTransfer.files[0];
        uploadFile(file);
    });

    fileInput.addEventListener("change", (event) => {
        let file = event.target.files[0];
        uploadFile(file);
    });

    function uploadFile(file) {
        let formData = new FormData();
        formData.append("image", file);
        formData.append("_token", document.querySelector('input[name="_token"]').value);

        fetch("{{ route('upload.image') }}", {
            method: "POST",
            body: formData,
        })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    document.getElementById("image-url").value = data.url;
                } else {
                    alert("Ошибка загрузки");
                }
            })
            .catch(error => console.error("Ошибка:", error));
    }
});