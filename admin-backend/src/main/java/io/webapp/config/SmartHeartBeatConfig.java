package io.webapp.config;

import lombok.Data;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;

/**
 * [  ]
 *
 * @author yandanyang
 * @since JDK1.8
 */
@Data
@Configuration
public class SmartHeartBeatConfig {

    /**
     * 延迟执行时间
     */
    @Value("${heart-beat.delayHandlerTime}")
    private Long delayHandlerTime;

    /**
     * 间隔执行时间
     */
    @Value("${heart-beat.intervalTime}")
    private Long intervalTime;
}
