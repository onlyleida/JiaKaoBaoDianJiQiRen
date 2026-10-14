package cn.mucang.android.jiakaoyi.exam.k3.collision;

import cn.mucang.android.jiakaoyi.exam.k3.collision.result.TwoSideOffsetResult;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.i;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.j;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HpSideDistanceCalculator {
    private final List<K3CollisionModel> allLines;
    private final double bodyLeftResult;
    private final double bodyRightResult;
    private final double invalid;
    private final List<K3CollisionModel> leftLines;
    private final List<K3CollisionModel> rightLines;
    private final TwoSideOffsetResult twoSideOffsetResult;

    public HpSideDistanceCalculator(List<K3CollisionModel> list, List<K3CollisionModel> list2, List<K3CollisionModel> list3, List<K3CollisionModel> list4, List<K3CollisionModel> list5) {
        ArrayList arrayList = new ArrayList();
        this.allLines = arrayList;
        this.invalid = -9999.0d;
        this.bodyLeftResult = -9999.0d;
        this.bodyRightResult = -9999.0d;
        this.leftLines = new ArrayList();
        this.rightLines = new ArrayList();
        if (!list.isEmpty()) {
            arrayList.addAll(list);
        }
        if (!list2.isEmpty()) {
            arrayList.addAll(list2);
        }
        if (!list3.isEmpty()) {
            arrayList.addAll(list3);
        }
        if (!list4.isEmpty()) {
            arrayList.addAll(list4);
        }
        if (!list5.isEmpty()) {
            arrayList.addAll(list5);
        }
        this.twoSideOffsetResult = new TwoSideOffsetResult();
    }

    private List<K3CollisionModel> getCalculateLines(e eVar, List<K3CollisionModel> list) {
        ArrayList arrayList = new ArrayList();
        for (K3CollisionModel k3CollisionModel : list) {
            if (k3CollisionModel instanceof j) {
                j jVar = (j) k3CollisionModel;
                if (!jVar.j) {
                    if (cn.mucang.android.jiakaoyi.k3collect.collision.a.c(eVar.c().bigBound, jVar.f3922h)) {
                        arrayList.add(k3CollisionModel);
                    }
                } else if (!jVar.c.h(eVar.c().bigBound)) {
                    arrayList.add(k3CollisionModel);
                }
            } else if (k3CollisionModel instanceof i) {
                i iVar = (i) k3CollisionModel;
                if (iVar.f3917h) {
                    if (!iVar.c.h(eVar.c().bigBound)) {
                        arrayList.add(k3CollisionModel);
                    }
                } else if (cn.mucang.android.jiakaoyi.k3collect.collision.a.c(eVar.c().bigBound, iVar.f3916g) || cn.mucang.android.jiakaoyi.k3collect.collision.a.c(eVar.c().bigBound, iVar.f3915f)) {
                    arrayList.add(k3CollisionModel);
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00e7  */
    public TwoSideOffsetResult getSideDistance(e eVar) {
        double d2;
        double d3;
        K3CollisionModel k3CollisionModel;
        K3CollisionModel k3CollisionModel2;
        List<Pos> list;
        Line line;
        List<K3CollisionModel> list2;
        List<K3CollisionModel> list3 = this.allLines;
        if (list3 == null || list3.isEmpty()) {
            return this.twoSideOffsetResult.emptyResult();
        }
        List<K3CollisionModel> calculateLines = getCalculateLines(eVar, this.allLines);
        if (calculateLines == null || calculateLines.isEmpty()) {
            return this.twoSideOffsetResult.emptyResult();
        }
        CarPos carPosC = eVar.c();
        this.leftLines.clear();
        this.rightLines.clear();
        Pos posMeanWith = new Pos(carPosC.carRect.b).meanWith(carPosC.carRect.c);
        c cVar = carPosC.carRect;
        Pos pos = cVar.b;
        Pos pos2 = cVar.f5820a;
        double d4 = Double.MAX_VALUE;
        if (calculateLines.size() > 0) {
            int i = 0;
            double d5 = Double.MAX_VALUE;
            K3CollisionModel k3CollisionModel3 = null;
            K3CollisionModel k3CollisionModel4 = null;
            while (i < calculateLines.size()) {
                K3CollisionModel k3CollisionModel5 = calculateLines.get(i);
                if (k3CollisionModel5 instanceof j) {
                    j jVar = (j) k3CollisionModel5;
                    if (jVar.j) {
                        list = jVar.f3919e;
                        line = null;
                    } else {
                        line = jVar.f3922h;
                        list = null;
                    }
                } else {
                    if (k3CollisionModel5 instanceof i) {
                        i iVar = (i) k3CollisionModel5;
                        if (iVar.f3917h) {
                            list = iVar.f3914e;
                        } else {
                            line = iVar.f3916g;
                            list = null;
                        }
                    } else {
                        list = null;
                    }
                    line = null;
                }
                if (list == null) {
                    list2 = calculateLines;
                    if (line != null) {
                        Pos posN = cn.mucang.android.jiakaoyi.hpmap.d.a.n(carPosC.center, line.start, line.end);
                        double dCross = pos2.vectorTo(pos).cross(posN.vectorTo(carPosC.center));
                        double dDistanceTo = posN.distanceTo(posMeanWith);
                        if (dCross > 0.0d) {
                            if (dDistanceTo < d4) {
                                k3CollisionModel3 = k3CollisionModel5;
                                d4 = dDistanceTo;
                            }
                        } else if (dCross < 0.0d && dDistanceTo < d5) {
                            k3CollisionModel4 = k3CollisionModel5;
                            d5 = dDistanceTo;
                        }
                    }
                } else if (list.size() > 0) {
                    int i2 = 1;
                    list2 = calculateLines;
                    while (i2 < list.size()) {
                        Pos pos3 = list.get(i2 - 1);
                        List<Pos> list4 = list;
                        Pos pos4 = list.get(i2);
                        K3CollisionModel k3CollisionModel6 = k3CollisionModel3;
                        if (cn.mucang.android.jiakaoyi.k3collect.collision.a.d(carPosC.bigBound, pos3, pos4)) {
                            Pos posN2 = cn.mucang.android.jiakaoyi.hpmap.d.a.n(carPosC.center, pos3, pos4);
                            double dCross2 = pos2.vectorTo(pos).cross(posN2.vectorTo(carPosC.center));
                            double dDistanceTo2 = posN2.distanceTo(posMeanWith);
                            if (dCross2 > 0.0d) {
                                if (dDistanceTo2 < d4) {
                                    k3CollisionModel3 = k3CollisionModel5;
                                    d4 = dDistanceTo2;
                                } else {
                                    k3CollisionModel3 = k3CollisionModel6;
                                }
                            } else if (dCross2 >= 0.0d || dDistanceTo2 >= d5) {
                                k3CollisionModel3 = k3CollisionModel6;
                            } else {
                                k3CollisionModel4 = k3CollisionModel5;
                                k3CollisionModel3 = k3CollisionModel6;
                                d5 = dDistanceTo2;
                            }
                        } else {
                            k3CollisionModel3 = k3CollisionModel6;
                        }
                        i2++;
                        list = list4;
                    }
                } else {
                    list2 = calculateLines;
                }
                i++;
                calculateLines = list2;
            }
            d2 = d4;
            d3 = d5;
            k3CollisionModel = k3CollisionModel3;
            k3CollisionModel2 = k3CollisionModel4;
        } else {
            d2 = Double.MAX_VALUE;
            d3 = Double.MAX_VALUE;
            k3CollisionModel = null;
            k3CollisionModel2 = null;
        }
        return this.twoSideOffsetResult.setResult(d2, d3, k3CollisionModel, k3CollisionModel2);
    }
}
