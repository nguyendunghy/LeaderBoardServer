package com.dn.leaderboardserver.controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/health")
public class HealthCheckController {

    @GetMapping("/")
    public String sayGood() {
        return "good";
    }

}
