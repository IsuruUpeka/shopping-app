<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        .main {
            border: 1px solid #222;
            padding: 25px;
        }

        .cont {
            border-bottom: 1px solid #cecece;
        }

        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td,
        th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
</head>

<body>
    <div class="main">
        <div>
            <h2 style="margin-bottom: 0px;">Order - {{ $order->order_id }}</h2>
            <p>{{ $order->created_at }}</p>
        </div>
        <div>
            <h3>Order Details</h3>
            <div class="cont">
                <h4>Order status - {{ $order_info->order_status }}</h4>
                <h4>Confirmed - {{ $order_info->confirmed }}</h4>
                <h4>Payment status - {{ $order_info->payment_status }}</h4>
                <h4>Payment method - {{ $order_info->payment_method }}</h4>
            </div>
            <div class="cont">
                <h3>Delivery Details</h3>
                <h5>{{ $delivery->contact_person_name }}</h5>
                <h5>{{ $delivery->contact_person_number }}</h5>
                <h5>{{ $delivery->address }}</h5>
                @if ($order_info->delivered != null)
                    <h3 style="color:green;">Delivered - {{ $order_info->delivered }}</h3>
                @else
                    <h3 style="color:rgb(240, 36, 57);">Not Delivered Yet</h3>
                @endif
            </div>
            <div class="cont">
                <h3>Order Items</h3>
                <table>
                    <tr>
                        <th>Item name</th>
                        <th>Price</th>
                        <th>Quantity</th>
                    </tr>
                    @foreach ($foods as $food)
                    <tr>
                        <td>{{ $food->name }}</td>
                        <td>{{ $food->price }}</td>
                        <td>{{ $food->quantity }}</td>
                    </tr>
                    @endforeach
                    
                </table>
            </div>
            <div class="row">{{ $order->price }}
                <h3>Total - RS.{{ intval($total)}}.00</h3>
            </div>
        </div>
    </div>
</body>

</html>
