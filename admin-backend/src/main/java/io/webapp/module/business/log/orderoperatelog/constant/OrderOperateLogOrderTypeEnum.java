package io.webapp.module.business.log.orderoperatelog.constant;

import java.util.Arrays;
import java.util.Optional;

/**
 * @author yandanyang
 * @since JDK1.8
 */
public enum OrderOperateLogOrderTypeEnum {

    EXAMPLE(1, "样例");


    public static final String INFO = "";

    private final int type;

    private final String typeName;

    OrderOperateLogOrderTypeEnum(int type, String typeName) {
        this.type     = type;
        this.typeName = typeName;
    }

    public int getType() {
        return type;
    }

    public String getTypeName() {
        return typeName;
    }

    public static OrderOperateLogOrderTypeEnum getValueByName(String name) {
        OrderOperateLogOrderTypeEnum[] values = OrderOperateLogOrderTypeEnum.values();
        Optional<OrderOperateLogOrderTypeEnum> first = Arrays.stream(values).filter(e -> e.getTypeName().equals(name)).findFirst();
        if (!first.isPresent()) {
            return null;
        }
        if (!first.isPresent()) {
            return null;
        }
        OrderOperateLogOrderTypeEnum orderType = first.get();
        return orderType;
    }
}
