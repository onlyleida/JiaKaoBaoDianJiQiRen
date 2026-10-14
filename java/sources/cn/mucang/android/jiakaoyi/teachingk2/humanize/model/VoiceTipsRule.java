package cn.mucang.android.jiakaoyi.teachingk2.humanize.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class VoiceTipsRule implements Serializable {
    private long createTime;
    private long createUserId;
    private String createUserName;
    private long driveSchoolId;
    private String driveSchoolName;
    private long id;
    private String noticeMessage;
    private int paramType;
    private String paramValue;
    private String ruleCode;
    private String ruleInfo;
    private int status;
    private int times;
    private int type;
    private long updateTime;
    private long updateUserId;
    private String updateUserName;
    private String voiceUrl;

    public long getCreateTime() {
        return this.createTime;
    }

    public long getCreateUserId() {
        return this.createUserId;
    }

    public String getCreateUserName() {
        return this.createUserName;
    }

    public long getDriveSchoolId() {
        return this.driveSchoolId;
    }

    public String getDriveSchoolName() {
        return this.driveSchoolName;
    }

    public long getId() {
        return this.id;
    }

    public String getNoticeMessage() {
        return this.noticeMessage;
    }

    public int getParamCount(int i) {
        try {
            return Integer.parseInt(this.paramValue);
        } catch (NumberFormatException e2) {
            e2.printStackTrace();
            return i;
        }
    }

    public float getParamRate(float f2) {
        try {
            return Float.parseFloat(this.paramValue);
        } catch (NumberFormatException e2) {
            e2.printStackTrace();
            return f2;
        }
    }

    public long getParamTimeMs(long j) {
        try {
            return (long) (Float.parseFloat(this.paramValue) * 60.0f * 1000.0f);
        } catch (NumberFormatException e2) {
            e2.printStackTrace();
            return j;
        }
    }

    public int getParamType() {
        return this.paramType;
    }

    public String getParamValue() {
        return this.paramValue;
    }

    public String getRuleCode() {
        return this.ruleCode;
    }

    public String getRuleInfo() {
        return this.ruleInfo;
    }

    public int getStatus() {
        return this.status;
    }

    public int getTimes() {
        return this.times;
    }

    public int getType() {
        return this.type;
    }

    public long getUpdateTime() {
        return this.updateTime;
    }

    public long getUpdateUserId() {
        return this.updateUserId;
    }

    public String getUpdateUserName() {
        return this.updateUserName;
    }

    public String getVoiceUrl() {
        return this.voiceUrl;
    }

    public void setCreateTime(long j) {
        this.createTime = j;
    }

    public void setCreateUserId(long j) {
        this.createUserId = j;
    }

    public void setCreateUserName(String str) {
        this.createUserName = str;
    }

    public void setDriveSchoolId(long j) {
        this.driveSchoolId = j;
    }

    public void setDriveSchoolName(String str) {
        this.driveSchoolName = str;
    }

    public void setId(long j) {
        this.id = j;
    }

    public void setNoticeMessage(String str) {
        this.noticeMessage = str;
    }

    public void setParamType(int i) {
        this.paramType = i;
    }

    public void setParamValue(String str) {
        this.paramValue = str;
    }

    public void setRuleCode(String str) {
        this.ruleCode = str;
    }

    public void setRuleInfo(String str) {
        this.ruleInfo = str;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public void setTimes(int i) {
        this.times = i;
    }

    public void setType(int i) {
        this.type = i;
    }

    public void setUpdateTime(long j) {
        this.updateTime = j;
    }

    public void setUpdateUserId(long j) {
        this.updateUserId = j;
    }

    public void setUpdateUserName(String str) {
        this.updateUserName = str;
    }

    public void setVoiceUrl(String str) {
        this.voiceUrl = str;
    }
}
