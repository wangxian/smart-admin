package io.webapp.common.reload.domain;

import io.webapp.common.reload.annotation.SmartReload;
import io.webapp.common.reload.domain.entity.ReloadItem;
import io.webapp.common.reload.domain.entity.SmartReloadResult;

import java.lang.reflect.Method;

/**
 * Reload 处理程序的实现类
 * 用于包装以注解 SmartReload 实现的处理类
 *
 * @author zhuoda
 */
public class AnnotationReloadObject extends AbstractSmartReloadObject {

    private final Object reloadObject;

    private final Method method;

    public AnnotationReloadObject(Object reloadObject, Method method) {
        super();
        this.reloadObject = reloadObject;
        this.method       = method;
        this.method.setAccessible(true);
    }

    @Override
    public SmartReloadResult reload(ReloadItem reloadItem) {
        SmartReloadResult result = new SmartReloadResult();
        String tag = method.getAnnotation(SmartReload.class).value();
        result.setTag(tag);
        result.setArgs(reloadItem.getArgs());
        result.setIdentification(reloadItem.getIdentification());
        try {
            Object invoke = method.invoke(reloadObject, reloadItem.getArgs());
            result.setResult((Boolean) invoke);
        } catch (Throwable e) {
            result.setException(getStackTrace(e));
        }
        return result;
    }

}
