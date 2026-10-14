package cn.mucang.android.jiakaoyi.hpmap.d;

import cn.mucang.android.jiakaoyi.hpmap.a.b.c;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static boolean A(Pos pos, Pos pos2, List<Pos> list, boolean z) {
        int i = 0;
        while (i < list.size() - 1) {
            Pos pos3 = list.get(i);
            i++;
            if (C(pos, pos2, pos3, list.get(i))) {
                return true;
            }
        }
        if (z) {
            return C(pos, pos2, list.get(0), list.get(list.size() - 1));
        }
        return false;
    }

    public static boolean B(double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        double d10 = d9 - d7;
        double d11 = d8 - d2;
        double d12 = d9 - d3;
        double d13 = d8 - d6;
        double d14 = ((d11 * d10) - (d12 * d13)) * (((d8 - d4) * d10) - ((d9 - d5) * d13));
        if (d14 > 0.0d) {
            return false;
        }
        double d15 = d5 - d3;
        double d16 = d4 - d2;
        double d17 = (((d6 - d2) * d15) - ((d7 - d3) * d16)) * ((d11 * d15) - (d12 * d16));
        if (d17 > 0.0d) {
            return false;
        }
        if (d14 == 0.0d || d17 == 0.0d) {
            return E(d6, d8) >= F(d2, d4) && E(d2, d4) >= F(d6, d8) && E(d7, d9) >= F(d3, d5) && E(d3, d5) >= F(d7, d9);
        }
        return true;
    }

    public static boolean C(Pos pos, Pos pos2, Pos pos3, Pos pos4) {
        if (pos == null || pos2 == null || pos3 == null || pos4 == null) {
            return false;
        }
        double d2 = pos4.y;
        double d3 = pos3.y;
        double d4 = d2 - d3;
        double d5 = pos4.x;
        double d6 = pos.x;
        double d7 = d5 - d6;
        double d8 = pos.y;
        double d9 = d2 - d8;
        double d10 = pos2.x;
        double d11 = pos2.y;
        double d12 = pos3.x;
        double d13 = d5 - d12;
        double d14 = ((d7 * d4) - (d9 * d13)) * (((d5 - d10) * d4) - ((d2 - d11) * d13));
        if (d14 > 0.0d) {
            return false;
        }
        double d15 = d12 - d6;
        double d16 = d11 - d8;
        double d17 = d10 - d6;
        double d18 = ((d15 * d16) - ((d3 - d8) * d17)) * ((d7 * d16) - (d9 * d17));
        if (d18 > 0.0d) {
            return false;
        }
        if (d14 == 0.0d || d18 == 0.0d) {
            return E(d12, d5) >= F(pos.x, pos2.x) && E(pos.x, pos2.x) >= F(pos3.x, pos4.x) && E(pos3.y, pos4.y) >= F(pos.y, pos2.y) && E(pos.y, pos2.y) >= F(pos3.y, pos4.y);
        }
        return true;
    }

    public static boolean D(Pos pos, Pos pos2, Pos pos3) {
        double d2 = pos2.x;
        double d3 = pos.x;
        double d4 = d2 - d3;
        double d5 = pos2.y;
        double d6 = pos.y;
        return (d4 * (pos3.x - d3)) + ((d5 - d6) * (pos3.y - d6)) > 0.0d;
    }

    private static double E(double d2, double d3) {
        return d2 < d3 ? d3 : d2;
    }

    private static double F(double d2, double d3) {
        return d2 > d3 ? d3 : d2;
    }

    public static List<Pos> G(List<Pos> list, double d2, boolean z) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < list.size() - 1) {
            int i2 = i + 1;
            Line lineO = o(list.get(i), list.get(i2), d2, z);
            if (i == 0) {
                arrayList.add(lineO.start);
            } else {
                ((Pos) arrayList.get(arrayList.size() - 1)).meanWith(lineO.start);
            }
            arrayList.add(lineO.end);
            i = i2;
        }
        return arrayList;
    }

    public static List<Pos> H(List<Pos> list, double d2, boolean z) {
        int i = -1;
        if (!c.i(f(list.get(0), list.get(1), list.get(2), 0.1d, 1), list) ? !z : z) {
            i = 1;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(f(list.get(list.size() - 1), list.get(0), list.get(1), d2, i));
        int i2 = 1;
        while (i2 < list.size() - 1) {
            Pos pos = list.get(i2 - 1);
            Pos pos2 = list.get(i2);
            i2++;
            arrayList.add(f(pos, pos2, list.get(i2), d2, i));
        }
        arrayList.add(f(list.get(list.size() - 2), list.get(list.size() - 1), list.get(0), d2, i));
        return arrayList;
    }

    public static cn.mucang.android.jiakaoyi.signal.pos.a a(Line line) {
        Pos pos = line.start;
        double d2 = pos.x;
        double d3 = pos.y;
        Pos pos2 = line.end;
        double d4 = pos2.x;
        double d5 = d2 > d4 ? d4 : d2;
        double d6 = pos2.y;
        return new cn.mucang.android.jiakaoyi.signal.pos.a(d5, d3 > d6 ? d6 : d3, d2 < d4 ? d4 : d2, d3 < d6 ? d6 : d3);
    }

    public static cn.mucang.android.jiakaoyi.signal.pos.a b(List<Pos> list) {
        double d2 = -1.7976931348623157E308d;
        double d3 = -1.7976931348623157E308d;
        double d4 = Double.MAX_VALUE;
        double d5 = Double.MAX_VALUE;
        for (Pos pos : list) {
            double d6 = pos.x;
            if (d4 > d6) {
                d4 = d6;
            }
            double d7 = pos.y;
            if (d5 > d7) {
                d5 = d7;
            }
            if (d2 < d6) {
                d2 = d6;
            }
            if (d3 < d7) {
                d3 = d7;
            }
        }
        return new cn.mucang.android.jiakaoyi.signal.pos.a(d4, d5, d2, d3);
    }

    public static Pos c(List<Pos> list) {
        Pos pos = new Pos();
        for (Pos pos2 : list) {
            pos.x += pos2.x;
            pos.y += pos2.y;
            pos.z += pos2.z;
        }
        pos.x /= (double) list.size();
        pos.y /= (double) list.size();
        pos.z /= (double) list.size();
        return pos;
    }

    public static double d(Pos pos, Pos pos2, Pos pos3, Pos pos4, double d2) {
        double dDistanceTo = pos.distanceTo(pos2);
        if (dDistanceTo <= d2) {
            pos4.setPos(pos2);
            return dDistanceTo;
        }
        double dDistanceTo2 = pos.distanceTo(pos3);
        if (dDistanceTo2 <= d2) {
            pos4.setPos(pos3);
            return dDistanceTo2;
        }
        Pos posN = n(pos, pos2, pos3);
        double d3 = posN.x;
        if ((d3 - pos2.x) * (pos3.x - d3) < 0.0d) {
            return 1.0E11d;
        }
        double d4 = posN.y;
        if ((d4 - pos2.y) * (pos3.y - d4) < 0.0d) {
            return 1.0E11d;
        }
        double dDistanceTo3 = posN.distanceTo(pos);
        if (dDistanceTo3 > d2) {
            return 1.0E11d;
        }
        pos4.setPos(pos);
        return dDistanceTo3;
    }

    public static Pos e(Pos pos, Pos pos2, Pos pos3, double d2) {
        if (pos == null || pos3 == null || pos2 == null) {
            return null;
        }
        double dAngleTo = pos2.angleTo(pos);
        double dAngleTo2 = pos2.angleTo(pos3);
        double dAtan2 = Math.atan2(Math.sin(dAngleTo) + Math.sin(dAngleTo2), Math.cos(dAngleTo) + Math.cos(dAngleTo2));
        return new Pos(pos2.x + (Math.cos(dAtan2) * d2), pos2.y + (d2 * Math.sin(dAtan2)), (pos.z + pos3.z) * 0.5d);
    }

    private static Pos f(Pos pos, Pos pos2, Pos pos3, double d2, int i) {
        if (pos == null || pos3 == null || pos2 == null) {
            return null;
        }
        double dAngleTo = pos.angleTo(pos2);
        double dAngleTo2 = pos2.angleTo(pos3);
        double dAtan2 = Math.atan2(Math.sin(dAngleTo) + Math.sin(dAngleTo2), Math.cos(dAngleTo) + Math.cos(dAngleTo2));
        Pos pos4 = new Pos(pos2.x + (Math.cos(dAtan2) * d2), pos2.y + (d2 * Math.sin(dAtan2)), (pos.z + pos3.z) * 0.5d);
        pos4.rotate(pos2, 0.0d, i > 0 ? 1 : -1);
        return pos4;
    }

    public static boolean g(Pos pos, Pos pos2, Pos pos3, Pos pos4) {
        double d2 = pos2.x;
        double d3 = pos3.x;
        double d4 = d2 - d3;
        double d5 = pos2.y;
        double d6 = pos3.y;
        double d7 = d5 - d6;
        double d8 = (d4 * d4) + (d7 * d7);
        if (d8 < 1.0E-8d) {
            return false;
        }
        double d9 = (((pos.x - d2) * (d2 - d3)) + ((pos.y - d5) * (d5 - d6))) / d8;
        double d10 = d2 + (d4 * d9);
        double d11 = d5 + (d9 * d7);
        if (pos4 != null) {
            pos4.setPos(d10, d11);
        }
        return (pos2.x - d10) * (d10 - pos3.x) >= 0.0d && (pos2.y - d11) * (d11 - pos3.y) >= 0.0d;
    }

    public static double h(Pos pos, Pos pos2, Pos pos3) {
        double d2 = pos2.x;
        double d3 = pos.x;
        double d4 = pos3.y;
        double d5 = pos.y;
        return ((d2 - d3) * (d4 - d5)) - ((pos3.x - d3) * (pos2.y - d5));
    }

    public static Pos i(Line line, Line line2) {
        return j(line.start, line.end, line2.start, line2.end);
    }

    public static Pos j(Pos pos, Pos pos2, Pos pos3, Pos pos4) {
        double d2;
        double d3 = pos2.y;
        double d4 = pos.y;
        double d5 = d3 - d4;
        double d6 = pos.x;
        double d7 = pos2.x;
        double d8 = d6 - d7;
        double d9 = ((d7 - d6) * d4) - ((d3 - d4) * d6);
        double d10 = pos4.y;
        double d11 = pos3.y;
        double d12 = d10 - d11;
        double d13 = pos3.x;
        double d14 = pos4.x;
        double d15 = d13 - d14;
        double d16 = ((d14 - d13) * d11) - ((d10 - d11) * d13);
        double d17 = (d5 * d15) - (d12 * d8);
        if (Math.abs(d17) < 1.0E-20d) {
            return null;
        }
        double d18 = ((d8 * d16) - (d15 * d9)) / d17;
        double d19 = ((d9 * d12) - (d16 * d5)) / d17;
        double d20 = pos2.x - pos.x;
        double d21 = pos2.y - pos.y;
        if (Math.abs(d20) > 1.0E-8d) {
            double d22 = (d18 - pos.x) / d20;
            double d23 = pos2.z;
            double d24 = pos.z;
            d2 = (d22 * (d23 - d24)) + d24;
        } else {
            double d25 = (d19 - pos.y) / d21;
            double d26 = pos2.z;
            double d27 = pos.z;
            d2 = (d25 * (d26 - d27)) + d27;
        }
        return new Pos(d18, d19, d2);
    }

    public static double k(Pos pos, Pos pos2, Pos pos3) {
        double d2 = pos2.x;
        double d3 = pos3.x;
        double d4 = d2 - d3;
        double d5 = pos2.y;
        double d6 = pos3.y;
        double d7 = d5 - d6;
        double d8 = (d4 * d4) + (d7 * d7);
        if (d8 < 1.0E-8d) {
            return pos.distanceTo(pos2);
        }
        double d9 = pos.x;
        double d10 = (d9 - d2) * (d2 - d3);
        double d11 = pos.y;
        double d12 = (d10 + ((d11 - d5) * (d5 - d6))) / d8;
        double d13 = (d2 + (d4 * d12)) - d9;
        double d14 = (d5 + (d12 * d7)) - d11;
        return Math.sqrt((d13 * d13) + (d14 * d14));
    }

    public static double l(Pos pos, Pos pos2, Pos pos3) {
        double d2 = pos2.x - pos3.x;
        double d3 = pos2.y - pos3.y;
        if (Math.abs(d2) < 1.0E-8d && Math.abs(d3) < 1.0E-8d) {
            double d4 = pos.x - pos2.x;
            double d5 = pos.y - pos2.y;
            return (d4 * d4) + (d5 * d5);
        }
        double d6 = pos.x;
        double d7 = pos2.x;
        double d8 = (d6 - d7) * (d7 - pos3.x);
        double d9 = pos.y;
        double d10 = pos2.y;
        double d11 = (d8 + ((d9 - d10) * (d10 - pos3.y))) / ((d2 * d2) + (d3 * d3));
        double d12 = (d7 + (d2 * d11)) - d6;
        double d13 = (d10 + (d11 * d3)) - d9;
        return (d12 * d12) + (d13 * d13);
    }

    public static double m(Pos pos, Pos pos2, Pos pos3, double[] dArr) {
        double d2 = pos2.x;
        double d3 = pos3.x;
        double d4 = d2 - d3;
        double d5 = pos2.y;
        double d6 = pos3.y;
        double d7 = d5 - d6;
        double d8 = (d4 * d4) + (d7 * d7);
        if (d8 < 1.0E-8d) {
            double d9 = pos.x - d2;
            double d10 = pos.y - d5;
            dArr[0] = d2 + (d9 * 0.5d);
            dArr[1] = d5 + (0.5d * d10);
            return (d9 * d9) + (d10 * d10);
        }
        double d11 = pos.x;
        double d12 = (d11 - d2) * (d2 - d3);
        double d13 = pos.y;
        double d14 = (d12 + ((d13 - d5) * (d5 - d6))) / d8;
        double d15 = d2 + (d4 * d14);
        double d16 = d5 + (d14 * d7);
        double d17 = d15 - d11;
        double d18 = d16 - d13;
        dArr[0] = d15;
        dArr[1] = d16;
        return (d17 * d17) + (d18 * d18);
    }

    public static Pos n(Pos pos, Pos pos2, Pos pos3) {
        double d2;
        double d3;
        double d4;
        double d5 = pos2.x;
        double d6 = pos3.x;
        double d7 = d5 - d6;
        double d8 = pos2.y;
        double d9 = pos3.y;
        double d10 = d8 - d9;
        double d11 = (d7 * d7) + (d10 * d10);
        if (d11 < 1.0E-8d) {
            return new Pos(pos2);
        }
        double d12 = (((pos.x - d5) * (d5 - d6)) + ((pos.y - d8) * (d8 - d9))) / d11;
        double d13 = d5 + (d12 * d7);
        double d14 = d8 + (d12 * d10);
        if (Math.abs(d7) > 1.0E-8d) {
            d2 = (pos2.x - d13) / d7;
            d3 = pos3.z;
            d4 = pos2.z;
        } else {
            d2 = (pos2.y - d14) / d10;
            d3 = pos3.z;
            d4 = pos2.z;
        }
        return new Pos(d13, d14, (d2 * (d3 - d4)) + d4);
    }

    public static Line o(Pos pos, Pos pos2, double d2, boolean z) {
        double d3 = pos2.x - pos.x;
        double d4 = pos2.y - pos.y;
        double dSqrt = d2 / Math.sqrt(((d3 * d3) + (d4 * d4)) + 1.0E-100d);
        double d5 = pos.y;
        double d6 = d3 * dSqrt;
        double d7 = d5 + d6;
        double d8 = pos.x;
        double d9 = dSqrt * d4;
        double d10 = d8 - d9;
        double d11 = d5 - d6;
        double d12 = d9 + d8;
        double d13 = ((pos2.x - d8) * (d7 - d5)) - ((pos2.y - d5) * (d10 - d8));
        if (!z ? d13 <= 0.0d : d13 >= 0.0d) {
            d10 = d12;
            d7 = d11;
        }
        return new Line(new Pos(d10, d7, pos.z), new Pos(d10 + d3, d7 + d4, pos2.z));
    }

    public static Line p(Pos pos, Pos pos2, double d2) {
        return o(pos, pos2, d2, true);
    }

    public static Line q(Pos pos, Pos pos2, double d2) {
        return o(pos, pos2, d2, false);
    }

    public static cn.mucang.android.jiakaoyi.signal.pos.c r(Pos pos, Pos pos2, double d2) {
        double d3 = 0.5d * d2;
        double d4 = pos2.x - pos.x;
        double d5 = pos2.y - pos.y;
        double dSqrt = 1.0d / Math.sqrt(((d4 * d4) + (d5 * d5)) + 1.0E-100d);
        double d6 = d4 * d3 * dSqrt;
        double d7 = d5 * d3 * dSqrt;
        double d8 = pos.y;
        double d9 = d8 + d6;
        double d10 = pos.x;
        double d11 = d10 - d7;
        double d12 = pos2.y;
        double d13 = d12 + d6;
        double d14 = pos2.x;
        double d15 = d14 - d7;
        return new cn.mucang.android.jiakaoyi.signal.pos.c(new Pos(d11, d9), new Pos(d10 + d7, d8 - d6), new Pos(d14 + d7, d12 - d6), new Pos(d15, d13));
    }

    public static Pos s(Pos pos, Pos pos2, double d2) {
        double d3 = pos2.x - pos.x;
        double d4 = pos2.y - pos.y;
        double d5 = pos2.z - pos.z;
        double dSqrt = 1.0d / Math.sqrt(((d3 * d3) + (d4 * d4)) + 1.0E-100d);
        return new Pos((d3 * d2 * dSqrt) + pos2.x, (d2 * d4 * dSqrt) + pos2.y, (d2 * d5 * dSqrt) + pos2.z);
    }

    public static Pos t(Pos pos, Pos pos2, double d2) {
        double d3 = pos2.x - pos.x;
        double d4 = pos2.y - pos.y;
        double d5 = pos2.z - pos.z;
        double dSqrt = 1.0d / Math.sqrt(((d3 * d3) + (d4 * d4)) + 1.0E-100d);
        return new Pos((d2 * d3 * dSqrt) + pos.x, (d2 * d4 * dSqrt) + pos.y, (d2 * d5 * dSqrt) + pos.z);
    }

    public static Pos u(Pos pos, Pos pos2, Pos pos3) {
        double d2 = -pos2.angleTo(pos);
        double dCos = Math.cos(d2);
        double dSin = Math.sin(d2);
        Pos posRotate = new Pos(pos).rotate(pos2, dCos, dSin);
        return new Pos(posRotate.x, new Pos(pos3).rotate(pos2, dCos, dSin).y, (posRotate.z + pos3.z) * 0.5d).rotate(pos2, dCos, -dSin);
    }

    public static cn.mucang.android.jiakaoyi.signal.pos.c v(Pos pos, Pos pos2, double d2) {
        double d3 = 0.5d * d2;
        double d4 = pos2.x - pos.x;
        double d5 = pos2.y - pos.y;
        double dSqrt = 1.0d / Math.sqrt(((d4 * d4) + (d5 * d5)) + 1.0E-100d);
        double d6 = d4 * d3 * dSqrt;
        double d7 = d3 * d5 * dSqrt;
        double d8 = pos.y;
        double d9 = d8 + d6;
        double d10 = pos.x;
        double d11 = d10 - d7;
        double d12 = d8 - d6;
        double d13 = d10 + d7;
        return new cn.mucang.android.jiakaoyi.signal.pos.c(new Pos(d11, d9), new Pos(d11 + d4, d9 + d5), new Pos(d4 + d13, d5 + d12), new Pos(d13, d12));
    }

    public static Pos w(Pos pos, Pos pos2, Pos pos3, double d2) {
        return u(s(pos, pos3, d2), pos3, s(pos2, pos3, d2));
    }

    public static boolean x(double d2, double d3, Pos pos, Pos pos2) {
        return (pos.x - d2) * (d2 - pos2.x) >= 0.0d && (pos.y - d3) * (d3 - pos2.y) >= 0.0d;
    }

    public static boolean y(Pos pos, Pos pos2, Pos pos3) {
        double d2 = pos2.x;
        double d3 = pos.x;
        if ((d2 - d3) * (d3 - pos3.x) >= 0.0d) {
            double d4 = pos2.y;
            double d5 = pos.y;
            if ((d4 - d5) * (d5 - pos3.y) >= 0.0d) {
                return true;
            }
        }
        return false;
    }

    public static boolean z(Pos pos, Pos pos2, Pos pos3, Pos pos4, Pos pos5) {
        return pos2.vectorTo(pos3, pos4).dot(pos2.vectorTo(pos, pos5)) >= 0.0d && pos3.vectorTo(pos2, pos4).dot(pos3.vectorTo(pos, pos5)) >= 0.0d;
    }
}
