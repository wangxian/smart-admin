package io.webapp.module.support.idgenerator.constant;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @date 2019/3/8 0008 下午 13:43
 * @since JDK1.8
 */
public enum IdGeneratorRuleTypeEnum {
    /**
     * 没有周期
     */
    NO_CYCLE(""),

    /**
     * 年周期
     */
    YEAR_CYCLE("yyyy"),

    /**
     * 月周期
     */
    MONTH_CYCLE("yyyyMM"),
    /**
     * 日周期
     */
    DAY_CYCLE("yyyyMMdd");

    private final String ext;

    IdGeneratorRuleTypeEnum(String ext) {
        this.ext = ext;
    }

    public String getExt() {
        return ext;
    }
}
