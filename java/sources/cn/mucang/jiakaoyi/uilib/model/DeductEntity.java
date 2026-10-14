package cn.mucang.jiakaoyi.uilib.model;

import cn.mucang.android.core.db.IdEntity;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.JudgeType;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import com.alibaba.fastjson.annotation.JSONField;

/* JADX INFO: loaded from: classes5.dex */
public class DeductEntity extends IdEntity {
    private boolean allowUserSet;
    private String areaCode;
    private boolean canAutoJudge;
    private int code;
    private int deductScore;
    private String desc;
    private long examSiteId;
    private boolean hadSetByUser;
    private int judgeType;
    private String name;
    private int position;
    private String ruleIds;
    private int status;
    private int stepId;
    public transient long updateTime;

    @JSONField(name = "applicableMode")
    private int useMode;
    private String userId;

    public void copy(DeductEntity deductEntity) {
        copy(deductEntity, false);
    }

    public String getAreaCode() {
        return this.areaCode;
    }

    public int getCode() {
        return this.code;
    }

    public int getDeductScore() {
        return this.deductScore;
    }

    public String getDesc() {
        return this.desc;
    }

    public long getExamSiteId() {
        return this.examSiteId;
    }

    public int getJudgeType() {
        return this.judgeType;
    }

    public String getName() {
        return this.name;
    }

    public int getPosition() {
        return this.position;
    }

    public String getRuleIds() {
        return this.ruleIds;
    }

    public int getStatus() {
        return this.status;
    }

    public int getStepId() {
        return this.stepId;
    }

    public int getUseMode() {
        return this.useMode;
    }

    public String getUserId() {
        return this.userId;
    }

    public boolean isAllowUserSet() {
        return this.allowUserSet;
    }

    public boolean isCanAutoJudge() {
        return this.canAutoJudge;
    }

    public boolean isDelete() {
        return this.status == 30;
    }

    public boolean isHadSetByUser() {
        return this.hadSetByUser;
    }

    public void setAllowUserSet(boolean z) {
        this.allowUserSet = z;
    }

    public void setAreaCode(String str) {
        this.areaCode = str;
    }

    public void setCanAutoJudge(boolean z) {
        this.canAutoJudge = z;
    }

    public void setCode(int i) {
        this.code = i;
    }

    public void setDeductScore(int i) {
        this.deductScore = i;
    }

    public void setDesc(String str) {
        this.desc = str;
    }

    public void setExamSiteId(long j) {
        this.examSiteId = j;
    }

    public void setHadSetByUser(boolean z) {
        this.hadSetByUser = z;
    }

    public void setJudgeType(int i) {
        this.judgeType = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPosition(int i) {
        this.position = i;
    }

    public void setRuleIds(String str) {
        this.ruleIds = str;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public void setStepId(int i) {
        this.stepId = i;
    }

    public void setUseMode(int i) {
        this.useMode = i;
    }

    public void setUserId(String str) {
        if (AppUtils.k()) {
            return;
        }
        this.userId = str;
    }

    public String toString() {
        return "DeductEntity{examSiteId=" + this.examSiteId + ", code=" + this.code + ", stepId=" + this.stepId + ", judgeType=" + this.judgeType + ", deductScore=" + this.deductScore + ", status=" + this.status + ", allowUserSet=" + this.allowUserSet + ", name='" + this.name + "', desc='" + this.desc + "', areaCode='" + this.areaCode + "', canAutoJudge=" + this.canAutoJudge + ", userId='" + this.userId + "', hadSetByUser=" + this.hadSetByUser + ", position=" + this.position + ", updateTime=" + this.updateTime + ", useMode=" + this.useMode + '}';
    }

    public Deduct transform() {
        String str;
        int i = this.code;
        String str2 = this.desc;
        StringBuilder sb = new StringBuilder();
        sb.append(this.desc);
        if (this.deductScore > 0) {
            str = "，扣" + this.deductScore + "分";
        } else {
            str = "";
        }
        sb.append(str);
        return new Deduct(i, str2, sb.toString(), this.deductScore, Step.findWithType(this.stepId), JudgeType.parse(this.judgeType), this.useMode);
    }

    public void copy(DeductEntity deductEntity, boolean z) {
        this.judgeType = deductEntity.judgeType;
        this.deductScore = deductEntity.deductScore;
        this.status = deductEntity.status;
        this.name = deductEntity.name;
        this.desc = deductEntity.desc;
        this.canAutoJudge = deductEntity.canAutoJudge;
        this.hadSetByUser = deductEntity.hadSetByUser;
        this.code = deductEntity.code;
        this.useMode = deductEntity.useMode;
        if (z) {
            this.examSiteId = deductEntity.examSiteId;
            this.stepId = deductEntity.stepId;
            this.ruleIds = deductEntity.ruleIds;
            this.position = deductEntity.position;
            this.userId = deductEntity.userId;
            this.allowUserSet = deductEntity.allowUserSet;
            this.areaCode = deductEntity.areaCode;
        }
    }
}
