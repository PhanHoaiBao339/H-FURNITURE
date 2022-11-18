import { Observable } from 'rxjs';
import { AuthService } from './../../service/auth.service';
import { AccountManagerService } from './../../service/admin-service/account-manager.service';
import { keyframes } from '@angular/animations';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-account-manager',
  templateUrl: './account-manager.component.html',
  styleUrls: ['./account-manager.component.css']
})
export class AccountManagerComponent implements OnInit {

  constructor(
    private accountManagerService: AccountManagerService,
  ) { }

  public listAccount: any;

  ngOnInit() {
    this.getAllAccountDada();
  }

  public getAllAccountDada() {
    // this.accountManagerService.getAllDataAccount().subscribe((resp) => {
    //   this.listAccount = resp;
    //  console.log(this.listAccount);
    // });

    this.accountManagerService.getAllDataAccount().subscribe(
      data => {
        this.listAccount = data
        // console.log(data);
      }
    )
  }

  // IMG REIVIEW
  public previewImg(e:any){
    const image = <HTMLInputElement>document.getElementById('img-preview');

    if (e.target.files.length) {
      const src = URL.createObjectURL(e.target.files[0]);
      image.src = src;

      var pathlist = e.target.files;
      var path = pathlist[0].name;
      console.log(path);
    }

  }

}
