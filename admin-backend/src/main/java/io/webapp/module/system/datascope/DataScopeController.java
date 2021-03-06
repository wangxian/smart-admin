package io.webapp.module.system.datascope;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.webapp.common.annotation.NoValidPrivilege;
import io.webapp.common.annotation.OperateLog;
import io.webapp.common.domain.ResponseDTO;
import io.webapp.constant.SwaggerTagConst;
import io.webapp.module.system.datascope.domain.dto.DataScopeAndViewTypeVO;
import io.webapp.module.system.datascope.domain.dto.DataScopeBatchSetRoleDTO;
import io.webapp.module.system.datascope.domain.dto.DataScopeSelectVO;
import io.webapp.module.system.datascope.service.DataScopeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@Api(tags = {SwaggerTagConst.Admin.MANAGER_DATA_SCOPE})
@OperateLog
@RestController
public class DataScopeController {

    @Autowired
    private DataScopeService dataScopeService;

    @ApiOperation(value = "获取当前系统所配置的所有数据范围")
    @GetMapping("/dataScope/list")
    @NoValidPrivilege
    public ResponseDTO<List<DataScopeAndViewTypeVO>> dataScopeList() {
        return dataScopeService.dataScopeList();
    }

    @ApiOperation(value = "获取某角色所设置的数据范围")
    @GetMapping("/dataScope/listByRole/{roleId}")
    @NoValidPrivilege
    public ResponseDTO<List<DataScopeSelectVO>> dataScopeListByRole(@PathVariable Long roleId) {
        return dataScopeService.dataScopeListByRole(roleId);
    }

    @ApiOperation(value = "批量设置某角色数据范围")
    @PostMapping("/dataScope/batchSet")
    @NoValidPrivilege
    public ResponseDTO<String> dataScopeBatchSet(@RequestBody @Valid DataScopeBatchSetRoleDTO batchSetRoleDTO) {
        return dataScopeService.dataScopeBatchSet(batchSetRoleDTO);
    }


}
