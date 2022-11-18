import { CommentManagerComponent } from './component-adminstator/comment-manager/comment-manager.component';
import { NewsManagerComponent } from './component-adminstator/news-manager/news-manager.component';
import { SubstanceManagerComponent } from './component-adminstator/substance-manager/substance-manager.component';
import { OrderManagerComponent } from './component-adminstator/order-manager/order-manager.component';
import { CategoryManagerComponent } from './component-adminstator/category-manager/category-manager.component';
import { ProductManagerComponent } from './component-adminstator/product-manager/product-manager.component';
import { AccountManagerComponent } from './component-adminstator/account-manager/account-manager.component';
import { AdminDashboardComponent } from './component-adminstator/admin-dashboard/admin-dashboard.component';
import { AdminLayoutComponent } from './component-adminstator/admin-layout/admin-layout.component';
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
  { path: 'admin', redirectTo: '/admin/dashboard', pathMatch: 'full' },
  {
    path: 'admin', component: AdminLayoutComponent, title: 'Admin page',
    children: [
      { path: 'dashboard', component: AdminDashboardComponent, title: 'Dashboard', },
      { path: 'account', component: AccountManagerComponent, title: 'Account Manager', },
      { path: 'product', component: ProductManagerComponent, title: 'Product Manager', },
      { path: 'category', component: CategoryManagerComponent, title: 'Category Manager', },
      { path: 'order', component: OrderManagerComponent, title: 'Order Manager', },
      { path: 'substance', component: SubstanceManagerComponent, title: 'Substance Manager', },
      { path: 'news', component: NewsManagerComponent, title: 'News Manager', },
      { path: 'comment', component: CommentManagerComponent, title: 'Comment Manager', },
    ]
  },
];

@NgModule({
  imports: [RouterModule.forRoot(routes, {scrollPositionRestoration:'enabled'})],
  exports: [RouterModule]
})
export class AppRoutingModule { }
