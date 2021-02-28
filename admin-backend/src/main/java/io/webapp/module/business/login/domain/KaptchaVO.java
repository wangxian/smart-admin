package io.webapp.module.business.login.domain;

import lombok.Data;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @date 2019/7/4 0004 上午 10:11
 * @since JDK1.8
 */
@Data
public class KaptchaVO {

    /**
     * 验证码UUID
     */
    private String uuid;

    /**
     * base64 验证码
     */
    private String code;

}
