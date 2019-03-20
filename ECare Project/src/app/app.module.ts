import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {FormsModule} from '@angular/forms';
import {NgForm} from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MatInputModule,
         MatToolbarModule,
         MatButtonModule,
         MatCardModule,
         MatCheckboxModule,
         MatSelectModule,
         MatDatepickerModule,
         MatNativeDateModule,
         MatRadioModule, MatSidenavModule, MatIconModule, MatListModule
         } from '@angular/material';
import { AppComponent } from './app.component';
import { HomeComponent } from './home/home.component';
import { LoginComponent } from './login/login.component';
import { RegistrationComponent } from './registration/registration.component';
import { AdminDashBoardComponent } from './admin-dash-board/admin-dash-board.component';
import { NavBarComponent } from './nav-bar/nav-bar.component';
import { PatientFormComponent } from './patient-form/patient-form.component';
import { SideNavComponent } from './side-nav/side-nav.component';
import { LayoutModule } from '@angular/cdk/layout';
import { ConnectService } from './connect.service';
import { HttpClientModule } from '@angular/common/http';
@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    LoginComponent,
    RegistrationComponent,
    AdminDashBoardComponent,
    NavBarComponent,
    PatientFormComponent,
    SideNavComponent
    
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule,
    //NgForm
    BrowserAnimationsModule,
    MatToolbarModule,
    MatCardModule,
    MatInputModule,
    MatButtonModule,
    MatCheckboxModule,
    MatSelectModule,
    MatDatepickerModule,
    MatNativeDateModule,
    MatRadioModule,
    LayoutModule,
    MatSidenavModule,
    MatIconModule,
    MatListModule,
  ],
  providers: [ConnectService],
  bootstrap: [AppComponent]
})
export class AppModule { }
