import { Ng2SearchPipeModule } from 'ng2-search-filter';
import { MenuComponent } from './component-customer/menu/menu.component';
import { RouterModule } from '@angular/router';
import { ForgotPasswordComponent } from './component-customer/forgot-password/forgot-password.component';
import { SignUpComponent } from './component-customer/sign-up/sign-up.component';
import { SignInComponent } from './component-customer/sign-in/sign-in.component';
import { CheckoutComponent } from './component-customer/checkout/checkout.component';
import { ShoppingCartComponent } from './component-customer/shopping-cart/shopping-cart.component';
import { ShopDetailComponent } from './component-customer/shop-detail/shop-detail.component';
import { ShopComponent } from './component-customer/shop/shop.component';
import { ContactComponent } from './component-customer/contact/contact.component';
import { AboutComponent } from './component-customer/about/about.component';
import { HomeComponent } from './component-customer/home/home.component';
import { LOCALE_ID, NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NewsComponent } from './component-customer/news/news.component';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { registerLocaleData } from '@angular/common';
import localeVi from '@angular/common/locales/vi';

registerLocaleData(localeVi, 'vi');

@NgModule({
  declarations: [
    AppComponent,
    MenuComponent,
    HomeComponent,
    AboutComponent,
    ContactComponent,
    ShopComponent,
    ShopDetailComponent,
    ShoppingCartComponent,
    CheckoutComponent,
    SignInComponent,
    SignUpComponent,
    ForgotPasswordComponent,
    NewsComponent

  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    RouterModule,
    HttpClientModule,
    FormsModule,
    Ng2SearchPipeModule
  ],

  providers: [{ provide: LOCALE_ID, useValue: 'vi' }],
  bootstrap: [AppComponent]
})
export class AppModule { }

