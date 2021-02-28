package io.webapp.common.annotation;

import io.webapp.module.system.datascope.constant.DataScopeTypeEnum;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * [ 数据范围 ]
 *
 * @author yandanyang
 * @since JDK1.8
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
public @interface DataScope {

    DataScopeTypeEnum dataScopeType() default DataScopeTypeEnum.DEFAULT;

    /**
     * 第几个where 条件 从0开始
     *
     * @return
     */
    int whereIndex() default 0;

    String joinSql() default "";

}
