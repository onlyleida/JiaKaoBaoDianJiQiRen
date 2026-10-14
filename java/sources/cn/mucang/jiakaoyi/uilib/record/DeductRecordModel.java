package cn.mucang.jiakaoyi.uilib.record;

import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014R\u001a\u0010\u0018\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0012\"\u0004\b\u001a\u0010\u0014¨\u0006\u001b"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;", "Ljava/io/Serializable;", "()V", "createTime", "", "getCreateTime", "()J", "setCreateTime", "(J)V", "deductDesc", "", "getDeductDesc", "()Ljava/lang/String;", "setDeductDesc", "(Ljava/lang/String;)V", "deductId", "", "getDeductId", "()I", "setDeductId", "(I)V", "deductScore", "getDeductScore", "setDeductScore", "stepId", "getStepId", "setStepId", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DeductRecordModel implements Serializable {
    private long createTime;
    private String deductDesc;
    private int deductId;
    private int deductScore;
    private int stepId;

    public final long getCreateTime() {
        return this.createTime;
    }

    public final String getDeductDesc() {
        return this.deductDesc;
    }

    public final int getDeductId() {
        return this.deductId;
    }

    public final int getDeductScore() {
        return this.deductScore;
    }

    public final int getStepId() {
        return this.stepId;
    }

    public final void setCreateTime(long j) {
        this.createTime = j;
    }

    public final void setDeductDesc(String str) {
        this.deductDesc = str;
    }

    public final void setDeductId(int i) {
        this.deductId = i;
    }

    public final void setDeductScore(int i) {
        this.deductScore = i;
    }

    public final void setStepId(int i) {
        this.stepId = i;
    }
}
