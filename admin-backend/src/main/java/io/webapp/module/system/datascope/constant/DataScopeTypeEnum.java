package io.webapp.module.system.datascope.constant;


/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @date 2019/4/28 0028 下午 15:37
 * @since JDK1.8
 */
public enum DataScopeTypeEnum {

    DEFAULT(0, 0, "默认类型", "数据范围样例");

    private final Integer type;
    private final Integer sort;
    private final String name;
    private final String desc;

    DataScopeTypeEnum(Integer type, Integer sort, String name, String desc) {
        this.type = type;
        this.sort = sort;
        this.name = name;
        this.desc = desc;
    }

    public Integer getType() {
        return type;
    }

    public Integer getSort() {
        return sort;
    }

    public String getDesc() {
        return desc;
    }

    public String getName() {
        return name;
    }


}
