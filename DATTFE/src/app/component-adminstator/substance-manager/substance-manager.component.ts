import { SubstanceManagerService } from './../../service/admin-service/substance-manager.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-substance-manager',
  templateUrl: './substance-manager.component.html',
  styleUrls: ['./substance-manager.component.css']
})
export class SubstanceManagerComponent implements OnInit {

  constructor(
    private substanceManagerService:SubstanceManagerService
  ) { }

  ngOnInit() {
    this.getAllSubstanceProductDada();
    this.getAllSubstanceDetailDada();
  }

  public listSubstanceProduct: any;
  public listSubstanceDetail: any;

  public getAllSubstanceProductDada() {
    this.substanceManagerService.getAllSubstanceProduct().subscribe(
      data => {
        this.listSubstanceProduct = data
        console.log(data);
      }
    )
  }

  public getAllSubstanceDetailDada() {
    this.substanceManagerService.getAllSubstanceDetail().subscribe(
      data => {
        this.listSubstanceDetail = data
        console.log(data);
      }
    )
  }

}
