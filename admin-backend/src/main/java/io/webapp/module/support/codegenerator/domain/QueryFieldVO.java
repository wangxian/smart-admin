package io.webapp.module.support.codegenerator.domain;

import lombok.Builder;
import lombok.Data;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @date 2019/5/10 0010 下午 17:56
 * @since JDK1.8
 */
@Data
@Builder
public class QueryFieldVO {

    private String fieldName;

    private String columnName;

    private String columnDesc;

    private String fieldType;

    private String sqlOperate;

}
