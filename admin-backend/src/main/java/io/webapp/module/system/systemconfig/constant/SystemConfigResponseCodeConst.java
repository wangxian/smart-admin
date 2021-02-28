package io.webapp.module.system.systemconfig.constant;

import io.webapp.common.constant.ResponseCodeConst;

/**
 * [ 5001-5999 ]
 *
 * @author yandanyang
 * @version 1.0
 * @since JDK1.8
 */
public class SystemConfigResponseCodeConst extends ResponseCodeConst {

    /**
     * 配置参数已存在 10201
     */
    public static final SystemConfigResponseCodeConst ALREADY_EXIST = new SystemConfigResponseCodeConst(5001, "配置参数已存在");
    /**
     * 配置参数不存在 10203
     */
    public static final SystemConfigResponseCodeConst NOT_EXIST = new SystemConfigResponseCodeConst(5002, "配置参数不存在");

    public SystemConfigResponseCodeConst(int code, String msg) {
        super(code, msg);
    }
}
