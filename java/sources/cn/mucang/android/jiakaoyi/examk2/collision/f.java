package cn.mucang.android.jiakaoyi.examk2.collision;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.examk2.config.K2QuKaConfig;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class f extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.g.i, K2QuKaConfig> {
    private boolean A;
    public Wheel s;
    public boolean t;
    public double u;
    public boolean v;
    private long w;
    public boolean x;
    public boolean y;
    public boolean z;

    public f(List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.i> list, K2QuKaConfig k2QuKaConfig) {
        super(list, k2QuKaConfig);
        this.s = Wheel.None;
        this.x = false;
        this.y = false;
        this.z = false;
        this.A = false;
    }

    private void H(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.i iVar) {
        Wheel wheelR = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, iVar.l);
        this.s = wheelR;
        Wheel wheel = Wheel.None;
        if (wheelR != wheel) {
            this.l = iVar.l;
            return;
        }
        Wheel wheelR2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, iVar.m);
        this.s = wheelR2;
        if (wheelR2 != wheel) {
            this.l = iVar.m;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.i iVar, ExamProcessor examProcessor) {
        if (!this.A) {
            this.A = true;
            Line line = iVar.k;
            Pos pos = line.start;
            Pos pos2 = line.end;
            Line line2 = iVar.j;
            new cn.mucang.android.jiakaoyi.signal.pos.c(pos, pos2, line2.start, line2.end);
        }
        if (this.r == SubStep.None) {
            this.r = SubStep.Step1;
        }
        boolean z = false;
        if ((this.f3695f || eVar.d().b == BitmapDescriptorFactory.HUE_RED) && ((Boolean) ((K2QuKaConfig) this.f3693d).p407110.value).booleanValue()) {
            Pos pos3 = carPos.wheelLeftFront;
            Line line3 = iVar.l;
            LiveBus.c(new cn.mucang.android.jiakaoyi.examk2.d.b((int) cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos3, line3.start, line3.end)));
        } else {
            LiveBus.c(new cn.mucang.android.jiakaoyi.examk2.d.b(0));
        }
        boolean zB = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, iVar.l);
        this.t = zB;
        if (zB) {
            this.m = iVar.l;
        }
        if (!zB) {
            boolean zB2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, iVar.m);
            this.t = zB2;
            if (zB2) {
                this.m = iVar.m;
            }
        }
        boolean zB3 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, iVar.k);
        H(carPos, iVar);
        SubStep subStep = this.r;
        if (subStep == SubStep.Step1) {
            if (eVar.d().F == CarModel.Direction.Stop && zB3) {
                Pos pos4 = carPos.wheelLeftBack;
                Pos pos5 = carPos.wheelLeftFront;
                Line line4 = iVar.k;
                if (!cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos4, pos5, line4.start, line4.end)) {
                    Pos pos6 = carPos.wheelRightBack;
                    Pos pos7 = carPos.wheelRightFront;
                    Line line5 = iVar.k;
                    if (!cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos6, pos7, line5.start, line5.end)) {
                        z = true;
                    }
                }
                this.v = z;
                this.u = cn.mucang.android.jiakaoyi.hpmap.a.b.a.i(carPos, iVar.l);
                this.r = SubStep.Step2;
            }
            if (eVar.d().F == CarModel.Direction.Forward && !zB3 && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, iVar.j)) {
                this.r = SubStep.Step4;
            }
        } else if (subStep == SubStep.Step2) {
            this.z = true;
            if (eVar.d().F == CarModel.Direction.Stop) {
                long j = eVar.d().L;
                if (this.w <= 0) {
                    this.w = j;
                }
                if (j - this.w >= ((Integer) ((K2QuKaConfig) this.f3693d).p407108.value).intValue() * 1000) {
                    this.y = true;
                    this.x = !this.v;
                }
            } else {
                this.w = 0L;
                this.r = SubStep.Step3;
            }
        } else if (subStep == SubStep.Step3 && eVar.d().F == CarModel.Direction.Forward && !zB3 && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, iVar.j)) {
            this.r = SubStep.Step4;
        }
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.a(carPos, iVar.j)) {
            this.b = true;
            this.c = true;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected void w() {
        this.s = Wheel.None;
        this.r = SubStep.None;
    }
}
