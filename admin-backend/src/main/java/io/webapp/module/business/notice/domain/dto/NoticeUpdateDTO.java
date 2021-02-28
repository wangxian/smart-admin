package io.webapp.module.business.notice.domain.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @date 2019/7/11 0011 下午 16:24
 * @since JDK1.8
 */
@Data
public class NoticeUpdateDTO extends NoticeAddDTO {

    @ApiModelProperty("id")
    private Long id;
}
