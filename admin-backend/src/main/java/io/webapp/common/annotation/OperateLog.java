package io.webapp.common.annotation;

import java.lang.annotation.*;

/**
 * [ 用户操作日志 ]
 *
 * @author yandanyang
 * @since JDK1.8
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.TYPE)
@Documented
public @interface OperateLog {

}
