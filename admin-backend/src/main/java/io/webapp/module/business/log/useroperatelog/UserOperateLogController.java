package io.webapp.module.business.log.useroperatelog;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.webapp.common.annotation.OperateLog;
import io.webapp.common.domain.PageResultDTO;
import io.webapp.common.domain.ResponseDTO;
import io.webapp.constant.SwaggerTagConst;
import io.webapp.module.business.log.useroperatelog.domain.UserOperateLogDTO;
import io.webapp.module.business.log.useroperatelog.domain.UserOperateLogQueryDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @date 2019-05-15 11:32:14
 * @since JDK1.8
 */
@RestController
@Api(tags = {SwaggerTagConst.Admin.MANAGER_USER_OPERATE_LOG})
@OperateLog
public class UserOperateLogController {

    @Autowired
    private UserOperateLogService userOperateLogService;

    @ApiOperation(value = "分页查询", notes = "@author yandanyang")
    @PostMapping("/userOperateLog/page/query")
    public ResponseDTO<PageResultDTO<UserOperateLogDTO>> queryByPage(@RequestBody UserOperateLogQueryDTO queryDTO) {
        return userOperateLogService.queryByPage(queryDTO);
    }

    @ApiOperation(value = "删除", notes = "@author yandanyang")
    @GetMapping("/userOperateLog/delete/{id}")
    public ResponseDTO<String> delete(@PathVariable("id") Long id) {
        return userOperateLogService.delete(id);
    }


    @ApiOperation(value = "详情", notes = "@author yandanyang")
    @GetMapping("/userOperateLog/detail/{id}")
    public ResponseDTO<UserOperateLogDTO> detail(@PathVariable("id") Long id) {
        return userOperateLogService.detail(id);
    }
}