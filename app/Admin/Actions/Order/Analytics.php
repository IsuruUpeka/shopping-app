<?php

namespace App\Admin\Actions\Order;

use Encore\Admin\Actions\Action;
use Illuminate\Http\Request;

class Analytics extends Action
{
    protected $selector = '.analytics';

    public function handle(Request $request)
    {
        // $request ...

        return $this->response()->success('Success message...')->refresh();
    }

    public function html()
    {
        return <<<HTML
        <a href="/admin/order/analysis" class="btn btn-sm btn-default btn-info text-white" style="margin-left:5px;color:#fff;">Analytics</a>
HTML;
    }
}