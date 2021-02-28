package io.webapp.module.support.websocket;

import io.webapp.common.domain.BaseEnum;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @date 2019/7/10 0010 下午 19:11
 * @since JDK1.8
 */
public enum MessageTypeEnum implements BaseEnum {

    SYS_NOTICE(1, "系统通知"),

    PRIVATE_LETTER(2, "私信"),

    HEART_BEAT(3, "心跳");


    private final Integer value;

    private final String desc;


    MessageTypeEnum(Integer value, String desc) {
        this.value = value;
        this.desc  = desc;
    }


    @Override
    public Integer getValue() {
        return this.value;
    }

    @Override
    public String getDesc() {
        return this.desc;
    }
}
