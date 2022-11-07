import { ProductService } from './../../service/product.service';
import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, ParamMap, Router } from '@angular/router';

@Component({
  selector: 'app-shop-detail',
  templateUrl: './shop-detail.component.html',
  styleUrls: ['./shop-detail.component.css'],
})
export class ShopDetailComponent implements OnInit {
  constructor(private productService: ProductService, private route: ActivatedRoute) {}

  private idproduct: any;
  public product:any;

  ngOnInit() {
    this.idproduct = String(this.getIdProduct());
    this.getProductDetail();
  }

  public getIdProduct() {
    let id: any;
    this.route.paramMap.subscribe((params: ParamMap) => {
      id = String(params.get('id'));
    });
    console.log(id);
    return id;
  }

  public getProductDetail(){
    this.productService.getProductDetail(this.idproduct).subscribe((reps) => {
      this.product=reps;
    });
  }

}
