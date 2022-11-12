import { Observable } from 'rxjs';
import { AuthService } from './../../service/auth.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-sign-in',
  templateUrl: './sign-in.component.html',
  styleUrls: ['./sign-in.component.css']
})
export class SignInComponent implements OnInit {

  constructor(private authService: AuthService) { }
  public isLoginMessageAccept$: Observable<string> = new Observable<string>();
  public isLoginMessageError$: Observable<string> = new Observable<string>();


  public isRegisterUsername$: Observable<string> = new Observable<string>();

  public username: any;
  public password: any;
  ngOnInit() {
    this.isLoginMessageAccept$ = this.authService.getLoginMessageAccept();
    this.isLoginMessageError$ = this.authService.getLoginMessageError();

    this.isRegisterUsername$ = this.authService.getRegisterUsername();
    this.isRegisterUsername$.subscribe(data => {
      this.username = data;
    })
  }

  public login() {
    this.authService.login(this.username, this.password);
  }

}
