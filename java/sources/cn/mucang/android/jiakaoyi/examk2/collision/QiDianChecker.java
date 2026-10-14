package cn.mucang.android.jiakaoyi.examk2.collision;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.y;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.examk2.config.K2QiDianQuYuConfig;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.model.ReportStepModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class QiDianChecker extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.g.h, K2QiDianQuYuConfig> {
    public static volatile boolean B = false;
    private cn.mucang.android.jiakaoyi.signal.pos.c A;
    public boolean s;
    public boolean t;
    public boolean u;
    private boolean v;
    private boolean w;
    private boolean x;
    private final StepType y;
    private final List<StepType> z;

    public enum StepType {
        GearN,
        Handbrake,
        Lock,
        SeatBelt,
        DoorOpen,
        DoorClose
    }

    /* JADX WARN: Multi-variable type inference failed */
    public QiDianChecker(List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.h> list, K2QiDianQuYuConfig k2QiDianQuYuConfig) {
        super(list, k2QiDianQuYuConfig);
        this.s = false;
        this.t = false;
        this.u = false;
        this.v = false;
        this.w = false;
        this.x = false;
        ArrayList arrayList = new ArrayList();
        this.z = arrayList;
        B = false;
        arrayList.clear();
        if (n0.e((String) k2QiDianQuYuConfig.p408101.value)) {
            StepType stepType = StepType.DoorOpen;
            this.y = stepType;
            arrayList.add(stepType);
            return;
        }
        String[] strArrSplit = ((String) k2QiDianQuYuConfig.p408101.value).split("-");
        if (strArrSplit.length <= 0) {
            StepType stepType2 = StepType.DoorOpen;
            this.y = stepType2;
            arrayList.add(stepType2);
            return;
        }
        for (String str : strArrSplit) {
            if (y.a(str)) {
                StepType stepType3 = null;
                switch (y.g(str)) {
                    case 1:
                        stepType3 = StepType.GearN;
                        break;
                    case 2:
                        stepType3 = StepType.Handbrake;
                        break;
                    case 3:
                        stepType3 = StepType.Lock;
                        break;
                    case 4:
                        stepType3 = StepType.SeatBelt;
                        break;
                    case 5:
                        stepType3 = StepType.DoorOpen;
                        break;
                    case 6:
                        stepType3 = StepType.DoorClose;
                        break;
                }
                if (stepType3 != null && !this.z.contains(stepType3)) {
                    this.z.add(stepType3);
                }
            }
        }
        if (cn.mucang.android.core.utils.g.b(this.z)) {
            this.z.add(StepType.DoorOpen);
        }
        List<StepType> list2 = this.z;
        this.y = list2.get(list2.size() - 1);
    }

    private boolean I(StepType stepType, CarModel carModel) {
        if (stepType == StepType.GearN) {
            Gear gear = carModel.m;
            return gear == Gear.GearN || gear == Gear.GearP;
        }
        if (stepType == StepType.Handbrake) {
            return !carModel.f5268f;
        }
        if (stepType == StepType.Lock) {
            return !carModel.f5270h;
        }
        if (stepType == StepType.SeatBelt) {
            return !carModel.f5266d;
        }
        if (stepType == StepType.DoorOpen) {
            return !carModel.j;
        }
        return this.x && carModel.j;
    }

    private void K(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.h hVar) {
        boolean zB = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, hVar.i);
        this.t = zB;
        if (zB) {
            this.m = hVar.i;
            return;
        }
        boolean zB2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, hVar.j);
        this.t = zB2;
        if (zB2) {
            this.m = hVar.j;
            return;
        }
        boolean zB3 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, hVar.k);
        this.t = zB3;
        if (zB3) {
            this.m = hVar.k;
            return;
        }
        boolean zB4 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, hVar.l);
        this.t = zB4;
        if (zB4) {
            this.m = hVar.l;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public boolean e(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.h hVar) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public boolean f(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.h hVar) {
        return B;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.h hVar, ExamProcessor examProcessor) {
        if (this.r == SubStep.None) {
            this.r = SubStep.Step1;
            Line line = hVar.i;
            Pos pos = line.start;
            Pos pos2 = line.end;
            Line line2 = hVar.k;
            this.A = new cn.mucang.android.jiakaoyi.signal.pos.c(pos, pos2, line2.start, line2.end);
        }
        if (!this.v && cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, this.A)) {
            this.v = true;
            LiveBus.c(new ReportStepModel(hVar.s()));
        }
        if (!this.x && !eVar.d().j) {
            this.x = true;
        }
        if (this.r == SubStep.Step1 && this.f3695f) {
            this.s = cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, this.A);
            K(carPos, hVar);
            if (I(this.y, eVar.d())) {
                B = false;
                this.b = true;
                if (this.w) {
                    LiveBus.c(new cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.a(false, true, hVar));
                }
                this.r = SubStep.Step2;
            }
        }
        if (this.u) {
            return;
        }
        StepType stepType = this.z.get(0);
        for (int i = 1; i < this.z.size(); i++) {
            if (I(this.z.get(i), eVar.d())) {
                this.u = true;
                break;
            }
        }
        if (this.u || !I(stepType, eVar.d())) {
            return;
        }
        this.z.remove(stepType);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected boolean d(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        if (B && (bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.h) && cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.h) bVar).o)) {
            this.w = true;
            LiveBus.c(new cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.a(true, false, bVar));
        }
        return B;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected void w() {
        this.r = SubStep.None;
        this.A = null;
    }
}
