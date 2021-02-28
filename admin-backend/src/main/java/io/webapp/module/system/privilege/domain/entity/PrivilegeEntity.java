package io.webapp.module.system.privilege.domain.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import io.webapp.common.domain.BaseEntity;
import lombok.Data;

import java.io.Serializable;

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
@TableName("t_privilege")
public class PrivilegeEntity extends BaseEntity implements Serializable {
    private static final long serialVersionUID = 3848408566432915214L;

    /**
     * 功能权限类型：1.模块 2.页面 3.功能点 4.子模块
     */
    private Integer type;

    /**
     * 菜单名称
     */
    private String name;

    /**
     * 路由name 英文关键字
     */
    @TableField(value = "`key`")
    private String key;


    private String url;

    /**
     * 排序
     */
    private Integer sort;


    /**
     * 父级key
     */
    private String parentKey;


}
