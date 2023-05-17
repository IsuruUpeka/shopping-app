<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js" 
    integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
    <style>
        .cont{
            display: flex;
            justify-content: center;
        }
        .box{
            padding: 15px;
            background: #fff;
            border-radius: 7px;
        }
        .label{
            background: rgb(69, 146, 253);
            padding: 3px 15px;
            border-radius: 20px;
            margin-left: 5px;
        }
    </style>
</head>
<body>
    <div class="box">
        <div class=""> 
            <h3>Total Orders <span class="label">{{ count($orders) }}</span></h3>
            <h4>Orders in last 7 days - <span class="">{{ count($lastweek) }}</span></h4>
        </div>
        <div>
            <h3>Total Sales <span class="label" style="background: red;">RS.{{ $sales }}</span></h3>
            <h4>Sales in last 7 days - <span>RS.{{ $lastweek_sales }}</span></h4>
        </div>
    </div>
    <div>
        <div>
            <h3>Orders by date</h3>
            <div style="display: flex;">
                <div style="display: flex; flex-direction: column;">
                    <label for="orders_from">From</label>
                    <input type="date" name="date_from" id="orders_from" class="order_date" value="{{ explode(" ", $from)[0] }}">
                </div>
                <div style="display: flex; flex-direction: column;margin-left:12px;">
                    <label for="orders_to">To</label>
                    <input type="date" name="date_to" id="orders_to" class="order_date" value="{{ explode(" ", $to)[0] }}">
                </div>
            </div>
        </div>
        <div class="cont">
            <canvas id="chart1" style="width:75%"></canvas>
        </div>
    </div>
    <div>
        <div>
            <h3>Total Orders by foods</h3>
        </div>
        <div class="cont">
            <canvas id="chart2" style="width:75%"></canvas>
        </div>
    </div>
    <input type="hidden" value="{{ json_encode($data) }}" id="data">
    <input type="hidden" value="{{ json_encode($labels) }}" id="labels">
    <input type="hidden" value="{{ json_encode($lastweek_values) }}" id="lastweek_values">
    <input type="hidden" value="{{ json_encode($lastweek_labels) }}" id="lastweek_labels">
</body>
<script>
    
    
    document.addEventListener("DOMContentLoaded", () => {
        
        let chart_data = document.getElementById('data').value
        let labels = document.getElementById('labels').value

        let lastweek_values = document.getElementById('lastweek_values').value
        let lastweek_labels = document.getElementById('lastweek_labels').value

        let chart1_canvas = document.getElementById('chart1').getContext('2d')
        let chart2_canvas = document.getElementById('chart2').getContext('2d')
        
        let data2 = {
            labels: JSON.parse(labels),
            datasets: [{
                label: 'Orders',
                backgroundColor: 'Red',
                borderColor: 'Red',
                data: JSON.parse(chart_data)
            }]
		};

        let data1 = {
            labels: JSON.parse(lastweek_labels),
            datasets: [{
                label: 'Orders by date',
                backgroundColor: 'skyblue',
                borderColor: 'blue',
                data: JSON.parse(lastweek_values)
            }]
		};

        const chart2 = new Chart(chart2_canvas, {
            type: 'bar',
            data: data2,
        })

        const chart1 = new Chart(chart1_canvas, {
            type: 'bar',
            data: data1,
        })

        function get_orders_by_date(data){
            $.ajax({
                type: "POST",
                url: "/admin/analysis_by_date",
                data: data,
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (response) {
                    
                    chart1.data.labels = response.labels
                    chart1.data.datasets[0].data = response.values

                    chart1.update()
                }
            });
        }

    $(".order_date").on('change', function(){
        
        const from = $("#orders_from").val()
        const to = $("#orders_to").val()

        if(from != '' && to != ''){
            get_orders_by_date({
                orders_from:from,
                orders_to:to,
            })
        }
    })
    });
   
</script>
</html>