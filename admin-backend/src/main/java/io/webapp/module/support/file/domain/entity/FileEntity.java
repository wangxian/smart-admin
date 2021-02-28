package io.webapp.module.support.file.domain.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import io.webapp.common.domain.BaseEntity;
import lombok.Data;


/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @company 1024lab.net
 * @copyright (c) 2019 1024lab.netInc. All rights reserved.
 * @date
 * @since JDK1.8
 */
@Data
@TableName(value = "t_file")
public class FileEntity extends BaseEntity {


    /**
     * 相关业务id
     */
    private String moduleId;
    /**
     * 相关业务类型
     */
    private String moduleType;
    /**
     * 文件位置类型
     */
    private Integer fileLocationType;
    /**
     * 文件名称
     */
    private String fileName;
    /**
     * 文件大小
     */
    private String fileSize;
    /**
     * 文件类型，程序中枚举控制，文件类型：如身份证正面，三证合一等等
     */
    private String fileType;
    /**
     * 文件key，用于文件下载
     */
    private String filePath;
    /**
     * 创建人，即上传人
     */
    private Long createrUser;

}

