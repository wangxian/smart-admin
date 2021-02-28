package io.webapp.module.support.quartz.domain.dto;

import io.swagger.annotations.ApiModelProperty;
import io.webapp.module.support.quartz.constant.TaskStatusEnum;
import lombok.Data;

import javax.validation.constraints.NotNull;

@Data
public class QuartzTaskVO {

    @ApiModelProperty("id")
    private Long id;

    @ApiModelProperty("任务名称")
    @NotNull(message = "任务名称不能为空")
    private String taskName;

    @ApiModelProperty("任务Bean")
    @NotNull(message = "任务Bean不能为空")
    private String taskBean;

    @ApiModelProperty("任务参数")
    private String taskParams;

    @ApiModelProperty("cron")
    @NotNull(message = "cron表达式不能为空")
    private String taskCron;

    @ApiModelProperty("任务状态:" + TaskStatusEnum.INFO)
    private Integer taskStatus;

    @ApiModelProperty("任务备注")
    private String remark;
}
