package io.webapp.module.support.quartz.task.test;

import io.webapp.common.domain.ITask;
import io.webapp.util.SmartDateUtil;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @date 2019/4/13 0013 下午 14:26
 * @since JDK1.8
 */
@Component("exampleTask")
public class Example implements ITask {

    @Override
    public void execute(String paramJson) throws Exception {
        System.out.println(SmartDateUtil.formatYMDHMS(new Date()) + ",今天搬了" + System.currentTimeMillis() + "块砖,paramJson:" + paramJson);
    }
}
