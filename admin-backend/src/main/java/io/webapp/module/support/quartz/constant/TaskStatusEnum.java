package io.webapp.module.support.quartz.constant;


public enum TaskStatusEnum {

    NORMAL(0, "正常"),
    /**
     *
     */
    PAUSE(1, "暂停");

    public static final String INFO = "0:正常，1:暂停";

    private Integer status;

    private String desc;

    TaskStatusEnum(Integer status, String desc) {
        this.status = status;
        this.desc   = desc;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }
}
