import { AuthService } from './../../service/auth.service';
import { Observable, BehaviorSubject } from 'rxjs';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-admin-layout',
  templateUrl: './admin-layout.component.html',
  styleUrls: ['./admin-layout.component.scss']
})
export class AdminLayoutComponent implements OnInit {

  constructor(
    private authService: AuthService
  ) { }

  public isLoggedSuccess$: Observable<boolean> = new Observable<boolean>();
  public isLoggedAdmin$: Observable<boolean> = new Observable<boolean>();
  public isLoggedUsername$: Observable<string> = new Observable<string>();
  public isLoggedFullname$: Observable<string> = new Observable<string>();


  public fullnameofuser: Observable<string> = new Observable<string>();

  public titlepage$ = new BehaviorSubject<string>('');

  ngOnInit(): void {
    this.load();
    this.titlepage$.next(document.title);
    this.checkLogin();
  }

  private checkLogin() {
    this.isLoggedSuccess$ = this.authService.isLoggedSuccess();
    this.isLoggedAdmin$ = this.authService.isLoggedAdmin();
    this.isLoggedFullname$ = this.authService.getLoggedFullname();
    this.isLoggedFullname$.subscribe(data => {
      if (data == null) {
        this.fullnameofuser = this.authService.getLoggedUsername();;
      } else {
        this.fullnameofuser = this.authService.getLoggedFullname();
      }
    })
    this.authService.ResetMessage();

  }

  public logout() {
    this.authService.logout();
  }

  public changeTitlePage(title: string) {
    this.titlepage$.next(title);
  }








  private load() {
    let sidebar = <HTMLElement>document.querySelector(".sidebar");
    let closeBtn = <HTMLElement>document.querySelector("#btn");
    let searchBtn = <HTMLElement>document.querySelector(".bx-search")

    closeBtn.addEventListener("click", function () {
      sidebar.classList.toggle("open")
      menuBtnChange()
    })

    searchBtn.addEventListener("click", function () {
      sidebar.classList.toggle("open")
      menuBtnChange()
    })

    function menuBtnChange() {
      if (sidebar.classList.contains("open")) {
        closeBtn.classList.replace("bx-menu", "bx-menu-alt-right")
      } else {
        closeBtn.classList.replace("bx-menu-alt-right", "bx-menu")
      }
    }
  }

}
