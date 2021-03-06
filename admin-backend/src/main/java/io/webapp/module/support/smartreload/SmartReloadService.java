package io.webapp.module.support.smartreload;

import io.webapp.common.constant.ResponseCodeConst;
import io.webapp.common.domain.ResponseDTO;
import io.webapp.common.reload.SmartReloadManager;
import io.webapp.module.support.smartreload.dao.ReloadItemDao;
import io.webapp.module.support.smartreload.dao.ReloadResultDao;
import io.webapp.module.support.smartreload.domain.dto.ReloadItemUpdateDTO;
import io.webapp.module.support.smartreload.domain.dto.ReloadItemVO;
import io.webapp.module.support.smartreload.domain.dto.ReloadResultVO;
import io.webapp.module.support.smartreload.domain.entity.ReloadItemEntity;
import io.webapp.module.support.smartreload.domain.entity.ReloadResultEntity;
import io.webapp.util.SmartBeanUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.sql.Timestamp;
import java.util.List;
import java.util.concurrent.TimeUnit;

/**
 * Smart initDefines 业务
 *
 * @author listen
 * @date 2018/02/10 13:49
 */
@Service
public class SmartReloadService {

    @Autowired
    private SmartReloadManager smartReloadManager;

    @Autowired
    private SmartReloadCommand smartReloadCommand;

    @Autowired
    private ReloadItemDao reloadItemDao;

    @Autowired
    private ReloadResultDao reloadResultDao;

    @Value("${smart-reload.time-interval}")
    private Long timeInterval;

    // 简介：SmartReload是一个可以在不重启进程的情况下动态重新加载配置或者执行某些预先设置的代码。
    // @PostConstruct
    public void init() {
        smartReloadManager.addCommand(smartReloadCommand, 10, timeInterval, TimeUnit.SECONDS);
    }

    /**
     * 注册到SmartReload里
     */
    public void register(Object reload) {
        smartReloadManager.register(reload);
    }

    /**
     * 获取所有 initDefines 项
     *
     * @return
     */
    public ResponseDTO<List<ReloadItemVO>> listAllReloadItem() {
        List<ReloadItemEntity> reloadItemEntityList = reloadItemDao.selectList(null);
        List<ReloadItemVO> reloadItemDTOList = SmartBeanUtil.copyList(reloadItemEntityList, ReloadItemVO.class);
        return ResponseDTO.succData(reloadItemDTOList);
    }

    /**
     * 根据 tag
     * 获取所有 initDefines 运行结果
     *
     * @return ResponseDTO
     */
    public ResponseDTO<List<ReloadResultVO>> listReloadItemResult(String tag) {
        ReloadResultEntity query = new ReloadResultEntity();
        query.setTag(tag);
        List<ReloadResultEntity> reloadResultEntityList = reloadResultDao.query(tag);
        List<ReloadResultVO> reloadResultDTOList = SmartBeanUtil.copyList(reloadResultEntityList, ReloadResultVO.class);
        return ResponseDTO.succData(reloadResultDTOList);
    }

    /**
     * 通过标签更新标识符
     *
     * @param updateDTO
     * @return
     */
    public ResponseDTO<String> updateByTag(ReloadItemUpdateDTO updateDTO) {
        ReloadItemEntity entity = new ReloadItemEntity();
        entity.setTag(updateDTO.getTag());
        ReloadItemEntity reloadItemEntity = reloadItemDao.selectById(entity.getTag());

        if (null == reloadItemEntity) {
            return ResponseDTO.wrap(ResponseCodeConst.NOT_EXISTS);
        }

        reloadItemEntity.setIdentification(updateDTO.getIdentification());
        reloadItemEntity.setUpdatedAt(new Timestamp(System.currentTimeMillis()));
        reloadItemEntity.setArgs(updateDTO.getArgs());
        reloadItemDao.updateById(reloadItemEntity);
        return ResponseDTO.succ();
    }
}
