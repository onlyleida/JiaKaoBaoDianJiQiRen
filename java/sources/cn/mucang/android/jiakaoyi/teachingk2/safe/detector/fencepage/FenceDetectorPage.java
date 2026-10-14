package cn.mucang.android.jiakaoyi.teachingk2.safe.detector.fencepage;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.signal.Tiger;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityFenceDetectorPageBinding;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import cn.mucang.android.jiakaoyi.teachingk2.safe.detector.FenceDetector;
import cn.mucang.android.jiakaoyi.teachingk2.safe.detector.test.BrakeDistanceTestPage;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class FenceDetectorPage extends BaseViewBindingActivity<ActivityFenceDetectorPageBinding> {
    private cn.mucang.android.jiakaoyi.teachingk2.safe.detector.fencepage.e.a b;
    private cn.mucang.android.jiakaoyi.teachingk2.safe.detector.fencepage.e.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.teachingk2.safe.detector.fencepage.e.a f7670d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f7671e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.h.b<FenceDetector.c> f7672f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.signal.c.f.a f7673g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.h.b<FenceDetector.d> f7674h = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.detector.fencepage.a
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            this.f7677a.u((FenceDetector.d) obj);
        }
    };

    class a implements cn.mucang.android.jiakaoyi.framework.h.b<FenceDetector.c> {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void callback(FenceDetector.c cVar) {
            FenceDetector.Type type = cVar.f7657a;
            if (type == FenceDetector.Type.Trigger) {
                FenceDetectorPage.this.c.j(cVar.b);
            } else if (type == FenceDetector.Type.Faraway) {
                FenceDetectorPage.this.f7670d.j(cVar.b);
            }
            ((ActivityFenceDetectorPageBinding) FenceDetectorPage.this.f3424a).mapView.r();
        }
    }

    class b implements cn.mucang.android.jiakaoyi.signal.c.f.a {
        b() {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public void onSignalChanged(e eVar) {
            Pos pos;
            CarPos carPosC = eVar.c();
            FenceDetectorPage.this.b.j(carPosC.carPoints);
            if (!FenceDetectorPage.this.f7671e && (pos = carPosC.center) != null) {
                ((ActivityFenceDetectorPageBinding) FenceDetectorPage.this.f3424a).mapView.i((float) pos.x, (float) pos.y);
                ((ActivityFenceDetectorPageBinding) FenceDetectorPage.this.f3424a).mapView.r();
            }
            ((ActivityFenceDetectorPageBinding) FenceDetectorPage.this.f3424a).info.setText("方向盘:" + eVar.d().r + ",速度:" + eVar.d().b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void o(Boolean bool) {
        this.f7671e = bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void q(View view) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void s(View view) {
        startActivity(new Intent(this, (Class<?>) BrakeDistanceTestPage.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void u(FenceDetector.d dVar) {
        ((ActivityFenceDetectorPageBinding) this.f3424a).triggerInfo.setText(dVar.f7658a);
    }

    public static void v(Context context) {
        ActivityUtils.c(context, new Intent(context, (Class<?>) FenceDetectorPage.class));
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "电子围栏检测页面";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        this.f7671e = false;
        List<cn.mucang.android.jiakaoyi.teachingk2.res.model.a> list = n.b().f7602f;
        if (g.b(list)) {
            u.h("没有电子围栏数据");
            finish();
            return;
        }
        for (cn.mucang.android.jiakaoyi.teachingk2.res.model.a aVar : list) {
            if (!g.b(aVar.c)) {
                int i = aVar.f7591a;
                int i2 = i == 2 ? -65536 : i == 3 ? -16776961 : -40944;
                VB vb = this.f3424a;
                ((ActivityFenceDetectorPageBinding) vb).mapView.u.g(new cn.mucang.android.jiakaoyi.teachingk2.safe.detector.fencepage.e.a(((ActivityFenceDetectorPageBinding) vb).mapView, i2, aVar.c, 1, false));
            }
        }
        ((ActivityFenceDetectorPageBinding) this.f3424a).mapView.setClickViewListener(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.detector.fencepage.c
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                this.f7679a.o((Boolean) obj);
            }
        });
        this.b = new cn.mucang.android.jiakaoyi.teachingk2.safe.detector.fencepage.e.a(((ActivityFenceDetectorPageBinding) this.f3424a).mapView, -15298813, 2);
        this.c = new cn.mucang.android.jiakaoyi.teachingk2.safe.detector.fencepage.e.a(((ActivityFenceDetectorPageBinding) this.f3424a).mapView, -8255506, 2);
        this.f7670d = new cn.mucang.android.jiakaoyi.teachingk2.safe.detector.fencepage.e.a(((ActivityFenceDetectorPageBinding) this.f3424a).mapView, -2536951, 2);
        ((ActivityFenceDetectorPageBinding) this.f3424a).back.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.detector.fencepage.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f7678a.q(view);
            }
        });
        ((ActivityFenceDetectorPageBinding) this.f3424a).mapView.u.R(-1);
        ((ActivityFenceDetectorPageBinding) this.f3424a).mapView.u.g(this.b);
        ((ActivityFenceDetectorPageBinding) this.f3424a).mapView.u.g(this.c);
        ((ActivityFenceDetectorPageBinding) this.f3424a).mapView.u.g(this.f7670d);
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this.f7673g);
        Tiger.i(this, this.f7672f, FenceDetector.c.class);
        Tiger.i(this, this.f7674h, FenceDetector.d.class);
        ((ActivityFenceDetectorPageBinding) this.f3424a).collectBrakeDistance.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.detector.fencepage.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f7680a.s(view);
            }
        });
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        ((ActivityFenceDetectorPageBinding) this.f3424a).mapView.c();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this.f7673g);
        FenceDetector.i(false);
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        ((ActivityFenceDetectorPageBinding) this.f3424a).mapView.m();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        FenceDetector.i(true);
        ((ActivityFenceDetectorPageBinding) this.f3424a).mapView.n();
    }
}
