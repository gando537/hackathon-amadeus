package com.amadeus.hackathon.service;

import com.amadeus.hackathon.exception.UserNotFoundException;
import com.amadeus.hackathon.model.Activity;
import com.amadeus.hackathon.repository.ActivityRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class ActivityService {
    private final ActivityRepo activityRepo;

    @Autowired
    public ActivityService(ActivityRepo activityRepo) {
        this.activityRepo = activityRepo;
    }

    public Activity addActivity(Activity activity){
        activity.setActivityCode(UUID.randomUUID().toString());
        return activityRepo.save(activity);
    }

    public List<Activity> findAllActivity(){
        return this.activityRepo.findAll();
    }

    public Activity updateActivity(Activity activity){
        return this.activityRepo.save(activity);
    }

    public Activity findActivityById(Long id) throws Throwable {
        return this.activityRepo.findActivityById(id)
                .orElseThrow(() -> new UserNotFoundException(("User by id " + id + "was not found")));
    }

    public List<Activity> findByNameContaining(String name) {
        return this.activityRepo.findByNameContaining(name);
    }

    public void deleteActivity(Long id){
        this.activityRepo.deleteActivityById(id);
    }
}
