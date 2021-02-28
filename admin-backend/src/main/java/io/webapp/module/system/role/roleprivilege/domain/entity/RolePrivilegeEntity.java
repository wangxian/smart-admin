package io.webapp.module.system.role.roleprivilege.domain.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import io.webapp.common.domain.BaseEntity;
import lombok.Data;

/**
 * [ 角色 权限关系 ]
 *
 * @author yandanyang
 * @version 1.0
 * @date
 * @since JDK1.8
 */
@Data
@TableName("t_role_privilege")
public class RolePrivilegeEntity extends BaseEntity {

    /**
     * 角色 id
     */
    private Long roleId;

    /**
     * 功能权限 id
     */
    private String privilegeKey;


}
