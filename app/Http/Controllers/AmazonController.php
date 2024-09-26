<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use DataTables;

use App\Models\AmazonProduct;

class AmazonController extends Controller
{
    public function index()
    {
        return view('amazon');
    }

    public function list(Request $request)
    {
        if ($request->ajax()) {
			$data = AmazonProduct::where('user_id', Auth::id())->get();

			return DataTables::of($data)
				->addColumn('jsonstr', function ($row) {
					return json_decode($row['product']);
				})
				->rawColumns(['jsonstr'])
				->make(true);
		}
    }

    public function get_products(Request $request)
    {
        $products = AmazonProduct::where('user_id', $request->user_id)->get();
        return $products;
    }
}
