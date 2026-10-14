package cn.mucang.sundial.android.db.entity;

import cn.mucang.android.core.db.IdEntity;

/* JADX INFO: loaded from: classes5.dex */
public class DebugLog extends IdEntity {
    private long createTime;
    private String distance;
    private String gpsDistance;
    private String gpsSpeed;
    private String log1;
    private String log2;
    private String log3;
    private String log4;
    private String maxSpeed;
    private String remark;
    private String rpm;
    private String speed;
    private int type;

    public long getCreateTime() {
        return this.createTime;
    }

    public String getDistance() {
        return this.distance;
    }

    public String getGpsDistance() {
        return this.gpsDistance;
    }

    public String getGpsSpeed() {
        return this.gpsSpeed;
    }

    public String getLog1() {
        return this.log1;
    }

    public String getLog2() {
        return this.log2;
    }

    public String getLog3() {
        return this.log3;
    }

    public String getLog4() {
        return this.log4;
    }

    public String getMaxSpeed() {
        return this.maxSpeed;
    }

    public String getRemark() {
        return this.remark;
    }

    public String getRpm() {
        return this.rpm;
    }

    public String getSpeed() {
        return this.speed;
    }

    public int getType() {
        return this.type;
    }

    public void setCreateTime(long j) {
        this.createTime = j;
    }

    public void setDistance(String str) {
        this.distance = str;
    }

    public void setGpsDistance(String str) {
        this.gpsDistance = str;
    }

    public void setGpsSpeed(String str) {
        this.gpsSpeed = str;
    }

    public void setLog1(String str) {
        this.log1 = str;
    }

    public void setLog2(String str) {
        this.log2 = str;
    }

    public void setLog3(String str) {
        this.log3 = str;
    }

    public void setLog4(String str) {
        this.log4 = str;
    }

    public void setMaxSpeed(String str) {
        this.maxSpeed = str;
    }

    public void setRemark(String str) {
        this.remark = str;
    }

    public void setRpm(String str) {
        this.rpm = str;
    }

    public void setSpeed(String str) {
        this.speed = str;
    }

    public void setType(int i) {
        this.type = i;
    }
}
