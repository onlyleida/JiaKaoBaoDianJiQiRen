package cn.mucang.android.jiakaoyi.teachingk2.autocreate;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.autocreate.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u001e\u001a\u00020\u001fR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014R\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001a\u0010\u001b\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\f\"\u0004\b\u001d\u0010\u000e¨\u0006 "}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoCreateTeachModel;", "", "()V", "backWheel", "", "getBackWheel", "()D", "setBackWheel", "(D)V", "huizheng", "", "getHuizheng", "()Z", "setHuizheng", "(Z)V", "outTurnPoint", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "getOutTurnPoint", "()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "setOutTurnPoint", "(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V", "turnRightPoint", "getTurnRightPoint", "setTurnRightPoint", "turnRightWheel", "getTurnRightWheel", "setTurnRightWheel", "twoWheel", "getTwoWheel", "setTwoWheel", "getDesc", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AutoCreateTeachModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Pos f6189a;
    private double b;
    private double c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Pos f6190d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f6191e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private transient boolean f6192f;

    /* JADX INFO: renamed from: a, reason: from getter */
    public final double getC() {
        return this.c;
    }

    public final String b() {
        StringBuilder sb = new StringBuilder();
        if (this.f6189a != null) {
            sb.append("右打死点:" + this.f6189a + ',' + this.b + '\n');
        }
        if (!(this.c == 0.0d)) {
            sb.append("回正方向盘角度:" + this.c + '\n');
        }
        if (this.f6190d != null) {
            sb.append("出库点:" + this.f6190d + '\n');
        }
        sb.append(r.m("是否回正:", Boolean.valueOf(this.f6191e)));
        String string = sb.toString();
        r.d(string, "sb.toString()");
        return string;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final boolean getF6191e() {
        return this.f6191e;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final Pos getF6190d() {
        return this.f6190d;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final Pos getF6189a() {
        return this.f6189a;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final double getB() {
        return this.b;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final boolean getF6192f() {
        return this.f6192f;
    }

    public final void h(double d2) {
        this.c = d2;
    }

    public final void i(boolean z) {
        this.f6191e = z;
    }

    public final void j(Pos pos) {
        this.f6190d = pos;
    }

    public final void k(Pos pos) {
        this.f6189a = pos;
    }

    public final void l(double d2) {
        this.b = d2;
    }

    public final void m(boolean z) {
        this.f6192f = z;
    }
}
