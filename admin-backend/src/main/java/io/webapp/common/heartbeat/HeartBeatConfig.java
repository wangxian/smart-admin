package io.webapp.common.heartbeat;

import lombok.Builder;
import lombok.Data;

/**
 * [  ]
 *
 * @author yandanyang
 * @since JDK1.8
 */
@Data
@Builder
public class HeartBeatConfig {

    /**
     * 延迟执行时间
     */
    private Long delayHandlerTime;

    /**
     * 间隔执行时间
     */
    private Long intervalTime;
}
