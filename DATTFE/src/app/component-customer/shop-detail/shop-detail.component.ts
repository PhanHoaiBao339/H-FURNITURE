import { CategoryService } from './../../service/category.service';
import { ShoppingCartService } from './../../service/shopping-cart.service';
import { ProductService } from './../../service/product.service';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, ParamMap, Router } from '@angular/router';

@Component({
  selector: 'app-shop-detail',
  templateUrl: './shop-detail.component.html',
  styleUrls: ['./shop-detail.component.css'],
})
export class ShopDetailComponent implements OnInit {
  constructor(
    private productService: ProductService,
    private categoryService: CategoryService,
    private shoppingCartService: ShoppingCartService,
    private route: ActivatedRoute,
    private router: Router
  ) {}

  private idproduct: any;
  public product: any;
  public quantity: number = 1;

  ngOnInit() {
    this.idproduct = String(this.getIdProduct());
    this.getProductDetail();
  }

  public getIdProduct() {
    let id: any;
    this.route.paramMap.subscribe((params: ParamMap) => {
      id = String(params.get('id'));
    });
    console.log(id);
    return id;
  }

  public getProductDetail() {
    this.productService.getProductDetail(this.idproduct).subscribe((reps) => {
      this.product = reps;
    });
  }

  //Quantity
  public plusQuantity() {
    var x = Number(
      (document.getElementById('quantity') as HTMLInputElement).value
    );
    x += 1;
    console.log(String(x));
    (document.getElementById('quantity') as HTMLInputElement).value = String(x);
  }

  public minusQuantity() {
    var x = Number(
      (document.getElementById('quantity') as HTMLInputElement).value
    );

    if (x > 1) {
      x -= 1;
    } else {
      x = 1;
    }
    console.log(String(x));
    (document.getElementById('quantity') as HTMLInputElement).value = String(x);
  }

  public getNumber(){
    var count = (document.getElementById('quantity')as HTMLInputElement).value;
    console.log('count:');
    console.log(String(count));
    this.quantity = Number(count);

    this.addToCart();
  }

  public addToCart() {
    console.log("Add to Cart");
    console.log("Id: " + this.idproduct);
    console.log("Quantity: " + this.quantity);
    this.shoppingCartService.checkProductInCart(this.idproduct, this.quantity);
  }
}
