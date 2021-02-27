package io.webapp.config;

import com.baomidou.mybatisplus.autoconfigure.ConfigurationCustomizer;
import com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor;
import com.baomidou.mybatisplus.extension.plugins.pagination.optimize.JsqlParserCountOptimize;
import io.webapp.constant.SystemEnvironmentEnum;
import io.webapp.common.mybatis.MyBatisSqlQuerySqlDebugPlugin;
import io.webapp.common.mybatis.MyBatisSqlUpdateSqlDebugPlugin;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * @author zhuoda
 */
@EnableTransactionManagement
@Configuration
@MapperScan(basePackages = {"io.webapp.module.*"})
public class SmartMybatisPlusConfig {

    /**
     * 分页插件
     */
    @Bean
    public PaginationInterceptor paginationInterceptor() {
        // 开启 count 的 join 优化,只针对 left join !!!
        return new PaginationInterceptor().setCountSqlParser(new JsqlParserCountOptimize(true));
    }

    /**
     * 打印sql log
     * @return
     */
    @Bean
    @Profile(SystemEnvironmentEnum.DEV_ENV)
    ConfigurationCustomizer mybatisConfigurationCustomizer() {
        return configuration -> {
            configuration.addInterceptor(new MyBatisSqlUpdateSqlDebugPlugin());
            configuration.addInterceptor(new MyBatisSqlQuerySqlDebugPlugin());
        };
    }
}
