package com.weixiaoyi.weixiaoyi.docker.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author ：yuanLong Wei
 * @date ：Created in 2019/5/31 10:44
 * @description：docker测试项目测试控制类
 * @modified By：
 * @version: 1.0
 */
@Slf4j
@RestController
@RequestMapping
public class DockerController {

    @RequestMapping("server")
    public String server() {
        log.info("DockerController  server 执行了");
        return "Hello Docker";
    }

}
