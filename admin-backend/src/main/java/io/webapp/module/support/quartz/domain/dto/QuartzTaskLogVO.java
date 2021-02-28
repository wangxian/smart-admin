package io.webapp.module.support.quartz.domain.dto;

import io.swagger.annotations.ApiModelProperty;
import io.webapp.module.support.quartz.constant.TaskResultEnum;
import lombok.Data;

import java.util.Date;


@Data
public class QuartzTaskLogVO {

    @ApiModelProperty("id")
    private Long id;

    @ApiModelProperty("任务id")
    private Long taskId;

    @ApiModelProperty("任务名称")
    private String taskName;

    @ApiModelProperty("任务参数")
    private String taskParams;

    @ApiModelProperty("任务处理状态:" + TaskResultEnum.INFO)
    private Integer processStatus;

    @ApiModelProperty("任务时长ms")
    private Long processDuration;

    @ApiModelProperty("处理日志")
    private String processLog;

    @ApiModelProperty("创建时间")
    private Date createTime;


    @ApiModelProperty("主机ip")
    private String ipAddress;
}
