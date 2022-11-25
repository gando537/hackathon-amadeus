import { Injectable } from '@angular/core';
import { map, Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http'
import { ActivityAccessibility } from './activityAccessibility'
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class ActivityService {

  private apiServerUrl = environment.apiBaseUrl;

  constructor(private http: HttpClient) { }

  public getActivity(): Observable<ActivityAccessibility[]> {
    return this.http.get<ActivityAccessibility[]>(`${this.apiServerUrl}/activity_db/all`);
  }

  searchActivity(thekeyword: string): Observable<ActivityAccessibility[]> {
    
    const searchUrl = `${this.apiServerUrl}/search/findByNameContaining?name=${thekeyword}`;

    return this.http.get<GetResponse>(searchUrl).pipe(map(response => response._embedded.activities)
    );
  }
}

interface GetResponse {
  _embedded: {
    activities: ActivityAccessibility[];
  }
}