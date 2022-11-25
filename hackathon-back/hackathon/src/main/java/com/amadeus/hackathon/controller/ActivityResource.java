package com.amadeus.hackathon.controller;

import com.amadeus.hackathon.model.Activity;
import com.amadeus.hackathon.service.ActivityService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/activity_db")
public class ActivityResource {

    private final ActivityService activityService;

    public ActivityResource(ActivityService activityService) {
        this.activityService = activityService;
    }

    @GetMapping("/all")
    public ResponseEntity<List<Activity>> getAllActivity(){
        List<Activity> activityList = this.activityService.findAllActivity();
        return new ResponseEntity<>(activityList, HttpStatus.OK);
    }

    @GetMapping("/search/{name}")
    public ResponseEntity<List<Activity>> findByNameContaining(@PathVariable("name") String name){
        List<Activity> activityList = this.activityService.findByNameContaining(name);
        return new ResponseEntity<>(activityList, HttpStatus.OK);
    }

    @GetMapping("/find/{id}")
    public ResponseEntity<Activity> getActivityById(@PathVariable("id") Long id) throws Throwable {
        Activity activity = this.activityService.findActivityById(id);
        return new ResponseEntity<>(activity, HttpStatus.OK);
    }

    @PostMapping("/add")
    public ResponseEntity<Activity> addActivity(@RequestBody Activity activity){
        Activity newActivity = this.activityService.addActivity(activity);
        return new ResponseEntity<>(newActivity, HttpStatus.CREATED);
    }

    @PutMapping("/update")
    public ResponseEntity<Activity> updateActivity(@RequestBody Activity activity){
        Activity updateActivity = this.activityService.updateActivity(activity);
        return new ResponseEntity<>(updateActivity, HttpStatus.OK);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<?> deleteActivity(@PathVariable("id") Long id){
        this.activityService.deleteActivity(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
