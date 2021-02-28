package io.webapp.module.business.login.domain;

import io.webapp.module.system.employee.domain.bo.EmployeeBO;
import lombok.Getter;


@Getter
public class RequestTokenBO {

    private final Long requestUserId;

    private final EmployeeBO employeeBO;

    public RequestTokenBO(EmployeeBO employeeBO) {
        this.requestUserId = employeeBO.getId();
        this.employeeBO    = employeeBO;
    }

    @Override
    public String toString() {
        return "RequestTokenBO{" +
                "requestUserId=" + requestUserId +
                ", employeeBO=" + employeeBO +
                '}';
    }
}
