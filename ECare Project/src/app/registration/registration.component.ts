import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { HttpClient } from '@angular/common/http';
//import { Post } from './register';
import { Observable } from 'rxjs';
import { register } from './register.model';

@Component({
  selector: 'app-registration',
  templateUrl: './registration.component.html',
  styleUrls: ['./registration.component.css']
})
export class RegistrationComponent implements OnInit {
  
  onSubmit(f:NgForm){
    alert(JSON.stringify(f));
  }

  //Display all the properties of form in console.
  log(x){
    console.log(x);
  } 

  //posts:Observable<Post[]>;
posts:Observable<register[]>;
url='https://jsonplaceholder.typicode.com/posts';
  constructor(private http:HttpClient) { }
  
  //Get data from the server(api).
  getPosts(){
    this.posts=this.http.get<register[]>(this.url);
  }
  ngOnInit() {
  }
}
