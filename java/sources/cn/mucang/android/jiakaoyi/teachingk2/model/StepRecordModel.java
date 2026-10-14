package cn.mucang.android.jiakaoyi.teachingk2.model;

import com.mobile.auth.gatewayauth.Constant;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\b¨\u0006\u0018"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/model/StepRecordModel;", "Ljava/io/Serializable;", "()V", "count", "", "getCount", "()I", "setCount", "(I)V", "endTime", "", "getEndTime", "()J", "setEndTime", "(J)V", "examTime", "getExamTime", "setExamTime", Constant.START_TIME, "getStartTime", "setStartTime", "step", "getStep", "setStep", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class StepRecordModel implements Serializable {
    private int count;
    private transient long endTime;
    private long examTime;
    private transient long startTime;
    private int step;

    public final int getCount() {
        return this.count;
    }

    public final long getEndTime() {
        return this.endTime;
    }

    public final long getExamTime() {
        return this.examTime;
    }

    public final long getStartTime() {
        return this.startTime;
    }

    public final int getStep() {
        return this.step;
    }

    public final void setCount(int i) {
        this.count = i;
    }

    public final void setEndTime(long j) {
        this.endTime = j;
    }

    public final void setExamTime(long j) {
        this.examTime = j;
    }

    public final void setStartTime(long j) {
        this.startTime = j;
    }

    public final void setStep(int i) {
        this.step = i;
    }
}
