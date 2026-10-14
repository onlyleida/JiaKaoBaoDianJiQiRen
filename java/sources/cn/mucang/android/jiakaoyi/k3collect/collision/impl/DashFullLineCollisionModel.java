package cn.mucang.android.jiakaoyi.k3collect.collision.impl;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class DashFullLineCollisionModel extends K3CollisionModel {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public List<Pos> f3884d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List<Pos> f3885e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3886f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f3887g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f3888h;
    private PressLineResult i = PressLineResult.None;
    private long j;
    private long k;
    private PressLineResult l;

    public enum PressLineResult {
        None,
        PressFullLine,
        PressDashLine
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:62:0x018c  */
    private PressLineResult c(Line line, Line line2, PressLineResult pressLineResult, boolean z) {
        boolean z2;
        boolean z3;
        Pos posG = g(this.f3885e, line);
        Pos posG2 = g(this.f3884d, line);
        if (posG != null && posG2 != null) {
            Pos posVectorTo = posG.vectorTo(line.end);
            PressLineResult pressLineResult2 = (posVectorTo.x == 0.0d && posVectorTo.y == 0.0d) || posVectorTo.dot(posG.vectorTo(posG2)) > 0.0d ? PressLineResult.PressFullLine : PressLineResult.PressDashLine;
            t.a("DashFullLineCollisionModel", " result 3 " + pressLineResult2);
            return pressLineResult2;
        }
        Pos posG3 = g(this.f3885e, line2);
        Pos posG4 = g(this.f3884d, line2);
        if (posG3 != null && posG4 != null) {
            Pos posVectorTo2 = posG3.vectorTo(line2.end);
            PressLineResult pressLineResult3 = (posVectorTo2.x == 0.0d && posVectorTo2.y == 0.0d) || posVectorTo2.dot(posG3.vectorTo(posG4)) > 0.0d ? PressLineResult.PressFullLine : PressLineResult.PressDashLine;
            t.a("DashFullLineCollisionModel", " result 4 " + pressLineResult3);
            return pressLineResult3;
        }
        if (posG != null || posG3 != null) {
            if (!z) {
                pressLineResult = PressLineResult.PressFullLine;
            }
            t.a("DashFullLineCollisionModel", " result 5 " + pressLineResult);
            return pressLineResult;
        }
        if (posG2 != null || posG4 != null) {
            if (!z) {
                pressLineResult = PressLineResult.PressDashLine;
            }
            t.a("DashFullLineCollisionModel", " result 5.1 " + pressLineResult);
            return pressLineResult;
        }
        if (this.f3887g) {
            return null;
        }
        if (this.f3885e.size() > 2) {
            if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(line2.end, line.end, this.f3885e.get(0), this.f3885e.get(1))) {
                z3 = true;
            } else {
                Pos pos = line2.end;
                Pos pos2 = line.end;
                List<Pos> list = this.f3885e;
                Pos pos3 = list.get(list.size() - 1);
                List<Pos> list2 = this.f3885e;
                if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos, pos2, pos3, list2.get(list2.size() - 2))) {
                    z3 = true;
                } else {
                    z3 = false;
                }
            }
            if (z3) {
                StringBuilder sb = new StringBuilder();
                sb.append(" result 6 ");
                PressLineResult pressLineResult4 = PressLineResult.PressFullLine;
                sb.append(pressLineResult4);
                t.a("DashFullLineCollisionModel", sb.toString());
                return pressLineResult4;
            }
        } else {
            Pos pos4 = line2.end;
            Pos pos5 = line.end;
            Pos pos6 = this.f3885e.get(0);
            List<Pos> list3 = this.f3885e;
            if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos4, pos5, pos6, list3.get(list3.size() - 1))) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(" result 6.1 ");
                PressLineResult pressLineResult5 = PressLineResult.PressFullLine;
                sb2.append(pressLineResult5);
                t.a("DashFullLineCollisionModel", sb2.toString());
                return pressLineResult5;
            }
        }
        if (this.f3884d.size() <= 2) {
            Pos pos7 = line2.end;
            Pos pos8 = line.end;
            Pos pos9 = this.f3884d.get(0);
            List<Pos> list4 = this.f3884d;
            if (!cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos7, pos8, pos9, list4.get(list4.size() - 1))) {
                return null;
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append(" result 7.1 ");
            PressLineResult pressLineResult6 = PressLineResult.PressDashLine;
            sb3.append(pressLineResult6);
            t.a("DashFullLineCollisionModel", sb3.toString());
            return pressLineResult6;
        }
        if (!cn.mucang.android.jiakaoyi.hpmap.d.a.C(line2.end, line.end, this.f3884d.get(0), this.f3884d.get(1))) {
            Pos pos10 = line2.end;
            Pos pos11 = line.end;
            List<Pos> list5 = this.f3884d;
            Pos pos12 = list5.get(list5.size() - 1);
            List<Pos> list6 = this.f3884d;
            z2 = cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos10, pos11, pos12, list6.get(list6.size() - 2));
        }
        if (!z2) {
            return null;
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append(" result 7 ");
        PressLineResult pressLineResult7 = PressLineResult.PressDashLine;
        sb4.append(pressLineResult7);
        t.a("DashFullLineCollisionModel", sb4.toString());
        return pressLineResult7;
    }

    private boolean d(CarPos carPos, Pos pos, Pos pos2) {
        return cn.mucang.android.jiakaoyi.k3collect.collision.a.d(carPos.bound, pos, pos2) && cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(carPos.carRect, pos, pos2);
    }

    private PressLineResult e(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        Line line;
        Line line2;
        CarPos carPosC = eVar.c();
        if ((!(eVar.d().F == CarModel.Direction.Back || eVar.d().F == CarModel.Direction.Forward) && eVar.d().L - this.k < 1000) || carPosC.lastCarRect == null) {
            this.k = eVar.d().L;
            this.f3888h = false;
            t.a("DashFullLineCollisionModel", "checkBodyPressLine result 1 " + this.l);
            return this.l;
        }
        if (eVar.d().F == CarModel.Direction.Forward) {
            line = new Line(carPosC.lastCarRect.f5820a, carPosC.carRect.c);
            line2 = new Line(carPosC.lastCarRect.f5821d, carPosC.carRect.b);
        } else {
            line = new Line(carPosC.carRect.b, carPosC.lastCarRect.f5821d);
            line2 = new Line(carPosC.carRect.c, carPosC.lastCarRect.f5820a);
        }
        if (this.f3888h && (h(carPosC, this.f3885e) || h(carPosC, this.f3884d))) {
            this.k = eVar.d().L;
            t.a("DashFullLineCollisionModel", "checkBodyPressLine result 2 " + this.l);
            return this.l;
        }
        PressLineResult pressLineResultC = c(line, line2, this.l, this.f3888h);
        if (pressLineResultC != null) {
            this.k = eVar.d().L;
            this.l = pressLineResultC;
            this.f3888h = true;
            return pressLineResultC;
        }
        this.f3888h = false;
        this.l = PressLineResult.None;
        this.k = eVar.d().L;
        t.a("DashFullLineCollisionModel", "checkBodyPressLine result 8 false");
        return this.l;
    }

    private PressLineResult f(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        Line line;
        Line line2;
        CarPos carPosC = eVar.c();
        if ((!(eVar.d().F == CarModel.Direction.Back || eVar.d().F == CarModel.Direction.Forward) && eVar.d().L - this.j < 1000) || carPosC.wheelLeftFrontLast == null || carPosC.wheelRightFrontLast == null || carPosC.wheelLeftBackLast == null || carPosC.wheelRightBackLast == null) {
            this.j = eVar.d().L;
            this.f3887g = false;
            t.a("DashFullLineCollisionModel", "checkWheelPressLine result 1 " + this.i);
            return this.i;
        }
        if (eVar.d().F == CarModel.Direction.Forward) {
            line = new Line(carPosC.wheelRightBackLast, carPosC.wheelLeftFront);
            line2 = new Line(carPosC.wheelLeftBackLast, carPosC.wheelRightFront);
        } else {
            line = new Line(carPosC.wheelRightFrontLast, carPosC.wheelLeftBack);
            line2 = new Line(carPosC.wheelLeftFrontLast, carPosC.wheelRightFront);
        }
        if (this.f3887g && (j(carPosC, this.f3885e) || j(carPosC, this.f3884d))) {
            this.j = eVar.d().L;
            t.a("DashFullLineCollisionModel", "checkWheelPressLine result 2 " + this.i);
            return this.i;
        }
        PressLineResult pressLineResultC = c(line, line2, this.i, this.f3887g);
        if (pressLineResultC != null) {
            this.j = eVar.d().L;
            this.i = pressLineResultC;
            this.f3887g = true;
            return pressLineResultC;
        }
        this.f3887g = false;
        this.i = PressLineResult.None;
        this.j = eVar.d().L;
        t.a("DashFullLineCollisionModel", "checkWheelPressLine result 8 " + this.i);
        return this.i;
    }

    private boolean k(CarPos carPos, Pos pos, Pos pos2) {
        if (!cn.mucang.android.jiakaoyi.k3collect.collision.a.d(carPos.bigBound, pos, pos2)) {
            return false;
        }
        if (cn.mucang.android.jiakaoyi.k3collect.collision.a.e(carPos, pos, pos2)) {
            return true;
        }
        Wheel wheelS = cn.mucang.android.jiakaoyi.hpmap.a.b.a.s(carPos, pos, pos2);
        return (wheelS == null || wheelS == Wheel.None) ? false : true;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel
    public boolean b(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, K3CollisionModel.TriggerType triggerType) {
        return i(eVar, examProcessor, triggerType, true);
    }

    public Pos g(List<Pos> list, Line line) {
        Pos posJ;
        for (int i = 1; i < list.size(); i++) {
            Pos pos = list.get(i - 1);
            Pos pos2 = list.get(i);
            if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos, pos2, line.start, line.end) && (posJ = cn.mucang.android.jiakaoyi.hpmap.d.a.j(pos, pos2, line.start, line.end)) != null) {
                return posJ;
            }
        }
        return null;
    }

    public boolean h(CarPos carPos, List<Pos> list) {
        for (int i = 1; i < list.size(); i++) {
            if (d(carPos, list.get(i - 1), list.get(i))) {
                return true;
            }
        }
        return false;
    }

    public boolean i(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, K3CollisionModel.TriggerType triggerType, boolean z) {
        if (eVar.c().bound.h(this.c)) {
            PressLineResult pressLineResult = PressLineResult.None;
            this.i = pressLineResult;
            this.l = pressLineResult;
            this.k = eVar.d().L;
            this.j = eVar.d().L;
            this.f3887g = false;
            this.f3888h = false;
            return false;
        }
        K3CollisionModel.TriggerType triggerType2 = K3CollisionModel.TriggerType.WheelPressLine;
        if (triggerType == triggerType2) {
            if (eVar.d().L == this.j) {
                if (z) {
                    return this.i == PressLineResult.PressFullLine;
                }
                return this.i == PressLineResult.PressDashLine;
            }
        } else if (eVar.d().L == this.k) {
            if (z) {
                return this.l == PressLineResult.PressFullLine;
            }
            return this.l == PressLineResult.PressDashLine;
        }
        PressLineResult pressLineResultF = triggerType == triggerType2 ? f(eVar) : e(eVar);
        if (z) {
            return pressLineResultF == PressLineResult.PressFullLine;
        }
        return pressLineResultF == PressLineResult.PressDashLine;
    }

    public boolean j(CarPos carPos, List<Pos> list) {
        for (int i = 1; i < list.size(); i++) {
            if (k(carPos, list.get(i - 1), list.get(i))) {
                return true;
            }
        }
        return false;
    }
}
