import { NewsComponent } from './component-customer/news/news.component';
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
import { MenuComponent } from './component-customer/menu/menu.component';
import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  { path: '', redirectTo: '/home', pathMatch: 'full' },
  {
    path: '', component: MenuComponent,
    children: [
      { path: 'home', component: HomeComponent, title: 'Home',},
      { path: 'about', component: AboutComponent,title: 'About Us',},
      { path: 'contact', component: ContactComponent, title: 'Contact',},
      { path: 'shop', component: ShopComponent, },
      { path: 'shop-detail/:id', component: ShopDetailComponent, },
      { path: 'shopping-cart', component: ShoppingCartComponent, title: 'Shopping Cart', },
      { path: 'checkout', component: CheckoutComponent, title: 'Check Out', },
      { path: 'sign-in', component: SignInComponent, title: 'SignIn', },
      { path: 'sign-up', component: SignUpComponent, title: 'SignUp', },
      { path: 'forgot-password', component: ForgotPasswordComponent, title: 'Forgot Password', },
      { path: 'news', component: NewsComponent, title: 'News', },

    ]
  },

];

@NgModule({
  imports: [RouterModule.forRoot(routes, {scrollPositionRestoration:'enabled'})],
  exports: [RouterModule]
})
export class AppRoutingModule { }
