package com.amadeus.hackathon.repository;

import com.amadeus.hackathon.model.Activity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface ActivityRepo extends JpaRepository<Activity, Long> {
    void deleteActivityById(Long id);

    Optional<Activity> findActivityById(Long id);
}
