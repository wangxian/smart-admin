package io.webapp.module.support.quartz.domain.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import io.webapp.common.domain.BaseEntity;
import lombok.Data;

@Data
@TableName("t_quartz_task")
public class QuartzTaskEntity extends BaseEntity {
    /**
     * 任务名称参数
     */
    private String taskName;
    /**
     * 任务类
     */
    private String taskBean;

    /**
     * 任务参数
     */
    private String taskParams;

    /**
     * cron
     */
    private String taskCron;

    /**
     * 任务状态
     */
    private Integer taskStatus;

    /**
     * 备注
     */
    private String remark;

}
