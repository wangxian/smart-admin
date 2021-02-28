package io.webapp.module.business.notice.domain.dto;

import lombok.Data;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @date 2019/7/12 0012 上午 8:11
 * @since JDK1.8
 */
@Data
public class NoticeReadCountDTO {
    /**
     * 员工id
     */
    private Long employeeId;
    /**
     * 已读消息数
     */
    private Integer readCount;

}
