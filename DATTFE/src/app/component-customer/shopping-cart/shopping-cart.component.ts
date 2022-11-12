import { Router } from '@angular/router';
import { ShoppingCartService } from './../../service/shopping-cart.service';
import { CookieService } from 'ngx-cookie-service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-shopping-cart',
  templateUrl: './shopping-cart.component.html',
  styleUrls: ['./shopping-cart.component.css']
})
export class ShoppingCartComponent implements OnInit {

  constructor(
    private cookieService: CookieService,
    private shoppingCartService: ShoppingCartService,
    private router: Router,
  ) { }

  public total_quantity: any;
  public total_price: any;
  public ShopCartList: any = [];
  public cartEmpty: any;

  ngOnInit() {
    this.shoppingCartService.total_price.subscribe(data => this.total_price = data);
    this.shoppingCartService.total_quantity.subscribe(data => this.total_quantity = data);
    this.shoppingCartService.ShopCartList.subscribe(data => this.ShopCartList = data);
    this.shoppingCartService.checkCartEmpty().subscribe(data => this.cartEmpty = data);
  }

  public removeProcuctInCart(index: number) {
    this.shoppingCartService.deleteProductToCart(index);
    this.shoppingCartService.checkCartEmpty().subscribe(data => this.cartEmpty = data);
  }

  public CleanAllCart() {
    this.shoppingCartService.cleanShoppingCart();
    this.shoppingCartService.checkCartEmpty().subscribe(data => this.cartEmpty = data);
  }

  public changeSubTotal(product: any) {
    this.shoppingCartService.changeQuantity(product.Product.id, product.Quantity);
  }

  public plusQuantity(itemCart: any, index: number) {
    var x = Number((document.getElementById('quantity'+ index) as HTMLInputElement).value);
    x += 1;
    console.log(String(x));
    (document.getElementById('quantity'+ index) as HTMLInputElement).value = String(x)
    this.shoppingCartService.changeQuantity(itemCart.Product.id, x);
  }

  public minusQuantity(itemCart: any, index: number) {
    var x = Number((document.getElementById('quantity' + index) as HTMLInputElement).value);

    if (x > 1) {
      x -= 1;
    } else {
      x = 1;
    }
    console.log(String(x));
    (document.getElementById('quantity' + index) as HTMLInputElement).value = String(x)
    this.shoppingCartService.changeQuantity(itemCart.Product.id, x);
  }

}
