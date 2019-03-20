import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  constructor() { }

  ngOnInit() {
    
  }
  onKeyUp(email){
    console.log(email);
  }
  log(x){console.log(x);}
  submit(f:NgForm){
    console.log(f);
  }
}
