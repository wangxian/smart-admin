package io.webapp.module.support.codegenerator.domain;

import io.webapp.module.support.codegenerator.constant.SqlOperateTypeEnum;
import lombok.Builder;
import lombok.Data;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @date 2019/5/11 0011 上午 10:13
 * @since JDK1.8
 */
@Data
@Builder
public class CodeGeneratorQueryColumnDTO {

    /**
     * 生成查询方法的查询列名
     */
    private String columnName;

    /**
     * 此列的查询动作
     */
    private SqlOperateTypeEnum sqlOperate;
}
