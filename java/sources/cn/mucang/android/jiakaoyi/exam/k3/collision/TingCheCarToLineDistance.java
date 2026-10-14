package cn.mucang.android.jiakaoyi.exam.k3.collision;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class TingCheCarToLineDistance {
    public static final double InvalidDistance = 9999.0d;
    private static final Map<List<Pos>, List<CalItem>> itemCache = new HashMap();

    private static class CalItem {
        final cn.mucang.android.jiakaoyi.signal.pos.a bound;
        final List<Pos> subPath;
        final Pos vec;

        private CalItem(List<Pos> list) {
            this.subPath = list;
            this.bound = cn.mucang.android.jiakaoyi.hpmap.d.a.b(list);
            this.vec = list.get(0).vectorTo(list.get(list.size() - 1));
        }
    }

    public enum Mode {
        FrontWheel,
        BackWheel,
        Max,
        Min
    }

    private static boolean angleIsToBig(Pos pos, Pos pos2) {
        return Math.abs(pos.dot(pos2)) / (pos.model() * pos2.model()) < 0.34202d;
    }

    private static double calDistance(List<Pos> list, Pos pos) {
        double d2;
        boolean z = false;
        int i = 0;
        while (true) {
            d2 = Double.MAX_VALUE;
            if (i >= list.size() - 1) {
                break;
            }
            int i2 = i + 1;
            Pos posN = cn.mucang.android.jiakaoyi.hpmap.d.a.n(pos, list.get(i), list.get(i2));
            if (cn.mucang.android.jiakaoyi.hpmap.d.a.y(posN, list.get(i), list.get(i2))) {
                double dDistanceTo = posN.distanceTo(pos);
                if (dDistanceTo < Double.MAX_VALUE) {
                    d2 = dDistanceTo;
                    z = true;
                    break;
                }
            }
            i = i2;
        }
        if (!z) {
            Iterator<Pos> it = list.iterator();
            while (it.hasNext()) {
                double dDistanceTo2 = pos.distanceTo(it.next());
                if (dDistanceTo2 < d2) {
                    d2 = dDistanceTo2;
                }
            }
        }
        return d2;
    }

    public static double calDistanceToLine(List<List<Pos>> list, Pos pos, Pos pos2, Mode mode) {
        cn.mucang.android.jiakaoyi.signal.pos.a aVar = new cn.mucang.android.jiakaoyi.signal.pos.a();
        aVar.j(pos.x, pos.y);
        aVar.j(pos2.x, pos2.y);
        cn.mucang.android.jiakaoyi.signal.pos.a aVarM = aVar.m(300.0f, 300.0f, 300.0f, 300.0f);
        Iterator<List<Pos>> it = list.iterator();
        double d2 = Double.MAX_VALUE;
        while (it.hasNext()) {
            double distanceToLine = getDistanceToLine(it.next(), pos, pos2, aVarM, mode);
            if (d2 > distanceToLine) {
                d2 = distanceToLine;
            }
        }
        return d2;
    }

    public static void clearCache() {
        itemCache.clear();
    }

    private static List<CalItem> createCalItem(List<Pos> list) {
        ArrayList arrayList = new ArrayList();
        int size = list.size() / 10;
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            int i2 = i * 10;
            arrayList.add(new CalItem(list.subList(i2, Math.min(i2 + 10 + 5, list.size()))));
            i++;
        }
        if (arrayList.size() == 0) {
            arrayList.add(new CalItem(list));
        }
        return arrayList;
    }

    private static double getDistanceToLine(List<Pos> list, Pos pos, Pos pos2, cn.mucang.android.jiakaoyi.signal.pos.a aVar, Mode mode) {
        double dMax = 9999.0d;
        if (list != null && list.size() >= 2) {
            Map<List<Pos>, List<CalItem>> map = itemCache;
            List<CalItem> listCreateCalItem = map.get(list);
            if (listCreateCalItem == null) {
                listCreateCalItem = createCalItem(list);
                map.put(list, listCreateCalItem);
            }
            Pos posVectorTo = pos2.vectorTo(pos);
            double d2 = Double.MAX_VALUE;
            double d3 = Double.MAX_VALUE;
            for (CalItem calItem : listCreateCalItem) {
                if (!calItem.bound.h(aVar) && !angleIsToBig(posVectorTo, calItem.vec)) {
                    if (mode == Mode.FrontWheel) {
                        double dCalDistance = calDistance(calItem.subPath, pos);
                        if (d2 > dCalDistance) {
                            dMax = dCalDistance;
                            d2 = dMax;
                        }
                    } else if (mode == Mode.BackWheel) {
                        double dCalDistance2 = calDistance(calItem.subPath, pos2);
                        if (d3 > dCalDistance2) {
                            dMax = dCalDistance2;
                            d3 = dMax;
                        }
                    } else {
                        Mode mode2 = Mode.Max;
                        if (mode == mode2 || mode == Mode.Min) {
                            double dCalDistance3 = calDistance(calItem.subPath, pos);
                            if (d2 > dCalDistance3) {
                                d2 = dCalDistance3;
                            }
                            double dCalDistance4 = calDistance(calItem.subPath, pos2);
                            if (d3 > dCalDistance4) {
                                d3 = dCalDistance4;
                            }
                            dMax = mode == mode2 ? Math.max(d3, d2) : Math.min(d3, d2);
                        }
                    }
                }
            }
        }
        return dMax;
    }
}
