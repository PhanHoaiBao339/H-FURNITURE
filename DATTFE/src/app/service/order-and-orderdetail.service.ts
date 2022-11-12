import { AsyncSubject, Observable, BehaviorSubject } from 'rxjs';
import { StaticService } from './static.service';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class OrderAndOrderdetailService {

  constructor(private httpClient: HttpClient, private staticService: StaticService) { }

  public saveOrder(username: string, fullname: string, address: string, phone: string, note: string, paymentmethod: string): Observable<any> {
    console.log(username);

    let order = {
      "username": username,
      "fullname": fullname,
      "address": address,
      "phone": phone,
      "note": note,
      "paymentmethod": paymentmethod
    }
    const ApiUrl = '/rest/checkout/saveorder';
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type': 'application/json'
      })
    }
    return this.httpClient.post(this.staticService.rootUrl + ApiUrl, order, httpOptions);
  }



  public saveOrderDetail(orderRespone: any, ShopCartList: any): Observable<any> {
    let item;
    let list: any = [];
    ShopCartList.forEach((element: any) => {
      item = {
        "product": element.Product,
        "quantity": element.Quantity,
        "totalprice": element.TotalPrice
      }
      list.push(item)
    });


    let orderdetail = {
      "orderid": orderRespone.id,
      "list": list
    };
    console.log(ShopCartList);
    console.log(orderdetail);

    const ApiUrl = '/rest/checkout/saveorderdetail';
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type': 'application/json'
      })
    }
    return this.httpClient.post(this.staticService.rootUrl + ApiUrl, orderdetail, httpOptions);
  }
}
