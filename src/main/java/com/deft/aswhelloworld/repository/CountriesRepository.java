package com.deft.aswhelloworld.repository;

import com.deft.aswhelloworld.data.Countries;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author Sergey Golitsyn
 * created on 10.05.2023
 */
public interface CountriesRepository extends JpaRepository<Countries, Long> {
}
