package cn.mucang.android.jiakaoyi.teachingk2.safe.stop.test;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.core.view.InputDeviceCompat;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.r0;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.l;
import cn.mucang.android.jiakaoyi.signal.Tiger;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityTestStopBinding;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import cn.mucang.android.jiakaoyi.teachingk2.safe.BrakeReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.BrakeModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class TestStopPage extends BaseViewBindingActivity<ActivityTestStopBinding> implements cn.mucang.android.jiakaoyi.teachingk2.safe.d0.g {
    private cn.mucang.android.jiakaoyi.teachingk2.safe.d0.f b;
    private List<l> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private l f7810d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private l f7811e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f7812f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.signal.c.f.a f7813g = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.stop.test.g
        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public final void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            this.f7826a.w(eVar);
        }
    };

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.h.b<cn.mucang.android.jiakaoyi.teachingk2.safe.d0.d> f7814h = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.stop.test.d
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            this.f7823a.y((cn.mucang.android.jiakaoyi.teachingk2.safe.d0.d) obj);
        }
    };
    private long i = 0;
    private byte j = -10;

    class a extends f {
        a() {
            super(null);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            float f2 = i * 0.1f;
            r0<Float> r0Var = cn.mucang.android.jiakaoyi.teachingk2.safe.d0.h.p;
            r0Var.j(Float.valueOf(f2));
            TestStopPage testStopPage = TestStopPage.this;
            ((ActivityTestStopBinding) testStopPage.f3424a).factor1V.setText(testStopPage.E(r0Var.b().floatValue()));
        }
    }

    class b extends f {
        b() {
            super(null);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            float f2 = i * 0.1f;
            r0<Float> r0Var = cn.mucang.android.jiakaoyi.teachingk2.safe.d0.h.q;
            r0Var.j(Float.valueOf(f2));
            TestStopPage testStopPage = TestStopPage.this;
            ((ActivityTestStopBinding) testStopPage.f3424a).factor2V.setText(testStopPage.E(r0Var.b().floatValue()));
        }
    }

    class c extends f {
        c() {
            super(null);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            float f2 = i * 0.1f;
            r0<Float> r0Var = cn.mucang.android.jiakaoyi.teachingk2.safe.d0.h.r;
            r0Var.j(Float.valueOf(f2));
            TestStopPage testStopPage = TestStopPage.this;
            ((ActivityTestStopBinding) testStopPage.f3424a).factor3V.setText(testStopPage.E(r0Var.b().floatValue()));
        }
    }

    class d extends f {
        d() {
            super(null);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            float f2 = i * 0.06f;
            r0<Float> r0Var = cn.mucang.android.jiakaoyi.teachingk2.safe.d0.h.n;
            r0Var.j(Float.valueOf(f2));
            TestStopPage testStopPage = TestStopPage.this;
            ((ActivityTestStopBinding) testStopPage.f3424a).factor4V.setText(testStopPage.E(r0Var.b().floatValue()));
        }
    }

    class e extends f {
        e() {
            super(null);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            float f2 = i * 0.05f;
            r0<Float> r0Var = cn.mucang.android.jiakaoyi.teachingk2.safe.d0.h.o;
            r0Var.j(Float.valueOf(f2));
            TestStopPage testStopPage = TestStopPage.this;
            ((ActivityTestStopBinding) testStopPage.f3424a).factor5V.setText(testStopPage.E(r0Var.b().floatValue()));
        }
    }

    private static abstract class f implements SeekBar.OnSeekBarChangeListener {
        private f() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }

        /* synthetic */ f(a aVar) {
            this();
        }
    }

    public static void A(Context context) {
        ActivityUtils.c(context, new Intent(context, (Class<?>) TestStopPage.class));
    }

    private void B() {
        cn.mucang.android.jiakaoyi.teachingk2.safe.d0.f fVar = this.b;
        if (fVar != null) {
            fVar.e();
        }
        F((byte) 0);
        k();
        ((ActivityTestStopBinding) this.f3424a).info.setText("开始直线停车测试:");
        ArrayList arrayList = new ArrayList();
        cn.mucang.android.jiakaoyi.signal.c.e eVarT = cn.mucang.android.jiakaoyi.signal.c.d.t();
        Pos pos = new Pos(eVarT.c().rearAxlePoint);
        double radians = Math.toRadians(eVarT.c().degree);
        ArrayList arrayList2 = new ArrayList();
        for (int i = 1; i <= 5; i++) {
            Pos posMove = new Pos(pos).move(i * 200, radians);
            NormalVariable pos2 = new NormalVariable().setPos(posMove, new Pos(posMove).move(40.0d, radians));
            arrayList.add(pos2);
            arrayList2.add(posMove);
            ArrayList arrayList3 = new ArrayList();
            arrayList3.add(pos2.p1);
            arrayList3.add(pos2.p2);
            this.c.add(new l(((ActivityTestStopBinding) this.f3424a).map, arrayList3, 2.0f, -16711936));
            ArrayList arrayList4 = new ArrayList();
            arrayList4.add(pos2.posOnLine);
            arrayList4.add(pos2.forwardPoint);
            this.c.add(new l(((ActivityTestStopBinding) this.f3424a).map, arrayList4, 2.0f, -16711936));
        }
        this.c.add(new l(((ActivityTestStopBinding) this.f3424a).map, arrayList2, 2.0f, InputDeviceCompat.SOURCE_ANY));
        ((ActivityTestStopBinding) this.f3424a).map.u.h(this.c);
        ((ActivityTestStopBinding) this.f3424a).map.r();
        cn.mucang.android.jiakaoyi.teachingk2.safe.d0.f fVar2 = new cn.mucang.android.jiakaoyi.teachingk2.safe.d0.f(arrayList, this);
        this.b = fVar2;
        fVar2.d();
    }

    private void C() {
        cn.mucang.android.jiakaoyi.teachingk2.safe.d0.f fVar = this.b;
        if (fVar != null) {
            fVar.e();
        }
        k();
        ((ActivityTestStopBinding) this.f3424a).info.setText("开始转弯停车测试");
        ArrayList arrayList = new ArrayList();
        cn.mucang.android.jiakaoyi.signal.c.e eVarT = cn.mucang.android.jiakaoyi.signal.c.d.t();
        Pos pos = new Pos(eVarT.c().rearAxlePoint);
        double radians = Math.toRadians(eVarT.c().degree);
        ArrayList arrayList2 = new ArrayList();
        for (int i = 1; i <= 5; i++) {
            Pos posMove = new Pos(pos).move(i * 200, radians);
            NormalVariable pos2 = new NormalVariable().setPos(posMove, new Pos(posMove).move(40.0d, radians));
            arrayList.add(pos2);
            arrayList2.add(posMove);
            ArrayList arrayList3 = new ArrayList();
            arrayList3.add(pos2.p1);
            arrayList3.add(pos2.p2);
            this.c.add(new l(((ActivityTestStopBinding) this.f3424a).map, arrayList3, 4.0f, -16711936));
        }
        this.c.add(new l(((ActivityTestStopBinding) this.f3424a).map, arrayList2, 4.0f, InputDeviceCompat.SOURCE_ANY));
        ((ActivityTestStopBinding) this.f3424a).map.u.h(this.c);
        ((ActivityTestStopBinding) this.f3424a).map.r();
        cn.mucang.android.jiakaoyi.teachingk2.safe.d0.f fVar2 = new cn.mucang.android.jiakaoyi.teachingk2.safe.d0.f(arrayList, this);
        this.b = fVar2;
        fVar2.d();
    }

    private void D(int i, SeekBar seekBar) {
        seekBar.setMax(100);
        seekBar.setProgress(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String E(double d2) {
        return "" + (((double) ((int) (d2 * 100.0d))) / 100.0d);
    }

    private void F(final byte b2) {
        byte b3 = this.j;
        if (b2 == b3) {
            return;
        }
        if (Math.abs(b3 - b2) >= 10 || b2 == 0) {
            this.j = b2;
            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.stop.test.b
                @Override // java.lang.Runnable
                public final void run() {
                    SafeCommandManager.d(BrakeModel.createBrakeModel(BrakeReason.TeachBrake, null, true), (byte) 1, b2);
                }
            });
        }
    }

    private void k() {
        Iterator<l> it = this.c.iterator();
        while (it.hasNext()) {
            ((ActivityTestStopBinding) this.f3424a).map.u.Q(it.next());
        }
        this.c.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void m(double d2) {
        ((ActivityTestStopBinding) this.f3424a).info.append("\n停车点和目标点距离:" + d2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void o(View view) {
        B();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void q(View view) {
        C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void s(Boolean bool) {
        this.f7812f = bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void u(View view) {
        startActivity(new Intent(this, (Class<?>) TestSpeedControllerPage.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void w(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (eVar.d().h()) {
            CarPos carPosC = eVar.c();
            if (this.f7810d == null) {
                l lVar = new l(((ActivityTestStopBinding) this.f3424a).map, carPosC.carPoints, 2.0f, InputDeviceCompat.SOURCE_ANY);
                this.f7810d = lVar;
                ((ActivityTestStopBinding) this.f3424a).map.u.g(lVar);
                ArrayList arrayList = new ArrayList();
                arrayList.add(carPosC.rearAxlePoint);
                arrayList.add(carPosC.center);
                l lVar2 = new l(((ActivityTestStopBinding) this.f3424a).map, arrayList, 4.0f, -1);
                this.f7811e = lVar2;
                lVar2.f3758a = 100;
                ((ActivityTestStopBinding) this.f3424a).map.u.g(lVar2);
            } else {
                for (int i = 0; i < carPosC.carPoints.size(); i++) {
                    this.f7810d.f3763h.get(i).setPos(carPosC.carPoints.get(i));
                }
                this.f7811e.f3763h.get(0).setPos(carPosC.rearAxlePoint);
                this.f7811e.f3763h.get(1).setPos(new Pos(carPosC.rearAxlePoint).move(200.0d, Math.toRadians(carPosC.degree)));
            }
            if (this.f7812f) {
                return;
            }
            MapView mapView = ((ActivityTestStopBinding) this.f3424a).map;
            Pos pos = carPosC.rearAxlePoint;
            mapView.i((float) pos.x, (float) pos.y);
            ((ActivityTestStopBinding) this.f3424a).map.r();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void y(cn.mucang.android.jiakaoyi.teachingk2.safe.d0.d dVar) {
        ((ActivityTestStopBinding) this.f3424a).infoStop.setText("直线距离:" + dVar.f7635a + "\n弧线距离:" + dVar.b + "\n刹车力度:" + dVar.c + "\n刹车距离:" + dVar.f7636d + "\n垂直距离:" + dVar.f7637e + "\n速度(cm/s):" + dVar.f7638f);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.safe.d0.g
    public void a(NormalVariable normalVariable) {
        this.i = System.currentTimeMillis();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.safe.d0.g
    public boolean b(NormalVariable normalVariable, cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = this.i;
        long j2 = jCurrentTimeMillis - j;
        if (j <= 0 || j2 <= 4000) {
            return false;
        }
        final double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(cn.mucang.android.jiakaoyi.signal.c.d.t().c().rearAxlePoint, normalVariable.p1, normalVariable.p2);
        cn.mucang.android.jiakaoyi.framework.log.f.o("停车点和车子距离:" + (((double) ((int) (dK * 100.0d))) / 100.0d));
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.stop.test.h
            @Override // java.lang.Runnable
            public final void run() {
                this.f7827a.m(dK);
            }
        });
        return true;
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "测试到点停车";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        this.c = new ArrayList();
        ((ActivityTestStopBinding) this.f3424a).linestop.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.stop.test.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f7822a.o(view);
            }
        });
        ((ActivityTestStopBinding) this.f3424a).turnStop.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.stop.test.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f7828a.q(view);
            }
        });
        ((ActivityTestStopBinding) this.f3424a).turnStop.setVisibility(8);
        ((ActivityTestStopBinding) this.f3424a).map.setClickViewListener(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.stop.test.f
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                this.f7825a.s((Boolean) obj);
            }
        });
        Tiger.j(this.f7814h, cn.mucang.android.jiakaoyi.teachingk2.safe.d0.d.class);
        TextView textView = ((ActivityTestStopBinding) this.f3424a).factor1V;
        r0<Float> r0Var = cn.mucang.android.jiakaoyi.teachingk2.safe.d0.h.p;
        textView.setText(E(r0Var.b().floatValue()));
        TextView textView2 = ((ActivityTestStopBinding) this.f3424a).factor2V;
        r0<Float> r0Var2 = cn.mucang.android.jiakaoyi.teachingk2.safe.d0.h.q;
        textView2.setText(E(r0Var2.b().floatValue()));
        TextView textView3 = ((ActivityTestStopBinding) this.f3424a).factor3V;
        r0<Float> r0Var3 = cn.mucang.android.jiakaoyi.teachingk2.safe.d0.h.r;
        textView3.setText(E(r0Var3.b().floatValue()));
        TextView textView4 = ((ActivityTestStopBinding) this.f3424a).factor4V;
        r0<Float> r0Var4 = cn.mucang.android.jiakaoyi.teachingk2.safe.d0.h.n;
        textView4.setText(E(r0Var4.b().floatValue()));
        TextView textView5 = ((ActivityTestStopBinding) this.f3424a).factor5V;
        r0<Float> r0Var5 = cn.mucang.android.jiakaoyi.teachingk2.safe.d0.h.o;
        textView5.setText(E(r0Var5.b().floatValue()));
        D((int) ((r0Var.b().floatValue() * 100.0f) / 10.0f), ((ActivityTestStopBinding) this.f3424a).factor1);
        D((int) ((r0Var2.b().floatValue() * 100.0f) / 10.0f), ((ActivityTestStopBinding) this.f3424a).factor2);
        D((int) ((r0Var3.b().floatValue() * 100.0f) / 10.0f), ((ActivityTestStopBinding) this.f3424a).factor3);
        D((int) ((r0Var4.b().floatValue() * 100.0f) / 6.0f), ((ActivityTestStopBinding) this.f3424a).factor4);
        D((int) ((r0Var5.b().floatValue() * 100.0f) / 5.0f), ((ActivityTestStopBinding) this.f3424a).factor5);
        ((ActivityTestStopBinding) this.f3424a).factor1.setOnSeekBarChangeListener(new a());
        ((ActivityTestStopBinding) this.f3424a).factor2.setOnSeekBarChangeListener(new b());
        ((ActivityTestStopBinding) this.f3424a).factor3.setOnSeekBarChangeListener(new c());
        ((ActivityTestStopBinding) this.f3424a).factor4.setOnSeekBarChangeListener(new d());
        ((ActivityTestStopBinding) this.f3424a).factor5.setOnSeekBarChangeListener(new e());
        ((ActivityTestStopBinding) this.f3424a).controlSpeed.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.stop.test.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f7824a.u(view);
            }
        });
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        cn.mucang.android.jiakaoyi.teachingk2.safe.d0.f fVar = this.b;
        if (fVar != null) {
            fVar.e();
        }
        SafeCommandManager.d(BrakeModel.createBrakeModel(BrakeReason.TeachBrake, null, true), (byte) 1, (byte) 0);
        Tiger.l(this.f7814h, cn.mucang.android.jiakaoyi.teachingk2.safe.d0.d.class);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.safe.d0.g
    public void onFinish() {
        cn.mucang.android.jiakaoyi.teachingk2.safe.d0.f fVar = this.b;
        if (fVar != null) {
            fVar.e();
        }
        F((byte) 0);
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this.f7813g);
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this.f7813g);
    }
}
