import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { map, Observable } from 'rxjs';

@Injectable({
  providedIn: 'root',
})
export class ProductService {

  constructor(private httpClient: HttpClient) {}

  public getProductAllData(): Observable<any> {
    const ApiUrl = 'http://localhost:8080/rest/product/allproduct';
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type': 'application/json',
      }),
    };
    return this.httpClient
      .get(ApiUrl, httpOptions)
      .pipe(map((response: any) => response));
  }

  public getProductDetail(id: string): Observable<any> {
    const ApiUrl = 'http://localhost:8080/rest/product/';
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type': 'application/json',
      }),
    };
    return this.httpClient
      .get(ApiUrl + id, httpOptions)
      .pipe(map((response: any) => response));
  }

  public getProductByCategory(id: string): Observable<any> {
    const ApiUrl = 'http://localhost:8080/rest/product/findbycategory/';
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type': 'application/json',
      }),
    };
    return this.httpClient
      .get(ApiUrl + id, httpOptions)
      .pipe(map((response: any) => response));
  }



}
