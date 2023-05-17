<?php

namespace App\Admin\Actions;

use Encore\Admin\Actions\Action;
use Illuminate\Http\Request;

class UsersPdf extends Action
{
    protected $selector = '.users-pdf';

    public function handle(Request $request)
    {
        // $request ...

        return $this->response()->success('Success message...')->refresh();
    }

    public function html()
    {
        return <<<HTML
            <a target="_blank" class="btn btn-sm btn-default btn-danger text-white export-pdf" href="/pdf/users" style="color:#fff;">Export Pdf</a>
HTML;
    }
}