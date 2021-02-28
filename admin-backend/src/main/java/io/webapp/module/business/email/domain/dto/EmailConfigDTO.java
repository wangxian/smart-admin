package io.webapp.module.business.email.domain.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @date 2019/5/13 0013 下午 16:52
 * @since JDK1.8
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class EmailConfigDTO {

    private String smtpHost;

    private String username;

    private String password;

}
