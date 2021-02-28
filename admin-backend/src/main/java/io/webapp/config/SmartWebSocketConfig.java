package io.webapp.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.server.standard.ServerEndpointExporter;

/**
 * [ WebSocketConfig ]
 *
 * @author yandanyang
 * @date 2019/7/10 0010 下午 16:07
 * @since JDK1.8
 */
@Configuration
public class SmartWebSocketConfig {

    @Bean
    public ServerEndpointExporter serverEndpointExporter() {
        return new ServerEndpointExporter();
    }

}
