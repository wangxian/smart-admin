package io.webapp.module.business.log.userloginlog;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.webapp.module.business.log.userloginlog.domain.UserLoginLogDTO;
import io.webapp.util.SmartBeanUtil;
import io.webapp.util.SmartPageUtil;
import io.webapp.common.domain.PageResultDTO;
import io.webapp.common.domain.ResponseDTO;
import io.webapp.module.system.employee.EmployeeService;
import io.webapp.module.system.employee.domain.dto.EmployeeQueryDTO;
import io.webapp.module.system.employee.domain.vo.EmployeeVO;
import io.webapp.module.business.log.userloginlog.domain.UserLoginLogEntity;
import io.webapp.module.business.log.userloginlog.domain.UserLoginLogQueryDTO;
import io.webapp.module.support.websocket.WebSocketServer;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * [ 用户登录日志 ]
 *
 * @author yandanyang
 * @version 1.0
 * @company 1024lab.net
 * @copyright (c) 2019 1024lab.netInc. All rights reserved.
 * @date 2019-05-15 10:25:21
 * @since JDK1.8
 */
@Service
public class UserLoginLogService {

    @Autowired
    private UserLoginLogDao userLoginLogDao;

    @Autowired
    private EmployeeService employeeService;

    /**
     * @author yandanyang
     * @description 分页查询
     * @date 2019-05-15 10:25:21
     */
    public ResponseDTO<PageResultDTO<UserLoginLogDTO>> queryByPage(UserLoginLogQueryDTO queryDTO) {
        Page page = SmartPageUtil.convert2QueryPage(queryDTO);
        List<UserLoginLogEntity> entities = userLoginLogDao.queryByPage(page, queryDTO);
        List<UserLoginLogDTO> dtoList = SmartBeanUtil.copyList(entities, UserLoginLogDTO.class);
        page.setRecords(dtoList);
        PageResultDTO<UserLoginLogDTO> pageResultDTO = SmartPageUtil.convert2PageResult(page);
        return ResponseDTO.succData(pageResultDTO);
    }

    /**
     * @author yandanyang
     * @description 删除
     * @date 2019-05-15 10:25:21
     */
    @Transactional(rollbackFor = Exception.class)
    public ResponseDTO<String> delete(Long id) {
        userLoginLogDao.deleteById(id);
        return ResponseDTO.succ();
    }

    /**
     * 查询员工在线状态
     *
     * @param queryDTO
     * @return
     */
    public ResponseDTO<PageResultDTO<EmployeeVO>> queryUserOnLine(EmployeeQueryDTO queryDTO) {
        List<Long> onLineUserList = WebSocketServer.getOnLineUserList();
        if (CollectionUtils.isEmpty(onLineUserList)) {
            return ResponseDTO.succ();
        }
        queryDTO.setEmployeeIds(onLineUserList);
        ResponseDTO<PageResultDTO<EmployeeVO>> employeeList = employeeService.selectEmployeeList(queryDTO);
        return employeeList;
    }

}
