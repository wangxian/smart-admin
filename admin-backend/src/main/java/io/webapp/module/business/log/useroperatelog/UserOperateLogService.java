package io.webapp.module.business.log.useroperatelog;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.webapp.common.domain.PageResultDTO;
import io.webapp.common.domain.ResponseDTO;
import io.webapp.module.business.log.useroperatelog.domain.UserOperateLogDTO;
import io.webapp.module.business.log.useroperatelog.domain.UserOperateLogEntity;
import io.webapp.module.business.log.useroperatelog.domain.UserOperateLogQueryDTO;
import io.webapp.util.SmartBeanUtil;
import io.webapp.util.SmartPageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @date 2019-05-15 11:32:14
 * @since JDK1.8
 */
@Service
public class UserOperateLogService {

    @Autowired
    private UserOperateLogDao userOperateLogDao;

    /**
     * @author yandanyang
     * @description 分页查询
     * @date 2019-05-15 11:32:14
     */
    public ResponseDTO<PageResultDTO<UserOperateLogDTO>> queryByPage(UserOperateLogQueryDTO queryDTO) {
        Page page = SmartPageUtil.convert2QueryPage(queryDTO);
        List<UserOperateLogEntity> entities = userOperateLogDao.queryByPage(page, queryDTO);
        List<UserOperateLogDTO> dtoList = SmartBeanUtil.copyList(entities, UserOperateLogDTO.class);
        page.setRecords(dtoList);
        PageResultDTO<UserOperateLogDTO> pageResultDTO = SmartPageUtil.convert2PageResult(page);
        return ResponseDTO.succData(pageResultDTO);
    }

    /**
     * @author yandanyang
     * @description 添加
     * @date 2019-05-15 11:32:14
     */
    public ResponseDTO<String> add(UserOperateLogDTO addDTO) {
        UserOperateLogEntity entity = SmartBeanUtil.copy(addDTO, UserOperateLogEntity.class);
        userOperateLogDao.insert(entity);
        return ResponseDTO.succ();
    }

    /**
     * @author yandanyang
     * @description 编辑
     * @date 2019-05-15 11:32:14
     */
    @Transactional(rollbackFor = Exception.class)
    public ResponseDTO<String> update(UserOperateLogDTO updateDTO) {
        UserOperateLogEntity entity = SmartBeanUtil.copy(updateDTO, UserOperateLogEntity.class);
        userOperateLogDao.updateById(entity);
        return ResponseDTO.succ();
    }

    /**
     * @author yandanyang
     * @description 删除
     * @date 2019-05-15 11:32:14
     */
    @Transactional(rollbackFor = Exception.class)
    public ResponseDTO<String> delete(Long id) {
        userOperateLogDao.deleteById(id);
        return ResponseDTO.succ();
    }

    /**
     * @author yandanyang
     * @description 根据ID查询
     * @date 2019-05-15 11:32:14
     */
    public ResponseDTO<UserOperateLogDTO> detail(Long id) {
        UserOperateLogEntity entity = userOperateLogDao.selectById(id);
        UserOperateLogDTO dto = SmartBeanUtil.copy(entity, UserOperateLogDTO.class);
        return ResponseDTO.succData(dto);
    }
}