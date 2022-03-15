<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use Gloudemans\Shoppingcart\Facades\Cart;
use Auth;
use App\Models\Wishlist;
use Carbon\Carbon;

class CartController extends Controller
{
    public function AddToCart(Request $request,$id)
    {
        $product = Product::findOrFail($id);

        if ($product->discount_price==NULL) {
            
            Cart::add([
                'id' => $id, 
                'name' => $request->product_name, 
                'qty' => $request->quantity, 
                'price' =>  $product->selling_price, 
                'weight' => 1, 
                'options' => [
                    'image' => $product->product_thambnail,
                    'size' => $request->size,
                    'color' => $request->color,
                ],

            ]);

            return response()->json(['success' => 'Successfully Added on Your Cart']);

        } else {

             Cart::add([
                'id' => $id, 
                'name' => $request->product_name, 
                'qty' => $request->quantity, 
                'price' =>  $product->discount_price, 
                'weight' => 1, 
                'options' => [
                    'image' => $product->product_thambnail,
                    'size' => $request->size,
                    'color' => $request->color,
                ],
                
            ]);

             return response()->json(['success' => 'Successfully Added on Your Cart']);

        }
        
    }


// Mini Cart Section
    public function AddMiniCart()
    {
        $carts = Cart::content();
        $cartQty = Cart::count();
        $cartTotal = Cart::total();

        return response()->json(array(
            'carts' => $carts,
            'cartQty' => $cartQty,
            'cartTotal' => round($cartTotal),

        ));

    }

    

    /// remove mini cart 
    public function RemoveMiniCart($rowId){
        Cart::remove($rowId);
        return response()->json(['success' => 'Product Remove from Cart']);

    } // end mehtod 



        // add to wishlist mehtod 

    public function AddToWishlist(Request $request, $product_id){

        if (Auth::check()) {

            $exits = Wishlist::where('user_id',Auth::id())->where('product_id',$product_id)->first();


            if (!$exits) {

                Wishlist::insert([
                'user_id' => Auth::id(),
                'product_id' => $product_id,
                'created_at' => Carbon::now(),

                ]);

            return response()->json(['success' => 'Successfully Added On Your Wishlist']);
        

        }else {

            return response()->json(['error' => 'this product already on your wishlist']);
        }


            
            
        }else{

            return response()->json(['error' => 'At First Login Your Account']);

        }

    } // end mehtod 




}
