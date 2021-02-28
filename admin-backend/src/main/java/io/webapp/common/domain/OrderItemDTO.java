package io.webapp.common.domain;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;

/**
 * @author zhuoda
 * @date 2020-03-20 09:07
 */
@Slf4j
@Data
public class OrderItemDTO {
    private String column;
    private boolean asc = true;
}
