package io.webapp.module.system.role.basic.domain.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import io.webapp.common.domain.BaseEntity;
import lombok.Data;

/**
 * [ 角色 ]
 *
 * @author yandanyang
 * @version 1.0
 * @since JDK1.8
 */
@Data
@TableName("t_role")
public class RoleEntity extends BaseEntity {


    private String roleName;

    private String remark;
}
