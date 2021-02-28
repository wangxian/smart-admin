package io.webapp.module.system.datascope.domain.dto;

import lombok.Data;

@Data
public class DataScopeSqlConfigDTO {

    private Integer dataScopeType;

    private String joinSql;

    private Integer whereIndex;

    private Integer dataScopeWhereInType;
}
