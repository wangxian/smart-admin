package io.webapp.module.system.department.domain.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotNull;

@Data
public class DepartmentUpdateDTO extends DepartmentCreateDTO {

    @ApiModelProperty("部门id")
    @NotNull(message = "部门id不能为空")
    private Long id;

}
