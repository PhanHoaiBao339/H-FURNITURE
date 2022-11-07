import { Component, OnInit } from '@angular/core';
import * as $ from "jquery";

@Component({
  selector: 'app-menu',
  templateUrl: './menu.component.html',
  styleUrls: ['./menu.component.css']
})
export class MenuComponent implements OnInit {

  constructor() { }

  ngOnInit() {
    this.searchToggle();
  }

  searchToggle(){
    $("#search_input_box").hide();
    $("#search_1").on("click", function () {
      $("#search_input_box").slideToggle();
      $("#search_input").focus();
    });
    $("#close_search").on("click", function () {
      $('#search_input_box').slideUp(500);
    });
  }

}
