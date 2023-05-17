<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Food;
use App\Models\Order;
use App\Models\OrderDetail;
use Encore\Admin\Controllers\Dashboard;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class OrderAnalysisController extends Controller
{
    public function index(Content $content)
    {
        $labels = [];
        $data = [];

        $lastweek_labels = [];
        $lastweek_values = [];

        $date = Carbon::today()->subDays(7);
        $lastweek = Order::where('created_at', '>=', $date)->get();
        $lastweek_orders_details = OrderDetail::where('created_at', '>=', $date)->get();

        $total_sales = 0;
        $lastweek_sales = 0;

        foreach (OrderDetail::all() as $order) {
            $total_sales = $total_sales + $order->price;
        }

        foreach ($lastweek_orders_details as $order) {
            $food = json_decode($order->food_details);

            if(!in_array($food->name, $lastweek_labels)){
               array_push($lastweek_labels,$food->name);
               array_push($lastweek_values, count(OrderDetail::where('created_at', '>=', $date)->where('food_id', $order->food_id)->get())); 
            }

            $lastweek_sales = $lastweek_sales + $order->price;
        }

        foreach (Food::all() as $food) {

            $orders = count(OrderDetail::where('food_id', $food->id)->get());

            if ($orders > 0) {
                array_push($labels, $food->name);
                array_push($data, $orders);
            }
        }

        //dd(["data"=> $data, "labels" => $labels]);

        return $content
            ->header('chart')
            ->title('Order Analysis')
            ->description('Description...')
            ->row(Dashboard::title())
            ->view('order_analysis', [
                "data" => $data,
                "labels" => $labels,
                "orders" => Order::all(),
                "lastweek" => $lastweek,
                "sales" => $total_sales,
                "lastweek_sales" => $lastweek_sales,
                "lastweek_labels" => $lastweek_labels,
                "lastweek_values" => $lastweek_values,
                "to" => Carbon::today(),
                "from" => Carbon::today()->subDays(7),
                
            ]);
    }

    public function get_analysis_by_date(Request $request)
    {
        $labels = [];
        $values = [];

        $startDate = Carbon::createFromFormat('Y-m-d', $request->orders_from)->startOfDay();
        $endDate = Carbon::createFromFormat('Y-m-d', $request->orders_to)->endOfDay();

        $orders = OrderDetail::whereBetween('created_at', [$startDate . " 00:00:00", $endDate . " 23:59:59"])->get();

       // return $orders;

        foreach ($orders as $order) {
            $food = json_decode($order->food_details);

            if (!in_array($food->name, $labels)) {
                array_push($labels, $food->name);
                array_push($values, count(OrderDetail::whereBetween('created_at', [$startDate . " 00:00:00", $endDate . " 23:59:59"])->where('food_id', $order->food_id)->get()));
            }
        }

        return [
            "labels" => $labels,
            "values" => $values
        ];
    }
}
