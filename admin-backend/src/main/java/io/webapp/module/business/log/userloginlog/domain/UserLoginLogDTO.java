package io.webapp.module.business.log.userloginlog.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

/**
 * [ 用户登录日志 ]
 *
 * @author yandanyang
 * @version 1.0
 * @date 2019/3/27 0027 下午 12:27
 * @since JDK1.8
 */
@Data
public class UserLoginLogDTO {

    @ApiModelProperty("主键")
    private Long id;

    @ApiModelProperty("员工id")
    private Long userId;

    @ApiModelProperty("用户名")
    private String userName;

    @ApiModelProperty("用户ip")
    private String remoteIp;

    @ApiModelProperty("用户端口")
    private Integer remotePort;

    @ApiModelProperty("浏览器")
    private String remoteBrowser;

    @ApiModelProperty("操作系统")
    private String remoteOs;

    @ApiModelProperty("登录状态")
    private Integer loginStatus;

    @ApiModelProperty("更新时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date updatedAt;

    @ApiModelProperty("创建时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createdAt;


}
