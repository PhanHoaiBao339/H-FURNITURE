import { Observable, BehaviorSubject, AsyncSubject } from 'rxjs';
import { StaticService } from './static.service';
import { Router } from '@angular/router';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  constructor(
    private httpClient: HttpClient,
    private staticService: StaticService,
    private router: Router
  ) { }

  private registerMessageAccept: BehaviorSubject<string> = new BehaviorSubject<string>('');
  private registerMessageError: BehaviorSubject<string> = new BehaviorSubject<string>('');
  private registerUsername: BehaviorSubject<string> = new BehaviorSubject<string>('');
  private registerUsernameGuest: AsyncSubject<string> = new AsyncSubject<string>();
  private loggedSuccess: BehaviorSubject<boolean> = new BehaviorSubject<boolean>(false);
  private loggedAdmin: BehaviorSubject<boolean> = new BehaviorSubject<boolean>(false);
  private loggedDire: BehaviorSubject<boolean> = new BehaviorSubject<boolean>(false);
  private loggedUsername: BehaviorSubject<string> = new BehaviorSubject<string>('');
  private loggedFullname: BehaviorSubject<string> = new BehaviorSubject<string>('');
  private loggedEmail: BehaviorSubject<string> = new BehaviorSubject<string>('');
  private loggedPhone: BehaviorSubject<string> = new BehaviorSubject<string>('');
  private loggedAddress: BehaviorSubject<string> = new BehaviorSubject<string>('');
  private loggedGender: BehaviorSubject<boolean> = new BehaviorSubject<boolean>(true);
  private loggedBirthday: BehaviorSubject<Date> = new BehaviorSubject<Date>(new Date);
  private loggedPhoto: BehaviorSubject<string> = new BehaviorSubject<string>('');
  private loginMessageAccept: BehaviorSubject<string> = new BehaviorSubject<string>('');
  private loginMessageError: BehaviorSubject<string> = new BehaviorSubject<string>('');


  public login(username: string, password: string) {
    this.callLoginResponse(username, password).subscribe(
      resp => {
        if (resp.message == 'Successfully') {
          this.loggedSuccess.next(true);
          this.loginMessageAccept.next("Logged in successfully!");
          this.loggedFullname.next(resp.fullname);
          this.loggedUsername.next(resp.username);
          this.loggedEmail.next(resp.email);
          this.loggedPhone.next(resp.phone);
          this.loggedAddress.next(resp.address);
          // this.loggedGender.next(resp.gender);
          // this.loggedBirthday.next(resp.birthday);
          // this.loggedPhoto.next(resp.photo);
          switch (resp.role) {
            case 'ADMIN':
              this.loggedAdmin.next(true);
              break;
            case 'DIRE':
              this.loggedDire.next(true);
              break;
          }
          setTimeout(() => this.router.navigate(["/home"]), 1000);
        } else {
          this.loginMessageError.next("Your account or password is incorrect!")
        }
      }
    )
  }

  private callLoginResponse(usernameOrEmail: string, password: string): Observable<any> {
    let expression: RegExp = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}$/i;
    let loginRequest;
    if (expression.test(usernameOrEmail)) {
      loginRequest = {
        "username": '',
        "password": password,
        "email": usernameOrEmail
      }
    } else {
      loginRequest = {
        "username": usernameOrEmail,
        "password": password,
        "email": ''
      }
    }

    const ApiUrl = '/api/auth/signin';
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type': 'application/json'
      })
    }
    return this.httpClient.post(this.staticService.rootUrl + ApiUrl, loginRequest, httpOptions);
  }

  public logout() {
    this.loggedSuccess.next(false);
    this.loggedAdmin.next(false);
    this.loggedDire.next(false);
    this.loggedUsername.next('');
    this.loggedFullname.next('');
    this.loggedEmail.next('');
    this.loggedPhone.next('');
    this.loggedAddress.next('');
    this.loginMessageAccept.next('');
    this.loginMessageError.next('');
    this.registerMessageAccept.next('');
    this.registerMessageError.next('');
    this.registerUsername.next('');
  }

  public Forbidden() {
    let authTrue = new BehaviorSubject<boolean>(true).asObservable;
    if (this.isLoggedAdmin != authTrue || this.isLoggedDire != authTrue) {
      this.loginMessageError.next("You do not have permission to access it!")
    } else {
      this.loginMessageAccept.next("Logged in successfully!");
    }
  }

  public register(username: string, email: string, password: string, confirmPassword: string) {
    this.registerMessageAccept.next('');
    this.registerMessageError.next('');
    if (password != confirmPassword) {
      this.registerMessageError.next("Confirmed password is incorrect!");
    } else {
      this.registerResponse(username, email, password).subscribe(
        resp => {
          if (resp.status) {
            this.registerMessageAccept.next(resp.message);
            this.registerUsername.next(username);
            setTimeout(() => this.router.navigate(["/sign-in"]), 1500);
          } else {
            this.registerMessageError.next(resp.message);
          }
        }
      )
    }
  }

  public registerGuest(email: string, fullname: string, phone: string, address: string) {
    this.createGuestResponse(email, fullname, phone, address).subscribe(
      resp => {
          this.registerUsernameGuest.next(resp.usernameguest);
          this.registerUsernameGuest.complete();
      }
    )

  }

  private registerResponse(username: string, email: string, password: string): Observable<any> {
    let registerRequest = {
      "username": username,
      "email": email,
      "password": password
    }
    const ApiUrl = '/api/auth/signup';
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type': 'application/json'
      })
    }
    return this.httpClient.post(this.staticService.rootUrl + ApiUrl, registerRequest, httpOptions);
  }
  private createGuestResponse(email: string, fullname: string, phone: string, address: string): Observable<any> {
    let registerRequest = {
      "email": email,
      "fullname": fullname,
      "phone": phone,
      "address": address
    }
    const ApiUrl = '/api/auth/createguest';
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type': 'application/json'
      })
    }
    return this.httpClient.post(this.staticService.rootUrl + ApiUrl, registerRequest, httpOptions);
  }

  public isLoggedSuccess(): Observable<boolean> {
    return this.loggedSuccess.asObservable();
  }
  public isLoggedAdmin(): Observable<boolean> {
    return this.loggedAdmin.asObservable();
  }
  public isLoggedDire(): Observable<boolean> {
    return this.loggedDire.asObservable();
  }

  public getLoggedUsername(): Observable<string> {
    return this.loggedUsername.asObservable();
  }
  public getLoggedFullname(): Observable<string> {
    return this.loggedFullname.asObservable();
  }
  public getLoggedEmail(): Observable<string> {
    return this.loggedEmail.asObservable();
  }
  public getLoggedPhone(): Observable<string> {
    return this.loggedPhone.asObservable();
  }
  public getLoggedAddress(): Observable<string> {
    return this.loggedAddress.asObservable();
  }

  public getLoginMessageAccept(): Observable<string> {
    return this.loginMessageAccept.asObservable();
  }

  public getLoginMessageError(): Observable<string> {
    return this.loginMessageError.asObservable();
  }
  public getRegisterMessageAccept(): Observable<string> {
    return this.registerMessageAccept.asObservable();
  }
  public getRegisterMessageError(): Observable<string> {
    return this.registerMessageError.asObservable();
  }
  public getRegisterUsername(): Observable<string> {
    return this.registerUsername.asObservable();
  }
  public getRegisterUsernameGuest(): Observable<string> {
    return this.registerUsernameGuest.asObservable();
  }

  public ResetMessage() {
    this.loginMessageAccept.next('');
    this.loginMessageError.next('');
    this.registerMessageAccept.next('');
    this.registerMessageError.next('');
    this.registerUsername.next('');
    this.registerUsernameGuest.next('');
  }


}
