<?php

namespace App\Admin\Actions\Order;

use Encore\Admin\Actions\RowAction;
use Illuminate\Database\Eloquent\Model;

class SinglePagePdf extends RowAction
{
    public $name = 'Pdf';

    public function handle(Model $model)
    {

        return $this->response()->success('Success message.')->refresh();
    }

    public function href()
    {

        return "/pdf/single_order/".$this->getKey()."";
    }

}