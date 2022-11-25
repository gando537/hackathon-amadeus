import { HttpErrorResponse } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { ActivityService } from './activity.service';
import { ActivityAccessibility } from './activityAccessibility';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {

  public activities: ActivityAccessibility[] | undefined;
  public searchMode: boolean = false;

  constructor(private activityService: ActivityService,
              private route: ActivatedRoute) {}

  ngOnInit(): void {
    this.getActivity();
  }

  public getActivity(): void {

    this.searchMode = this.route.snapshot.paramMap.has('keyword');

    if(this.searchMode){
      this.handlerSearchActivity();
    }
    else{
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

  handlerSearchActivity() {
    const thekeyword: string = this.route.snapshot.paramMap.get('keyword')!;

    this.activityService.searchActivity(thekeyword).subscribe(
      (data: ActivityAccessibility[] | undefined) => {
        this.activities = data;
      }
    )
  }
}
