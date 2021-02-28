package io.webapp.module.system.datascope.domain.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotNull;

@Data
public class DataScopeBatchSetDTO {

    @ApiModelProperty("数据范围类型")
    @NotNull(message = "数据范围类型不能为空")
    private Integer dataScopeType;

    @ApiModelProperty("可见范围")
    @NotNull(message = "可见范围不能为空")
    private Integer viewType;
}
