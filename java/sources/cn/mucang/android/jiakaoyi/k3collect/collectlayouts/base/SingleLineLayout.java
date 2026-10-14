package cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base;

import android.os.SystemClock;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity;
import cn.mucang.android.jiakaoyi.k3collect.K3ShapeType;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.CommonSrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.SingleLineSrcData;
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
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0006\u0010(\u001a\u00020)J\u0006\u0010*\u001a\u00020)J\b\u0010+\u001a\u00020)H\u0016J\b\u0010,\u001a\u00020)H&J\b\u0010-\u001a\u00020)H&J\b\u0010.\u001a\u0004\u0018\u00010\u000bJ\b\u0010 \u001a\u00020/H\u0016J\u0006\u00100\u001a\u00020)J\u0010\u00101\u001a\u00020)2\u0006\u00102\u001a\u00020\u001fH\u0016J\b\u00103\u001a\u000204H\u0016J\b\u00105\u001a\u000204H\u0016J\b\u00106\u001a\u00020)H\u0016J\b\u00107\u001a\u00020)H\u0016J\b\u00108\u001a\u00020)H\u0002J\b\u00109\u001a\u00020)H\u0016J$\u0010:\u001a\u00020)2\u0006\u0010;\u001a\u00020\u00122\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u00020)0=H\u0016J\b\u0010>\u001a\u00020)H&R*\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\fX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R*\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\fX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u000e\"\u0004\b\u0015\u0010\u0010R\u001a\u0010\u0016\u001a\u00020\u0017X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u001fX\u0084.¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u0006?"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;", "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/CurveLineLayout;", "activity", "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;", "sourceData", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;", "type", "", "(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;I)V", "curveList", "Ljava/util/ArrayList;", "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;", "Lkotlin/collections/ArrayList;", "getCurveList", "()Ljava/util/ArrayList;", "setCurveList", "(Ljava/util/ArrayList;)V", "lastPlayingTime", "", "linearList", "getLinearList", "setLinearList", "shapeType", "Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;", "getShapeType", "()Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;", "setShapeType", "(Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;)V", "getSourceData", "()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;", "srcData", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;", "getSrcData", "()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;", "setSrcData", "(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;)V", "getType", "()I", "setType", "(I)V", "collectEnd", "", "collectStart", "destroy", "fillData", "freezeEdit", "getLastGps", "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;", "handleData", "initSrcData", "singleLineSrcData", "isDone", "", "isStart", "refreshMap", "refreshSrcData", "releaseView", "removeCurrentLine", "saveCurrentLine", "examSiteId", "callback", "Lkotlin/Function1;", "unFreezeEdit", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class SingleLineLayout extends CurveLineLayout {
    private final CommonSrcData l;
    private int m;
    protected SingleLineSrcData n;
    private ArrayList<Gps> o;
    private ArrayList<Gps> p;
    private K3ShapeType q;
    private long r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleLineLayout(K3PosCollectActivity activity, CommonSrcData commonSrcData, int i) {
        super(activity);
        r.e(activity, "activity");
        this.l = commonSrcData;
        this.m = i;
        this.o = new ArrayList<>();
        this.p = new ArrayList<>();
        this.q = K3ShapeType.STRAIGHT_LINE;
    }

    private final void Y() {
        z(false);
        J();
        a0();
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.CurveLineLayout
    public void I() {
        if ((!F().isEmpty()) && getF3810f()) {
            this.o.clear();
            this.o.addAll(F());
        }
        V();
        if (getI()) {
            w(getF3809e().h(T(), i(), f(), getF3807a().K0(T())));
            Gps gps = F().get(F().size() - 1);
            r.d(gps, "gpsList[gpsList.size - 1]");
            C(gps);
        }
    }

    public final void L() {
    }

    public final void M() {
        Gps gpsK = getF3807a().k();
        if (a(gpsK)) {
            if (!this.p.isEmpty()) {
                if (gpsK.distanceTo((Gps) s.o0(this.p)) < 0.5d) {
                    TtsManager.r("距离上一次采集点距离较短", TtsGrade.SpecialVoice);
                    u.h("距离上一次采集点距离较短");
                    return;
                } else if (gpsK.distanceTo((Gps) s.o0(this.p)) > 50.0d) {
                    TtsManager.r("线段距离超过50米,请结束采集", TtsGrade.SpecialVoice);
                    u.h("线段距离超过50米,请结束采集");
                    return;
                }
            }
            O();
            this.p.add(gpsK);
            z(true);
            K(gpsK);
        }
    }

    public abstract void N();

    public abstract void O();

    /* JADX INFO: Access modifiers changed from: protected */
    public final ArrayList<Gps> P() {
        return this.o;
    }

    public final Gps Q() {
        if (this.p.size() > 0) {
            return (Gps) s.o0(this.p);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ArrayList<Gps> R() {
        return this.p;
    }

    /* JADX INFO: renamed from: S, reason: from getter */
    protected final K3ShapeType getQ() {
        return this.q;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final SingleLineSrcData T() {
        SingleLineSrcData singleLineSrcData = this.n;
        if (singleLineSrcData != null) {
            return singleLineSrcData;
        }
        r.u("srcData");
        throw null;
    }

    /* JADX INFO: renamed from: U, reason: from getter */
    public final int getM() {
        return this.m;
    }

    public final void V() {
        T().isCurve = g().getShapeTypes().get(getB()) == K3ShapeType.CURVE;
        List<Gps> listE = E(T().isCurve, this.o, this.p);
        Gps gpsK = getF3807a().k();
        if (gpsK != null && SystemClock.elapsedRealtime() - this.r > DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS && getF3810f() && listE.size() > 0 && gpsK.distanceTo((Gps) s.o0(listE)) > 40.0d) {
            TtsManager.r("线段距离超过50米,请结束采集", TtsGrade.SpecialVoice);
            u.h("线段距离超过50米,请结束采集");
            this.r = SystemClock.elapsedRealtime();
            return;
        }
        T().lineList = listE;
        if (T().lineList == null || T().lineList.size() <= 0) {
            return;
        }
        T().start = T().lineList.get(0);
        if (T().lineList.size() > 1) {
            T().end = T().lineList.get(T().lineList.size() - 1);
        }
    }

    public void W(SingleLineSrcData singleLineSrcData) {
        SingleLineSrcData singleLineSrcDataCopy;
        r.e(singleLineSrcData, "singleLineSrcData");
        CommonSrcData commonSrcData = this.l;
        if (commonSrcData != null && (singleLineSrcDataCopy = singleLineSrcData.copy(commonSrcData, singleLineSrcData.isDashed)) != null) {
            singleLineSrcData = singleLineSrcDataCopy;
        }
        Z(singleLineSrcData);
        if (T().lineList != null) {
            this.o.addAll(T().lineList);
        } else {
            if (T().start != null) {
                this.o.add(T().start);
            }
            if (T().end != null) {
                this.o.add(T().end);
            }
        }
        this.q = T().isCurve ? K3ShapeType.CURVE : K3ShapeType.STRAIGHT_LINE;
    }

    public boolean X() {
        if (T().lineList == null || T().lineList.size() < 2) {
            B("采集的点最少两个");
            return false;
        }
        if (T().lineList.get(0).distanceTo(T().lineList.get(T().lineList.size() - 1)) >= 1.0d) {
            return true;
        }
        B("起点和终点距离太短");
        return false;
    }

    protected final void Z(SingleLineSrcData singleLineSrcData) {
        r.e(singleLineSrcData, "<set-?>");
        this.n = singleLineSrcData;
    }

    public abstract void a0();

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void b() {
        J();
        q();
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public K3SrcData j() {
        return T();
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public boolean o() {
        return (T().start == null && T().end == null) ? false : true;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void q() {
        Y();
        T().id = null;
        T().start = null;
        T().end = null;
        if (T().lineList != null) {
            T().lineList.clear();
            T().lineList = null;
        }
        this.p.clear();
        this.o.clear();
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void s() {
        g.b(j0.a(w0.b()), null, null, new SingleLineLayout$removeCurrentLine$1(this, null), 3, null);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void u(long j, Function1<? super K3SrcData, v> callback) {
        r.e(callback, "callback");
        try {
            if (X()) {
                N();
                g.b(j0.a(w0.b()), null, null, new SingleLineLayout$saveCurrentLine$1(this, j, callback, null), 3, null);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            f.o(r.m("saveCurrentLine ", t.g(e2)));
            u.h("保存失败");
        }
    }
}
