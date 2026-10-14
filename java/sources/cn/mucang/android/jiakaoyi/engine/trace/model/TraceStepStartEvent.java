package cn.mucang.android.jiakaoyi.engine.trace.model;

import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.engine.trace.model.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\f\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0007\"\u0004\b\u0010\u0010\r¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepStartEvent;", "", "isStart", "", "stepInt", "", "(ZI)V", "()Z", "getStepInt", "()I", "valid", "getValid", "setValid", "(Z)V", "warehousing", "getWarehousing", "setWarehousing", "engine_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TraceStepStartEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f3174a;
    private final int b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3175d;

    public TraceStepStartEvent(boolean z, int i) {
        this.f3174a = z;
        this.b = i;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final int getB() {
        return this.b;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final boolean getC() {
        return this.c;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final boolean getF3175d() {
        return this.f3175d;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final boolean getF3174a() {
        return this.f3174a;
    }

    public final void e(boolean z) {
        this.c = z;
    }

    public final void f(boolean z) {
        this.f3175d = z;
    }
}
