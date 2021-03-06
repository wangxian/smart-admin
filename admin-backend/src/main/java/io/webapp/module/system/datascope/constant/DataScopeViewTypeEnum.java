package io.webapp.module.system.datascope.constant;


import java.util.Arrays;
import java.util.Optional;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @date 2019/4/28 0028 下午 15:37
 * @since JDK1.8
 */
public enum DataScopeViewTypeEnum {

    ME(0, 0, "本人"),

    DEPARTMENT(1, 5, "本部门"),

    DEPARTMENT_AND_SUB(2, 10, "本部门及下属子部门"),

    ALL(3, 15, "全部");

    private final Integer type;
    private final Integer level;
    private final String name;

    DataScopeViewTypeEnum(Integer type, Integer level, String name) {
        this.type  = type;
        this.level = level;
        this.name  = name;
    }

    public Integer getType() {
        return type;
    }

    public Integer getLevel() {
        return level;
    }

    public String getName() {
        return name;
    }

    public static DataScopeViewTypeEnum valueOf(Integer type) {
        DataScopeViewTypeEnum[] values = DataScopeViewTypeEnum.values();
        Optional<DataScopeViewTypeEnum> first = Arrays.stream(values).filter(e -> e.getType().equals(type)).findFirst();
        return !first.isPresent() ? null : first.get();
    }

}
