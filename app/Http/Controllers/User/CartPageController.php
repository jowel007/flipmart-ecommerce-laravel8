<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Gloudemans\Shoppingcart\Facades\Cart;
use App\Models\Coupon;
use Illuminate\Support\Facades\Session;

class CartPageController extends Controller
{
    

    // add to mycart mehtod 

    public function MyCart()
    {
        return view('frontend.wishlist.view_mycart');
    }


    public function GetCartProduct()
    {
        $carts = Cart::content();
        $cartQty = Cart::count();
        $cartTotal = Cart::total();

        return response()->json(array(
            'carts' => $carts,
            'cartQty' => $cartQty,
            'cartTotal' => round($cartTotal),

        ));

    }  //end method


    public function RemoveCartProduct($rowId)
    {
        Cart::remove($rowId);


        if (Session::has('coupon')) {

           Session::forget('coupon');

        }

        return response()->json(['success' => 'Successfully Remove From Cart']);

    }   //end method


    public function CartIncrement($rowId)
    {
        $row = Cart::get($rowId);
        Cart::update($rowId, $row->qty + 1);


        if (Session::has('coupon')) {

            $coupon_name = Session::get('coupon')['coupon_name'];
            $coupon = Coupon::where('coupon_name',$coupon_name)->first();

           Session::put('coupon',[
                'coupon_name' => $coupon->coupon_name,
                'coupon_discount' => $coupon->coupon_discount,
                'discount_amount' => round((int)Cart::total() * $coupon->coupon_discount / 100, 2),
                'total_amount' => round((int)Cart::total() - (int)Cart::total() * $coupon->coupon_discount / 100, 2)

            ]);

        }


        return response()->json('Increment');
    }


    public function CartDecrement($rowId)
    {
        $row = Cart::get($rowId);
        Cart::update($rowId, $row->qty - 1);


        if (Session::has('coupon')) {

            $coupon_name = Session::get('coupon')['coupon_name'];
            $coupon = Coupon::where('coupon_name',$coupon_name)->first();

           Session::put('coupon',[
                'coupon_name' => $coupon->coupon_name,
                'coupon_discount' => $coupon->coupon_discount,
                'discount_amount' => round((int)Cart::total() * $coupon->coupon_discount / 100, 2),
                'total_amount' => round((int)Cart::total() - (int)Cart::total() * $coupon->coupon_discount / 100, 2)
            ]);
        }



        return response()->json('Decrement');
    }



}
