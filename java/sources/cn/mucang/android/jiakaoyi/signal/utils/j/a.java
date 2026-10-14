package cn.mucang.android.jiakaoyi.signal.utils.j;

import android.util.Log;
import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static double f5837a = 1.5d;

    public static void a(List<b> list, int i, int i2, double d2) {
        if (i < i2) {
            double d3 = 0.0d;
            int i3 = 0;
            for (int i4 = i + 1; i4 < i2; i4++) {
                double dE = e(list.get(i4).c, list.get(i).c, list.get(i2).c);
                if (dE > d3) {
                    i3 = i4;
                    d3 = dE;
                }
            }
            if (d3 >= d2) {
                list.get(i3).f5838a = true;
                a(list, i, i3, d2);
                a(list, i3, i2, d2);
            }
        }
    }

    public static void b(List<Pos> list, SparseArray<Pos> sparseArray, int i, int i2, double d2) {
        if (i < i2) {
            double d3 = 0.0d;
            int i3 = 0;
            for (int i4 = i + 1; i4 < i2; i4++) {
                double dE = e(list.get(i4), list.get(i), list.get(i2));
                Log.d("DPUtil", "compression: curDist " + dE);
                if (dE > d3) {
                    i3 = i4;
                    d3 = dE;
                }
            }
            Log.d("DPUtil", "compression: ===================== ");
            if (d3 >= d2) {
                sparseArray.put(i3, list.get(i3));
                b(list, sparseArray, i, i3, d2);
                b(list, sparseArray, i3, i2, d2);
            }
        }
    }

    public static List<b> c(List<b> list, Double d2) {
        list.get(0).f5838a = true;
        list.get(list.size() - 1).f5838a = true;
        if (d2 == null) {
            d2 = Double.valueOf(f5837a);
        }
        a(list, 0, list.size() - 1, d2.doubleValue() * d2.doubleValue());
        return list;
    }

    public static List<Pos> d(List<Pos> list, Double d2) {
        ArrayList arrayList = new ArrayList();
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, list.get(0));
        if (d2 == null) {
            d2 = Double.valueOf(f5837a);
        }
        b(list, sparseArray, 0, list.size() - 1, d2.doubleValue() * d2.doubleValue());
        sparseArray.put(list.size() + 1, list.get(list.size() - 1));
        for (int i = 0; i < sparseArray.size(); i++) {
            arrayList.add(sparseArray.valueAt(i));
        }
        return arrayList;
    }

    public static double e(Pos pos, Pos pos2, Pos pos3) {
        double d2 = pos2.x - pos3.x;
        double d3 = pos2.y - pos3.y;
        if (Math.abs(d2) < 1.0E-8d && Math.abs(d3) < 1.0E-8d) {
            return (d2 * d2) + (d3 * d3);
        }
        double d4 = pos.x;
        double d5 = pos2.x;
        double d6 = (d4 - d5) * (d5 - pos3.x);
        double d7 = pos.y;
        double d8 = pos2.y;
        double d9 = (d6 + ((d7 - d8) * (d8 - pos3.y))) / ((d2 * d2) + (d3 * d3));
        double d10 = (d5 + (d2 * d9)) - d4;
        double d11 = (d8 + (d9 * d3)) - d7;
        return (d10 * d10) + (d11 * d11);
    }
}
