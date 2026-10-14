package cn.mucang.android.jiakaoyi.teachingk2.humanize.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class UserTipsTimes implements Serializable {
    private String mucangId;
    private String ruleCode;
    private int times;
    private Long userId;

    public String getMucangId() {
        return this.mucangId;
    }

    public String getRuleCode() {
        return this.ruleCode;
    }

    public int getTimes() {
        return this.times;
    }

    public Long getUserId() {
        return this.userId;
    }

    public void setMucangId(String str) {
        this.mucangId = str;
    }

    public void setRuleCode(String str) {
        this.ruleCode = str;
    }

    public void setTimes(int i) {
        this.times = i;
    }

    public void setUserId(Long l) {
        this.userId = l;
    }
}
