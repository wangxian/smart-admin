package io.webapp.module.business.notice.domain.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModelProperty;
import io.webapp.common.annotation.ApiModelPropertyEnum;
import io.webapp.common.constant.JudgeEnum;
import lombok.Data;

import java.util.Date;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @date 2019/7/12 0012 上午 11:53
 * @since JDK1.8
 */
@Data
public class NoticeReceiveDTO {

    @ApiModelProperty("id")
    private Long id;

    @ApiModelProperty("消息标题")
    private String title;


    @ApiModelProperty("消息创建人")
    private Long createUser;

    @ApiModelProperty("消息创建人名称")
    private String createUserName;

    @ApiModelProperty("结束时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date receiveTime;

    @ApiModelPropertyEnum(enumDesc = "读取状态", value = JudgeEnum.class)
    private Integer readStatus;
}
