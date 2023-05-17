<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;
use \App\Models\Order;
use App\Models\OrderDetail;

class PdfController extends Controller
{
    public function orders(Request $request){
        $data = [
            'title' => 'Orders',
            'orders' => Order::all()
        ];

        $pdf = Pdf::loadView('batch', $data)->setPaper('A4', 'landscape');
        return $pdf->download('orders.pdf');  
    }

    public function single_order(Request $request, $order_id){
        $original_order = Order::find($order_id);
        $order_details = OrderDetail::where('order_id',$order_id)->get();
        $foods = [];
        $total = 0;

        foreach($order_details as $detail){
            $food = json_decode($detail->food_details);
            $food->quantity = $detail->quantity;
            $total += $detail->price * $detail->quantity;

            array_push($foods, $food);
        }

        //dd($original_order);
        $data = [
            'title' => 'My PDF Document',
            'foods' => $foods,
            'order' => $original_order,
            'order_info' => Order::find($order_id),
            'delivery' => json_decode($original_order->delivery_address),
            'total' => $total,
        ];
        //var_dump($original_order);die();
       // return view('single_order', $data);

        $pdf = Pdf::loadView('single_order', $data)->setPaper('A4', 'portrait');
        return $pdf->download('Order_'.$original_order->id.'.pdf');  
    }

    public function users(){
        $data = [
            'title' => 'Users',
            'users' => \App\Models\User::all()
        ];

        $pdf = Pdf::loadView('batch', $data)->setPaper('A4', 'landscape');
        return $pdf->download('usres.pdf');  
    }
    
}
