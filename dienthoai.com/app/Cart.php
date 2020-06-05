<?php

namespace App;

class Cart
{
	public $items = null;
	public $totalQty = 0;
	public $totalPrice = 0;

	public function __construct($oldCart){
		if($oldCart){
			$this->items = $oldCart->items;
			$this->totalQty = $oldCart->totalQty;
			$this->totalPrice = $oldCart->totalPrice;
		}
	}

	// public function add($item, $madienthoai){
	// 	$giohang = ['qty'=>0, 'price' => $item->gia, 'item' => $item];
	// 	if($this->items){
	// 		if(array_key_exists($madienthoai, $this->items)){
	// 			$giohang = $this->items[$madienthoai];
	// 		}
	// 	}
	// 	$giohang['qty']++;
	// 	$giohang['price'] = $item->gia * $giohang['qty'];
	// 	$this->items[$madienthoai] = $giohang;
	// 	$this->totalQty++;
	// 	$this->totalPrice += $item->gia;
	// }
	public function add($item, $madienthoai){
		if($item->gia_khuyenmai == 0){
			$giohang = ['qty'=>0, 'price' => $item->gia, 'item' => $item];
		}
		else{
			$giohang = ['qty'=>0, 'price' => $item->gia_khuyenmai, 'item' => $item];
		}
		if($this->items){
			if(array_key_exists($madienthoai, $this->items)){
				$giohang = $this->items[$madienthoai];
			}
		}
		$giohang['qty']++;
		if($item->gia_khuyenmai == 0){
			$giohang['price'] = $item->gia * $giohang['qty'];
		}
		else{
			$giohang['price'] = $item->gia_khuyenmai * $giohang['qty'];
		}
		$this->items[$madienthoai] = $giohang;
		$this->totalQty++;
		if($item->gia_khuyenmai == 0){
			$this->totalPrice += $item->gia;
		}
		else{
			$this->totalPrice += $item->gia_khuyenmai;
		}
		
	}



	//xóa 1
	public function reduceByOne($madienthoai){
		$this->items[$id]['qty']--;
		$this->items[$id]['price'] -= $this->items[$id]['item']['price'];
		$this->totalQty--;
		$this->totalPrice -= $this->items[$id]['item']['price'];
		if($this->items[$id]['qty']<=0){
			unset($this->items[$id]);
		}
	}
	//xóa nhiều
	public function removeItem($madienthoai){
		$this->totalQty -= $this->items[$id]['qty'];
		$this->totalPrice -= $this->items[$id]['price'];
		unset($this->items[$id]);
	}
}
