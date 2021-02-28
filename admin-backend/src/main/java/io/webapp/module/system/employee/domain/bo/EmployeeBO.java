package io.webapp.module.system.employee.domain.bo;

import io.webapp.module.system.employee.domain.entity.EmployeeEntity;
import lombok.Getter;


@Getter
public class EmployeeBO {

    /**
     * 主键id
     */
    private final Long id;

    /**
     * 登录账号
     */
    private final String loginName;

    /**
     * 员工名称
     */
    private final String actualName;

    /**
     * 别名
     */
    private final String nickName;

    /**
     * 手机号码
     */
    private final String phone;

    /**
     * 部门id
     */
    private final Long departmentId;

    /**
     * 是否离职
     */
    private final Integer isLeave;

    /**
     * 是否被禁用
     */
    private final Integer isDisabled;

    /**
     * 删除状态 0否 1是
     */
    private final Long isDelete;

    /**
     * 是否为超级管理员
     */
    private final Boolean isSuperman;

    public EmployeeBO(EmployeeEntity employeeEntity, boolean isSuperman) {
        this.id           = employeeEntity.getId();
        this.loginName    = employeeEntity.getLoginName();
        this.actualName   = employeeEntity.getActualName();
        this.nickName     = employeeEntity.getNickName();
        this.phone        = employeeEntity.getPhone();
        this.departmentId = employeeEntity.getDepartmentId();
        this.isLeave      = employeeEntity.getIsLeave();
        this.isDisabled   = employeeEntity.getIsDisabled();
        this.isDelete     = employeeEntity.getIsDelete();
        this.isSuperman   = isSuperman;
    }

}
