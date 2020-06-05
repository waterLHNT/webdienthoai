<?php

namespace App\Providers;
use App\thuonghieu;
use App\Cart;
use Session;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('leftmenu',function($view){
            $thuonghieu = thuonghieu::all();
            // if(Session('cart')){
            //     $oldCart = Session::get('cart');
            //     $cart = new Cart($oldCart);
            // }
            $view->with('thuonghieu',$thuonghieu);
            // $view->with(['thuonghieu',$thuonghieu,'cart'=>Session::get('cart'),'product_cart'=>$cart->items,'totalPrice'=>$cart->totalPrice,'totalQty'=>$cart->totalQty]);

        });


    }

}
