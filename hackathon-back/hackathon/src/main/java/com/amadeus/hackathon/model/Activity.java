package com.amadeus.hackathon.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
public class Activity implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false, updatable = false)
    private Long id;
    private String name;
    private String city;
    private String type;
    private Integer levelAccessibility;
    private String link;
    private String imageLink;
    @Column(name = "activityCode", nullable = false, updatable = false)
    private String activityCode;

    public Activity() {
    }

    public Activity(String name, String city, String type, Integer levelAccessibility, String link, String imageLink, String activityCode) {
        this.name = name;
        this.city = city;
        this.type = type;
        this.levelAccessibility = levelAccessibility;
        this.link = link;
        this.imageLink = imageLink;
        this.activityCode = activityCode;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Integer getLevelAccessibility() {
        return levelAccessibility;
    }

    public void setLevelAccessibility(Integer levelAccessibility) {
        this.levelAccessibility = levelAccessibility;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getImageLink() {
        return imageLink;
    }

    public void setImageLink(String imageLink) {
        this.imageLink = imageLink;
    }

    public String getActivityCode() {
        return activityCode;
    }

    public void setActivityCode(String activityCode) {
        this.activityCode = activityCode;
    }

    @Override
    public String toString() {
        return "Activity{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", city='" + city + '\'' +
                ", type='" + type + '\'' +
                ", levelAccessibility='" + levelAccessibility + '\'' +
                ", link='" + link + '\'' +
                ", imageLink='" + imageLink + '\'' +
                ", activityCode='" + activityCode + '\'' +
                '}';
    }
}
