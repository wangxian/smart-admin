package io.webapp.module.system.role.roleprivilege;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.webapp.common.annotation.OperateLog;
import io.webapp.common.domain.ResponseDTO;
import io.webapp.constant.SwaggerTagConst;
import io.webapp.module.system.role.roleprivilege.domain.dto.RolePrivilegeDTO;
import io.webapp.module.system.role.roleprivilege.domain.dto.RolePrivilegeTreeVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

/**
 * [ 与员工权限相关：角色权限关系、权限列表 ]
 *
 * @author yandanyang
 * @version 1.0
 * @since JDK1.8
 */
@OperateLog
@RestController
@Api(tags = {SwaggerTagConst.Admin.MANAGER_ROLE_PRIVILEGE})
public class RolePrivilegeController {

    @Autowired
    private RolePrivilegeService rolePrivilegeService;

    @ApiOperation(value = "更新角色权限", notes = "更新角色权限")
    @PostMapping("/privilege/updateRolePrivilege")
    public ResponseDTO<String> updateRolePrivilege(@Valid @RequestBody RolePrivilegeDTO updateDTO) {
        return rolePrivilegeService.updateRolePrivilege(updateDTO);
    }

    @ApiOperation(value = "获取角色可选的功能权限", notes = "获取角色可选的功能权限")
    @GetMapping("/privilege/listPrivilegeByRoleId/{roleId}")
    public ResponseDTO<RolePrivilegeTreeVO> listPrivilegeByRoleId(@PathVariable("roleId") Long roleId) {
        return rolePrivilegeService.listPrivilegeByRoleId(roleId);
    }

}
