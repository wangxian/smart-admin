package io.webapp.module.system.position.domain.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

/**
 * @author zzr
 */
@Data
public class PositionResultVO {

    @ApiModelProperty("主键")
    private Long id;

    /**
     * 更新时间
     */
    @ApiModelProperty("更新时间")
    private Date updatedAt;

    /**
     * 创建时间
     */
    @ApiModelProperty("创建时间")
    private Date createdAt;

    /**
     * 岗位名称
     */
    @ApiModelProperty("岗位名称")
    private String positionName;

    /**
     * 岗位描述
     */
    @ApiModelProperty("岗位描述")
    private String remark;

}
