package cn.mucang.android.jiakaoyi.examk2.collision;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.examk2.config.K2ZhaiLuDiaoTouConfig;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.voice.l;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.n;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class i extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<n, K2ZhaiLuDiaoTouConfig> {
    private boolean A;
    private boolean B;
    private final cn.mucang.android.jiakaoyi.engine.g.b C;
    public long D;
    public long E;
    public boolean F;
    public boolean G;
    public boolean H;
    public Wheel I;
    private int s;
    private int t;
    private int u;
    private int v;
    private boolean w;
    private boolean x;
    private boolean y;
    private boolean z;

    class a extends SimpleTtsListener {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            i.this.H = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public i(List<n> list, K2ZhaiLuDiaoTouConfig k2ZhaiLuDiaoTouConfig) {
        super(list, k2ZhaiLuDiaoTouConfig);
        this.s = 0;
        this.t = 0;
        this.u = 0;
        this.v = 0;
        this.w = true;
        this.x = true;
        this.y = false;
        this.z = false;
        this.A = false;
        this.B = false;
        this.C = new cn.mucang.android.jiakaoyi.engine.g.b(((Integer) ((K2ZhaiLuDiaoTouConfig) this.f3693d).p409110.value).intValue() * 1000);
        this.D = 0L;
        this.E = 0L;
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = Wheel.None;
    }

    private void I(CarPos carPos, n nVar) {
        boolean zB = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, nVar.j);
        this.F = zB;
        if (zB) {
            this.m = nVar.j;
            return;
        }
        boolean zB2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, nVar.k);
        this.F = zB2;
        if (zB2) {
            this.m = nVar.k;
            return;
        }
        boolean zB3 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, nVar.l);
        this.F = zB3;
        if (zB3) {
            this.m = nVar.l;
        }
    }

    private void J(CarPos carPos, Line line, Line line2, Line line3) {
        Wheel wheelR = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, line);
        this.I = wheelR;
        Wheel wheel = Wheel.None;
        if (wheelR != wheel) {
            this.l = line;
            return;
        }
        Wheel wheelR2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, line2);
        this.I = wheelR2;
        if (wheelR2 != wheel) {
            this.l = line2;
            return;
        }
        Wheel wheelR3 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, line3);
        this.I = wheelR3;
        if (wheelR3 != wheel) {
            this.l = line3;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public boolean f(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, n nVar) {
        return super.f(eVar, carPos, nVar) && cn.mucang.android.jiakaoyi.hpmap.a.b.a.o(carPos, nVar.i.middle().meanWith(nVar.k.middle()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code duplicated, block: B:30:0x00b7  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, n nVar, ExamProcessor examProcessor) {
        boolean zV;
        Line line;
        Line line2;
        int i;
        if (this.r == SubStep.None) {
            this.r = SubStep.Step1;
            this.t = ((Integer) ((K2ZhaiLuDiaoTouConfig) this.f3693d).p409106.value).intValue();
            this.s = ((Integer) ((K2ZhaiLuDiaoTouConfig) this.f3693d).p409107.value).intValue();
            this.C.g();
        }
        I(carPos, nVar);
        if (((Integer) ((K2ZhaiLuDiaoTouConfig) this.f3693d).p409115.value).intValue() == 0) {
            zV = nVar.v(carPos);
            if (!zV && this.v > 0) {
                this.y = eVar.d().F.isForward() && eVar.d().m != Gear.GearBack && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, nVar.i);
            }
        } else if (((Integer) ((K2ZhaiLuDiaoTouConfig) this.f3693d).p409115.value).intValue() != 1) {
            if (((Integer) ((K2ZhaiLuDiaoTouConfig) this.f3693d).p409115.value).intValue() == 2) {
                boolean zM = cn.mucang.android.jiakaoyi.hpmap.a.b.a.m(carPos, nVar.i.middle().meanWith(nVar.k.middle()));
                if (zM) {
                    if (!this.z) {
                        this.z = cn.mucang.android.jiakaoyi.hpmap.a.b.a.v(Wheel.LeftFront, carPos, nVar.i);
                    }
                    if (!this.A) {
                        this.A = cn.mucang.android.jiakaoyi.hpmap.a.b.a.v(Wheel.RightFront, carPos, nVar.i);
                    }
                }
                if (eVar.d().F != CarModel.Direction.Back && zM && cn.mucang.android.jiakaoyi.hpmap.a.b.a.o(carPos, nVar.i.middle()) && this.z && this.A) {
                    zV = true;
                }
            }
            zV = false;
        } else if (eVar.d().F != CarModel.Direction.Back && cn.mucang.android.jiakaoyi.hpmap.a.b.a.m(carPos, nVar.i.middle().meanWith(nVar.k.middle())) && cn.mucang.android.jiakaoyi.hpmap.a.b.a.o(carPos, nVar.i.middle()) && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, nVar.i)) {
            zV = true;
        } else {
            zV = false;
        }
        if (zV) {
            this.b = true;
            if (((Integer) ((K2ZhaiLuDiaoTouConfig) this.f3693d).p409115.value).intValue() == 0) {
                this.c = this.y;
            } else {
                this.c = true;
            }
        }
        if (this.x && eVar.d().F == CarModel.Direction.Back) {
            int i2 = this.v + 1;
            this.v = i2;
            if (i2 == this.t && (i = this.u) == this.s) {
                this.u = i + 1;
            }
            this.w = true;
            this.x = false;
        } else if (this.w && this.v > 0 && eVar.d().F == CarModel.Direction.Forward) {
            this.u++;
            this.w = false;
            this.x = true;
        }
        Line line3 = nVar.m;
        if (line3 == null || (line = nVar.n) == null || (line2 = nVar.o) == null) {
            J(carPos, nVar.j, nVar.k, nVar.l);
        } else {
            J(carPos, line3, line, line2);
        }
        if (!this.B && this.C.d()) {
            this.C.b();
            String str = (String) ((K2ZhaiLuDiaoTouConfig) this.f3693d).p409114.value;
            TtsGrade ttsGrade = TtsGrade.SpecialVoice;
            a aVar = new a();
            C c = this.f3693d;
            D(str, ttsGrade, aVar, ((K2ZhaiLuDiaoTouConfig) c).p409114.ruleId, l.d(((K2ZhaiLuDiaoTouConfig) c).p409114.ruleId));
            this.B = true;
        }
        if (this.H) {
            if (this.D == 0) {
                if (eVar.d().j(Light.WarningLight)) {
                    this.D = System.currentTimeMillis();
                }
            } else if ((!eVar.d().j(Light.WarningLight) || (eVar.d().c() && eVar.d().F.isForward())) && this.E == 0) {
                this.E = System.currentTimeMillis();
            }
        }
        if (this.B) {
            if (this.v > this.t || this.u > this.s) {
                this.G = true;
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected boolean d(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        return super.d(eVar, carPos, bVar) && cn.mucang.android.jiakaoyi.hpmap.a.b.a.o(carPos, bVar.f().middle().meanWith(((n) bVar).k.middle()));
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected void w() {
        this.r = SubStep.None;
    }
}
