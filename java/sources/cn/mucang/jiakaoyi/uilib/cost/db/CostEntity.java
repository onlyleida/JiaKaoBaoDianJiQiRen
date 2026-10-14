package cn.mucang.jiakaoyi.uilib.cost.db;

import cn.mucang.android.core.db.IdEntity;

/* JADX INFO: loaded from: classes5.dex */
public class CostEntity extends IdEntity {
    public static final int End = 1;
    public static final int Examing = 2;
    public static final int Pause = 3;
    private String consumeId;
    private String costType;
    private long endDateTime;
    private String learnerId;
    private long noCostTime;
    private String orderNo;
    private long pauseTime;
    private long startDateTime;
    private long startTime;
    private int status;
    private long time;
    private String token;
    private int trainProgram;
    private int trainType;
    private int type;

    public String getConsumeId() {
        return this.consumeId;
    }

    public String getCostType() {
        return this.costType;
    }

    public long getEndDateTime() {
        return this.endDateTime;
    }

    public String getLearnerId() {
        return this.learnerId;
    }

    public long getNoCostTime() {
        return this.noCostTime;
    }

    public String getOrderNo() {
        return this.orderNo;
    }

    public long getPauseTime() {
        return this.pauseTime;
    }

    public long getStartDateTime() {
        return this.startDateTime;
    }

    public long getStartTime() {
        return this.startTime;
    }

    public int getStatus() {
        return this.status;
    }

    public long getTime() {
        return this.time;
    }

    public String getToken() {
        return this.token;
    }

    public int getTrainProgram() {
        return this.trainProgram;
    }

    public int getTrainType() {
        return this.trainType;
    }

    public int getType() {
        return this.type;
    }

    public boolean isEnd() {
        return this.status == 1;
    }

    public void setConsumeId(String str) {
        this.consumeId = str;
    }

    public void setCostType(String str) {
        this.costType = str;
    }

    public void setEndDateTime(long j) {
        this.endDateTime = j;
    }

    public void setLearnerId(String str) {
        this.learnerId = str;
    }

    public void setNoCostTime(long j) {
        this.noCostTime = j;
    }

    public void setOrderNo(String str) {
        this.orderNo = str;
    }

    public void setPauseTime(long j) {
        this.pauseTime = j;
    }

    public void setStartDateTime(long j) {
        this.startDateTime = j;
    }

    public void setStartTime(long j) {
        this.startTime = j;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public void setTime(long j) {
        this.time = j;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setTrainProgram(int i) {
        this.trainProgram = i;
    }

    public void setTrainType(int i) {
        this.trainType = i;
    }

    public void setType(int i) {
        this.type = i;
    }

    public String toString() {
        return "CostEntity{consumeId='" + this.consumeId + "', orderNo='" + this.orderNo + "', type=" + this.type + ", costType='" + this.costType + "', time=" + this.time + ", startTime=" + this.startTime + ", startDateTime=" + this.startDateTime + ", endDateTime=" + this.endDateTime + ", pauseTime=" + this.pauseTime + ", noCostTime=" + this.noCostTime + ", status=" + this.status + ", trainType=" + this.trainType + ", trainProgram=" + this.trainProgram + ", learnerId='" + this.learnerId + "', token='" + this.token + "'}";
    }
}
