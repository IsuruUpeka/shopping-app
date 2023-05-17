<?php

namespace App\Admin\Actions\Order;

use Barryvdh\DomPDF\Facade\Pdf;
use Encore\Admin\Actions\Action;
use Illuminate\Http\Request;
use Encore\Admin\Actions\BatchAction;
use Encore\Admin\Grid;
use Illuminate\Database\Eloquent\Collection;
use \App\Models\Order;
use Exception;
use Maatwebsite\Excel\Facades\Excel;

class ExportPdf extends Action
{
    protected $selector = '.export-pdf';

    public function handle(Request $request)
    {
        return $this->response()->success('Successfully Exported!')->refresh();
    }

    public function html()
    {
        return <<<HTML
        <a target="_blank" class="btn btn-sm btn-default btn-danger text-white export-pdf" href="/pdf/orders" style="color:#fff;">Export Pdf</a>
HTML;
    }
}