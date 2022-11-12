import { Observable, map, BehaviorSubject } from 'rxjs';
import { StaticService } from './static.service';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { CookieService } from 'ngx-cookie-service';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root',
})
export class ShoppingCartService {

  private total_quantity_root = new BehaviorSubject(this.cookieService.get('total_quantity'));
  private total_price_root = new BehaviorSubject(this.cookieService.get('total_price'));
  private ShopCartList_root = new BehaviorSubject(JSON.parse(this.cookieService.get('listCartShop')));
  private cart_empty_root = new BehaviorSubject<boolean>(true);


  constructor(
    private cookieService: CookieService,
    private httpClient: HttpClient,
    private staticService: StaticService
  ) {}


  public total_quantity = this.total_quantity_root.asObservable();
  public total_price = this.total_price_root.asObservable();
  public ShopCartList = this.ShopCartList_root.asObservable();


  public checkProductInCart(id: string, quantity: number) {
    let listCartShop: any = [];
    if (this.cookieService.check('listCartShop')) {
      listCartShop = JSON.parse(this.cookieService.get('listCartShop'));
    }
    if (listCartShop.length == 0) {
      this.addProductToCart(id, quantity);
    } else {
      let check = true;
      for (let i = 0; i < listCartShop.length; i++) {
        const element = listCartShop[i];
        if (element.Product.id == id) {
          check = false;
          element.Quantity += quantity;
          element.TotalPrice += (quantity * element.Product.price);
          this.upCookie('listCartShop', JSON.stringify(listCartShop, null, 2));
          this.ShopCartList_root.next(JSON.parse(this.cookieService.get('listCartShop')));
          this.calculateTotal();
          break;
        }
      }
      if (check) {
        this.addProductToCart(id, quantity);
      }
    }
  }

  public changeQuantity(id: string, quantity: number) {
    let listCartShop = JSON.parse(this.cookieService.get('listCartShop'));
    for (let i = 0; i < listCartShop.length; i++) {
      const element = listCartShop[i];
      if (element.Product.id == id) {
        element.Quantity = quantity;
        element.TotalPrice = (quantity * element.Product.price);
        this.upCookie('listCartShop', JSON.stringify(listCartShop, null, 2));
        this.ShopCartList_root.next(JSON.parse(this.cookieService.get('listCartShop')));
        this.calculateTotal();
        break;
      }
    }
  }

  public checkCartEmpty(): Observable<boolean> {
    let listCartShop = JSON.parse(this.cookieService.get('listCartShop'));
    if (listCartShop.length != 0) {
      this.cart_empty_root.next(false);
      return this.cart_empty_root.asObservable();
    } else {
      this.cart_empty_root.next(true);
      return this.cart_empty_root.asObservable();
    }

  }

  public addProductToCart(id: string, quantity: number) {
    let listCartShop = JSON.parse(this.cookieService.get('listCartShop'));
    this.getProductCart(id).subscribe(resp => {
      let cartshop: object = {
        Product: resp,
        Quantity: quantity,
        TotalPrice: resp.price * quantity,
      };
      listCartShop.push(cartshop);
      this.upCookie('listCartShop', JSON.stringify(listCartShop, null, 2));
      this.ShopCartList_root.next(JSON.parse(this.cookieService.get('listCartShop')));
      this.calculateTotal();
    });
  }

  private calculateTotal() {
    let listCartShop = JSON.parse(this.cookieService.get('listCartShop'));
    let total_price: number = 0;
    let total_quantity: number = 0;
    listCartShop.forEach((element: { TotalPrice: number; Quantity: number; }) => {
      total_price += element.TotalPrice;
      total_quantity += element.Quantity;
    });
    this.upCookie('total_price', total_price + '');
    this.upCookie('total_quantity', total_quantity + '');
    this.total_price_root.next(this.cookieService.get('total_price'))
    this.total_quantity_root.next(this.cookieService.get('total_quantity'))
  }

  private upCookie(name: string, value: string) {
    if (this.cookieService.check(name)) {
      this.cookieService.delete(name);
      this.cookieService.set(name, value, 5, '/');
    } else {
      this.cookieService.set(name, value, 5, '/');
    }
  }

  public getProductCart(id: string): Observable<any> {
    const ApiUrl = '/rest/product/forcart';
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type': 'application/json'
      })
    }
    return this.httpClient.get(this.staticService.rootUrl + ApiUrl + '/' + id, httpOptions).pipe(map((response: any) => response));
  }

  public deleteProductToCart(index: number) {
    let listCartShopcook = JSON.parse(this.cookieService.get('listCartShop'));
    if (index > -1) {
      listCartShopcook.splice(index, 1);
    }
    this.upCookie('listCartShop', JSON.stringify(listCartShopcook, null, 2));
    this.ShopCartList_root.next(JSON.parse(this.cookieService.get('listCartShop')));
    this.calculateTotal();
  }

  public cleanShoppingCart() {
    this.upCookie('listCartShop', JSON.stringify([], null, 2));
    this.upCookie('total_price', '0');
    this.upCookie('total_quantity', '0');
    this.total_price_root.next(this.cookieService.get('total_price'))
    this.total_quantity_root.next(this.cookieService.get('total_quantity'))
    this.ShopCartList_root.next(JSON.parse(this.cookieService.get('listCartShop')));
  }

}
