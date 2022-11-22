import { HttpErrorResponse } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { ActivityService } from './activity.service';
import { ActivityAccessibility } from './activityAccessibility';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
  
  public activities: ActivityAccessibility[] | undefined;

  constructor(private activityService: ActivityService) {}
  ngOnInit(): void {
    this.getActivity();
  }

  public getActivity(): void {
    this.activityService.getActivity().subscribe(
      (response: ActivityAccessibility[]) => {
        this.activities = response;
      },
      (error: HttpErrorResponse) => {
        alert(error.message);
      }
    )
  }
}
