package io.webapp.module.support.file.domain.vo;

import io.swagger.annotations.ApiModelProperty;
import io.webapp.common.annotation.ApiModelPropertyEnum;
import io.webapp.module.support.file.constant.FileServiceTypeEnum;
import lombok.Data;

import java.sql.Date;

@Data
public class FileVO {

    @ApiModelProperty("主键")
    private Long id;

    @ApiModelProperty("相关业务id")
    private String moduleId;

    @ApiModelProperty("相关业务类型")
    private String moduleType;

    @ApiModelPropertyEnum(FileServiceTypeEnum.class)
    private Integer fileLocationType;

    @ApiModelProperty("文件名称")
    private String fileName;

    @ApiModelProperty("文件大小")
    private String fileSize;

    @ApiModelProperty("文件类型")
    private String fileType;

    @ApiModelProperty("文件路径")
    private String filePath;

    @ApiModelProperty("上传人")
    private Long createUser;

    @ApiModelProperty("updatedAt")
    private Date updatedAt;

    @ApiModelProperty("创建时间")
    private Date createdAt;

    @ApiModelProperty("文件展示url（可用于下载,注:七牛云下载url要拼接 ?attname=文件名.jpg）")
    private String fileUrl;
}
