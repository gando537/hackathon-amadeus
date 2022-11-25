package com.amadeus.hackathon.repository;

import com.amadeus.hackathon.model.Activity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface ActivityRepo extends JpaRepository<Activity, Long> {
    void deleteActivityById(Long id);

    Optional<Activity> findActivityById(Long id);

    List<Activity> findByNameContaining(@Param("name") String name);
}
