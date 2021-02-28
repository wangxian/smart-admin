package io.webapp.module.system.role.roleprivilege.domain.dto;

import io.swagger.annotations.ApiModelProperty;
import io.webapp.common.annotation.ApiModelPropertyEnum;
import io.webapp.module.system.privilege.constant.PrivilegeTypeEnum;
import lombok.Data;

import java.util.List;

/**
 * 角色功能权限
 *
 * @author listen
 * @date 2018/01/03 08:48
 */
@Data
public class RolePrivilegeSimpleDTO {

    @ApiModelProperty("父级Key")
    private String parentKey;
    /**
     * 功能名称
     */
    @ApiModelProperty("名称")
    private String name;

    @ApiModelPropertyEnum(enumDesc = "类型", value = PrivilegeTypeEnum.class)
    private Integer type;

    @ApiModelProperty("key")
    private String key;

    @ApiModelProperty("url")
    private String url;

    @ApiModelProperty("排序")
    private Integer sort;

    @ApiModelProperty("子级列表")
    private List<RolePrivilegeSimpleDTO> children;


}
