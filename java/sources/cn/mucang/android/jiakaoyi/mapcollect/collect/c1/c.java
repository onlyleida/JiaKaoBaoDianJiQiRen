package cn.mucang.android.jiakaoyi.mapcollect.collect.c1;

import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f4764a;
    private static final int b;

    static {
        if (AppUtils.b()) {
            f4764a = 1200;
            b = 800;
        } else {
            f4764a = 750;
            b = Videoio.CAP_PROP_XI_DOWNSAMPLING;
        }
    }

    public static boolean a(List<Pos> list, List<Pos> list2, Pos pos, Pos pos2, double d2, int i, AtomicBoolean atomicBoolean) {
        Pos pos3 = new Pos();
        Pos pos4 = new Pos();
        if (!d(list, pos3, pos4, d2, i, true, atomicBoolean)) {
            return false;
        }
        Pos pos5 = new Pos();
        Pos pos6 = new Pos();
        if (!d(list2, pos5, pos6, d2, i, false, atomicBoolean)) {
            return false;
        }
        pos.setPos(e(pos3, pos6));
        pos2.setPos(e(pos4, pos5));
        return true;
    }

    public static double b(List<Pos> list, int i, int i2, Pos pos) {
        int i3 = i;
        int i4 = i2;
        int i5 = (i4 - i3) + 1;
        if (i5 < 2 || i3 >= list.size() - 1) {
            return 0.0d;
        }
        double d2 = 0.0d;
        double d3 = 0.0d;
        double d4 = 0.0d;
        double d5 = 0.0d;
        double d6 = 0.0d;
        double d7 = 0.0d;
        double d8 = 0.0d;
        double d9 = 0.0d;
        double d10 = 0.0d;
        while (i3 <= i4 && i3 < list.size()) {
            double d11 = list.get(i3).x;
            double d12 = list.get(i3).y;
            double d13 = d11 * d11;
            double d14 = d12 * d12;
            d4 += d11;
            d6 += d12;
            d7 += d13;
            d8 += d14;
            d9 += d13 * d11;
            d10 += d14 * d12;
            d2 += d11 * d12;
            d3 += d11 * d14;
            d5 += d13 * d12;
            i3++;
            i4 = i2;
            i5 = i5;
        }
        double d15 = i5;
        double d16 = (d15 * d7) - (d4 * d4);
        double d17 = (d2 * d15) - (d4 * d6);
        double d18 = d7 + d8;
        double d19 = ((d9 * d15) + (d3 * d15)) - (d18 * d4);
        double d20 = (d15 * d8) - (d6 * d6);
        double d21 = ((d5 * d15) + (d10 * d15)) - (d18 * d6);
        double d22 = (d21 * d17) - (d19 * d20);
        double d23 = d20 * d16;
        double d24 = d17 * d17;
        double d25 = d22 / (d23 - d24);
        double d26 = ((d21 * d16) - (d19 * d17)) / (d24 - d23);
        pos.setPos(d25 / (-2.0d), d26 / (-2.0d), 0.0d);
        double d27 = ((d25 * d25) + (d26 * d26)) - (((-((((d4 * d25) + (d6 * d26)) + d7) + d8)) / d15) * 4.0d);
        if (d27 <= 0.0d) {
            return 0.0d;
        }
        return Math.sqrt(d27) / 2.0d;
    }

    private static boolean c(List<Pos> list, double[] dArr, int i, Pos pos, double d2, double d3, int i2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i3 = 0; i3 < list.size() - 1; i3++) {
            int i4 = i3;
            double d4 = 0.0d;
            while (true) {
                if (i4 >= list.size() - 1) {
                    i4 = i3;
                    break;
                }
                d4 += dArr[i4];
                if (d4 >= i) {
                    break;
                }
                i4++;
            }
            if (i4 > i3) {
                Pos pos2 = new Pos();
                double dB = b(list, i3, i4, pos2);
                double dAbs = 0.0d;
                for (int i5 = i3; i5 <= i4; i5++) {
                    double dDistanceTo = pos2.distanceTo(list.get(i5)) - dB;
                    dAbs += Math.abs(dDistanceTo * dDistanceTo);
                }
                double dSqrt = Math.sqrt(dAbs / ((double) ((i4 - i3) + 1)));
                if (Math.abs(dB - d2) <= d3 && dSqrt < 10.0d) {
                    arrayList.add(new Pos(pos2));
                    arrayList2.add(Double.valueOf(dB));
                }
                if (arrayList.size() >= i2) {
                    h(arrayList, arrayList2, d2, pos);
                    return true;
                }
            }
        }
        if (arrayList.size() < 1) {
            return false;
        }
        h(arrayList, arrayList2, d2, pos);
        return true;
    }

    private static boolean d(List<Pos> list, Pos pos, Pos pos2, double d2, int i, boolean z, AtomicBoolean atomicBoolean) {
        int size = list.size();
        double[] dArr = new double[size];
        int i2 = 0;
        while (i2 < list.size() - 1) {
            int i3 = i2 + 1;
            dArr[i2] = list.get(i2).distanceTo(list.get(i3));
            i2 = i3;
        }
        dArr[size - 1] = dArr[size - 2];
        double d3 = 0.0d;
        double d4 = ((double) (f4764a + b)) * 0.5d * 0.5d * 3.141592653589793d;
        int i4 = 0;
        while (true) {
            if (i4 >= size) {
                i4 = 0;
                break;
            }
            d3 += dArr[i4];
            if (d3 > d4) {
                break;
            }
            i4++;
        }
        double dB = b(list, 0, i4, new Pos());
        int i5 = f4764a;
        int i6 = b;
        if (dB > ((double) (i5 + i6)) * 0.5d) {
            atomicBoolean.set(!z);
            if (c(list, dArr, (int) (((double) i5) * 1.57d), pos2, i5, d2, i)) {
                return c(f(list), g(dArr), (int) (((double) i6) * 1.57d), pos, i6, d2, i);
            }
            return false;
        }
        atomicBoolean.set(z);
        if (c(f(list), g(dArr), (int) (((double) i5) * 1.57d), pos2, i5, d2, i)) {
            return c(list, dArr, (int) (((double) i6) * 1.57d), pos, i6, d2, i);
        }
        return false;
    }

    private static Pos e(Pos pos, Pos pos2) {
        double d2 = pos.z;
        int i = f4764a;
        double dAbs = Math.abs(d2 - ((double) i));
        double d3 = pos.z;
        int i2 = b;
        double dMin = Math.min(dAbs, Math.abs(d3 - ((double) i2)));
        double dMin2 = Math.min(Math.abs(pos2.z - ((double) i)), Math.abs(pos2.z - ((double) i2)));
        double d4 = dMin2 / (dMin + dMin2);
        double d5 = 1.0d - d4;
        Pos pos3 = new Pos();
        pos3.x = (pos.x * d4) + (pos2.x * d5);
        pos3.y = (pos.y * d4) + (pos2.y * d5);
        return pos3;
    }

    private static List<Pos> f(List<Pos> list) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(list.get((size - 1) - i));
        }
        return arrayList;
    }

    private static double[] g(double[] dArr) {
        double[] dArr2 = new double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i] = dArr[(dArr.length - 1) - i];
        }
        return dArr2;
    }

    private static void h(List<Pos> list, List<Double> list2, double d2, Pos pos) {
        if (list.size() == 1) {
            pos.setPos(list.get(0));
            return;
        }
        int size = list2.size();
        double[] dArr = new double[size];
        double d3 = -1.7976931348623157E308d;
        for (int i = 0; i < size; i++) {
            dArr[i] = Math.abs(d2 - list2.get(i).doubleValue());
            if (dArr[i] > d3) {
                d3 = dArr[i];
            }
        }
        double d4 = d3 + 0.1d;
        double d5 = 0.0d;
        for (int i2 = 0; i2 < size; i2++) {
            double d6 = d4 - dArr[i2];
            dArr[i2] = d6 * d6;
            d5 += dArr[i2];
        }
        for (int i3 = 0; i3 < size; i3++) {
            dArr[i3] = dArr[i3] / d5;
        }
        pos.x = 0.0d;
        pos.y = 0.0d;
        for (int i4 = 0; i4 < size; i4++) {
            pos.x += list.get(i4).x * dArr[i4];
            pos.y += list.get(i4).y * dArr[i4];
        }
    }
}
