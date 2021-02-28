package io.webapp.module.support.file.domain.dto;

import lombok.Data;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @date 2019/5/11 0011 下午 16:05
 * @since JDK1.8
 */
@Data
public class OSSConfig {

    private String endpoint;

    private String accessKeyId;

    private String accessKeySecret;

    private String bucketName;

    @Override
    public String toString() {
        return "OSSConfig{" +
                "endpoint='" + endpoint + '\'' +
                ", accessKeyId='" + accessKeyId + '\'' +
                ", accessKeySecret='" + accessKeySecret + '\'' +
                ", bucketName='" + bucketName + '\'' +
                '}';
    }
}
