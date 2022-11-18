import { CategoryManagerService } from './../../service/admin-service/category-manager.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-category-manager',
  templateUrl: './category-manager.component.html',
  styleUrls: ['./category-manager.component.css']
})
export class CategoryManagerComponent implements OnInit {

  constructor(
    private categoryManagerService: CategoryManagerService
  ) { }

  ngOnInit() {
    this.getAllCategoryDada();
  }

  public listCategory: any;

  public getAllCategoryDada() {
    // this.accountManagerService.getAllDataAccount().subscribe((resp) => {
    //   this.listAccount = resp;
    //  console.log(this.listAccount);
    // });

    this.categoryManagerService.getAllDataCategory().subscribe(
      data => {
        this.listCategory = data
        // console.log(data);
      }
    )
  }


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
