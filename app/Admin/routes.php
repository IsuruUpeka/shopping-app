<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {
    $router->resource('users', UserController::class);
    $router->resource('foods', FoodsController::class);
    $router->resource('orders', OrderController::class);
    $router->resource('order/analysis', OrderAnalysisController::class);
    $router->resource('food-types', FoodTypeController::class);    
    $router->resource('business-settings', BusinessSettingController::class);
    $router->get('/', 'HomeController@index')->name('home');
    $router->post('/analysis_by_date', 'OrderAnalysisController@get_analysis_by_date');


});
