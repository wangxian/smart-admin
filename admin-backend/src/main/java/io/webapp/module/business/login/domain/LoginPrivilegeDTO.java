package io.webapp.module.business.login.domain;

import io.swagger.annotations.ApiModelProperty;
import io.webapp.common.annotation.ApiModelPropertyEnum;
import io.webapp.module.system.privilege.constant.PrivilegeTypeEnum;
import lombok.Data;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @date 2019/8/21 0021 上午 10:28
 * @since JDK1.8
 */
@Data
public class LoginPrivilegeDTO {

    @ApiModelProperty("权限key")
    private String key;

    @ApiModelPropertyEnum(enumDesc = "菜单类型", value = PrivilegeTypeEnum.class)
    private Integer type;

    @ApiModelProperty("url")
    private String url;

    @ApiModelProperty("父级key")
    private String parentKey;

}
