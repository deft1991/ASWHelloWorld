package com.deft.aswhelloworld.service.impl;

import com.deft.aswhelloworld.data.Countries;
import com.deft.aswhelloworld.repository.CountriesRepository;
import com.deft.aswhelloworld.service.HelloWorldService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Sergey Golitsyn
 * created on 10.05.2023
 */

@Slf4j
@Service
@RequiredArgsConstructor
public class HelloServiceImpl implements HelloWorldService {

    private final CountriesRepository countriesRepository;

    @Override
    public String sayHello() {
        List<Countries> all = countriesRepository.findAll();
        log.debug("Hello from all countries: {}", all.size());
        return "Hello World from " + all.size() + " countries";
    }
}
