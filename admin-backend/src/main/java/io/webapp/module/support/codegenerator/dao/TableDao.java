package io.webapp.module.support.codegenerator.dao;

import io.webapp.module.support.codegenerator.domain.ColumnVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @date 2019/5/10 0010 下午 18:59
 * @since JDK1.8
 */
@Mapper
@Component
public interface TableDao {


    /**
     * 查询表描述
     *
     * @param tableName
     * @return
     */
    String selectTableDesc(@Param("tableName") String tableName);

    /**
     * 查询表列信息
     *
     * @param tableName
     * @return
     */
    List<ColumnVO> selectTableColumn(@Param("tableName") String tableName);


}
