import { ShoppingCartService } from './../../service/client-service/shopping-cart.service';
import { AuthService } from './../../service/auth.service';
import { Observable } from 'rxjs';
import { Router } from '@angular/router';
import { Component, OnInit } from '@angular/core';
import * as $ from "jquery";

@Component({
  selector: 'app-menu',
  templateUrl: './menu.component.html',
  styleUrls: ['./menu.component.css']
})
export class MenuComponent implements OnInit {

  constructor(
    private shoppingCartService: ShoppingCartService,
    private authService: AuthService
  ) { }

  public isLoggedSuccess$: Observable<boolean> = new Observable<boolean>();
  public isLoggedAdmin$: Observable<boolean> = new Observable<boolean>();
  public isLoggedUsername$: Observable<string> = new Observable<string>();
  public isLoggedFullname$: Observable<string> = new Observable<string>();

  public fullnameofuser: Observable<string> = new Observable<string>();

  public total_quantity: any;

  ngOnInit() {
    this.searchToggle();
    this.checkShoppingCart();
    this.checkLogin();
  }

  private checkShoppingCart() {
    this.shoppingCartService.total_quantity.subscribe(data => this.total_quantity = data);
    // this.shoppingCartService.ShopCartList.subscribe(data => this.ShopCartList = data);
    // this.shoppingCartService.total_price.subscribe(data => this.total_price = data);
  }

  private checkLogin() {
    this.isLoggedSuccess$ = this.authService.isLoggedSuccess();
    this.isLoggedAdmin$ = this.authService.isLoggedAdmin();
    this.isLoggedFullname$ = this.authService.getLoggedFullname();
    this.isLoggedFullname$.subscribe(data => {
      if (data == null) {
        this.fullnameofuser = this.authService.getLoggedUsername();;
      } else {
        this.fullnameofuser = this.authService.getLoggedFullname();
      }
    })
    this.authService.ResetMessage();

  }

  public logout() {
    this.authService.logout();
  }

  searchToggle(){
    $("#search_input_box").hide();
    $("#search_1").on("click", function () {
      $("#search_input_box").slideToggle();
      $("#search_input").focus();
    });
    $("#close_search").on("click", function () {
      $('#search_input_box').slideUp(500);
    });
  }

}
