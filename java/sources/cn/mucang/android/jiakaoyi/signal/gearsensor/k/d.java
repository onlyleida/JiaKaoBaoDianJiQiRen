package cn.mucang.android.jiakaoyi.signal.gearsensor.k;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean[] f5634a;
    private List<Pos> b;
    private double[][] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<Integer>[] f5635d;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Pos f5636a;
        public int b;

        public a(Pos pos, int i, double d2) {
            this.f5636a = pos;
            this.b = i;
        }
    }

    public d(List<Pos> list) {
        this.b = list;
        Collections.sort(list, new Comparator() { // from class: cn.mucang.android.jiakaoyi.signal.gearsensor.k.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Double.compare(((Pos) obj).y, ((Pos) obj2).y);
            }
        });
        boolean[] zArr = new boolean[this.b.size()];
        this.f5634a = zArr;
        Arrays.fill(zArr, false);
        j();
        k();
    }

    public static double b(Pos pos, Pos pos2) {
        return (pos.x * pos2.y) - (pos.y * pos2.x);
    }

    public static double c(Pos pos, Pos pos2) {
        return pos.distanceTo(pos2);
    }

    public static Pos d(Pos pos, Pos pos2, double d2) {
        double d3 = pos2.x;
        double d4 = pos.x;
        double d5 = d3 - d4;
        double d6 = pos2.y;
        double d7 = pos.y;
        double d8 = d6 - d7;
        double d9 = (d3 + d4) * 0.5d;
        double d10 = (d6 + d7) * 0.5d;
        double d11 = ((d2 * d2) / ((d5 * d5) + (d8 * d8))) - 0.25d;
        if (d11 < 0.0d) {
            return new Pos(-1.0d, -1.0d);
        }
        double dSqrt = Math.sqrt(d11);
        return new Pos(d9 - (d8 * dSqrt), d10 + (d5 * dSqrt));
    }

    private List<Integer> h(int i) {
        ArrayList arrayList = new ArrayList(this.b.size());
        for (int i2 = 0; i2 < this.b.size(); i2++) {
            arrayList.add(new a(this.b.get(i2), i2, this.c[i][i2]));
        }
        Collections.sort(arrayList, new Comparator() { // from class: cn.mucang.android.jiakaoyi.signal.gearsensor.k.b
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Double.compare(((d.a) obj).f5636a.y, ((d.a) obj2).f5636a.y);
            }
        });
        ArrayList arrayList2 = new ArrayList();
        for (int i3 = 1; i3 < arrayList.size(); i3++) {
            arrayList2.add(Integer.valueOf(((a) arrayList.get(i3)).b));
        }
        return arrayList2;
    }

    private boolean i(List<Integer> list, Pos pos, double d2, int i) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (list.get(i2).intValue() != i) {
                if (l(this.b.get(list.get(i2).intValue()), pos, d2)) {
                    return true;
                }
            }
        }
        return false;
    }

    private void j() {
        this.c = (double[][]) Array.newInstance((Class<?>) double.class, this.b.size(), this.b.size());
        for (int i = 0; i < this.b.size(); i++) {
            for (int i2 = 0; i2 < this.b.size(); i2++) {
                this.c[i][i2] = c(this.b.get(i), this.b.get(i2));
            }
        }
    }

    private void k() {
        this.f5635d = new ArrayList[this.b.size()];
        int i = 0;
        while (true) {
            List<Integer>[] listArr = this.f5635d;
            if (i >= listArr.length) {
                return;
            }
            listArr[i] = h(i);
            i++;
        }
    }

    public static boolean l(Pos pos, Pos pos2, double d2) {
        double d3 = pos.x;
        double d4 = pos2.x;
        double d5 = (d3 - d4) * (d3 - d4);
        double d6 = pos.y;
        double d7 = pos2.y;
        return d5 + ((d6 - d7) * (d6 - d7)) < d2 * d2;
    }

    private void o(List<Integer> list, int i, int i2) {
        Pos pos = this.b.get(i2);
        Pos pos2 = i != -1 ? new Pos(this.b.get(i).x - pos.x, this.b.get(i).y - pos.y) : new Pos(1.0d, 0.0d);
        for (int size = list.size(); size > 0; size--) {
            int i3 = 0;
            while (i3 < size - 1) {
                int i4 = i3 + 1;
                if (a(this.b.get(list.get(i3).intValue()), this.b.get(list.get(i4).intValue()), pos, pos2)) {
                    int iIntValue = list.get(i3).intValue();
                    list.set(i3, list.get(i4));
                    list.set(i4, Integer.valueOf(iIntValue));
                }
                i3 = i4;
            }
        }
    }

    public boolean a(Pos pos, Pos pos2, Pos pos3, Pos pos4) {
        Pos pos5 = new Pos(pos.x - pos3.x, pos.y - pos3.y);
        Pos pos6 = new Pos(pos2.x - pos3.x, pos2.y - pos3.y);
        double dB = b(pos4, pos6);
        if (dB == 0.0d && (pos6.x * pos4.x) + (pos6.y * pos4.y) >= 0.0d) {
            return false;
        }
        double dB2 = b(pos4, pos5);
        if (dB2 == 0.0d && (pos5.x * pos4.x) + (pos5.y * pos4.y) >= 0.0d) {
            return true;
        }
        if (dB2 * dB >= 0.0d) {
            return b(pos5, pos6) > 0.0d;
        }
        return dB2 > 0.0d;
    }

    public List<Pos> e(double d2) {
        ArrayList arrayList = new ArrayList();
        ArrayList<Integer>[] arrayListArrF = f(2.0d * d2);
        int i = 0;
        arrayList.add(this.b.get(0));
        int i2 = -1;
        while (true) {
            int iG = g(i2, i, arrayListArrF[i], d2);
            if (iG == -1) {
                return arrayList;
            }
            arrayList.add(this.b.get(iG));
            this.f5634a[iG] = true;
            i2 = i;
            i = iG;
        }
    }

    public ArrayList<Integer>[] f(double d2) {
        ArrayList<Integer>[] arrayListArr = new ArrayList[this.b.size()];
        for (int i = 0; i < this.b.size(); i++) {
            arrayListArr[i] = new ArrayList<>();
        }
        for (int i2 = 0; i2 < this.b.size(); i2++) {
            for (int i3 = 0; i3 < this.b.size(); i3++) {
                if (i2 < i3 && this.c[i2][i3] < d2) {
                    arrayListArr[i2].add(Integer.valueOf(i3));
                    arrayListArr[i3].add(Integer.valueOf(i2));
                }
            }
        }
        return arrayListArr;
    }

    public int g(int i, int i2, List<Integer> list, double d2) {
        o(list, i, i2);
        for (int i3 = 0; i3 < list.size(); i3++) {
            if (!this.f5634a[list.get(i3).intValue()]) {
                int iIntValue = list.get(i3).intValue();
                if (!i(list, d(this.b.get(i2), this.b.get(iIntValue), d2), d2, iIntValue)) {
                    return list.get(i3).intValue();
                }
            }
        }
        return -1;
    }
}
