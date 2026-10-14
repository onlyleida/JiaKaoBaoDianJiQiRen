package cn.mucang.android.jiakaoyi.teachingk2.autocreate;

import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.r0;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.i;
import com.autonavi.amap.mapcore.AMapEngineUtils;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.math3.fitting.PolynomialCurveFitter;
import org.apache.commons.math3.fitting.WeightedObservedPoints;

/* JADX INFO: loaded from: classes4.dex */
public class WheelAndRLearning {
    public static final r0<WR> j = r0.h("learning_wheel_and_radius", null, WR.class);
    private static final List<WheelAction> k;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private double f6184g;
    private i i;
    private List<a> b = null;
    private long c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6181d = -1314520;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private WheelAction f6182e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private double f6183f = 0.0d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile boolean f6185h = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<WheelAction, List<a>> f6180a = new HashMap();

    private enum WheelAction {
        Front14(90, "请打四分之一圈前进"),
        Back14(-90, "请打四分之一圈后退"),
        Front12(180, "请打半圈前进"),
        Back12(AMapEngineUtils.MIN_LONGITUDE_DEGREE, "请打半圈后退"),
        Front34(270, "请打四分之三圈前进"),
        Back34(-270, "请打四分之三圈后退"),
        Front1(360, "请打一圈前进"),
        Back1(-360, "请打一圈后退"),
        Front15(540, "请打方向盘打满前进"),
        Back15(-540, "请打方向盘打满后退");

        final String desc;
        final int wheel;

        WheelAction(int i, String str) {
            this.wheel = i;
            this.desc = str;
        }

        boolean isFront() {
            return this.wheel > 0;
        }

        boolean isMatched(cn.mucang.android.jiakaoyi.signal.c.e eVar, int i) {
            int i2;
            if (eVar.d().m.isFront()) {
                i2 = 1;
            } else {
                i2 = eVar.d().m == Gear.GearBack ? -1 : 0;
            }
            return i2 * this.wheel > 0 && Math.abs(Math.abs(eVar.d().r) - Math.abs(this.wheel)) < i;
        }
    }

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f6186a;
        double b;
        double c;

        public a(int i, double d2, double d3) {
            this.f6186a = i;
            this.b = d2;
            this.c = d3;
        }

        public double a(a aVar) {
            double d2 = this.b - aVar.b;
            double d3 = this.c - aVar.c;
            return Math.sqrt((d2 * d2) + (d3 * d3));
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        k = arrayList;
        arrayList.add(WheelAction.Front14);
        arrayList.add(WheelAction.Back14);
        arrayList.add(WheelAction.Front12);
        arrayList.add(WheelAction.Back12);
        arrayList.add(WheelAction.Front34);
        arrayList.add(WheelAction.Back34);
        arrayList.add(WheelAction.Front1);
        arrayList.add(WheelAction.Back1);
        arrayList.add(WheelAction.Front15);
        arrayList.add(WheelAction.Back15);
    }

    private static AutoLearnWheelAndR.WheelSteerFactor a(List<Pos> list) {
        WeightedObservedPoints weightedObservedPoints = new WeightedObservedPoints();
        for (int i = 0; i < list.size(); i++) {
            weightedObservedPoints.add(list.get(i).x, list.get(i).y);
        }
        double[] dArrFit = PolynomialCurveFitter.create(2).fit(weightedObservedPoints.toList());
        return new AutoLearnWheelAndR.WheelSteerFactor(dArrFit[2], dArrFit[1], dArrFit[0]);
    }

    private static double c(List<a> list, Pos pos) {
        double d2 = 0.0d;
        if (list.size() < 3) {
            return 0.0d;
        }
        int size = list.size();
        double d3 = 0.0d;
        double d4 = 0.0d;
        double d5 = 0.0d;
        double d6 = 0.0d;
        double d7 = 0.0d;
        double d8 = 0.0d;
        double d9 = 0.0d;
        double d10 = 0.0d;
        int i = 0;
        while (i < size) {
            double d11 = d4;
            double d12 = list.get(i).b;
            double d13 = list.get(i).c;
            double d14 = d12 * d12;
            double d15 = d13 * d13;
            d3 += d12;
            d5 += d13;
            d2 += d14;
            d7 += d15;
            d6 += d14 * d12;
            d9 += d15 * d13;
            d10 += d12 * d15;
            d8 += d14 * d13;
            i++;
            d4 = d11 + (d12 * d13);
            size = size;
        }
        double d16 = d4;
        double d17 = size;
        double d18 = (d17 * d2) - (d3 * d3);
        double d19 = (d17 * d16) - (d3 * d5);
        double d20 = (d6 * d17) + (d10 * d17);
        double d21 = d2 + d7;
        double d22 = d20 - (d21 * d3);
        double d23 = (d17 * d7) - (d5 * d5);
        double d24 = ((d8 * d17) + (d9 * d17)) - (d21 * d5);
        double d25 = (d24 * d19) - (d22 * d23);
        double d26 = d23 * d18;
        double d27 = d19 * d19;
        double d28 = d25 / (d26 - d27);
        double d29 = ((d24 * d18) - (d22 * d19)) / (d27 - d26);
        double dSqrt = Math.sqrt(((d28 * d28) + (d29 * d29)) - (((-((((d3 * d28) + (d5 * d29)) + d2) + d7)) / d17) * 4.0d)) / 2.0d;
        pos.setPos(d28 / (-2.0d), d29 / (-2.0d));
        return dSqrt;
    }

    private double f(List<a> list) {
        Iterator<a> it = list.iterator();
        double d2 = 0.0d;
        while (it.hasNext()) {
            d2 += (double) it.next().f6186a;
        }
        return d2 / ((double) list.size());
    }

    private void g() {
        this.b = null;
        this.f6182e = null;
        this.f6181d = -1314520;
        this.f6183f = 0.0d;
        this.c = 0L;
    }

    private WheelAction h() {
        for (WheelAction wheelAction : k) {
            if (this.f6180a.get(wheelAction) == null) {
                return wheelAction;
            }
        }
        return null;
    }

    public AutoLearnWheelAndR.WheelSteerFactor b(boolean z) {
        ArrayList arrayList = new ArrayList();
        WR wrB = j.b();
        if (wrB != null && this.f6180a.size() > 3) {
            wrB.clear(z);
        }
        for (WheelAction wheelAction : k) {
            if (wheelAction.isFront() == z) {
                List<a> list = this.f6180a.get(wheelAction);
                if (!cn.mucang.android.core.utils.g.b(list)) {
                    double dF = f(list);
                    double dC = c(list, new Pos());
                    double degrees = Math.toDegrees(Math.atan(this.f6184g / dC));
                    arrayList.add(new Pos(dF, degrees));
                    if (wrB == null) {
                        wrB = new WR();
                    }
                    wrB = wrB;
                    wrB.addWR(dF, dC, degrees, this.f6184g, z);
                }
            }
        }
        if (arrayList.size() < 3) {
            return null;
        }
        j.j(wrB);
        return a(arrayList);
    }

    public void d(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (this.f6185h && eVar.d().h() && eVar.getCurrentPosition().b()) {
            if (eVar.d().c > 2.5d) {
                i iVar = this.i;
                if (iVar == null) {
                    this.i = new i(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
                    TtsManager.z("速度太快了，请减速", TtsGrade.GlobalError);
                } else if (iVar.c(eVar.d().L)) {
                    TtsManager.z("速度太快了，请减速", TtsGrade.GlobalError);
                    this.i.a();
                }
            } else {
                this.i = null;
            }
            this.f6184g = eVar.c().L;
            int iAbs = Math.abs(eVar.d().r);
            if (this.b == null) {
                WheelAction wheelActionH = h();
                if (wheelActionH == null) {
                    if (this.c == 0) {
                        this.c = eVar.d().L;
                        TtsManager.r("方向盘学习完成", TtsGrade.GlobalTip);
                    }
                    if (eVar.d().L - this.c > DefaultDrmSessionManager.DEFAULT_SESSION_KEEPALIVE_MS) {
                        this.c = 0L;
                        return;
                    }
                    return;
                }
                if (this.c == 0) {
                    this.c = eVar.d().L;
                    TtsManager.r(wheelActionH.desc, TtsGrade.GlobalTip);
                }
                if (eVar.d().L - this.c > 3000) {
                    this.c = 0L;
                }
                if (wheelActionH.isMatched(eVar, 40)) {
                    this.f6181d = iAbs;
                    this.f6182e = wheelActionH;
                    this.f6183f = 0.0d;
                    ArrayList arrayList = new ArrayList();
                    this.b = arrayList;
                    arrayList.add(new a(iAbs, eVar.c().rearAxlePoint.x, eVar.c().rearAxlePoint.y));
                    return;
                }
                return;
            }
            if (!this.f6182e.isMatched(eVar, 41) || Math.abs(iAbs - Math.abs(this.f6181d)) >= 5) {
                g();
                return;
            }
            a aVar = new a(iAbs, eVar.c().rearAxlePoint.x, eVar.c().rearAxlePoint.y);
            List<a> list = this.b;
            double dA = aVar.a(list.get(list.size() - 1));
            if (dA > 20.0d) {
                this.b.add(aVar);
                this.f6183f += dA;
            }
            if (this.b.size() <= 4 || this.f6183f < 440.0d) {
                return;
            }
            double degrees = (float) (Math.toDegrees(Math.atan(this.f6184g / c(this.b, new Pos()))) / ((double) this.f6181d));
            if (degrees > 0.085d || degrees < 0.03d) {
                TtsManager.r("学习数据异常，请检查车身数据和方向盘数据是否正常", TtsGrade.SuperLevel);
                g();
            } else {
                this.f6180a.put(this.f6182e, this.b);
                g();
            }
        }
    }

    public String e() {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (WheelAction wheelAction : k) {
            if (this.f6180a.get(wheelAction) == null) {
                sb.append(wheelAction.desc.replace("请打", ""));
                sb.append(" : 未学习\n");
                z = false;
            }
        }
        if (z) {
            sb.append("全部学习完成");
        }
        return sb.toString();
    }

    public void i() {
        this.f6185h = true;
    }

    public boolean j() {
        this.f6185h = false;
        WheelAction wheelActionH = h();
        cn.mucang.android.jiakaoyi.framework.log.f.o("停止学习:" + this.f6184g);
        if (wheelActionH == null) {
            return true;
        }
        TtsManager.r("学习失败，还有方向盘角度没有学习完", TtsGrade.GlobalTip);
        return false;
    }
}
