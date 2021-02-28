package io.webapp.module.business.email;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.webapp.common.anno.NoValidPrivilege;
import io.webapp.common.anno.OperateLog;
import io.webapp.common.domain.PageResultDTO;
import io.webapp.common.domain.ResponseDTO;
import io.webapp.constant.SwaggerTagConst;
import io.webapp.module.business.email.domain.dto.EmailDTO;
import io.webapp.module.business.email.domain.dto.EmailQueryDTO;
import io.webapp.module.business.email.domain.dto.EmailVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @company 1024lab.net
 * @copyright (c) 2019 1024lab.netInc. All rights reserved.
 * @date 2019-05-13 17:10:16
 * @since JDK1.8
 */
@RestController
@OperateLog
@Api(tags = {SwaggerTagConst.Admin.MANAGER_EMAIL})
public class EmailController {

    @Autowired
    private EmailService emailService;

    @ApiOperation(value = "分页查询", notes = "@author yandanyang")
    @PostMapping("/email/page/query")
    @NoValidPrivilege
    public ResponseDTO<PageResultDTO<EmailVO>> queryByPage(@RequestBody @Validated EmailQueryDTO queryDTO) {
        return emailService.queryByPage(queryDTO);
    }

    @ApiOperation(value = "添加", notes = "@author yandanyang")
    @PostMapping("/email/add")
    @NoValidPrivilege
    public ResponseDTO<Long> add(@RequestBody @Valid EmailDTO addTO) {
        return emailService.add(addTO);
    }

    @ApiOperation(value = "修改", notes = "@author yandanyang")
    @PostMapping("/email/update")
    @NoValidPrivilege
    public ResponseDTO<Long> update(@RequestBody @Valid EmailDTO updateDTO) {
        return emailService.update(updateDTO);
    }


    @ApiOperation(value = "删除", notes = "@author yandanyang")
    @GetMapping("/email/delete/{id}")
    @NoValidPrivilege
    public ResponseDTO<String> delete(@PathVariable("id") Long id) {
        return emailService.delete(id);
    }


    @ApiOperation(value = "详情", notes = "@author yandanyang")
    @GetMapping("/email/detail/{id}")
    @NoValidPrivilege
    public ResponseDTO<EmailVO> detail(@PathVariable("id") Long id) {
        return emailService.detail(id);
    }


    @ApiOperation(value = "发送", notes = "@author yandanyang")
    @GetMapping("/email/send/{id}")
    @NoValidPrivilege
    public ResponseDTO<String> send(@PathVariable("id") Long id) {
        return emailService.send(id);
    }
}
