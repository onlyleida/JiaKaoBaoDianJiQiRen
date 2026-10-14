package cn.mucang.android.jiakaoyi.teachingk2.s0;

import android.util.SparseArray;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.tts.AbsTtsDataProvider;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class b extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.g.b, SimpleTeachingConfig> {
    private static final String[] E = {k0.a(R.string.teachingk2_has_not_started), k0.a(R.string.teachingk2_drive_into_project), k0.a(R.string.teachingk2_daorucefang), k0.a(R.string.teachingk2_shichucefang)};
    private cn.mucang.android.jiakaoyi.hpmap.a.a.b A;
    private Line B;
    private long C;
    private int D;
    public Wheel s;
    public boolean t;
    public boolean u;
    public boolean v;
    public boolean w;
    private cn.mucang.android.jiakaoyi.signal.utils.b x;
    private SparseArray<Pos> y;
    private cn.mucang.android.jiakaoyi.framework.base.model.a z;

    class a extends SimpleTtsListener {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            super.onSpeakEnd();
            b.this.C = System.currentTimeMillis();
        }
    }

    public b(List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.b> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.g.b> cVar) {
        this(list, cVar, false);
    }

    private void I(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.b bVar) {
        Wheel wheelR = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, bVar.k);
        if (wheelR == Wheel.LeftFront || wheelR == Wheel.RightFront) {
            this.v = true;
        } else {
            this.v = false;
        }
    }

    private void K(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.b bVar) {
        if (MucangConfig.v()) {
            if (this.y == null) {
                this.y = bVar.j();
            }
            if (this.z == null) {
                this.z = new cn.mucang.android.jiakaoyi.framework.base.model.a();
            }
            boolean z = this.y.get(4).vectorTo(this.y.get(3)).cross(this.y.get(3).vectorTo(this.y.get(6))) > 0.0d;
            if (this.x == null) {
                this.x = cn.mucang.android.jiakaoyi.teachingk2.elements.model.a.a(bVar);
            }
            Pos posA = this.x.a(carPos.center);
            float fC = (z ? 1 : -1) * cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (((double) cn.mucang.android.jiakaoyi.signal.utils.d.c((float) carPos.degree)) - Math.toDegrees(this.y.get(4).angleTo(this.y.get(3)))));
            int i = (int) posA.x;
            int i2 = (int) posA.y;
            cn.mucang.android.jiakaoyi.framework.base.model.a aVar = this.z;
            StringBuilder sb = new StringBuilder();
            sb.append("车身位置 : ");
            sb.append(i);
            sb.append(" , ");
            sb.append(i2);
            sb.append(" , 角度 : ");
            sb.append((int) fC);
            sb.append(" , ");
            sb.append(z ? "右库" : "左库");
            aVar.f3425a = sb.toString();
            LiveBus.c(this.z);
        }
    }

    private void L(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.b bVar) {
        this.m = null;
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, bVar.n)) {
            this.m = bVar.n;
        }
        if (this.m == null && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, bVar.o)) {
            this.m = bVar.o;
        }
        if (this.m == null && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, bVar.m)) {
            this.m = bVar.m;
            this.u = true;
        }
        if (this.m == null && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, bVar.p)) {
            this.m = bVar.p;
        }
        if (this.m == null && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, bVar.p)) {
            this.m = bVar.p;
        }
        if (this.m == null && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, bVar.r)) {
            this.m = bVar.r;
        }
        Line line = this.m;
        this.t = line == bVar.n || line == bVar.q || line == bVar.r;
        this.u = line == bVar.m;
        this.w = line == bVar.o;
    }

    private void M(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.b bVar) {
        Line line;
        if (!cn.mucang.android.jiakaoyi.hpmap.a.b.a.e(carPos, bVar.u) || (line = this.B) == null) {
            return;
        }
        double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(carPos.wheelRightFront, line.start, line.end);
        Pos pos = carPos.wheelRightBack;
        Line line2 = this.B;
        int iMin = (int) Math.min(dK, cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos, line2.start, line2.end));
        if (iMin > 25 && iMin <= 35) {
            iMin = 30;
        } else if (iMin > 35 && iMin <= 45) {
            iMin = 40;
        } else if (iMin > 45 && iMin <= 55) {
            iMin = 50;
        }
        if (iMin == 30) {
            String strA = k0.a(R.string.teachingk2_right_30_continue);
            if (!strA.equals(TtsManager.g(2)) && System.currentTimeMillis() - this.C > DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
                AbsTtsDataProvider absTtsDataProvider = (AbsTtsDataProvider) DataProviderRegister.f3433a.a(AbsTtsDataProvider.class, null);
                a aVar = new a();
                if (absTtsDataProvider != null) {
                    absTtsDataProvider.startSpeechLow(strA, TtsGrade.TeachDeduct, aVar);
                } else {
                    TtsManager.C(strA, TtsGrade.TeachError, aVar);
                }
            }
            this.D = 0;
            return;
        }
        if (iMin != 40 && iMin != 50) {
            this.D = 0;
            return;
        }
        String str = String.format(k0.a(R.string.teachingk2_right_side_distance), Integer.valueOf(iMin));
        if (str.equals(TtsManager.g(2)) || this.D == iMin) {
            return;
        }
        this.D = iMin;
        AbsTtsDataProvider absTtsDataProvider2 = (AbsTtsDataProvider) DataProviderRegister.f3433a.a(AbsTtsDataProvider.class, null);
        if (absTtsDataProvider2 != null) {
            absTtsDataProvider2.startSpeechLow(str, TtsGrade.TeachError);
        } else {
            TtsManager.z(str, TtsGrade.TeachError);
        }
    }

    private void N(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.b bVar) {
        Wheel wheelR = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, bVar.n);
        this.s = wheelR;
        Wheel wheel = Wheel.None;
        if (wheelR != wheel) {
            this.l = bVar.n;
            return;
        }
        Wheel wheelR2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, bVar.o);
        this.s = wheelR2;
        if (wheelR2 != wheel) {
            this.l = bVar.o;
            return;
        }
        Wheel wheelR3 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, bVar.m);
        this.s = wheelR3;
        if (wheelR3 != wheel) {
            this.l = bVar.m;
            return;
        }
        Wheel wheelR4 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, bVar.p);
        this.s = wheelR4;
        if (wheelR4 != wheel) {
            this.l = bVar.p;
            return;
        }
        Wheel wheelR5 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, bVar.q);
        this.s = wheelR5;
        if (wheelR5 != wheel) {
            this.l = bVar.q;
            return;
        }
        Wheel wheelR6 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, bVar.r);
        this.s = wheelR6;
        if (wheelR6 != wheel) {
            this.l = bVar.r;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public boolean f(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.b bVar) {
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.l(carPos, bVar.n()) && eVar.d().F == CarModel.Direction.Back && eVar.d().m == Gear.GearBack && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, bVar.j)) {
            this.r = SubStep.Step1;
            return true;
        }
        Line lineL = bVar.l();
        if (bVar.l() == null || !cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, lineL)) {
            return super.f(eVar, carPos, bVar);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.b bVar, ExamProcessor examProcessor) {
        this.A = bVar;
        if (cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.d.g().j()) {
            y(SubStep.None);
            return;
        }
        if (this.r == SubStep.None) {
            y(SubStep.Step1);
            Pos pos = bVar.p.end;
            Line line = bVar.r;
            new cn.mucang.android.jiakaoyi.signal.pos.c(cn.mucang.android.jiakaoyi.hpmap.d.a.n(pos, line.start, line.end), bVar.p.end, bVar.q.end, bVar.r.start);
            this.B = new Line(bVar.n.start, bVar.q.end);
        }
        L(carPos, bVar);
        N(carPos, bVar);
        K(carPos, bVar);
        SubStep subStep = this.r;
        SubStep subStep2 = SubStep.Step1;
        if (subStep == subStep2) {
            if (eVar.d().m == Gear.GearBack) {
                y(SubStep.Step2);
            } else if (bVar.v(carPos)) {
                this.b = true;
            }
            if (eVar.d().c()) {
                M(carPos, bVar);
            }
        }
        SubStep subStep3 = this.r;
        SubStep subStep4 = SubStep.Step2;
        if (subStep3 == subStep4) {
            if (eVar.d().m != Gear.GearBack) {
                if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, bVar.v)) {
                    y(SubStep.Step3);
                } else if (eVar.d().b() && eVar.d().m.isFront()) {
                    y(subStep2);
                }
            } else if (bVar.v(carPos)) {
                this.b = true;
            }
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.e(carPos, bVar.v)) {
                boolean z = this.f3695f;
            }
        }
        if (this.r == SubStep.Step3) {
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.a(carPos, bVar.j)) {
                this.b = true;
                this.c = true;
            }
            I(carPos, bVar);
            if (eVar.d().m == Gear.GearBack && !cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, bVar.v)) {
                y(subStep4);
            }
        }
        if (this.r == subStep4 && !this.j && cn.mucang.android.jiakaoyi.hpmap.a.b.a.e(carPos, bVar.v)) {
            w.P();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected boolean d(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.l(carPos, bVar.n()) && eVar.d().F == CarModel.Direction.Back && eVar.d().m == Gear.GearBack && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, bVar.k())) {
            cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar2 = this.A;
            if (bVar2 == null || bVar2 == bVar) {
                this.r = SubStep.Step1;
            }
            return true;
        }
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.o(carPos, bVar.n()) && eVar.d().F == CarModel.Direction.Forward && eVar.d().m != Gear.GearBack && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, bVar.f())) {
            return true;
        }
        return super.d(eVar, carPos, bVar);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected String[] l() {
        return E;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected void w() {
        this.m = null;
        this.s = Wheel.None;
        this.x = null;
        this.y = null;
        this.z = null;
        this.A = null;
        y(SubStep.None);
    }

    public b(List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.b> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.g.b> cVar, boolean z) {
        super(list, null, cVar, z);
        this.s = Wheel.None;
        this.D = 0;
    }
}
