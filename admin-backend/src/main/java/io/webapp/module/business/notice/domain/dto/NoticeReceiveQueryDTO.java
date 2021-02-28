package io.webapp.module.business.notice.domain.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @date 2019/7/12 0012 下午 12:32
 * @since JDK1.8
 */
@Data
public class NoticeReceiveQueryDTO extends NoticeQueryDTO {

    @ApiModelProperty(value = "当前登录人", hidden = true)
    private Long employeeId;

    @ApiModelProperty(value = "发送状态", hidden = true)
    private Integer sendStatus;

}
