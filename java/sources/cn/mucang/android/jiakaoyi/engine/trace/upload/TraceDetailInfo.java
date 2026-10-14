package cn.mucang.android.jiakaoyi.engine.trace.upload;

import cn.mucang.android.jiakaoyi.engine.trace.model.TraceDeductModel;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceStepModel;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\t\u0012\u0006\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fR\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0011R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0013R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;", "Ljava/io/Serializable;", "type", "", "duration", "passScore", "subCode", "", "deductList", "", "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;", "stepList", "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;", "valid", "", "(IIILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V", "getDeductList", "()Ljava/util/List;", "getDuration", "()I", "getPassScore", "getStepList", "getSubCode", "()Ljava/lang/String;", "getType", "getValid", "()Z", "engine_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TraceDetailInfo implements Serializable {
    private final List<TraceDeductModel> deductList;
    private final int duration;
    private final int passScore;
    private final List<TraceStepModel> stepList;
    private final String subCode;
    private final int type;
    private final boolean valid;

    /* JADX WARN: Multi-variable type inference failed */
    public TraceDetailInfo(int i, int i2, int i3, String str, List<? extends TraceDeductModel> deductList, List<? extends TraceStepModel> stepList, boolean z) {
        r.e(deductList, "deductList");
        r.e(stepList, "stepList");
        this.type = i;
        this.duration = i2;
        this.passScore = i3;
        this.subCode = str;
        this.deductList = deductList;
        this.stepList = stepList;
        this.valid = z;
    }

    public final List<TraceDeductModel> getDeductList() {
        return this.deductList;
    }

    public final int getDuration() {
        return this.duration;
    }

    public final int getPassScore() {
        return this.passScore;
    }

    public final List<TraceStepModel> getStepList() {
        return this.stepList;
    }

    public final String getSubCode() {
        return this.subCode;
    }

    public final int getType() {
        return this.type;
    }

    public final boolean getValid() {
        return this.valid;
    }
}
