package cn.mucang.android.jiakaoyi.k3collect.collectlayouts;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.CompoundButton;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity;
import cn.mucang.android.jiakaoyi.k3collect.R;
import cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout;
import cn.mucang.android.jiakaoyi.k3collect.databinding.JudgeLineLayoutBinding;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.CommonSrcData;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.l1, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0006\u0010\u0017\u001a\u00020\rJ\b\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u0019H\u0016J\u0010\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\b\u0010\u001e\u001a\u00020\rH\u0016J\b\u0010\u001f\u001a\u00020\rH\u0002J\b\u0010 \u001a\u00020\rH\u0016J$\u0010!\u001a\u00020\r2\u0006\u0010\"\u001a\u00020#2\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\r0%H\u0016J\b\u0010&\u001a\u00020\rH\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/JudgeLineLayout;", "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;", "activity", "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;", "sourceData", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;", "(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V", "binding", "Lcn/mucang/android/jiakaoyi/k3collect/databinding/JudgeLineLayoutBinding;", "getSourceData", "()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;", "srcData", "destroy", "", "freezeEdit", "getSrcData", "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;", "init", "Landroidx/viewbinding/ViewBinding;", "layoutInflater", "Landroid/view/LayoutInflater;", "mapView", "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;", "initData", "isDone", "", "isStart", "onCollectClick", "index", "", "refreshSrcData", "releaseView", "removeCurrentLine", "saveCurrentLine", "examSiteId", "", "callback", "Lkotlin/Function1;", "tip", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class JudgeLineLayout extends BaseLineLayout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final CommonSrcData f3845h;
    private JudgeLineLayoutBinding i;
    private CommonSrcData j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JudgeLineLayout(K3PosCollectActivity activity, CommonSrcData commonSrcData) {
        super(activity);
        kotlin.jvm.internal.r.e(activity, "activity");
        this.f3845h = commonSrcData;
        CommonSrcData commonSrcDataCopy = commonSrcData == null ? null : new CommonSrcData(13).copy(commonSrcData, false);
        this.j = commonSrcDataCopy == null ? new CommonSrcData(13) : commonSrcDataCopy;
    }

    private final void E() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(JudgeLineLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.W(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(JudgeLineLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.W(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(JudgeLineLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.W(3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(JudgeLineLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.W(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(JudgeLineLayout this$0, CompoundButton compoundButton, boolean z) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        boolean zA = cn.mucang.android.jiakaoyi.k3collect.collision.b.a(this$0.j.shape, 11);
        boolean zA2 = cn.mucang.android.jiakaoyi.k3collect.collision.b.a(this$0.j.shape, 12);
        this$0.j.shape = cn.mucang.android.jiakaoyi.k3collect.collision.b.c(z, zA, zA2);
        cn.mucang.android.jiakaoyi.k3collect.collision.b.b(this$0.j.shape);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(JudgeLineLayout this$0, CompoundButton compoundButton, boolean z) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        boolean zA = cn.mucang.android.jiakaoyi.k3collect.collision.b.a(this$0.j.shape, 10);
        boolean zA2 = cn.mucang.android.jiakaoyi.k3collect.collision.b.a(this$0.j.shape, 12);
        this$0.j.shape = cn.mucang.android.jiakaoyi.k3collect.collision.b.c(zA, z, zA2);
        cn.mucang.android.jiakaoyi.k3collect.collision.b.b(this$0.j.shape);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(JudgeLineLayout this$0, CompoundButton compoundButton, boolean z) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        boolean zA = cn.mucang.android.jiakaoyi.k3collect.collision.b.a(this$0.j.shape, 10);
        boolean zA2 = cn.mucang.android.jiakaoyi.k3collect.collision.b.a(this$0.j.shape, 11);
        this$0.j.shape = cn.mucang.android.jiakaoyi.k3collect.collision.b.c(zA, zA2, z);
        cn.mucang.android.jiakaoyi.k3collect.collision.b.b(this$0.j.shape);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M(JudgeLineLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = R.drawable.k3_caiji_judge_line;
        String string = this$0.getF3807a().getString(R.string.judge_line);
        kotlin.jvm.internal.r.d(string, "activity.getString(R.string.judge_line)");
        this$0.A(i, string, "评判控制线采集示例");
    }

    private final void W(int i) {
        Gps currentGps = getF3807a().k();
        if (a(currentGps)) {
            CommonSrcData commonSrcData = this.j;
            if (commonSrcData.points == null) {
                commonSrcData.points = new ArrayList();
            }
            int i2 = i - 1;
            if (this.j.points.size() < i2) {
                B((char) 28857 + (this.j.points.size() + 1) + "没有采集");
                return;
            }
            if (this.j.points.size() >= i) {
                this.j.points.set(i2, currentGps);
            } else {
                this.j.points.add(currentGps);
            }
            E();
            w(getF3809e().g(this.j, i(), f()));
            kotlin.jvm.internal.r.d(currentGps, "currentGps");
            C(currentGps);
        }
    }

    private final void X() {
    }

    private final void Y() {
        List<Gps> list = this.j.points;
        if (list == null || list.size() < 4) {
            B("需要采集4个点");
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (this.j.points.get(i) == null) {
                B((char) 28857 + i2 + "没有采集");
                return;
            }
            if (i2 > 4) {
                return;
            } else {
                i = i2;
            }
        }
    }

    public boolean N() {
        List<Gps> list = this.j.points;
        if (list == null || list.size() < 4) {
            return false;
        }
        Iterator<Gps> it = this.j.points.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                return false;
            }
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void b() {
        q();
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public K3SrcData j() {
        return this.j;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public androidx.viewbinding.a k(LayoutInflater layoutInflater, MapView mapView) {
        kotlin.jvm.internal.r.e(layoutInflater, "layoutInflater");
        kotlin.jvm.internal.r.e(mapView, "mapView");
        JudgeLineLayoutBinding judgeLineLayoutBindingInflate = JudgeLineLayoutBinding.inflate(layoutInflater);
        kotlin.jvm.internal.r.d(judgeLineLayoutBindingInflate, "inflate(layoutInflater)");
        this.i = judgeLineLayoutBindingInflate;
        y(mapView);
        JudgeLineLayoutBinding judgeLineLayoutBinding = this.i;
        if (judgeLineLayoutBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        judgeLineLayoutBinding.tvCollect1.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.q0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                JudgeLineLayout.F(this.f3863a, view);
            }
        });
        JudgeLineLayoutBinding judgeLineLayoutBinding2 = this.i;
        if (judgeLineLayoutBinding2 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        judgeLineLayoutBinding2.tvCollect2.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.p0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                JudgeLineLayout.G(this.f3857a, view);
            }
        });
        JudgeLineLayoutBinding judgeLineLayoutBinding3 = this.i;
        if (judgeLineLayoutBinding3 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        judgeLineLayoutBinding3.tvCollect3.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.r0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                JudgeLineLayout.H(this.f3865a, view);
            }
        });
        JudgeLineLayoutBinding judgeLineLayoutBinding4 = this.i;
        if (judgeLineLayoutBinding4 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        judgeLineLayoutBinding4.tvCollect4.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.t0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                JudgeLineLayout.I(this.f3869a, view);
            }
        });
        CommonSrcData commonSrcData = this.j;
        int i = commonSrcData.shape;
        if (i <= 128) {
            commonSrcData.shape = cn.mucang.android.jiakaoyi.k3collect.collision.b.c(true, true, true);
            cn.mucang.android.jiakaoyi.k3collect.collision.b.b(this.j.shape);
        } else if (cn.mucang.android.jiakaoyi.k3collect.collision.b.a(i, 9)) {
            this.j.shape = cn.mucang.android.jiakaoyi.k3collect.collision.b.c(false, false, false);
            JudgeLineLayoutBinding judgeLineLayoutBinding5 = this.i;
            if (judgeLineLayoutBinding5 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            judgeLineLayoutBinding5.checkBox1.setChecked(false);
            JudgeLineLayoutBinding judgeLineLayoutBinding6 = this.i;
            if (judgeLineLayoutBinding6 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            judgeLineLayoutBinding6.checkBox2.setChecked(false);
            JudgeLineLayoutBinding judgeLineLayoutBinding7 = this.i;
            if (judgeLineLayoutBinding7 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            judgeLineLayoutBinding7.checkBox3.setChecked(false);
            cn.mucang.android.jiakaoyi.k3collect.collision.b.b(this.j.shape);
        } else {
            JudgeLineLayoutBinding judgeLineLayoutBinding8 = this.i;
            if (judgeLineLayoutBinding8 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            judgeLineLayoutBinding8.checkBox1.setChecked(cn.mucang.android.jiakaoyi.k3collect.collision.b.a(this.j.shape, 10));
            JudgeLineLayoutBinding judgeLineLayoutBinding9 = this.i;
            if (judgeLineLayoutBinding9 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            judgeLineLayoutBinding9.checkBox2.setChecked(cn.mucang.android.jiakaoyi.k3collect.collision.b.a(this.j.shape, 11));
            JudgeLineLayoutBinding judgeLineLayoutBinding10 = this.i;
            if (judgeLineLayoutBinding10 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            judgeLineLayoutBinding10.checkBox3.setChecked(cn.mucang.android.jiakaoyi.k3collect.collision.b.a(this.j.shape, 12));
            CommonSrcData commonSrcData2 = this.j;
            JudgeLineLayoutBinding judgeLineLayoutBinding11 = this.i;
            if (judgeLineLayoutBinding11 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            boolean zIsChecked = judgeLineLayoutBinding11.checkBox1.isChecked();
            JudgeLineLayoutBinding judgeLineLayoutBinding12 = this.i;
            if (judgeLineLayoutBinding12 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            boolean zIsChecked2 = judgeLineLayoutBinding12.checkBox2.isChecked();
            JudgeLineLayoutBinding judgeLineLayoutBinding13 = this.i;
            if (judgeLineLayoutBinding13 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            commonSrcData2.shape = cn.mucang.android.jiakaoyi.k3collect.collision.b.c(zIsChecked, zIsChecked2, judgeLineLayoutBinding13.checkBox3.isChecked());
            cn.mucang.android.jiakaoyi.k3collect.collision.b.b(this.j.shape);
        }
        JudgeLineLayoutBinding judgeLineLayoutBinding14 = this.i;
        if (judgeLineLayoutBinding14 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        judgeLineLayoutBinding14.checkBox1.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.o0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                JudgeLineLayout.J(this.f3854a, compoundButton, z);
            }
        });
        JudgeLineLayoutBinding judgeLineLayoutBinding15 = this.i;
        if (judgeLineLayoutBinding15 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        judgeLineLayoutBinding15.checkBox2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.v0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                JudgeLineLayout.K(this.f3873a, compoundButton, z);
            }
        });
        JudgeLineLayoutBinding judgeLineLayoutBinding16 = this.i;
        if (judgeLineLayoutBinding16 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        judgeLineLayoutBinding16.checkBox3.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.u0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                JudgeLineLayout.L(this.f3871a, compoundButton, z);
            }
        });
        JudgeLineLayoutBinding judgeLineLayoutBinding17 = this.i;
        if (judgeLineLayoutBinding17 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        judgeLineLayoutBinding17.tvExample.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.s0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                JudgeLineLayout.M(this.f3867a, view);
            }
        });
        JudgeLineLayoutBinding judgeLineLayoutBinding18 = this.i;
        if (judgeLineLayoutBinding18 != null) {
            return judgeLineLayoutBinding18;
        }
        kotlin.jvm.internal.r.u("binding");
        throw null;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public boolean o() {
        List<Gps> list = this.j.points;
        if (list != null && list.size() != 0) {
            Iterator<Gps> it = this.j.points.iterator();
            while (it.hasNext()) {
                if (it.next() != null) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void q() {
        X();
        CommonSrcData commonSrcData = this.j;
        commonSrcData.id = null;
        commonSrcData.points = new ArrayList();
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void s() {
        getF3809e().f(this.j, i());
        super.r(this.j.id);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void u(long j, Function1<? super K3SrcData, kotlin.v> callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        if (N()) {
            super.t(String.valueOf(j), this.j, callback);
        } else {
            Y();
        }
    }
}
