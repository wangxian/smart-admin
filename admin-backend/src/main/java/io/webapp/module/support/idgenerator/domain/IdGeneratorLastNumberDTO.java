package io.webapp.module.support.idgenerator.domain;

import java.util.Date;

/**
 * @Auther: yandanyang
 * @date: 2018/8/7 0007 13:33
 * @Description:
 */
public class IdGeneratorLastNumberDTO {
    private Date updatedAt;
    private Long lastNumber;
    private Date databaseTime;

    public Date getupdatedAt() {
        return updatedAt;
    }

    public void setupdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    public Long getLastNumber() {
        return lastNumber;
    }

    public void setLastNumber(Long lastNumber) {
        this.lastNumber = lastNumber;
    }

    public Date getDatabaseTime() {
        return databaseTime;
    }

    public void setDatabaseTime(Date databaseTime) {
        this.databaseTime = databaseTime;
    }
}
