import { AdminDashBoardComponent } from './admin-dash-board/admin-dash-board.component';
import { HomeComponent } from './home/home.component';
import { RegistrationComponent } from './registration/registration.component';
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LoginComponent } from './login/login.component';
import { PatientFormComponent } from './patient-form/patient-form.component';

const routes: Routes = [
  {path:'',redirectTo:'home',pathMatch:'prefix'},
  {path:'login',component:LoginComponent},
  {path:'register',component:RegistrationComponent},
  {path:'home',component:HomeComponent},
  {path:'adminDB',component:AdminDashBoardComponent},
  {path:'patientRegForm',component:PatientFormComponent},
  {path:'**',redirectTo:'home'}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
