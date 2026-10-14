package cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base;

import android.os.SystemClock;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity;
import cn.mucang.android.jiakaoyi.k3collect.K3ShapeType;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.CommonSrcData;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.g;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0004J\u0010\u0010&\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0004J\u0010\u0010'\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0004J\u0010\u0010(\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0004J\b\u0010)\u001a\u00020#H&J\b\u0010*\u001a\u00020#H&J\b\u0010+\u001a\u0004\u0018\u00010\tJ(\u0010,\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010-2\u000e\u0010.\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010-2\u0006\u0010/\u001a\u000200H\u0002J\u0006\u00101\u001a\u00020#J\u0010\u00102\u001a\u00020#2\u0006\u00103\u001a\u00020\u0005H\u0016J\b\u00104\u001a\u000200H\u0016J\b\u00105\u001a\u000200H\u0016J\b\u00106\u001a\u00020#H\u0016J\b\u00107\u001a\u00020#H\u0016J$\u00108\u001a\u00020#2\u0006\u00109\u001a\u00020\r2\u0012\u0010:\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020#0;H\u0016R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u00020\u0011X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0005X\u0084.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0017\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u001dX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006="}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;", "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/CurveLineLayout;", "activity", "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;", "sourceData", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;", "(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V", "curve1List", "Ljava/util/ArrayList;", "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;", "Lkotlin/collections/ArrayList;", "curve2List", "lastPlayingTime", "", "linear1List", "linear2List", "shapeType", "Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;", "getShapeType", "()Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;", "setShapeType", "(Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;)V", "getSourceData", "()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;", "srcData", "getSrcData", "setSrcData", "(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V", "state", "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/CollectState;", "getState", "()Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/CollectState;", "setState", "(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/CollectState;)V", "collectLine1End", "", "mapView", "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;", "collectLine1Start", "collectLine2End", "collectLine2Start", "fillData", "freezeEdit", "getLastGps", "handleCurve", "", "curveList", "isRebuild", "", "handleData", "initSrcData", "defaultSrcData", "isDone", "isStart", "refreshMap", "removeCurrentLine", "saveCurrentLine", "examSiteId", "callback", "Lkotlin/Function1;", "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class BaseDoubleLineLayout extends CurveLineLayout {
    private final CommonSrcData l;
    protected CommonSrcData m;
    private CollectState n;
    private ArrayList<Gps> o;
    private ArrayList<Gps> p;
    private ArrayList<Gps> q;
    private ArrayList<Gps> r;
    private K3ShapeType s;
    private long t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseDoubleLineLayout(K3PosCollectActivity activity, CommonSrcData commonSrcData) {
        super(activity);
        r.e(activity, "activity");
        this.l = commonSrcData;
        this.n = CollectState.None;
        this.o = new ArrayList<>();
        this.p = new ArrayList<>();
        this.q = new ArrayList<>();
        this.r = new ArrayList<>();
        this.s = K3ShapeType.STRAIGHT_LINE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final List<Gps> X(List<? extends Gps> list, boolean z) {
        List list2;
        if (list != 0 && list.size() > 2) {
            if (z) {
                List listC = cn.mucang.android.jiakaoyi.k3collect.l0.a.c(list, f());
                r.d(listC, "rebuild(curveList, defaultConverter)");
                list2 = listC;
            } else {
                list2 = list;
            }
            List<Gps> listA = cn.mucang.android.jiakaoyi.k3collect.l0.a.a(list2, f());
            if (listA.size() > 1) {
                return listA;
            }
        }
        return list;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.CurveLineLayout
    public void I() {
        if (!F().isEmpty()) {
            CollectState collectState = this.n;
            if (collectState == CollectState.Curve1Ing) {
                this.o.clear();
                this.o.addAll(F());
            } else if (collectState == CollectState.Curve2Ing) {
                this.p.clear();
                this.p.addAll(F());
            }
        }
        Y();
        if (getI()) {
            w(getF3809e().h(W(), i(), f(), getF3807a().K0(W())));
            if (F().size() > 0) {
                C((Gps) s.o0(F()));
            }
        }
    }

    protected final void Q(MapView mapView) {
        r.e(mapView, "mapView");
        CollectState collectState = this.n;
        if (collectState == CollectState.Curve2End) {
            B("线已经采集结束,只能删除重采");
            return;
        }
        if (collectState == CollectState.Curve2Ing) {
            B("线2正在采集中不能采集");
            return;
        }
        Gps gpsK = getF3807a().k();
        if (a(gpsK)) {
            this.q.add(gpsK);
            I();
            this.n = CollectState.Curve1End;
            J();
        }
    }

    protected final void R(MapView mapView) {
        r.e(mapView, "mapView");
        CollectState collectState = this.n;
        if (collectState == CollectState.Curve1End || collectState == CollectState.Curve2End) {
            B("线已经采集结束,只能删除重采");
            return;
        }
        if (collectState == CollectState.Curve2Ing) {
            B("线2正在采集中不能采集");
            return;
        }
        Gps gpsK = getF3807a().k();
        if (a(gpsK)) {
            if (!this.q.isEmpty()) {
                if (gpsK.distanceTo((Gps) s.o0(this.q)) < 0.5d) {
                    TtsManager.r("距离上一次采集点距离较短", TtsGrade.SpecialVoice);
                    u.h("距离上一次采集点距离较短");
                    return;
                } else if (gpsK.distanceTo((Gps) s.o0(this.q)) > 50.0d) {
                    TtsManager.r("线段距离超过50米,请结束采集", TtsGrade.SpecialVoice);
                    u.h("线段距离超过50米,请结束采集");
                    return;
                }
            }
            this.q.add(gpsK);
            I();
            this.n = CollectState.Curve1Ing;
            K(gpsK);
        }
    }

    protected final void S(MapView mapView) {
        r.e(mapView, "mapView");
        CollectState collectState = this.n;
        if (collectState == CollectState.None || collectState == CollectState.Curve1Ing || collectState == CollectState.Curve1End) {
            B("线1还没有采集结束请先采集线1");
            return;
        }
        Gps gpsK = getF3807a().k();
        if (a(gpsK)) {
            this.r.add(gpsK);
            I();
            this.n = CollectState.Curve2End;
            J();
        }
    }

    protected final void T(MapView mapView) {
        r.e(mapView, "mapView");
        CollectState collectState = this.n;
        if (collectState == CollectState.None || collectState == CollectState.Curve1Ing) {
            B("线1还没有采集结束请先采集线1");
            return;
        }
        if (collectState == CollectState.Curve2End) {
            B("线2已经采集结束,只能删除重采");
            return;
        }
        Gps gpsK = getF3807a().k();
        if (a(gpsK)) {
            if (!this.r.isEmpty()) {
                if (gpsK.distanceTo((Gps) s.o0(this.r)) < 0.5d) {
                    TtsManager.r("距离上一次采集点距离较短", TtsGrade.SpecialVoice);
                    u.h("距离上一次采集点距离较短");
                    return;
                } else if (gpsK.distanceTo((Gps) s.o0(this.r)) > 50.0d) {
                    TtsManager.r("线段距离超过50米,请结束采集", TtsGrade.SpecialVoice);
                    u.h("线段距离超过50米,请结束采集");
                    return;
                }
            }
            this.r.add(gpsK);
            I();
            this.n = CollectState.Curve2Ing;
            K(gpsK);
        }
    }

    public abstract void U();

    /* JADX INFO: renamed from: V, reason: from getter */
    protected final K3ShapeType getS() {
        return this.s;
    }

    protected final CommonSrcData W() {
        CommonSrcData commonSrcData = this.m;
        if (commonSrcData != null) {
            return commonSrcData;
        }
        r.u("srcData");
        throw null;
    }

    public final void Y() {
        List<Gps> listE = E(false, this.o, this.q);
        List<Gps> listE2 = E(false, this.p, this.r);
        Gps gpsK = getF3807a().k();
        if (gpsK != null && SystemClock.elapsedRealtime() - this.t > DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
            CollectState collectState = this.n;
            if (collectState == CollectState.Curve1Ing) {
                if (listE.size() > 0 && gpsK.distanceTo((Gps) s.o0(listE)) > 40.0d) {
                    TtsManager.r("线段距离超过50米,请结束采集", TtsGrade.SpecialVoice);
                    this.t = SystemClock.elapsedRealtime();
                    return;
                }
            } else if (collectState == CollectState.Curve2Ing && listE2.size() > 0 && gpsK.distanceTo((Gps) s.o0(listE2)) > 40.0d) {
                TtsManager.r("线段距离超过50米,请结束采集", TtsGrade.SpecialVoice);
                this.t = SystemClock.elapsedRealtime();
                return;
            }
        }
        W().points = listE;
        W().points2 = listE2;
    }

    public void Z(CommonSrcData defaultSrcData) {
        CommonSrcData commonSrcDataCopy;
        r.e(defaultSrcData, "defaultSrcData");
        CommonSrcData commonSrcData = this.l;
        if (commonSrcData != null && (commonSrcDataCopy = defaultSrcData.copy(commonSrcData, false)) != null) {
            defaultSrcData = commonSrcDataCopy;
        }
        b0(defaultSrcData);
        if (W().points != null) {
            this.o.addAll(W().points);
        }
        if (W().points2 != null) {
            this.p.addAll(W().points2);
        }
        K3ShapeType k3ShapeTypeA = K3ShapeType.INSTANCE.a(W().shape);
        if (k3ShapeTypeA != null) {
            this.s = k3ShapeTypeA;
            return;
        }
        throw new IllegalArgumentException("type = " + W().shape + " ; K3ShapeType 类型有问题");
    }

    public boolean a0() {
        if (W().points == null || W().points.size() < 2) {
            B("线1没有采集");
            return false;
        }
        if (W().points2 != null && W().points2.size() >= 2) {
            return true;
        }
        B("线2没有采集");
        return false;
    }

    protected final void b0(CommonSrcData commonSrcData) {
        r.e(commonSrcData, "<set-?>");
        this.m = commonSrcData;
    }

    protected final void c0(CollectState collectState) {
        r.e(collectState, "<set-?>");
        this.n = collectState;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public boolean o() {
        if (W().points == null || W().points.size() <= 0) {
            return W().points2 != null && W().points2.size() > 0;
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void s() {
        g.b(j0.a(w0.b()), null, null, new BaseDoubleLineLayout$removeCurrentLine$1(this, null), 3, null);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void u(long j, Function1<? super K3SrcData, v> callback) {
        r.e(callback, "callback");
        W().points2 = W().points;
        if (a0()) {
            U();
            g.b(j0.a(w0.b()), null, null, new BaseDoubleLineLayout$saveCurrentLine$1(this, j, callback, null), 3, null);
        }
    }
}
