package cn.mucang.android.jiakaoyi.teachingk2.safe.manager;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.safe.BrakeReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandAdapter;
import cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.BrakeModel;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.r, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0006\u0010\u0010\u001a\u00020\rJ \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0006H\u0002J\u0010\u0010\u0015\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0016\u001a\u00020\rH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/HandbrakeManager;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "ThresholdDistance", "", "p1", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "p2", "p3", "p4", "tmp1", "tmp2", "doBrake", "", "signal", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "init", "isMoveBack", "", "isValid", TtmlNode.TAG_P, "onSignalChanged", "reset", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class HandbrakeManager implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HandbrakeManager f7760a = new HandbrakeManager();
    private static final Pos b = new Pos();
    private static final Pos c = new Pos();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Pos f7761d = new Pos();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Pos f7762e = new Pos();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Pos f7763f = new Pos();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Pos f7764g = new Pos();

    private HandbrakeManager() {
    }

    private final void a(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        SafeCommandAdapter.b(BrakeModel.Companion.b(BrakeModel.INSTANCE, BrakeReason.Handbrake, null, false, 6, null), (byte) 1);
    }

    private final boolean c(Pos pos, Pos pos2, cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (d(pos) && d(pos2)) {
            return (((eVar.d().b >= 1.0f || ((double) eVar.d().c) >= 0.35d) && pos.distanceSquare(pos2) > 21.0d) || pos.distanceSquare(pos2) > 64.0d) && pos2.vectorTo(pos, f7763f).dot(eVar.c().rearAxlePoint.vectorTo(eVar.c().center, f7764g)) < 0.0d;
        }
        return false;
    }

    private final boolean d(Pos pos) {
        double d2 = pos.x;
        double d3 = pos.y;
        return (d2 * d2) + (d3 * d3) > 1.0E-5d;
    }

    private final void e() {
        b.setPos(0.0d, 0.0d);
        c.setPos(0.0d, 0.0d);
        f7761d.setPos(0.0d, 0.0d);
    }

    public final void b() {
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signal) {
        kotlin.jvm.internal.r.e(signal, "signal");
        if (!cn.mucang.android.jiakaoyi.signal.h.a.f5675a.get()) {
            e();
            return;
        }
        if (signal.d().f5268f) {
            e();
            return;
        }
        if (signal.d().h()) {
            Pos pos = f7762e;
            Pos pos2 = f7761d;
            pos.setPos(pos2);
            Pos pos3 = c;
            pos2.setPos(pos3);
            Pos pos4 = b;
            pos3.setPos(pos4);
            pos4.setPos(signal.c().rearAxlePoint);
            if ((c(pos4, pos3, signal) || c(pos4, pos2, signal) || c(pos4, pos, signal)) && !signal.d().d()) {
                a(signal);
            }
        }
    }
}
