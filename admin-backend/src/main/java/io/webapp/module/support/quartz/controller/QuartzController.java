package io.webapp.module.support.quartz.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.webapp.common.anno.NoValidPrivilege;
import io.webapp.common.anno.OperateLog;
import io.webapp.common.domain.PageResultDTO;
import io.webapp.common.domain.ResponseDTO;
import io.webapp.constant.SwaggerTagConst;
import io.webapp.module.support.quartz.domain.dto.*;
import io.webapp.module.support.quartz.service.QuartzTaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @company 1024lab.net
 * @copyright (c) 2019 1024lab.netInc. All rights reserved.
 * @date
 * @since JDK1.8
 */
@OperateLog
@RestController
@Api(tags = {SwaggerTagConst.Admin.MANAGER_TASK_SCHEDULER})
public class QuartzController {

    @Autowired
    private QuartzTaskService quartzTaskService;


    @PostMapping("/quartz/task/query")
    @ApiOperation(value = "查询任务")
    @NoValidPrivilege
    public ResponseDTO<PageResultDTO<QuartzTaskVO>> query(@RequestBody @Valid QuartzQueryDTO queryDTO) {
        return quartzTaskService.query(queryDTO);
    }


    @PostMapping("/quartz/task/queryLog")
    @ApiOperation(value = "查询任务运行日志")
    @NoValidPrivilege
    public ResponseDTO<PageResultDTO<QuartzTaskLogVO>> queryLog(@RequestBody @Valid QuartzLogQueryDTO queryDTO) {
        return quartzTaskService.queryLog(queryDTO);
    }

    @PostMapping("/quartz/task/saveOrUpdate")
    @ApiOperation(value = "新建更新任务")
    public ResponseDTO<String> saveOrUpdateTask(@RequestBody @Valid QuartzTaskDTO quartzTaskDTO) throws Exception {
        return quartzTaskService.saveOrUpdateTask(quartzTaskDTO);
    }

    @GetMapping("/quartz/task/run/{taskId}")
    @ApiOperation(value = "立即运行某个任务")
    public ResponseDTO<String> runTask(@PathVariable("taskId") Long taskId) throws Exception {
        return quartzTaskService.runTask(taskId);
    }

    @GetMapping("/quartz/task/pause/{taskId}")
    @ApiOperation(value = "暂停某个任务")
    public ResponseDTO<String> pauseTask(@PathVariable("taskId") Long taskId) throws Exception {
        return quartzTaskService.pauseTask(taskId);
    }

    @GetMapping("/quartz/task/resume/{taskId}")
    @ApiOperation(value = "恢复某个任务")
    public ResponseDTO<String> resumeTask(@PathVariable("taskId") Long taskId) throws Exception {
        return quartzTaskService.resumeTask(taskId);
    }

    @GetMapping("/quartz/task/delete/{taskId}")
    @ApiOperation(value = "删除某个任务")
    public ResponseDTO<String> deleteTask(@PathVariable("taskId") Long taskId) throws Exception {
        return quartzTaskService.deleteTask(taskId);
    }
}
