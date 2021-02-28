package io.webapp.common.exception;

/**
 * [ 业务逻辑异常,全局异常拦截后统一返回ResponseCodeConst.SYSTEM_ERROR ]
 *
 * @author yandanyang
 * @version 1.0
 * @since JDK1.8
 */
public class SmartBusinessException extends RuntimeException {

    public SmartBusinessException() {
    }

    public SmartBusinessException(String message) {
        super(message);
    }

    public SmartBusinessException(String message, Throwable cause) {
        super(message, cause);
    }

    public SmartBusinessException(Throwable cause) {
        super(cause);
    }

    public SmartBusinessException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
