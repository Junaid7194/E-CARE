import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'patient-form',
  templateUrl: './patient-form.component.html',
  styleUrls: ['./patient-form.component.css']
})
export class PatientFormComponent implements OnInit {

  constructor() { }

  ngOnInit() {
  }
  selectGender=[
    {id:1,name:'Male'},
    {id:2,name:'Female'},
  ]
  maritalStatus=[
  {id:1,name:'Married'},
  {id:2,name:'UnMarried'},
  ]
  medication=[
    {id:1,name:'Yes'},
    {id:2,name:'No'}
  ]
  submit(f){
    console.log(f);
  }
}
