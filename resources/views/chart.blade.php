<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>График</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>

<body>

    <canvas id="myChart"></canvas>

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            let ctx = document.getElementById('myChart').getContext('2d');

            let data = @json($data);

            let labels = data.map(item => item.work_date);
            let values = data.map(item => item.I);

            new Chart(ctx, {
                type: 'line',
                data: {
                    labels: labels,
                    datasets: [{
                        label: 'Ток (A)',
                        data: values,
                        borderColor: 'blue',
                        backgroundColor: 'rgba(0, 0, 255, 0.2)',
                        borderWidth: 2
                    }]
                },
                options: {
                    responsive: true,
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
                                text: 'Ток (A)'
                            }
                        }
                    }
                }
            });
        });
    </script>

</body>

</html>
