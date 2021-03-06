package io.webapp.module.system.role.roleprivilege.domain.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotNull;
import java.util.List;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @date
 * @since JDK1.8
 */
@Data
public class RolePrivilegeDTO {

    /**
     * 角色id
     */
    @ApiModelProperty("角色id")
    @NotNull(message = "角色id不能为空")
    private Long roleId;

    /**
     * 功能权限id 集合
     */
    @ApiModelProperty("功能权限Key集合")
    @NotNull(message = "功能权限集合不能为空")
    private List<String> privilegeKeyList;

}
