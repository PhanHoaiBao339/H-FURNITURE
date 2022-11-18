import { ProductManagerService } from './../../service/admin-service/product-manager.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-product-manager',
  templateUrl: './product-manager.component.html',
  styleUrls: ['./product-manager.component.css']
})
export class ProductManagerComponent implements OnInit {

  constructor(
    private productManagerService:ProductManagerService
  ) { }

  ngOnInit() {
    this.getAllAccountDada();
  }

  public listProduct:any;

  public getAllAccountDada() {
    this.productManagerService.getAllDataProduct().subscribe(
      data => {
        this.listProduct = data
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
