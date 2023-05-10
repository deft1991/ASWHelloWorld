package com.deft.aswhelloworld.data;

import jakarta.persistence.*;

/**
 * @author Sergey Golitsyn
 * created on 10.05.2023
 */

@Entity
@Table(name = "countries")
public class Countries {

    @Id
    @Column(name = "id", unique = true, nullable = false)
    private Long id;

    @Column(name = "name")
    private String name;

}
