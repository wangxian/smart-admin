package io.webapp.module.business.notice;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.webapp.common.annotation.NoValidPrivilege;
import io.webapp.common.domain.PageParamDTO;
import io.webapp.common.domain.PageResultDTO;
import io.webapp.common.domain.ResponseDTO;
import io.webapp.constant.SwaggerTagConst;
import io.webapp.module.business.notice.domain.dto.*;
import io.webapp.util.SmartRequestTokenUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

/**
 * [  ]
 *
 * @author yandanyang
 * @version 1.0
 * @date 2019-07-11 16:19:48
 * @since JDK1.8
 */
@RestController
@Api(tags = {SwaggerTagConst.Admin.MANAGER_NOTICE})
public class NoticeController {

    @Autowired
    private NoticeService noticeService;

    @ApiOperation(value = "分页查询全部消息", notes = "@author yandanyang")
    @PostMapping("/notice/page/query")
    @NoValidPrivilege
    public ResponseDTO<PageResultDTO<NoticeVO>> queryByPage(@RequestBody NoticeQueryDTO queryDTO) {
        return noticeService.queryByPage(queryDTO);
    }

    @ApiOperation(value = "获取已收取的所有消息", notes = "@author yandanyang")
    @PostMapping("/notice/receive/page/query")
    @NoValidPrivilege
    public ResponseDTO<PageResultDTO<NoticeReceiveDTO>> queryReceiveByPage(@RequestBody NoticeReceiveQueryDTO queryDTO) {
        return noticeService.queryReceiveByPage(queryDTO, SmartRequestTokenUtil.getRequestUser());
    }

    @ApiOperation(value = "分页查询未读消息", notes = "@author yandanyang")
    @PostMapping("/notice/unread/page/query")
    @NoValidPrivilege
    public ResponseDTO<PageResultDTO<NoticeVO>> queryUnreadByPage(@RequestBody PageParamDTO queryDTO) {
        return noticeService.queryUnreadByPage(queryDTO, SmartRequestTokenUtil.getRequestUser());
    }

    @ApiOperation(value = "添加", notes = "@author yandanyang")
    @PostMapping("/notice/add")
    @NoValidPrivilege
    public ResponseDTO<String> add(@RequestBody @Valid NoticeAddDTO addTO) {
        return noticeService.add(addTO, SmartRequestTokenUtil.getRequestUser());
    }

    @ApiOperation(value = "修改", notes = "@author yandanyang")
    @PostMapping("/notice/update")
    @NoValidPrivilege
    public ResponseDTO<String> update(@RequestBody @Valid NoticeUpdateDTO updateDTO) {
        return noticeService.update(updateDTO);
    }

    @ApiOperation(value = "删除", notes = "@author yandanyang")
    @GetMapping("/notice/delete/{id}")
    @NoValidPrivilege
    public ResponseDTO<String> delete(@PathVariable("id") Long id) {
        return noticeService.delete(id);
    }

    @ApiOperation(value = "详情", notes = "@author yandanyang")
    @GetMapping("/notice/detail/{id}")
    @NoValidPrivilege
    public ResponseDTO<NoticeDetailVO> detail(@PathVariable("id") Long id) {
        return noticeService.detail(id);
    }

    @ApiOperation(value = "发送", notes = "@author yandanyang")
    @GetMapping("/notice/send/{id}")
    @NoValidPrivilege
    public ResponseDTO<NoticeDetailVO> send(@PathVariable("id") Long id) {
        return noticeService.send(id, SmartRequestTokenUtil.getRequestUser());
    }

    @ApiOperation(value = "读取消息", notes = "@author yandanyang")
    @GetMapping("/notice/read/{id}")
    @NoValidPrivilege
    public ResponseDTO<NoticeDetailVO> read(@PathVariable("id") Long id) {
        return noticeService.read(id, SmartRequestTokenUtil.getRequestUser());
    }
}
