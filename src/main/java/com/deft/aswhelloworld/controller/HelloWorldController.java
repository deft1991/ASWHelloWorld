package com.deft.aswhelloworld.controller;

import com.deft.aswhelloworld.service.HelloWorldService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Sergey Golitsyn
 * created on 10.05.2023
 */

@Slf4j
@RestController
@RequestMapping("/v1/hello")
@RequiredArgsConstructor
public class HelloWorldController {

    private final HelloWorldService helloWorldService;
    @GetMapping
    public String getHello(){
        return helloWorldService.sayHello();
    }
}
