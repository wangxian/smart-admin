package io.webapp.module.support.quartz.service;

import io.webapp.module.support.quartz.dao.QuartzTaskLogDao;
import io.webapp.module.support.quartz.domain.entity.QuartzTaskLogEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QuartzTaskLogService {

    @Autowired
    private QuartzTaskLogDao quartzTaskLogDao;


    public void save(QuartzTaskLogEntity logEntity) {
        quartzTaskLogDao.insert(logEntity);
    }
}
