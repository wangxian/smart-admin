package io.webapp.module.support.quartz.domain.dto;

import io.swagger.annotations.ApiModelProperty;
import io.webapp.common.domain.PageParamDTO;
import lombok.Data;

import javax.validation.constraints.NotNull;

@Data
public class QuartzLogQueryDTO extends PageParamDTO {

    @ApiModelProperty(value = "任务Id(不能为空)")
    @NotNull(message = "任务Id不能为空")
    private Integer taskId;
}
