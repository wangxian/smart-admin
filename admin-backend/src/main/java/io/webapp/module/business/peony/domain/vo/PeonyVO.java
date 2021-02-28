package io.webapp.module.business.peony.domain.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModelProperty;
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
public class PeonyVO {
    @ApiModelProperty("ID")
    private Long id;

    @ApiModelProperty("品种")
    private String kind;

    @ApiModelProperty("名字")
    private String name;

    @ApiModelProperty("颜色")
    private String color;

    @ApiModelProperty("图片链接")
    private String imageUrl;

    @ApiModelProperty("创建时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createTime;

    @ApiModelProperty("更新时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date updateTime;


}
