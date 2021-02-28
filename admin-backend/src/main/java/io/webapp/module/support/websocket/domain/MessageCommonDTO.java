package io.webapp.module.support.websocket.domain;

import io.webapp.module.support.websocket.MessageTypeEnum;
import lombok.Data;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @date 2019/7/13 0013 下午 14:37
 * @since JDK1.8
 */
@Data
public class MessageCommonDTO {
    /**
     * 消息类型 {@link MessageTypeEnum}
     */
    private Integer messageType;

    /**
     * 具体消息内容
     */
    private String jsonStr;


}
