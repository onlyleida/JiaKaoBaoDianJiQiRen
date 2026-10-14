package cn.mucang.android.jiakaoyi.teachingk2.autoteach.test;

import androidx.core.view.InputDeviceCompat;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.signal.Tiger;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.e;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.utils.d;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityTestBackcenterPageBinding;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;

/* JADX INFO: loaded from: classes4.dex */
public class BackCenterTestPage extends BaseViewBindingActivity<ActivityTestBackcenterPageBinding> {
    private double b = 0.0d;
    private double c = 0.0d;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Pos f6351d = new Pos();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Pos f6352e = new Pos();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private double f6353f = 0.0d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private double f6354g = 0.0d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private double f6355h = 0.0d;
    private final cn.mucang.android.jiakaoyi.framework.h.b<e.a> i = new a();
    private final cn.mucang.android.jiakaoyi.signal.c.f.a j = new b();
    private cn.mucang.android.jiakaoyi.teachingk2.autoteach.test.a k;
    private cn.mucang.android.jiakaoyi.teachingk2.autoteach.test.a l;
    private cn.mucang.android.jiakaoyi.teachingk2.autoteach.test.a m;
    private cn.mucang.android.jiakaoyi.teachingk2.autoteach.test.a n;

    class a implements cn.mucang.android.jiakaoyi.framework.h.b<e.a> {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void callback(e.a aVar) {
            if (BackCenterTestPage.this.l != null) {
                if (BackCenterTestPage.this.f6353f == 0.0d) {
                    BackCenterTestPage.this.f6353f = -aVar.b.x;
                    BackCenterTestPage.this.f6354g = -aVar.b.y;
                }
                aVar.b.translate(BackCenterTestPage.this.f6353f, BackCenterTestPage.this.f6354g);
                BackCenterTestPage.this.l.i(aVar.b);
                aVar.c.translate(BackCenterTestPage.this.f6353f, BackCenterTestPage.this.f6354g);
                BackCenterTestPage.this.n.i(aVar.c);
                BackCenterTestPage.this.f6352e.setPos(aVar.b);
                MapView mapView = ((ActivityTestBackcenterPageBinding) BackCenterTestPage.this.f3424a).mapView;
                Pos pos = aVar.b;
                mapView.i((float) pos.x, (float) pos.y);
                ((ActivityTestBackcenterPageBinding) BackCenterTestPage.this.f3424a).mapView.r();
                BackCenterTestPage.this.c = aVar.f5415d;
                BackCenterTestPage.this.y();
            }
        }
    }

    class b implements cn.mucang.android.jiakaoyi.signal.c.f.a {
        b() {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            if (eVar.d().h()) {
                BackCenterTestPage.this.b = d.d((float) eVar.c().degree);
                Pos posMeanWith = new Pos(eVar.c().wheelLeftBack).meanWith(eVar.c().wheelRightBack);
                BackCenterTestPage.this.f6355h = new Pos(eVar.c().back).meanWith(eVar.c().front).distanceTo(posMeanWith);
                cn.mucang.android.jiakaoyi.signal.i.a aVar = n.b().f7599a;
                if (aVar != null) {
                    Gps gpsB = aVar.b(posMeanWith);
                    BackCenterTestPage backCenterTestPage = BackCenterTestPage.this;
                    backCenterTestPage.x(gpsB, backCenterTestPage.k, true);
                    Gps gpsFrom = Gps.from(eVar.getCurrentPosition().f5281g);
                    BackCenterTestPage backCenterTestPage2 = BackCenterTestPage.this;
                    backCenterTestPage2.x(gpsFrom, backCenterTestPage2.m, false);
                    ((ActivityTestBackcenterPageBinding) BackCenterTestPage.this.f3424a).mapView.r();
                }
                BackCenterTestPage.this.y();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(Gps gps, cn.mucang.android.jiakaoyi.teachingk2.autoteach.test.a aVar, boolean z) {
        try {
            double[] dArrI = cn.mucang.android.jiakaoyi.teachingk2.autopilot.utm.b.i(gps.longitude, gps.latitude);
            if (this.f6353f == 0.0d) {
                this.f6353f = (-dArrI[0]) * 100.0d;
                this.f6354g = (-dArrI[1]) * 100.0d;
            }
            double d2 = (dArrI[0] * 100.0d) + this.f6353f;
            double d3 = (dArrI[1] * 100.0d) + this.f6354g;
            aVar.i(new Pos(d2, d3));
            if (z) {
                this.f6351d.setPos(d2, d3);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        ((ActivityTestBackcenterPageBinding) this.f3424a).info.setText("航向角: 底层=" + this.c + " , app=" + this.b + " , 差距=" + d.c((float) (this.c - this.b)) + "\n距离:" + this.f6352e.distanceTo(this.f6351d) + "厘米\n角度:" + Math.toDegrees(this.f6351d.angleTo(this.f6352e)) + "\n后轮轴心到天线的垂直距离:" + this.f6355h + "厘米");
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "后轴中心点轨迹";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        this.k = new cn.mucang.android.jiakaoyi.teachingk2.autoteach.test.a(((ActivityTestBackcenterPageBinding) this.f3424a).mapView, -1);
        this.l = new cn.mucang.android.jiakaoyi.teachingk2.autoteach.test.a(((ActivityTestBackcenterPageBinding) this.f3424a).mapView, -16711936);
        this.m = new cn.mucang.android.jiakaoyi.teachingk2.autoteach.test.a(((ActivityTestBackcenterPageBinding) this.f3424a).mapView, InputDeviceCompat.SOURCE_ANY);
        this.n = new cn.mucang.android.jiakaoyi.teachingk2.autoteach.test.a(((ActivityTestBackcenterPageBinding) this.f3424a).mapView, -65536);
        ((ActivityTestBackcenterPageBinding) this.f3424a).mapView.u.g(this.k);
        ((ActivityTestBackcenterPageBinding) this.f3424a).mapView.u.g(this.l);
        ((ActivityTestBackcenterPageBinding) this.f3424a).mapView.u.g(this.m);
        ((ActivityTestBackcenterPageBinding) this.f3424a).mapView.u.g(this.n);
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this.j);
        Tiger.i(this, this.i, e.a.class);
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this.j);
        ((ActivityTestBackcenterPageBinding) this.f3424a).mapView.c();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        ((ActivityTestBackcenterPageBinding) this.f3424a).mapView.m();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        ((ActivityTestBackcenterPageBinding) this.f3424a).mapView.n();
    }
}
