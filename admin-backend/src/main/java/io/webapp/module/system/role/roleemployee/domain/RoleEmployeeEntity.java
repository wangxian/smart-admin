package io.webapp.module.system.role.roleemployee.domain;

import com.baomidou.mybatisplus.annotation.TableName;
import io.webapp.common.domain.BaseEntity;
import lombok.Data;

/**
 * [ 角色 员工关系]
 *
 * @author yandanyang
 * @date 2019/3/27 0027 下午 13:01
 * @since JDK1.8
 */
@Data
@TableName("t_role_employee")
public class RoleEmployeeEntity extends BaseEntity {

    private Long roleId;

    private Long employeeId;
}
