package cn.mucang.android.jiakaoyi.teachingk2.elements.handlers;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.Tiger;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachCarPositionModel;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TraceVariable;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes4.dex */
public class r implements g0<NormalVariable> {
    private static final int w;
    private static final int x;
    private static final Map<TeachModel, List<Pos>> y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private NormalVariable f7033a;
    private Pos b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f7036f;
    private boolean n;
    private double o;
    private double p;
    private double q;
    private long r;
    private cn.mucang.android.jiakaoyi.signal.utils.b t;
    private double v;
    private int c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private double f7034d = -1.0d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f7035e = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Pos f7037g = new Pos();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Pos f7038h = new Pos();
    private final Pos i = new Pos();
    private final Pos j = new Pos();
    private final Pos k = new Pos();
    private List<Pos> l = null;
    private boolean m = false;
    private Pos s = null;
    private List<Pos> u = null;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Pos f7039a;
        public final Pos b;

        public a(Pos pos, Pos pos2) {
            this.f7039a = pos;
            this.b = pos2;
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Pos f7040a;

        b(Pos pos) {
            this.f7040a = pos;
        }
    }

    static {
        if (AppUtils.b()) {
            w = 43;
            x = 720;
        } else {
            w = 33;
            x = Videoio.CAP_PROP_XI_HDR_KNEEPOINT_COUNT;
        }
        y = new HashMap();
    }

    /* JADX WARN: Code duplicated, block: B:25:0x009e  */
    private static Pos b(cn.mucang.android.jiakaoyi.signal.c.e eVar, Pos pos, Pos pos2, double d2, Pos pos3, Pos pos4) {
        CarPos carPosC = eVar.c();
        double d3 = eVar.d().r;
        int i = x;
        double dMax = (Math.max(-i, Math.min(i, d3)) * ((double) w)) / ((double) i);
        int i2 = 1;
        if (Math.abs(dMax) < 1.0E-5d) {
            dMax = ((double) (dMax >= 0.0d ? 1 : -1)) * 1.0E-5d;
        }
        double dAbs = Math.abs(carPosC.L / Math.tan(Math.toRadians(dMax)));
        double d4 = carPosC.degree;
        int i3 = dMax > 0.0d ? 1 : -1;
        double radians = Math.toRadians(d4 + ((double) (i3 * 90)));
        pos4.setPos(carPosC.rearAxlePoint.x + (Math.cos(radians) * dAbs), carPosC.rearAxlePoint.y + (Math.sin(radians) * dAbs));
        Gear gear = eVar.d().m;
        if (gear == Gear.GearN || gear == Gear.GearP) {
            if (eVar.d().F == CarModel.Direction.Back) {
                i2 = -1;
            } else if (eVar.d().F != CarModel.Direction.Forward) {
                i2 = 0;
            }
        } else if (gear == Gear.GearBack || eVar.d().F == CarModel.Direction.Back) {
            i2 = -1;
        }
        double d5 = ((((double) i3) * d2) * ((double) i2)) / dAbs;
        double dSin = Math.sin(d5);
        double dCos = Math.cos(d5);
        pos.rotate(pos4, dCos, dSin);
        pos2.rotate(pos4, dCos, dSin);
        return pos3.setPos(carPosC.rearAxlePoint).rotate(pos4, dCos, dSin);
    }

    private TeachModel c(List<TeachModel> list, TeachModel teachModel) {
        int i;
        int i2;
        for (TeachModel teachModel2 : list) {
            if (teachModel2.subStep == teachModel.subStep && ((i = teachModel2.step) == (i2 = teachModel.step) || ((byte) i) == ((byte) i2))) {
                if (cn.mucang.android.core.utils.g.b(teachModel2.variableList)) {
                    continue;
                } else {
                    Iterator<Variable> it = teachModel2.variableList.iterator();
                    while (it.hasNext()) {
                        if (it.next() instanceof TraceVariable) {
                            return teachModel2;
                        }
                    }
                }
            }
        }
        return null;
    }

    private boolean d(TeachModel teachModel, f0 f0Var) {
        int i;
        int i2 = 0;
        for (TeachModel teachModel2 : f0Var.c) {
            if (teachModel2.pointType == 2 && teachModel2.subStep == teachModel.subStep && (i = teachModel.normalIndex) > i2) {
                i2 = i;
            }
        }
        return i2 == teachModel.normalIndex;
    }

    private static double f(int i) {
        return (((double) i) * 0.20124716101480686d) + 0.8537634735895844d;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.g0
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public boolean a(NormalVariable normalVariable, cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, TeachModel teachModel, f0 f0Var) {
        int i;
        String str;
        NormalVariable normalVariable2;
        Gear gear;
        if (this.f7033a == null) {
            this.f7033a = new NormalVariable();
            ArrayList arrayList = new ArrayList();
            cn.mucang.android.jiakaoyi.signal.utils.b bVarA = cn.mucang.android.jiakaoyi.teachingk2.elements.model.a.a(bVar);
            this.t = bVarA;
            this.f7033a.posOnLine = bVarA.c(normalVariable.posOnLine);
            this.f7033a.forwardPoint = this.t.c(normalVariable.forwardPoint);
            this.f7033a.p1 = this.t.c(normalVariable.p1);
            this.f7033a.p2 = this.t.c(normalVariable.p2);
            NormalVariable normalVariable3 = this.f7033a;
            normalVariable3.width = normalVariable.width;
            normalVariable3.key = normalVariable.key;
            normalVariable3.reportKey = normalVariable.reportKey;
            normalVariable3.direCarDot = normalVariable.direCarDot;
            normalVariable3.isRange = normalVariable.isRange;
            this.b = normalVariable3.posOnLine.vectorTo(normalVariable3.forwardPoint);
            String playText = teachModel.getPlayText();
            TeachModel teachModel2 = teachModel.reportModel;
            String playText2 = teachModel2 != null ? teachModel2.getPlayText() : null;
            if (n0.g(playText)) {
                if (n0.g(playText2)) {
                    playText = playText + playText2;
                    i = 8;
                } else {
                    i = 1;
                }
                this.c = playText.length();
                cn.mucang.android.jiakaoyi.framework.log.f.o("法线文本:" + playText + " 预报操作点文本:" + playText2 + " 预测播放时间:" + (f(this.c) + (((double) i) * 0.5d)));
            } else {
                i = 1;
            }
            arrayList.add(this.f7033a.p1);
            arrayList.add(this.f7033a.p2);
            NormalVariable normalVariable4 = this.f7033a;
            Tiger.h(new a(normalVariable4.p1, normalVariable4.p2));
            boolean zB = i0.b("key-normal-speed-config", false);
            this.f7035e = zB;
            if (zB) {
                this.f7036f = i0.c("key-normal-speed-value", 2.0f);
            }
            TeachModel teachModelC = c(f0Var.c, teachModel);
            TraceVariable traceVariable = teachModelC == null ? null : teachModelC.getTraceVariable();
            if (traceVariable != null) {
                List<TraceItemModel> list = traceVariable.traces;
                gear = Gear.parse(list.get(list.size() / 2).gear);
                if (y.get(teachModel) == null) {
                    ArrayList arrayList2 = new ArrayList();
                    Iterator<TraceItemModel> it = list.iterator();
                    while (it.hasNext()) {
                        arrayList2.add(this.t.c(it.next()));
                    }
                    y.put(teachModel, cn.mucang.android.jiakaoyi.mapcollect.collect.c1.d.a(arrayList2, 20));
                }
            } else {
                gear = null;
            }
            this.u = y.get(teachModel);
            if (teachModel.pointType == 2) {
                this.l = cn.mucang.android.jiakaoyi.teachingk2.elements.i0.b.a(eVar, this.f7033a, gear, teachModel.step, teachModel.subStep);
            }
            if (normalVariable.reportKey != 0 || teachModel.pointType != 2 || teachModel.step != Step.K2_DaoCheRuKu.type || (teachModel.subStep != SubStep.Step2.ordinal() && teachModel.subStep != SubStep.Step4.ordinal())) {
                long j = normalVariable.reportKey;
                if (j == 0 && teachModel.pointType == 2 && teachModel.step == Step.K2_ZhiJiaoZhuanWan.type) {
                    if (n0.e(playText) || playText.contains("回正")) {
                        NormalVariable normalVariable5 = this.f7033a;
                        double degrees = Math.toDegrees(normalVariable5.posOnLine.angleTo(normalVariable5.forwardPoint));
                        Line line = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.o) bVar).l;
                        double degrees2 = Math.toDegrees(line.start.angleTo(line.end));
                        if (Math.abs(cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (degrees - degrees2))) < 12.0d && d(teachModel, f0Var)) {
                            this.n = true;
                            this.o = cn.mucang.android.jiakaoyi.signal.utils.d.c((float) degrees2);
                        }
                    }
                } else if (j == 0 && teachModel.pointType == 2 && teachModel.step == Step.K2_CeFangTingChe.type && teachModel.subStep == SubStep.Step3.ordinal() && (n0.e(playText) || playText.contains("回正"))) {
                    NormalVariable normalVariable6 = this.f7033a;
                    double degrees3 = Math.toDegrees(normalVariable6.posOnLine.angleTo(normalVariable6.forwardPoint));
                    Line line2 = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) bVar).q;
                    double degrees4 = Math.toDegrees(line2.start.angleTo(line2.end));
                    if (Math.abs(cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (degrees3 - degrees4))) < 12.0d && d(teachModel, f0Var)) {
                        this.n = true;
                        this.o = cn.mucang.android.jiakaoyi.signal.utils.d.c((float) degrees4);
                    }
                }
            } else if (n0.e(playText) || playText.contains("回正")) {
                cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar = (cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) bVar;
                Pos posMiddle = cVar.l.middle();
                Pos posMiddle2 = cVar.m.middle();
                NormalVariable normalVariable7 = this.f7033a;
                double degrees5 = Math.toDegrees(normalVariable7.posOnLine.angleTo(normalVariable7.forwardPoint));
                double degrees6 = Math.toDegrees(posMiddle.angleTo(posMiddle2));
                double dAbs = Math.abs(cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (degrees5 - degrees6)));
                double dDistanceTo = this.f7033a.posOnLine.distanceTo(posMiddle);
                double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(this.f7033a.posOnLine, posMiddle, posMiddle2);
                if ((dAbs < 5.0d && dDistanceTo < 30.0d) || (dAbs < 14.0d && dDistanceTo < 105.0d && dK < 45.0d)) {
                    this.n = true;
                    this.o = cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (degrees6 + 180.0d));
                }
            }
            Pos pos = this.i;
            NormalVariable normalVariable8 = this.f7033a;
            pos.setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.t(normalVariable8.posOnLine, normalVariable8.forwardPoint, 40.0d));
        } else {
            i = 1;
        }
        if (!eVar.d().h() || !eVar.getCurrentPosition().c()) {
            return false;
        }
        CarPos carPosC = eVar.c();
        NormalVariable normalVariable9 = this.f7033a;
        if (normalVariable9.isRange) {
            double dDistanceTo2 = carPosC.rearAxlePoint.distanceTo(normalVariable9.forwardPoint);
            NormalVariable normalVariable10 = this.f7033a;
            boolean z = dDistanceTo2 <= ((double) normalVariable10.width) || carPosC.rearAxlePoint.distanceTo(normalVariable10.posOnLine) <= ((double) this.f7033a.width);
            if (z) {
                cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.d.a().s(normalVariable);
            }
            return z;
        }
        double dC = ((double) (cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (carPosC.degree - this.q)) * 1000.0f)) / ((eVar.d().L - this.r) + 1.0E-10d);
        this.p = dC;
        this.p = Math.min(dC, 12.7d);
        this.r = eVar.d().L;
        this.q = carPosC.degree;
        if (teachModel.normalIndex >= 0) {
            this.s = null;
            this.v = 0.0d;
            List<TeachModel> list2 = f0Var.f7021d.get(Integer.valueOf(teachModel.subStep));
            if (cn.mucang.android.core.utils.g.d(list2)) {
                int i2 = 0;
                while (true) {
                    if (i2 >= list2.size()) {
                        i2 = -1;
                        break;
                    }
                    if (list2.get(i2) == teachModel) {
                        break;
                    }
                    i2++;
                }
                for (int i3 = i2 - 1; i3 >= 0; i3--) {
                    TeachModel teachModel3 = list2.get(i3);
                    if (teachModel3.normalIndex < teachModel.normalIndex && !cn.mucang.android.jiakaoyi.teachingk2.exe.l.a(teachModel3, bVar2, bVar, f0Var) && (normalVariable2 = teachModel3.getNormalVariable()) != null && normalVariable2.posOnLine.distanceSquare(normalVariable.posOnLine) >= 400.0d) {
                        Pos posC = this.t.c(normalVariable2.posOnLine);
                        this.s = posC;
                        this.v = posC.distanceTo(this.f7033a.posOnLine) - 30.0d;
                        break;
                    }
                }
            }
        }
        double dDistanceSquare = carPosC.rearAxlePoint.distanceSquare(this.f7033a.posOnLine);
        double d2 = this.v;
        if (dDistanceSquare > d2 * d2 && this.s != null && this.f7033a.posOnLine.vectorTo(carPosC.rearAxlePoint, this.f7037g).dot(carPosC.rearAxlePoint.vectorTo(this.s, this.f7038h)) < 0.0d) {
            return false;
        }
        if (teachModel.pointType == 2) {
            cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.d.a().o(normalVariable.key);
        }
        Pos pos2 = this.s;
        if ((pos2 == null || carPosC.rearAxlePoint.distanceSquare(pos2) > 1600.0d) && !this.m && this.l != null) {
            this.m = true;
            LiveBus.d(TeachCarPositionModel.class).l(new TeachCarPositionModel(this.l));
        }
        double dMax = Math.max(eVar.d().b, eVar.d().c);
        double d3 = this.f7034d;
        if (d3 < 0.0d) {
            this.f7034d = dMax;
        } else {
            this.f7034d = (d3 + dMax) * 0.5d;
        }
        if (this.f7035e) {
            float f2 = this.f7036f;
            if (f2 > BitmapDescriptorFactory.HUE_RED) {
                this.f7034d = f2;
            }
        }
        double d4 = ((double) i) * 0.5d;
        double dF = f(this.c) + d4;
        if (normalVariable.reportKey == 0) {
            dF = Math.max(0.6d, (dF - d4) * 0.9d);
            Pos pos3 = this.f7033a.posOnLine;
            List<Pos> list3 = this.u;
            if (pos3.distanceSquare(list3.get(list3.size() - 1)) < 1600.0d) {
                dF *= 0.7d;
            }
        }
        if (normalVariable.noAdvance) {
            dF = 0.3d;
        }
        double dMax2 = Math.max(10.0d, ((Math.max(0.4d, this.f7034d) * dF) / 3.6d) * 100.0d);
        Pos posT = cn.mucang.android.jiakaoyi.hpmap.d.a.t(eVar.c().rearAxlePoint, eVar.c().center, 40.0d);
        Pos posRotate = new Pos(posT).rotate(eVar.c().rearAxlePoint, 0.0d, 1.0d);
        Pos posRotate2 = new Pos(posT).rotate(eVar.c().rearAxlePoint, 0.0d, -1.0d);
        Pos pos4 = new Pos(posRotate);
        Pos pos5 = new Pos(posRotate2);
        Pos posB = b(eVar, posRotate, posRotate2, dMax2, this.j, this.k);
        LiveBus.d(b.class).l(new b(posB));
        if (!this.n) {
            double d5 = this.v;
            if (d5 < 1.0d) {
                d5 = 1000.0d;
            }
            double dMax3 = Math.max(d5, 50.0d);
            if (carPosC.rearAxlePoint.distanceSquare(this.f7033a.posOnLine) > dMax3 * dMax3) {
                return false;
            }
            NormalVariable normalVariable11 = this.f7033a;
            if (!cn.mucang.android.jiakaoyi.hpmap.d.a.C(normalVariable11.p1, normalVariable11.p2, carPosC.rearAxlePoint, posB)) {
                NormalVariable normalVariable12 = this.f7033a;
                if (!cn.mucang.android.jiakaoyi.hpmap.d.a.C(normalVariable12.p1, normalVariable12.p2, posRotate, pos4)) {
                    NormalVariable normalVariable13 = this.f7033a;
                    if (!cn.mucang.android.jiakaoyi.hpmap.d.a.C(normalVariable13.p1, normalVariable13.p2, posRotate2, pos5)) {
                        NormalVariable normalVariable14 = this.f7033a;
                        if (!cn.mucang.android.jiakaoyi.hpmap.d.a.C(normalVariable14.p1, normalVariable14.p2, carPosC.rearAxlePoint, carPosC.lastRearAxlePoint)) {
                            return false;
                        }
                    }
                }
            }
            if (carPosC.rearAxlePoint.vectorTo(posB, this.f7037g).dot(this.b) <= 0.0d) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("因为向量不满足没触发 : 预测时间:" + dF + ",预测距离:" + dMax2 + ",speed:" + this.f7034d + ",播放:" + teachModel.getPlayText());
                return false;
            }
            int i4 = this.f7033a.direCarDot;
            if (i4 != 0) {
                boolean z2 = i4 == eVar.d().F.direction;
                if (z2) {
                    cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.d.a().s(normalVariable);
                }
                return z2;
            }
            cn.mucang.android.jiakaoyi.framework.log.f.o("触发2 : 预测时间:" + dF + ",预测距离:" + dMax2 + ",实际距离:" + carPosC.rearAxlePoint.distanceTo(this.f7033a.posOnLine) + ",距离上一个教学点:" + dMax3 + ",speed:" + this.f7034d + ",wheel:" + eVar.d().r + ",播放:" + teachModel.getPlayText());
            cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.d.a().s(normalVariable);
            return true;
        }
        double dMax4 = Math.max(1.0d, Math.min(dF, 1.5d));
        if (normalVariable.noAdvance) {
            dMax4 = Math.log((Math.abs(this.p) * 0.9d) + 1.0d) * 0.21714724095162588d;
        }
        double d6 = carPosC.degree + (this.p * dMax4);
        if (carPosC.rearAxlePoint.distanceSquare(this.f7033a.posOnLine) >= 6400.0d) {
            str = ",距离上一个教学点:";
        } else {
            if (Math.abs(cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (carPosC.degree - this.o))) < 2.0f || Math.abs(cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (d6 - this.o))) < 2.0f) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("触发3 : 预测时间:" + dMax4 + ",预测距离:" + dMax2 + ",实际距离:" + carPosC.rearAxlePoint.distanceTo(this.f7033a.posOnLine) + ",目标角度:" + this.o + ",当前角度:" + carPosC.degree + ",预测角度:" + d6 + ",角速度:" + this.p + ",距离上一个教学点:" + this.v + ",speed:" + this.f7034d + ",wheel:" + eVar.d().r + ",播放:" + teachModel.getPlayText());
                cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.d.a().s(normalVariable);
                return true;
            }
            str = ",距离上一个教学点:";
        }
        if (carPosC.rearAxlePoint.distanceSquare(this.f7033a.posOnLine) >= 10000.0d || this.f7033a.posOnLine.vectorTo(this.i, this.f7037g).dot(this.i.vectorTo(carPosC.rearAxlePoint, this.f7038h)) <= 0.0d) {
            return false;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("触发4 : 预测时间:" + dMax4 + ",预测距离:" + dMax2 + ",实际距离:" + carPosC.rearAxlePoint.distanceTo(this.f7033a.posOnLine) + ",目标角度:" + this.o + ",当前角度:" + carPosC.degree + ",预测角度:" + d6 + ",角速度:" + this.p + str + this.v + ",speed:" + this.f7034d + ",wheel:" + eVar.d().r + ",播放:" + teachModel.getPlayText());
        cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.d.a().s(normalVariable);
        return true;
    }
}
