package io.webapp.module.support.quartz.domain.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import io.webapp.common.domain.BaseEntity;
import lombok.Data;

@Data
@TableName("t_quartz_task_log")
public class QuartzTaskLogEntity extends BaseEntity {
    /**
     * 任务名称参数
     */
    private Long taskId;
    /**
     * 任务名称
     */
    private String taskName;
    /**
     * 任务参数
     */
    private String taskParams;
    /**
     * 任务处理状态
     */
    private Integer processStatus;

    /**
     * 任务时长ms
     */
    private Long processDuration;

    /**
     * 处理日志
     */
    private String processLog;


    private String ipAddress;

}
