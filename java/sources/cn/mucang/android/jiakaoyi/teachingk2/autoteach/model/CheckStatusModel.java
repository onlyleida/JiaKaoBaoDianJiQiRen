package cn.mucang.android.jiakaoyi.teachingk2.autoteach.model;

import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.autoteach.model.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/CheckStatusModel;", "", "status", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;", "(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;)V", "duration", "", "getDuration", "()I", "setDuration", "(I)V", "extra", "getExtra", "()Ljava/lang/Object;", "setExtra", "(Ljava/lang/Object;)V", "playEndTime", "", "getPlayEndTime", "()J", "setPlayEndTime", "(J)V", "getStatus", "()Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;", "voice", "", "getVoice", "()Ljava/lang/String;", "setVoice", "(Ljava/lang/String;)V", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CheckStatusModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AutoTeachStatus f6348a;
    private String b;
    private Object c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6349d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f6350e;

    public CheckStatusModel(AutoTeachStatus status) {
        r.e(status, "status");
        this.f6348a = status;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final int getF6349d() {
        return this.f6349d;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final Object getC() {
        return this.c;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final long getF6350e() {
        return this.f6350e;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final AutoTeachStatus getF6348a() {
        return this.f6348a;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final String getB() {
        return this.b;
    }

    public final void f(int i) {
        this.f6349d = i;
    }

    public final void g(Object obj) {
        this.c = obj;
    }

    public final void h(long j) {
        this.f6350e = j;
    }

    public final void i(String str) {
        this.b = str;
    }
}
