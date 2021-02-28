package io.webapp.module.support.quartz.service;

import io.webapp.common.domain.ITask;
import io.webapp.module.support.quartz.constant.QuartzConst;
import io.webapp.module.support.quartz.constant.TaskResultEnum;
import io.webapp.module.support.quartz.domain.entity.QuartzTaskEntity;
import io.webapp.module.support.quartz.domain.entity.QuartzTaskLogEntity;
import io.webapp.third.SmartApplicationContext;
import io.webapp.util.SmartIPUtil;
import io.webapp.util.SmartQuartzUtil;
import lombok.extern.slf4j.Slf4j;
import org.quartz.JobDetail;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.quartz.JobKey;
import org.springframework.scheduling.quartz.QuartzJobBean;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Date;

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
@Slf4j
public class QuartzTask extends QuartzJobBean {

    @Override
    protected void executeInternal(JobExecutionContext context) throws JobExecutionException {
        JobDetail jobDetail = context.getJobDetail();
        Object params = jobDetail.getJobDataMap().get(QuartzConst.QUARTZ_PARAMS_KEY);
        JobKey jobKey = jobDetail.getKey();

        Long taskId = SmartQuartzUtil.getTaskIdByJobKey(jobKey);
        QuartzTaskService quartzTaskService = (QuartzTaskService) SmartApplicationContext.getBean("quartzTaskService");
        QuartzTaskEntity quartzTaskEntity = quartzTaskService.getByTaskId(taskId);

        QuartzTaskLogService quartzTaskLogService = (QuartzTaskLogService) SmartApplicationContext.getBean("quartzTaskLogService");

        QuartzTaskLogEntity taskLogEntity = new QuartzTaskLogEntity();
        taskLogEntity.setTaskId(taskId);
        taskLogEntity.setIpAddress(SmartIPUtil.getLocalHostIP());
        taskLogEntity.setTaskName(quartzTaskEntity.getTaskName());
        String paramsStr = null;
        if (params != null) {
            paramsStr = params.toString();
            taskLogEntity.setTaskParams(paramsStr);
        }
        taskLogEntity.setUpdateTime(new Date());
        taskLogEntity.setCreateTime(new Date());
        // 任务开始时间
        long startTime = System.currentTimeMillis();
        try {
            ITask taskClass = (ITask) SmartApplicationContext.getBean(quartzTaskEntity.getTaskBean());
            taskClass.execute(paramsStr);
            taskLogEntity.setProcessStatus(TaskResultEnum.SUCCESS.getStatus());
        } catch (Exception e) {
            log.error("", e);
            StringWriter sw = new StringWriter();
            PrintWriter pw = new PrintWriter(sw, true);
            e.printStackTrace(pw);
            pw.flush();
            sw.flush();
            taskLogEntity.setProcessStatus(TaskResultEnum.FAIL.getStatus());
            taskLogEntity.setProcessLog(sw.toString());
        } finally {
            long times = System.currentTimeMillis() - startTime;
            taskLogEntity.setProcessDuration(times);
            quartzTaskLogService.save(taskLogEntity);
        }

    }

}
