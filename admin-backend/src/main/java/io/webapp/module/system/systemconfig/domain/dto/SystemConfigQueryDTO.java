package io.webapp.module.system.systemconfig.domain.dto;


import io.swagger.annotations.ApiModelProperty;
import io.webapp.common.domain.PageParamDTO;
import lombok.Data;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @since JDK1.8
 */
@Data
public class SystemConfigQueryDTO extends PageParamDTO {

    @ApiModelProperty("参数KEY")
    private String key;

    @ApiModelProperty("参数类别")
    private String configGroup;


}
