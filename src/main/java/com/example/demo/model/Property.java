//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package com.example.demo.model;

import jakarta.persistence.Column;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.time.LocalDate;
import java.util.List;

@Entity
@Table(
        name = "properties"
)
public class Property {
    @Id
    @GeneratedValue(
            strategy = GenerationType.IDENTITY
    )
    private Long id;
    @Column(
            nullable = false
    )
    private String title;
    @Column(
            nullable = false
    )
    private String description;
    @Column(
            nullable = false
    )
    private String address;
    @Column(
            nullable = false
    )
    private double price;
    private LocalDate availableDate;
//    @ElementCollection
//    private List<Integer> bhks;

    @Column
    private Integer bhks;

    public Property() {
    }

//    public List<Integer> getBhks() {
//        return this.bhks;
//    }
//
//    public void setBhks(List<Integer> bhks) {
//        this.bhks = bhks;
//    }
// Getter and setter methods
public Integer getBhks() {
    return this.bhks;
}

    public void setBhks(Integer bhks) {
        this.bhks = bhks;
    }

    public LocalDate getAvailableDate() {
        return this.availableDate;
    }

    public void setAvailableDate(LocalDate availableDate) {
        this.availableDate = availableDate;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public double getPrice() {
        return this.price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
