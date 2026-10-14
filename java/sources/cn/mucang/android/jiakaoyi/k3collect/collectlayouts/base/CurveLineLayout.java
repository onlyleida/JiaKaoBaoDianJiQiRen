package cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000I\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005*\u0001\u0014\b&\u0018\u0000 #2\u00020\u0001:\u0001#B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u00072\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0018H\u0002J0\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00070\u00182\u0006\u0010\u001a\u001a\u00020\f2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00070\u001c2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00070\u001cJ\b\u0010\u001e\u001a\u00020\u001fH&J\u0006\u0010 \u001a\u00020\u001fJ\u0010\u0010!\u001a\u00020\u001f2\b\u0010\"\u001a\u0004\u0018\u00010\u0007R$\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\b\u0012\u0004\u0012\u00020\u0007`\bX\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\r\"\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0010\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0015¨\u0006$"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/CurveLineLayout;", "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;", "activity", "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;", "(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)V", "gpsList", "Ljava/util/ArrayList;", "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;", "Lkotlin/collections/ArrayList;", "getGpsList", "()Ljava/util/ArrayList;", "isRunning", "", "()Z", "setRunning", "(Z)V", "lastPos", "getLastPos", "()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;", "runnable", "cn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/CurveLineLayout$runnable$1", "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/CurveLineLayout$runnable$1;", "addPoint", "gps", "", "getCurve", "isCurve", "curveList", "", "linearList", "refreshMap", "", "removeRunnable", "startRunnable", "currentGps", "Companion", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class CurveLineLayout extends BaseLineLayout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ArrayList<Gps> f3814h;
    private boolean i;
    private final Gps j;
    private final a k;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.a$a */
    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"cn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/CurveLineLayout$runnable$1", "Ljava/lang/Runnable;", "run", "", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ K3PosCollectActivity f3815a;
        final /* synthetic */ CurveLineLayout b;

        a(K3PosCollectActivity k3PosCollectActivity, CurveLineLayout curveLineLayout) {
            this.f3815a = k3PosCollectActivity;
            this.b = curveLineLayout;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.m("CurveLineLayout", "曲线采集");
            Gps gpsK = this.f3815a.k();
            if (gpsK != null) {
                CurveLineLayout curveLineLayout = this.b;
                if (Math.abs(curveLineLayout.getJ().latitude) + Math.abs(curveLineLayout.getJ().longitude) < 1.0E-5d || gpsK.distanceTo(curveLineLayout.getJ()) > 0.5d) {
                    curveLineLayout.F().add(gpsK);
                    curveLineLayout.getJ().setGps(gpsK);
                    t.h("CurveLineLayout", r.m("refresh map. gpsList size = ", Integer.valueOf(curveLineLayout.F().size())));
                    curveLineLayout.I();
                }
            }
            u.d(this, 200L);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CurveLineLayout(K3PosCollectActivity activity) {
        super(activity);
        r.e(activity, "activity");
        this.f3814h = new ArrayList<>();
        this.j = new Gps();
        this.k = new a(activity, this);
    }

    public final List<Gps> E(boolean z, List<? extends Gps> curveList, List<? extends Gps> linearList) {
        r.e(curveList, "curveList");
        r.e(linearList, "linearList");
        ArrayList arrayList = new ArrayList();
        if (getF3807a().J0() || z) {
            arrayList.addAll(curveList);
        } else {
            arrayList.addAll(linearList);
        }
        return arrayList;
    }

    protected final ArrayList<Gps> F() {
        return this.f3814h;
    }

    /* JADX INFO: renamed from: G, reason: from getter */
    public final Gps getJ() {
        return this.j;
    }

    /* JADX INFO: renamed from: H, reason: from getter */
    public final boolean getI() {
        return this.i;
    }

    public abstract void I();

    public final void J() {
        if (this.i) {
            this.i = false;
            this.f3814h.clear();
        }
        u.e(this.k);
    }

    public final void K(Gps gps) {
        if (gps != null && this.f3814h.isEmpty()) {
            this.f3814h.add(gps);
        }
        if (!this.i) {
            this.i = true;
            this.f3814h.clear();
            u.c(this.k);
        }
        if (this.f3814h.size() > 0) {
            I();
        }
    }
}
