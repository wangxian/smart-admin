package io.webapp.module.business.log.useroperatelog.domain;

import io.swagger.annotations.ApiModelProperty;
import io.webapp.common.domain.PageParamDTO;
import lombok.Data;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @date 2019-05-15 11:32:14
 * @since JDK1.8
 */
@Data
public class UserOperateLogQueryDTO extends PageParamDTO {


    @ApiModelProperty("开始日期")
    private String startDate;

    @ApiModelProperty("结束日期")
    private String endDate;


    @ApiModelProperty("用户名称")
    private String userName;

    @ApiModelProperty("请求结果 0失败 1成功")
    private Integer resultFlag;

}
