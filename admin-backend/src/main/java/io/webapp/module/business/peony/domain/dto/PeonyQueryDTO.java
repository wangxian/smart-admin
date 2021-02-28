package io.webapp.module.business.peony.domain.dto;

import io.swagger.annotations.ApiModelProperty;
import io.webapp.common.domain.PageParamDTO;
import lombok.Data;

import java.util.Date;

/**
 * [ 牡丹花 ]
 *
 * @author 卓大
 * @version 1.0
 * @date 2020-04-06 18:17:56
 * @since JDK1.8
 */
@Data
public class PeonyQueryDTO extends PageParamDTO {

    @ApiModelProperty("ID")
    private Long id;

    @ApiModelProperty("品种")
    private String kind;

    @ApiModelProperty("名字")
    private String name;

    @ApiModelProperty("颜色")
    private String color;

    @ApiModelProperty("创建时间-开始")
    private Date createdAtBegin;

    @ApiModelProperty("创建时间-截止")
    private Date createdAtEnd;

    @ApiModelProperty("上次更新时间-开始")
    private Date updatedAtBegin;

    @ApiModelProperty("上次更新创建时间-开始")
    private Date updatedAtEnd;
}
