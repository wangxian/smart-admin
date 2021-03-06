package io.webapp.module.business.log.userloginlog.domain;

import com.baomidou.mybatisplus.annotation.TableName;
import io.webapp.common.domain.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


/**
 * [ 用户登录日志]
 *
 * @author yandanyang
 * @version 1.0
 * @date 2019-05-15 10:25:21
 * @since JDK1.8
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@TableName("t_user_login_log")
public class UserLoginLogEntity extends BaseEntity {

    /**
     * 员工id
     */
    private Long userId;

    /**
     * 用户名
     */
    private String userName;
    /**
     * 用户ip
     */
    private String remoteIp;

    /**
     * 用户端口
     */
    private Integer remotePort;

    /**
     * 浏览器
     */
    private String remoteBrowser;

    /**
     * 操作系统
     */
    private String remoteOs;

    /**
     * 登录状态
     */
    private Integer loginStatus;


}
