package io.webapp.module.system.systemconfig;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.webapp.common.anno.OperateLog;
import io.webapp.common.domain.PageResultDTO;
import io.webapp.common.domain.ResponseDTO;
import io.webapp.constant.SwaggerTagConst;
import io.webapp.module.system.systemconfig.domain.dto.SystemConfigAddDTO;
import io.webapp.module.system.systemconfig.domain.dto.SystemConfigQueryDTO;
import io.webapp.module.system.systemconfig.domain.dto.SystemConfigUpdateDTO;
import io.webapp.module.system.systemconfig.domain.dto.SystemConfigVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;
import java.util.List;

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
@Api(tags = {SwaggerTagConst.Admin.MANAGER_SYSTEM_CONFIG})
@OperateLog
@RestController
public class SystemConfigController {

    @Autowired
    private SystemConfigService systemConfigService;

    @ApiOperation(value = "分页查询所有系统配置", notes = "分页查询所有系统配置")
    @PostMapping("systemConfig/getListPage")
    public ResponseDTO<PageResultDTO<SystemConfigVO>> getSystemConfigPage(@RequestBody @Valid SystemConfigQueryDTO queryDTO) {
        return systemConfigService.getSystemConfigPage(queryDTO);
    }

    @ApiOperation(value = "添加配置参数", notes = "添加配置参数")
    @PostMapping("systemConfig/add")
    public ResponseDTO<String> addSystemConfig(@RequestBody @Valid SystemConfigAddDTO configAddDTO) {
        return systemConfigService.addSystemConfig(configAddDTO);
    }

    @ApiOperation(value = "修改配置参数", notes = "修改配置参数")
    @PostMapping("systemConfig/update")
    public ResponseDTO<String> updateSystemConfig(@RequestBody @Valid SystemConfigUpdateDTO updateDTO) {
        return systemConfigService.updateSystemConfig(updateDTO);
    }

    @ApiOperation(value = "根据分组查询所有系统配置", notes = "根据分组查询所有系统配置")
    @GetMapping("systemConfig/getListByGroup")
    public ResponseDTO<List<SystemConfigVO>> getListByGroup(String group) {
        return systemConfigService.getListByGroup(group);
    }

    @ApiOperation(value = "通过key获取对应的信息", notes = "通过key获取对应的信息")
    @GetMapping("systemConfig/selectByKey")
    public ResponseDTO<SystemConfigVO> selectByKey(String configKey) {
        return systemConfigService.selectByKey(configKey);
    }

}
