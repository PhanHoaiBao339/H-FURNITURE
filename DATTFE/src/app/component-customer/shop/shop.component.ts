import { ProductService } from './../../service/client-service/product.service';
import { CategoryService } from '../../service/client-service/category.service';
import { Component, OnInit } from '@angular/core';
import { data } from 'jquery';

@Component({
  selector: 'app-shop',
  templateUrl: './shop.component.html',
  styleUrls: ['./shop.component.css'],
})
export class ShopComponent implements OnInit {
  constructor(
    private productService: ProductService,
    private categoryService: CategoryService,

    ) {}

  public searchText: any;
  public listProduct: any[] = [];
  public listCategory: any;

  ngOnInit() {
    this.getAllProductDada();
    this.getAllCategoryData();
  }

  public getAllProductDada() {
    this.productService.getProductAllData().subscribe((resp) => {
      this.listProduct = resp;
      // console.log(this.listProduct);
    });
  }

  private getAllCategoryData(){
    this.categoryService.getCategoryAllData().subscribe((resp) =>{
      this.listCategory = resp;
      // console.log(this.listCategory)
    });
  }

  public getProductByCategoryName(name:string){
    this.productService.getProductByCategory(name).subscribe((resp) =>{
      this.listProduct = resp;
      console.log(this.listProduct)
    });
  }
}
