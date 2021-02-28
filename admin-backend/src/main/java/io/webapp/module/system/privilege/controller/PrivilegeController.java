package io.webapp.module.system.privilege.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.webapp.common.annotation.OperateLog;
import io.webapp.common.domain.ResponseDTO;
import io.webapp.common.domain.ValidateList;
import io.webapp.constant.SwaggerTagConst;
import io.webapp.module.system.privilege.domain.dto.*;
import io.webapp.module.system.privilege.service.PrivilegeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

/**
 * [ 与员工权限相关：角色权限关系、权限列表 ]
 *
 * @author yandanyang
 * @version 1.0
 * @since JDK1.8
 */
@OperateLog
@RestController
@Api(tags = {SwaggerTagConst.Admin.MANAGER_PRIVILEGE})
public class PrivilegeController {

    @Autowired
    private PrivilegeService privilegeService;

    @GetMapping("/privilege/getAllUrl")
    @ApiOperation(value = "获取所有请求路径", notes = "获取所有请求路径")
    public ResponseDTO<List<PrivilegeRequestUrlVO>> getAllUrl() {
        return privilegeService.getPrivilegeUrlDTOList();
    }

    @ApiOperation(value = "菜单批量保存")
    @PostMapping("/privilege/menu/batchSaveMenu")
    public ResponseDTO<String> menuBatchSave(@Valid @RequestBody ValidateList<PrivilegeMenuDTO> menuList) {
        return privilegeService.menuBatchSave(menuList);
        //        return ResponseDTO.succ();
    }


    @ApiOperation(value = "查询所有菜单项")
    @PostMapping("/privilege/menu/queryAll")
    public ResponseDTO<List<PrivilegeMenuVO>> queryAll() {
        return privilegeService.menuQueryAll();
    }


    @ApiOperation(value = "保存更新功能点")
    @PostMapping("/privilege/function/saveOrUpdate")
    public ResponseDTO<String> functionSaveOrUpdate(@Valid @RequestBody PrivilegeFunctionDTO privilegeFunctionDTO) {
        return privilegeService.functionSaveOrUpdate(privilegeFunctionDTO);
        //        return ResponseDTO.succ();
    }

    @ApiOperation(value = "批量保存功能点")
    @PostMapping("/privilege/function/batchSave")
    public ResponseDTO<String> batchSaveFunctionList(@Valid @RequestBody ValidateList<PrivilegeFunctionDTO> functionList) {
        return privilegeService.batchSaveFunctionList(functionList);
        //        return ResponseDTO.succ();
    }


    @ApiOperation(value = "查询菜单功能点", notes = "更新")
    @PostMapping("/privilege/function/query/{menuKey}")
    public ResponseDTO<List<PrivilegeFunctionVO>> functionQuery(@PathVariable String menuKey) {
        return privilegeService.functionQuery(menuKey);
    }


}
