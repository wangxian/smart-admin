package io.webapp.module.business.log.orderoperatelog.constant;

/**
 * @author yandanyang
 * @version 1.0
 * @since JDK1.8
 */
public enum OrderOperateLogDefaultEmpEnum {

    DEFAULT_EMP(0, "系统");


    private final Integer empId;

    private final String empName;

    OrderOperateLogDefaultEmpEnum(Integer empId, String empName) {
        this.empId   = empId;
        this.empName = empName;
    }

    public int getEmpId() {
        return empId;
    }

    public String getEmpName() {
        return empName;
    }


}

