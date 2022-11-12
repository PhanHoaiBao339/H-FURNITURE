import { CookieService } from 'ngx-cookie-service';
import { Observable, BehaviorSubject } from 'rxjs';
import { OrderAndOrderdetailService } from './../../service/order-and-orderdetail.service';
import { AuthService } from './../../service/auth.service';
import { ShoppingCartService } from './../../service/shopping-cart.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-checkout',
  templateUrl: './checkout.component.html',
  styleUrls: ['./checkout.component.css']
})
export class CheckoutComponent implements OnInit {

  constructor(
    private cookieService: CookieService,
    private shoppingCartService: ShoppingCartService,
    private authService: AuthService,
    private orderAndOrderdetailService: OrderAndOrderdetailService
  ) { }

  public total_quantity: any;
  public total_price: any;
  public ShopCartList: any = [];
  public username = '';
  public fullname = '';
  public email = '';
  public phoneNo = '';
  public address = '';
  public note = '';
  public paymentMethod = '';
  public createaAccount = false;

  ngOnInit(): void {
    this.shoppingCartService.total_price.subscribe(data => this.total_price = data);
    this.shoppingCartService.total_quantity.subscribe(data => this.total_quantity = data);
    this.shoppingCartService.ShopCartList.subscribe(data => this.ShopCartList = data);
    this.checkUserLogin();
  }

  private checkUserLogin() {
    this.authService.isLoggedSuccess().subscribe(
      data => {
        if (data) {
          this.authService.getLoggedUsername().subscribe(
            value => this.username = value
          )
          this.authService.getLoggedFullname().subscribe(
            value => this.fullname = value
          )
          this.authService.getLoggedEmail().subscribe(
            value => this.email = value
          )
          this.authService.getLoggedPhone().subscribe(
            value => this.phoneNo = value
          )
          this.authService.getLoggedAddress().subscribe(
            value => this.address = value
          )
        }
      }
    )
  }

  public placeOrder() {
    if (this.fullname == '' || this.address == '' || this.phoneNo == '' || this.paymentMethod == '') {
      alert('Please complete all information!');
    } else {
      this.authService.isLoggedSuccess().subscribe(
        data => {
          if (!data) {
            this.createAccountGuest();
            this.authService.getRegisterUsernameGuest().subscribe(
              value => {
                let username = value;

                this.orderAndOrderdetailService.saveOrder(username, this.fullname, this.address, this.phoneNo, this.note, this.paymentMethod).subscribe(value1 => {
                  let ShopCartList = JSON.parse(this.cookieService.get('listCartShop'));
                  console.log(value1.id);
                  console.log(ShopCartList);
                  this.orderAndOrderdetailService.saveOrderDetail(value1, this.ShopCartList).subscribe(value => {
                    alert(value.message);
                    if (value.status) {
                      this.shoppingCartService.cleanShoppingCart();
                    }
                  });
                });
              }
            )
          } else {
            this.orderAndOrderdetailService.saveOrder(this.username, this.fullname, this.address, this.phoneNo, this.note, this.paymentMethod).subscribe(value2 => {
              let ShopCartList = JSON.parse(this.cookieService.get('listCartShop'));
              console.log(value2);
              console.log(ShopCartList);

              this.orderAndOrderdetailService.saveOrderDetail(value2, ShopCartList).subscribe(value => {
                alert(value.message);
                if (value.status) {
                  this.shoppingCartService.cleanShoppingCart();
                }
              });
            });
          }
        }
      );


    }
  }



  private createAccountGuest() {
    this.authService.registerGuest(this.email, this.fullname, this.phoneNo, this.address);

    if (this.createaAccount) {
      // Gửi tài khoản và mật khẩu đến email
    }
  }



}
