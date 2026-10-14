package cn.mucang.android.jiakaoyi.teachingk2.acceptance.teach;

import com.tencent.open.SocialConstants;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\t\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000f\"\u0004\b\u0017\u0010\u0011R\u001a\u0010\u0018\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u000f\"\u0004\b\u001a\u0010\u0011R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\u001a\u0010\u001e\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#¨\u0006$"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachDeductModel;", "Ljava/io/Serializable;", "()V", "boundaryKey", "", "getBoundaryKey", "()Ljava/lang/String;", "setBoundaryKey", "(Ljava/lang/String;)V", "boundaryName", "getBoundaryName", "setBoundaryName", "code", "", "getCode", "()I", "setCode", "(I)V", SocialConstants.PARAM_APP_DESC, "getDesc", "setDesc", "score", "getScore", "setScore", "stepId", "getStepId", "setStepId", "stepName", "getStepName", "setStepName", "time", "", "getTime", "()J", "setTime", "(J)V", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachDeductModel implements Serializable {
    private String boundaryKey;
    private String boundaryName;
    private int code;
    private String desc;
    private int score;
    private int stepId;
    private String stepName;
    private long time;

    public final String getBoundaryKey() {
        return this.boundaryKey;
    }

    public final String getBoundaryName() {
        return this.boundaryName;
    }

    public final int getCode() {
        return this.code;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final int getScore() {
        return this.score;
    }

    public final int getStepId() {
        return this.stepId;
    }

    public final String getStepName() {
        return this.stepName;
    }

    public final long getTime() {
        return this.time;
    }

    public final void setBoundaryKey(String str) {
        this.boundaryKey = str;
    }

    public final void setBoundaryName(String str) {
        this.boundaryName = str;
    }

    public final void setCode(int i) {
        this.code = i;
    }

    public final void setDesc(String str) {
        this.desc = str;
    }

    public final void setScore(int i) {
        this.score = i;
    }

    public final void setStepId(int i) {
        this.stepId = i;
    }

    public final void setStepName(String str) {
        this.stepName = str;
    }

    public final void setTime(long j) {
        this.time = j;
    }
}
