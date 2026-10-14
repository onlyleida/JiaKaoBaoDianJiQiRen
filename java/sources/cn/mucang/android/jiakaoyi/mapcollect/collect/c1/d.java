package cn.mucang.android.jiakaoyi.mapcollect.collect.c1;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class d {
    public static List<Pos> a(List<Pos> list, int i) {
        if (list == null || list.size() < 3) {
            return list;
        }
        int i2 = i * i;
        ArrayList arrayList = new ArrayList();
        arrayList.add(list.get(0));
        Pos pos = list.get(0);
        for (int i3 = 1; i3 < list.size() - 1; i3++) {
            Pos pos2 = list.get(i3);
            if (pos.distanceSquare(pos2) > i2) {
                arrayList.add(pos2);
                pos = pos2;
            }
        }
        if (((Pos) arrayList.get(arrayList.size() - 1)).distanceSquare(list.get(list.size() - 1)) < ((double) i2) * 0.25d) {
            arrayList.remove(arrayList.size() - 1);
        }
        arrayList.add(list.get(list.size() - 1));
        return arrayList;
    }

    public static void b(double[] dArr, double[] dArr2) {
        int length = dArr.length;
        if (length < 7) {
            System.arraycopy(dArr, 0, dArr2, 0, length);
            return;
        }
        int i = 3;
        dArr2[0] = (((((((dArr[0] * 32.0d) + (dArr[1] * 15.0d)) + (dArr[2] * 3.0d)) - (dArr[3] * 4.0d)) - (dArr[4] * 6.0d)) - (dArr[5] * 3.0d)) + (dArr[6] * 5.0d)) / 42.0d;
        dArr2[1] = ((((((dArr[0] * 5.0d) + (dArr[1] * 4.0d)) + (dArr[2] * 3.0d)) + (dArr[3] * 2.0d)) + dArr[4]) - dArr[6]) / 14.0d;
        dArr2[2] = ((((((dArr[0] + (dArr[1] * 3.0d)) + (dArr[2] * 4.0d)) + (dArr[3] * 4.0d)) + (dArr[4] * 3.0d)) + dArr[5]) - (dArr[6] * 2.0d)) / 14.0d;
        while (true) {
            int i2 = length - 4;
            if (i > i2) {
                int i3 = length - 3;
                int i4 = length - 1;
                int i5 = length - 2;
                int i6 = length - 5;
                int i7 = length - 6;
                int i8 = length - 7;
                dArr2[i3] = ((((((dArr[i4] + (dArr[i5] * 3.0d)) + (dArr[i3] * 4.0d)) + (dArr[i2] * 4.0d)) + (dArr[i6] * 3.0d)) + dArr[i7]) - (dArr[i8] * 2.0d)) / 14.0d;
                dArr2[i5] = ((((((dArr[i4] * 5.0d) + (dArr[i5] * 4.0d)) + (dArr[i3] * 3.0d)) + (dArr[i2] * 2.0d)) + dArr[i6]) - dArr[i8]) / 14.0d;
                dArr2[i4] = (((((((dArr[i4] * 32.0d) + (dArr[i5] * 15.0d)) + (dArr[i3] * 3.0d)) - (dArr[i2] * 4.0d)) - (dArr[i6] * 6.0d)) - (dArr[i7] * 3.0d)) + (dArr[i8] * 5.0d)) / 42.0d;
                return;
            }
            int i9 = i + 1;
            dArr2[i] = (((((dArr[i - 3] + dArr[i + 3]) * (-2.0d)) + ((dArr[i - 2] + dArr[i + 2]) * 3.0d)) + ((dArr[i - 1] + dArr[i9]) * 6.0d)) + (dArr[i] * 7.0d)) / 21.0d;
            i = i9;
        }
    }

    public static List<Pos> c(List<Pos> list, double d2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(list.get(0));
        double d3 = 0.0d;
        int i = 1;
        while (i < list.size() - 1) {
            Pos pos = list.get(i);
            double dDistanceTo = pos.distanceTo((Pos) arrayList.get(arrayList.size() - 1));
            if (d3 > 10.0d && dDistanceTo > d3 * 10.0d && dDistanceTo > 500.0d) {
                return new ArrayList(list);
            }
            if (dDistanceTo >= d2) {
                arrayList.add(pos);
            }
            i++;
            d3 = dDistanceTo;
        }
        arrayList.add(list.get(list.size() - 1));
        return e(arrayList);
    }

    public static <T extends Pos> void d(List<T> list, List<T> list2) {
        if (list.size() < 4 || list2.size() < 4) {
            return;
        }
        Pos pos = new Pos();
        Pos pos2 = new Pos();
        T t = list2.get(0);
        if (t.vectorTo(list2.get(2), pos).dot(t.vectorTo(list.get(0), pos2)) <= 0.0d) {
            list2.get(0).setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.n(list.get(0), list2.get(0), list2.get(1)));
            return;
        }
        int i = 0;
        while (true) {
            if (i >= list2.size() - 1) {
                i = 0;
                break;
            }
            int i2 = i + 1;
            if (list2.get(i).vectorTo(list.get(0), pos).dot(list.get(0).vectorTo(list2.get(i2), pos2)) >= 0.0d) {
                break;
            } else {
                i = i2;
            }
        }
        for (int i3 = 0; i3 < i; i3++) {
            list2.remove(0);
        }
        Pos posN = cn.mucang.android.jiakaoyi.hpmap.d.a.n(list.get(0), list2.get(0), list2.get(1));
        if (posN.distanceSquare(list2.get(0)) > posN.distanceSquare(list2.get(1))) {
            list2.get(1).meanWith(list2.get(2));
        }
        list2.get(0).setPos(posN);
    }

    public static List<Pos> e(List<Pos> list) {
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        double[] dArr = new double[size];
        double[] dArr2 = new double[list.size()];
        double[] dArr3 = new double[list.size()];
        double[] dArr4 = new double[list.size()];
        double[] dArr5 = new double[list.size()];
        double[] dArr6 = new double[list.size()];
        for (int i = 0; i < list.size(); i++) {
            dArr[i] = list.get(i).x;
            dArr3[i] = list.get(i).y;
            dArr5[i] = list.get(i).z;
        }
        b(dArr, dArr2);
        b(dArr3, dArr4);
        b(dArr5, dArr6);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(new Pos(dArr2[i2], dArr4[i2], dArr6[i2]));
        }
        f(list, arrayList);
        d(list, arrayList);
        return arrayList;
    }

    public static <T extends Pos> void f(List<T> list, List<T> list2) {
        if (list.size() < 4 || list2.size() < 4) {
            return;
        }
        int size = list2.size();
        int size2 = list.size();
        Pos pos = new Pos();
        Pos pos2 = new Pos();
        int i = size - 1;
        int i2 = size2 - 1;
        if (list2.get(i).vectorTo(list.get(i2), pos).dot(list2.get(i).vectorTo(list2.get(size - 3), pos2)) <= 0.0d) {
            list2.get(i).setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.n(list.get(i2), list2.get(i), list2.get(size - 2)));
            return;
        }
        int i3 = i;
        while (true) {
            if (i3 <= 0) {
                i3 = i;
                break;
            } else if (list2.get(i3).vectorTo(list.get(i2), pos).dot(list2.get(i3 - 1).vectorTo(list2.get(size - 2), pos2)) >= 0.0d) {
                break;
            } else {
                i3--;
            }
        }
        for (int i4 = i3; i4 < i; i4++) {
            list2.remove(list2.size() - 1);
        }
        int i5 = i3 - 1;
        Pos posN = cn.mucang.android.jiakaoyi.hpmap.d.a.n(list.get(i2), list2.get(i3), list2.get(i5));
        if (posN.distanceSquare(list2.get(i3)) > posN.distanceSquare(list2.get(i5))) {
            list2.get(i5).meanWith(list2.get(i3 - 2));
        }
        list2.get(i3).setPos(posN);
    }
}
