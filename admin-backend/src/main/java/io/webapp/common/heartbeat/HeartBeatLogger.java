package io.webapp.common.heartbeat;

/**
 * [  ]
 *
 * @author yandanyang
 * @date 2019/8/8 0008 下午 16:23
 * @since JDK1.8
 */
public interface HeartBeatLogger {

    void error(String string);

    void error(String string, Throwable e);

    void info(String string);
}
