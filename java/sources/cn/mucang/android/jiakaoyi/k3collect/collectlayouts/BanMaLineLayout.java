package cn.mucang.android.jiakaoyi.k3collect.collectlayouts;

import android.view.LayoutInflater;
import android.view.View;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity;
import cn.mucang.android.jiakaoyi.k3collect.LineLayoutType;
import cn.mucang.android.jiakaoyi.k3collect.R;
import cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout;
import cn.mucang.android.jiakaoyi.k3collect.databinding.BanmaLineLayoutBinding;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.BanMaLineSrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.CommonSrcData;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.k1, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0002J\b\u0010\u0012\u001a\u00020\u0010H\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0006\u0010\u001b\u001a\u00020\u0010J\b\u0010\u001c\u001a\u00020\u001dH\u0016J\b\u0010\u001e\u001a\u00020\u001dH\u0016J\u0010\u0010\u001f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\nH\u0002J\b\u0010!\u001a\u00020\u0010H\u0016J\b\u0010\"\u001a\u00020\u0010H\u0002J\b\u0010#\u001a\u00020\u0010H\u0016J$\u0010$\u001a\u00020\u00102\u0006\u0010%\u001a\u00020&2\u0012\u0010'\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00100(H\u0016J\b\u0010)\u001a\u00020\u0010H\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006*"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/BanMaLineLayout;", "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;", "activity", "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;", "sourceData", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;", "(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V", "binding", "Lcn/mucang/android/jiakaoyi/k3collect/databinding/BanmaLineLayoutBinding;", "lineWidth", "", "getSourceData", "()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;", "srcData", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/BanMaLineSrcData;", "destroy", "", "fillData", "freezeEdit", "getSrcData", "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;", "init", "Landroidx/viewbinding/ViewBinding;", "layoutInflater", "Landroid/view/LayoutInflater;", "mapView", "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;", "initData", "isDone", "", "isStart", "onCollectClick", "index", "refreshSrcData", "releaseView", "removeCurrentLine", "saveCurrentLine", "examSiteId", "", "callback", "Lkotlin/Function1;", "unFreezeEdit", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class BanMaLineLayout extends BaseLineLayout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final CommonSrcData f3842h;
    private int i;
    private BanmaLineLayoutBinding j;
    private BanMaLineSrcData k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BanMaLineLayout(K3PosCollectActivity activity, CommonSrcData commonSrcData) {
        BanMaLineSrcData banMaLineSrcDataCopy;
        super(activity);
        kotlin.jvm.internal.r.e(activity, "activity");
        this.f3842h = commonSrcData;
        this.i = 40;
        if (commonSrcData == null) {
            banMaLineSrcDataCopy = null;
        } else {
            commonSrcData.shape = 0;
            banMaLineSrcDataCopy = new BanMaLineSrcData(40, 60).copy(commonSrcData, false);
        }
        this.k = banMaLineSrcDataCopy == null ? new BanMaLineSrcData(this.i, 60) : banMaLineSrcDataCopy;
    }

    private final void E() {
        BanmaLineLayoutBinding banmaLineLayoutBinding = this.j;
        if (banmaLineLayoutBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        String strValueOf = String.valueOf(banmaLineLayoutBinding.etLineWidth.getText());
        this.k.lineWidth = strValueOf.length() > 0 ? Integer.parseInt(strValueOf) : this.i;
    }

    private final void F() {
        BanmaLineLayoutBinding banmaLineLayoutBinding = this.j;
        if (banmaLineLayoutBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        if (banmaLineLayoutBinding.etLineWidth.isEnabled()) {
            BanmaLineLayoutBinding banmaLineLayoutBinding2 = this.j;
            if (banmaLineLayoutBinding2 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            banmaLineLayoutBinding2.etLineWidth.setEnabled(false);
            E();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(BanMaLineLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.S(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(BanMaLineLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.S(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(BanMaLineLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.S(3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(BanMaLineLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.S(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(BanMaLineLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = R.drawable.k3_caiji_banma;
        String string = this$0.getF3807a().getString(R.string.banma);
        kotlin.jvm.internal.r.d(string, "activity.getString(R.string.banma)");
        this$0.A(i, string, "人行横道采集示例");
    }

    private final void S(int i) {
        Gps currentGps = getF3807a().k();
        if (a(currentGps)) {
            if (i == 1) {
                this.k.p1 = currentGps;
            } else if (i == 2) {
                this.k.p2 = currentGps;
            } else if (i == 3) {
                this.k.p3 = currentGps;
            } else if (i == 4) {
                this.k.p4 = currentGps;
            }
            F();
            w(getF3809e().g(this.k, i(), f()));
            kotlin.jvm.internal.r.d(currentGps, "currentGps");
            C(currentGps);
        }
    }

    private final void T() {
        U();
    }

    private final void U() {
        BanmaLineLayoutBinding banmaLineLayoutBinding = this.j;
        if (banmaLineLayoutBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        banmaLineLayoutBinding.etLineWidth.setText(String.valueOf(this.i));
        BanmaLineLayoutBinding banmaLineLayoutBinding2 = this.j;
        if (banmaLineLayoutBinding2 != null) {
            banmaLineLayoutBinding2.etLineWidth.setEnabled(true);
        } else {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
    }

    public final void L() {
        x(LineLayoutType.BANMA_LINE);
        this.i = this.k.lineWidth;
    }

    public boolean M() {
        BanMaLineSrcData banMaLineSrcData = this.k;
        if (banMaLineSrcData.p1 == null) {
            B("点1没有采集");
            return false;
        }
        if (banMaLineSrcData.p2 == null) {
            B("点2没有采集");
            return false;
        }
        if (banMaLineSrcData.p3 == null) {
            B("点3没有采集");
            return false;
        }
        if (banMaLineSrcData.p4 == null) {
            B("点4没有采集");
            return false;
        }
        cn.mucang.android.jiakaoyi.signal.i.b bVarF = f();
        Pos posA = bVarF == null ? null : bVarF.a(this.k.p1);
        cn.mucang.android.jiakaoyi.signal.i.b bVarF2 = f();
        Pos posA2 = bVarF2 == null ? null : bVarF2.a(this.k.p2);
        cn.mucang.android.jiakaoyi.signal.i.b bVarF3 = f();
        Pos posA3 = bVarF3 == null ? null : bVarF3.a(this.k.p3);
        cn.mucang.android.jiakaoyi.signal.i.b bVarF4 = f();
        Pos posA4 = bVarF4 != null ? bVarF4.a(this.k.p4) : null;
        if (posA == null || posA2 == null || posA3 == null || posA4 == null) {
            B("Converter null");
            return false;
        }
        if (!cn.mucang.android.jiakaoyi.hpmap.d.a.C(posA, posA4, posA2, posA3)) {
            return true;
        }
        B("1 4线和2 3线有交叉 , 请按照逆时针的顺序采");
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void b() {
        q();
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public K3SrcData j() {
        return this.k;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public androidx.viewbinding.a k(LayoutInflater layoutInflater, MapView mapView) {
        kotlin.jvm.internal.r.e(layoutInflater, "layoutInflater");
        kotlin.jvm.internal.r.e(mapView, "mapView");
        BanmaLineLayoutBinding banmaLineLayoutBindingInflate = BanmaLineLayoutBinding.inflate(layoutInflater);
        kotlin.jvm.internal.r.d(banmaLineLayoutBindingInflate, "inflate(layoutInflater)");
        this.j = banmaLineLayoutBindingInflate;
        L();
        y(mapView);
        U();
        BanmaLineLayoutBinding banmaLineLayoutBinding = this.j;
        if (banmaLineLayoutBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        banmaLineLayoutBinding.tvCollect1.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BanMaLineLayout.G(this.f3837a, view);
            }
        });
        BanmaLineLayoutBinding banmaLineLayoutBinding2 = this.j;
        if (banmaLineLayoutBinding2 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        banmaLineLayoutBinding2.tvCollect2.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BanMaLineLayout.H(this.f3828a, view);
            }
        });
        BanmaLineLayoutBinding banmaLineLayoutBinding3 = this.j;
        if (banmaLineLayoutBinding3 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        banmaLineLayoutBinding3.tvCollect3.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BanMaLineLayout.I(this.f3831a, view);
            }
        });
        BanmaLineLayoutBinding banmaLineLayoutBinding4 = this.j;
        if (banmaLineLayoutBinding4 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        banmaLineLayoutBinding4.tvCollect4.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BanMaLineLayout.J(this.f3840a, view);
            }
        });
        BanmaLineLayoutBinding banmaLineLayoutBinding5 = this.j;
        if (banmaLineLayoutBinding5 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        banmaLineLayoutBinding5.tvExample.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BanMaLineLayout.K(this.f3834a, view);
            }
        });
        BanmaLineLayoutBinding banmaLineLayoutBinding6 = this.j;
        if (banmaLineLayoutBinding6 != null) {
            return banmaLineLayoutBinding6;
        }
        kotlin.jvm.internal.r.u("binding");
        throw null;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public boolean o() {
        BanMaLineSrcData banMaLineSrcData = this.k;
        return (banMaLineSrcData.p1 == null && banMaLineSrcData.p2 == null && banMaLineSrcData.p3 == null && banMaLineSrcData.p4 == null) ? false : true;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void q() {
        T();
        BanMaLineSrcData banMaLineSrcData = this.k;
        banMaLineSrcData.id = null;
        banMaLineSrcData.p1 = null;
        banMaLineSrcData.p2 = null;
        banMaLineSrcData.p3 = null;
        banMaLineSrcData.p4 = null;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void s() {
        getF3809e().f(this.k, i());
        super.r(this.k.id);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void u(long j, Function1<? super K3SrcData, kotlin.v> callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        E();
        if (M()) {
            super.t(String.valueOf(j), this.k, callback);
        }
    }
}
