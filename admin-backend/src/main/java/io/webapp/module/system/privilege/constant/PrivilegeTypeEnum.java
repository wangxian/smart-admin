package io.webapp.module.system.privilege.constant;


import io.webapp.common.domain.BaseEnum;

import java.util.Arrays;
import java.util.Optional;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @company 1024lab.net
 * @copyright (c) 2019 1024lab.netInc. All rights reserved.
 * @date
 * @since JDK1.8
 */
public enum PrivilegeTypeEnum implements BaseEnum {


    MENU(1, "菜单"),

    POINTS(2, "功能点");

    private final Integer value;

    private final String desc;

    PrivilegeTypeEnum(Integer value, String desc) {
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

    public static PrivilegeTypeEnum selectByValue(Integer value) {
        Optional<PrivilegeTypeEnum> first = Arrays.stream(PrivilegeTypeEnum.values()).filter(e -> e.getValue().equals(value)).findFirst();
        return !first.isPresent() ? null : first.get();
    }
}
