package io.webapp.module.business.email;


/**
 * [  ]
 *
 * @author yandanyang
 * @date 2019/4/28 0028 下午 15:37
 * @since JDK1.8
 */
public enum EmailSendStatusEnum {

    NOT_SEND(0, "未发送"),

    SEND(1, "已发送");

    private final Integer type;
    private final String desc;

    EmailSendStatusEnum(Integer type, String desc) {
        this.type = type;
        this.desc = desc;
    }

    public Integer getType() {
        return type;
    }

    public String getDesc() {
        return desc;
    }


}
