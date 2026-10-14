package cn.mucang.android.jiakaoyi.exam.k3.collision;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.i;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.j;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class CarToLineDistanceUtils {

    public enum CalLineType {
        DashLine,
        FullLine,
        TingCheFullLine,
        DashFullLine
    }

    public static class DistanceCalResult {
        public K3CollisionModel collisionModel;
        public double distance;

        public DistanceCalResult(double d2, K3CollisionModel k3CollisionModel) {
            this.distance = cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b;
            this.distance = d2;
            this.collisionModel = k3CollisionModel;
        }
    }

    public enum Mode {
        FrontWheel,
        BackWheel,
        Max,
        Min,
        CarFrontCenter,
        CarBack
    }

    public static DistanceCalResult calCarToLineDistance(e eVar, List<K3CollisionModel> list, Mode mode, CalLineType calLineType) {
        if (list != null && list.size() > 0) {
            Mode mode2 = Mode.Max;
            if (mode != mode2 && mode != Mode.Min) {
                return getDistanceCalResult(eVar, list, mode, calLineType);
            }
            DistanceCalResult distanceCalResult = getDistanceCalResult(eVar, list, Mode.FrontWheel, calLineType);
            DistanceCalResult distanceCalResult2 = getDistanceCalResult(eVar, list, Mode.BackWheel, calLineType);
            double d2 = distanceCalResult.distance;
            int i = cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b;
            if (d2 != i) {
                double d3 = distanceCalResult2.distance;
                if (d3 != i) {
                    if (mode != mode2 || d3 <= 0.0d || d2 <= 0.0d) {
                        return d2 < d3 ? distanceCalResult : distanceCalResult2;
                    }
                    return d2 > d3 ? distanceCalResult : distanceCalResult2;
                }
            }
            if (d2 != i) {
                return distanceCalResult;
            }
            if (distanceCalResult2.distance != i) {
                return distanceCalResult2;
            }
        }
        return null;
    }

    private static DistanceCalResult getDistanceCalResult(e eVar, List<K3CollisionModel> list, Mode mode, CalLineType calLineType) {
        boolean z;
        double dI;
        boolean zIsLineCross;
        int i;
        int i2;
        double dMin = cn.mucang.android.jiakaoyi.k3collect.collision.c.a.f3883a;
        K3CollisionModel k3CollisionModel = null;
        for (K3CollisionModel k3CollisionModel2 : list) {
            boolean z2 = false;
            if (k3CollisionModel2 instanceof j) {
                j jVar = (j) k3CollisionModel2;
                if (calLineType != CalLineType.TingCheFullLine ? !((!(z = jVar.k) || (calLineType != CalLineType.DashLine && calLineType != CalLineType.DashFullLine)) && (z || (calLineType != CalLineType.FullLine && calLineType != CalLineType.DashFullLine))) : !(jVar.k || ((i2 = jVar.f3882a) != 1 && i2 != 3))) {
                    z2 = true;
                }
                if (z2) {
                    Mode mode2 = Mode.FrontWheel;
                    if (mode == mode2 || mode == Mode.BackWheel) {
                        if (mode == mode2) {
                            dI = jVar.i(eVar.c(), eVar.c().wheelRightFront);
                            zIsLineCross = isLineCross(jVar, eVar.c().wheelLeftBack, eVar.c().wheelRightFront);
                        } else {
                            dI = jVar.i(eVar.c(), eVar.c().wheelRightBack);
                            zIsLineCross = isLineCross(jVar, eVar.c().wheelRightBack, eVar.c().wheelLeftFront);
                        }
                        if (dI != cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b) {
                            if (zIsLineCross) {
                                dI = -dI;
                                i = jVar.l;
                            } else {
                                i = jVar.l;
                            }
                            double d2 = dI - (((double) i) * 0.5d);
                            if (d2 < dMin) {
                                k3CollisionModel = k3CollisionModel2;
                                dMin = d2;
                            }
                        }
                    } else if (mode == Mode.CarFrontCenter) {
                        c cVar = eVar.c().carRect;
                        double dH = jVar.h(eVar.c(), new Pos(new Pos(eVar.c().wheelRightBack).meanWith(cVar.b)).meanWith(new Pos(eVar.c().wheelLeftBack).meanWith(cVar.c)));
                        if (dH != cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b) {
                            dMin = Math.min(dH, dMin);
                            k3CollisionModel = k3CollisionModel2;
                        }
                    } else if (mode == Mode.CarBack) {
                        double dH2 = jVar.h(eVar.c(), eVar.c().back);
                        if (dH2 != cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b) {
                            dMin = Math.min(dH2, dMin);
                            k3CollisionModel = k3CollisionModel2;
                        }
                    }
                }
            } else if (k3CollisionModel2 instanceof i) {
                i iVar = (i) k3CollisionModel2;
                if (calLineType == CalLineType.FullLine || calLineType == CalLineType.DashFullLine) {
                    if (mode == Mode.CarFrontCenter) {
                        c cVar2 = eVar.c().carRect;
                        double dG = iVar.g(eVar.c(), new Pos(new Pos(eVar.c().wheelRightBack).meanWith(cVar2.b)).meanWith(new Pos(eVar.c().wheelLeftBack).meanWith(cVar2.c)));
                        if (dG != cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b) {
                            dMin = Math.min(dG, dMin);
                            k3CollisionModel = k3CollisionModel2;
                        }
                    } else if (mode == Mode.CarBack) {
                        double dG2 = iVar.g(eVar.c(), eVar.c().back);
                        if (dG2 != cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b) {
                            dMin = Math.min(dG2, dMin);
                            k3CollisionModel = k3CollisionModel2;
                        }
                    } else {
                        f.o("双黄线不支持这种计算模式 " + calLineType + " mode " + mode);
                    }
                }
            }
        }
        return new DistanceCalResult(dMin, k3CollisionModel);
    }

    private static boolean isLineCross(j jVar, Pos pos, Pos pos2) {
        if (jVar.j) {
            return cn.mucang.android.jiakaoyi.hpmap.d.a.A(pos, pos2, jVar.f3919e, false);
        }
        Line line = jVar.f3922h;
        return cn.mucang.android.jiakaoyi.hpmap.d.a.C(line.start, line.end, pos, pos2);
    }
}
