import { map, Observable } from 'rxjs';
import { HttpHeaders, HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class CategoryService {

constructor(
  private httpClient: HttpClient
  ) { }

public getCategoryAllData(): Observable<any> {
  const ApiUrl = 'http://localhost:8080/rest/category/all';
  const httpOptions = {
    headers: new HttpHeaders({
      'Content-Type': 'application/json',
    }),
  };
  return this.httpClient.get(ApiUrl, httpOptions).pipe(map((response: any) => response));
}
}
