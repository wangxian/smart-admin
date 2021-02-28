package io.webapp.module.system.systemconfig.domain.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotNull;

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
@Data
public class SystemConfigUpdateDTO extends SystemConfigAddDTO {

    @ApiModelProperty("id")
    @NotNull(message = "id不能为空")
    private Long id;
}
