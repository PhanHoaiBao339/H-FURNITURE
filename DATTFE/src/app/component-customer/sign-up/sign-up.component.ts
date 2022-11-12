import { Observable } from 'rxjs';
import { AuthService } from './../../service/auth.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-sign-up',
  templateUrl: './sign-up.component.html',
  styleUrls: ['./sign-up.component.css']
})
export class SignUpComponent implements OnInit {

  constructor(private authService: AuthService) { }

  public isRegisterMessageAccept$: Observable<string> = new Observable<string>();
  public isRegisterMessageError$: Observable<string> = new Observable<string>();
  public username: string = '';
  public email: string = '';
  public password: string = '';
  public confirmPassword: string = '';

  ngOnInit() {
    this.isRegisterMessageAccept$ = this.authService.getRegisterMessageAccept();
    this.isRegisterMessageError$ = this.authService.getRegisterMessageError();
  }

  public register() {
    this.authService.register(this.username, this.email, this.password, this.confirmPassword);
  }
}
