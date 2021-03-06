package io.webapp.module.support.quartz.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.webapp.module.support.quartz.domain.dto.QuartzLogQueryDTO;
import io.webapp.module.support.quartz.domain.dto.QuartzTaskLogVO;
import io.webapp.module.support.quartz.domain.entity.QuartzTaskLogEntity;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @date 2019/4/13 0013 下午 14:35
 * @since JDK1.8
 */
@Mapper
@Component
public interface QuartzTaskLogDao extends BaseMapper<QuartzTaskLogEntity> {


    /**
     * 查询列表
     *
     * @param queryDTO
     * @return
     */
    List<QuartzTaskLogVO> queryList(Page page, @Param("queryDTO") QuartzLogQueryDTO queryDTO);
}
