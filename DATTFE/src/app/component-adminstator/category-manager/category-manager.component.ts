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
    this.categoryManagerService.getAllDataCategory().subscribe(
      data => {
        this.listCategory = data
        // console.log(data);
      }
    )
  }

}
