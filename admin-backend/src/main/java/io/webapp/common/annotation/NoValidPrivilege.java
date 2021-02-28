package io.webapp.common.annotation;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/**
 * [ 不需要权限验证 ]
 *
 * @author yandanyang
 * @since JDK1.8
 */
@Retention(RetentionPolicy.RUNTIME)
public @interface NoValidPrivilege {

}
