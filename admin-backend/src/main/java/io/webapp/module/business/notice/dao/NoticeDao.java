package io.webapp.module.business.notice.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.webapp.module.business.notice.domain.dto.*;
import io.webapp.module.business.notice.domain.entity.NoticeEntity;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @date 2019-07-11 16:19:48
 * @since JDK1.8
 */
@Mapper
@Component
public interface NoticeDao extends BaseMapper<NoticeEntity> {

    /**
     * 分页查询
     *
     * @param queryDTO
     * @return NoticeEntity
     */
    List<NoticeVO> queryByPage(Page page, @Param("queryDTO") NoticeQueryDTO queryDTO);


    /**
     * 获取某人的未读消息
     *
     * @param page
     * @param employeeId
     * @return
     */
    List<NoticeVO> queryUnreadByPage(Page page, @Param("employeeId") Long employeeId, @Param("sendStatus") Integer sendStatus);


    /**
     * 获取
     *
     * @param page
     * @param queryDTO
     * @return
     */
    List<NoticeReceiveDTO> queryReceiveByPage(Page page, @Param("queryDTO") NoticeReceiveQueryDTO queryDTO);

    /**
     * 详情
     *
     * @param id
     * @return
     */
    NoticeDetailVO detail(@Param("id") Long id);

    /**
     * 根据id删除 逻辑删除
     *
     * @param id
     * @param deletedFlag
     */
    void logicDeleteById(@Param("id") Long id, @Param("deletedFlag") Integer deletedFlag);


    /**
     * 批量逻辑删除
     *
     * @param idList
     * @param deletedFlag
     * @return
     */
    void logicDeleteByIds(@Param("idList") List<Long> idList, @Param("deletedFlag") Integer deletedFlag);

    /**
     * 获取消息总数
     *
     * @return
     */
    Integer noticeCount(@Param("sendStatus") Integer sendStatus);


    /**
     * 获取已读消息数
     *
     * @param employeeIds
     * @return
     */
    List<NoticeReadCountDTO> readCount(@Param("employeeIds") List<Long> employeeIds);


    /**
     * 获取某人的未读消息数
     *
     * @param employeeId
     * @param sendStatus
     * @return
     */
    Integer noticeUnreadCount(@Param("employeeId") Long employeeId, @Param("sendStatus") Integer sendStatus);

}
