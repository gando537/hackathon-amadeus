import { HttpClientModule } from '@angular/common/http';
import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { RouterModule, Routes } from '@angular/router';
import { ActivityService } from './activity.service';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { SearchComponent } from "./search/search.component";

const routes: Routes = [
  {path: 'search/:keyword', component: AppComponent},
  {path: 'activity/:id', component: AppComponent},
  {path: 'activity', component: AppComponent},
  {path: '', redirectTo: '/activity', pathMatch: 'full'},
  {path: '**', redirectTo: '/activity', pathMatch: 'full'}
]

@NgModule({
    declarations: [
        AppComponent,
        SearchComponent
    ],
    providers: [ActivityService],
    bootstrap: [AppComponent],
    imports: [
        RouterModule.forRoot(routes),
        BrowserModule,
        HttpClientModule,
        AppRoutingModule
    ]
})
export class AppModule { }
