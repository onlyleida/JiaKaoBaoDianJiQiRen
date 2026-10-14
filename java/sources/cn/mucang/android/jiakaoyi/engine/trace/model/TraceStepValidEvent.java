package cn.mucang.android.jiakaoyi.engine.trace.model;

import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.engine.trace.model.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepValidEvent;", "", "isValid", "", "step", "", "(ZI)V", "()Z", "getStep", "()I", "engine_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TraceStepValidEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f3176a;
    private final int b;

    public TraceStepValidEvent(boolean z, int i) {
        this.f3176a = z;
        this.b = i;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final int getB() {
        return this.b;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final boolean getF3176a() {
        return this.f3176a;
    }
}
