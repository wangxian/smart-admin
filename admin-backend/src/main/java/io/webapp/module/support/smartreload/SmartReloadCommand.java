package io.webapp.module.support.smartreload;

import io.webapp.module.support.smartreload.domain.entity.ReloadItemEntity;
import io.webapp.module.support.smartreload.domain.entity.ReloadResultEntity;
import io.webapp.util.SmartBeanUtil;
import io.webapp.common.reload.abstracts.AbstractSmartReloadCommand4Spring;
import io.webapp.common.reload.domain.entity.ReloadItem;
import io.webapp.common.reload.domain.entity.SmartReloadResult;
import io.webapp.module.support.smartreload.dao.ReloadItemDao;
import io.webapp.module.support.smartreload.dao.ReloadResultDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Smart Reload 业务
 *
 * @author listen
 * @date 2018/02/10 09:18
 */
@Component
public class SmartReloadCommand extends AbstractSmartReloadCommand4Spring {

    @Autowired
    private ReloadItemDao reloadItemDao;

    @Autowired
    private ReloadResultDao reloadResultDao;

    /**
     * 读取数据库中SmartReload项
     *
     * @return List<ReloadItem>
     */
    @Override
    public List<ReloadItem> readReloadItem() {
        List<ReloadItemEntity> reloadItemEntityList = reloadItemDao.selectList(null);
        return SmartBeanUtil.copyList(reloadItemEntityList, ReloadItem.class);
    }

    /**
     * 保存reload结果
     *
     * @param smartReloadResult
     */
    @Override
    public void handleReloadResult(SmartReloadResult smartReloadResult) {
        ReloadResultEntity reloadResultEntity = SmartBeanUtil.copy(smartReloadResult, ReloadResultEntity.class);
        reloadResultDao.insert(reloadResultEntity);
    }
}
