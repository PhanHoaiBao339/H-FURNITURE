import { OrderManagerService } from './../../service/admin-service/order-manager.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-order-manager',
  templateUrl: './order-manager.component.html',
  styleUrls: ['./order-manager.component.css']
})
export class OrderManagerComponent implements OnInit {

  constructor(
    private orderManagerService:OrderManagerService
  ) { }

  public listOrder: any;
  public listOrderDetail: any;

  ngOnInit() {
    this.getAllOrderDada();
    this.getAllOrderDetailDada();
  }

  public getAllOrderDada() {
    this.orderManagerService.getAllOrder().subscribe(
      data => {
        this.listOrder = data
        //console.log(data);
      }
    )
  }

  public getAllOrderDetailDada() {
    this.orderManagerService.getAllOrderDetail().subscribe(
      data => {
        this.listOrderDetail = data
       //console.log(data);
      }
    )
  }

  public showDetail(idorder: number) {
    console.log(idorder);
    this.orderManagerService.getAllOrderDetail().subscribe((data) => {
      this.listOrderDetail = Object.assign(data, idorder).filter(
        (item: { orderProduct: { id: number } }) =>
          (item.orderProduct.id == idorder)
      );
    });
    document.getElementById('nav-table-orderdetail-tab')?.click();
  }

}
