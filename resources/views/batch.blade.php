<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        #orders {
        font-family: Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 100%;
        }

        #orders td, #orders th {
        border: 1px solid #ddd;
        padding: 8px;
        }

        #orders tr:nth-child(even){background-color: #f2f2f2;}

        #orders tr:hover {background-color: #ddd;}

        #orders th {
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: left;
        background-color: #222;
        color: white;
        }
        .head{
            margin-top: 10px;
            margin-bottom: 10px;
        }
        h1{
            margin-bottom: 2px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="head">
            <h1>Pizza Bella Verona - {{ $title }}</h1>
            <p>{{ date('Y-m-d') }}</p>
        </div>
        @if(isset($orders))
        <table class="table" id="orders">
            <thead>
              <tr>
                <th scope="col">Order Id</th>
                <th scope="col">User Id</th>
                <th scope="col">Order amount</th>
                <th scope="col">Payment method</th>
                <th scope="col">Order status</th>
                <th scope="col">Accepted</th>
                <th scope="col">Scheduled</th>
                <th scope="col">Order type</th>
                <th scope="col">Created at</th>
              </tr>
            </thead>
            <tbody>
                @foreach ($orders as $item)
                    <tr>
                        <td>{{$item->id}}</td>
                        <td>{{$item->user_id}}</td>
                        <td>{{$item->order_amount}}</td>
                        <td>{{$item->payment_method}}</td>
                        <td>{{$item->order_status}}</td>
                        <td>{{$item->accepted}}</td>
                        <td>{{$item->scheduled}}</td>
                        <td>{{$item->order_type}}</td>
                        <td>{{$item->created_at}}</td>
                    </tr>
                @endforeach
            </tbody>
          </table>
        @endif

        @if(isset($users))
        <table class="table" id="orders">
            <thead>
              <tr>
                <th scope="col">User Id</th>
                <th scope="col">First name</th>
                <th scope="col">Phone</th>
                <th scope="col">Email</th>
              </tr>
            </thead>
            <tbody>
                @foreach ($users as $item)
                    <tr>
                        <td>{{$item->id}}</td>
                        <td>{{$item->f_name}}</td>
                        <td>{{$item->phone}}</td>
                        <td>{{$item->email}}</td>
                    </tr>
                @endforeach
            </tbody>
          </table>
          @endif
    </div>
    
</body>
</html>