package cn.mucang.android.jiakaoyi.teachingk2.collect.v2.o3;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class a {
    public static boolean a(boolean z, int i, NormalVariable normalVariable, List<TraceItemModel> list) {
        if (normalVariable != null && !g.b(list) && i > 0) {
            double d2 = i;
            int size = -1;
            Pos posVectorTo = normalVariable.posOnLine.vectorTo(normalVariable.forwardPoint);
            Pos pos = new Pos();
            Pos pos2 = new Pos();
            int i2 = 0;
            while (i2 < list.size() - 1) {
                TraceItemModel traceItemModel = list.get(i2);
                int i3 = i2 + 1;
                TraceItemModel traceItemModel2 = list.get(i3);
                traceItemModel.vectorTo(traceItemModel2, pos);
                if (pos.dot(posVectorTo) > 0.0d) {
                    traceItemModel.vectorTo(normalVariable.posOnLine, pos);
                    normalVariable.posOnLine.vectorTo(traceItemModel2, pos2);
                    if (pos.dot(pos2) >= 0.0d) {
                        if (!z) {
                            if (i3 <= list.size() - 1) {
                                size = i3;
                                break;
                            }
                            size = list.size() - 1;
                            break;
                        }
                        size = i2;
                        break;
                    }
                }
                i2 = i3;
            }
            if (size >= 0) {
                Pos pos3 = new Pos(normalVariable.posOnLine);
                while (true) {
                    TraceItemModel traceItemModel3 = list.get(size);
                    int size2 = z ? size + 1 : size - 1;
                    if (size2 < 0) {
                        size2 = 0;
                    }
                    if (size2 > list.size() - 1) {
                        size2 = list.size() - 1;
                    }
                    if (size != size2) {
                        TraceItemModel traceItemModel4 = list.get(size2);
                        double dDistanceTo = pos3.distanceTo(traceItemModel3);
                        double dDistanceTo2 = traceItemModel3.distanceTo(traceItemModel4);
                        double d3 = dDistanceTo + d2;
                        if (d3 > dDistanceTo2) {
                            if (size2 != list.size() - 1 || !z) {
                                if (size2 == 0 && !z) {
                                    normalVariable.setPos(new Pos(list.get(0)), new Pos(list.get(2)));
                                    break;
                                }
                                pos3.setPos(traceItemModel4);
                                d2 = d3 - dDistanceTo2;
                                size = size2;
                            } else {
                                normalVariable.setPos(new Pos(list.get(list.size() - 1)), cn.mucang.android.jiakaoyi.hpmap.d.a.s(list.get(list.size() - 2), list.get(list.size() - 1), 50.0d));
                                break;
                            }
                        } else {
                            normalVariable.setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.t(traceItemModel3, traceItemModel4, d3), z ? cn.mucang.android.jiakaoyi.hpmap.d.a.s(traceItemModel3, traceItemModel4, 50.0d) : cn.mucang.android.jiakaoyi.hpmap.d.a.s(traceItemModel4, traceItemModel3, 50.0d));
                            break;
                        }
                    } else {
                        break;
                    }
                }
                return true;
            }
            if (normalVariable.posOnLine.distanceSquare(list.get(0)) >= normalVariable.posOnLine.distanceSquare(list.get(list.size() - 1))) {
                int size3 = list.size() - 1;
                if (z) {
                    Pos posS = normalVariable.posOnLine.distanceTo(list.get(size3)) < 10.0d ? cn.mucang.android.jiakaoyi.hpmap.d.a.s(list.get(size3 - 1), list.get(size3), d2) : cn.mucang.android.jiakaoyi.hpmap.d.a.s(list.get(size3), normalVariable.posOnLine, d2);
                    normalVariable.setPos(posS, cn.mucang.android.jiakaoyi.hpmap.d.a.s(list.get(size3), posS, 50.0d));
                } else {
                    normalVariable.setPos(list.get(size3), cn.mucang.android.jiakaoyi.hpmap.d.a.s(list.get(size3 - 1), list.get(size3), 50.0d));
                }
            } else if (z) {
                normalVariable.setPos(list.get(0), cn.mucang.android.jiakaoyi.hpmap.d.a.s(list.get(0), list.get(1), 50.0d));
            } else {
                Pos posS2 = normalVariable.posOnLine.distanceTo(list.get(0)) < 10.0d ? cn.mucang.android.jiakaoyi.hpmap.d.a.s(list.get(1), list.get(0), d2) : cn.mucang.android.jiakaoyi.hpmap.d.a.s(list.get(0), normalVariable.posOnLine, d2);
                normalVariable.setPos(posS2, cn.mucang.android.jiakaoyi.hpmap.d.a.s(list.get(0), posS2, 50.0d));
            }
        }
        return false;
    }
}
