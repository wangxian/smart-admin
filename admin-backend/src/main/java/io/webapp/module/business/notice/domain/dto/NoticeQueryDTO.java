package io.webapp.module.business.notice.domain.dto;

import io.swagger.annotations.ApiModelProperty;
import io.webapp.common.domain.PageParamDTO;
import lombok.Data;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @date 2019-07-11 16:19:48
 * @since JDK1.8
 */
@Data
public class NoticeQueryDTO extends PageParamDTO {


    @ApiModelProperty("开始日期")
    private String startDate;

    @ApiModelProperty("结束日期")
    private String endDate;


    @ApiModelProperty("消息标题")
    private String title;

    @ApiModelProperty(value = "是否删除", hidden = true)
    private Integer deleted;

}
