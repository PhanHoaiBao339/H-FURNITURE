import { Observable } from 'rxjs';
import { StaticService } from './../static.service';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class ProductManagerService {

constructor(
  private httpClient: HttpClient,
  private StaticService: StaticService
) { }

public getAllDataProduct(): Observable<any>{

  let token: string = 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbmlzdHJhdG9yIiwiaWF0IjoxNjY4NzYxMjk4LCJleHAiOjE2Njk2MjUyOTh9.QxH5S62-s_U9rLyurJzWFpREd6voLS7lVg-wh93oRXxVy5vBRTpZKFKX3-nwUmedmHIvZCIJSYG3vW5vIegOvg';

  // this.authService.getLoggedToken().subscribe(
  //   data => token = data
  // )

  const ApiUrl = '/rest/product/alldata';
  const httpOptions = {
    headers: new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': `Bearer ${token}`
    }),
  };
  return this.httpClient.get(this.StaticService.rootUrl + ApiUrl, httpOptions);
}


}
