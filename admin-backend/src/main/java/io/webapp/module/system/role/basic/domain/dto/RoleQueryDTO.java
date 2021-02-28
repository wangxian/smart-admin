package io.webapp.module.system.role.basic.domain.dto;

import io.swagger.annotations.ApiModelProperty;
import io.webapp.common.domain.PageParamDTO;
import lombok.Data;

@Data
public class RoleQueryDTO extends PageParamDTO {

    @ApiModelProperty("角色名称")
    private String roleName;

    @ApiModelProperty("角色id")
    private String roleId;
}
