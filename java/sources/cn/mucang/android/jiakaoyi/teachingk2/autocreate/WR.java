package cn.mucang.android.jiakaoyi.teachingk2.autocreate;

import cn.mucang.android.jiakaoyi.teachingk2.wheelr.RuntimeWheelAndR;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class WR implements Serializable {
    public List<MotionArg> wheelRBack;
    public List<MotionArg> wheelRFront;

    public static class MotionArg implements Serializable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public double f6178a;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f6179f;
        public double l;
        public double r;
        public double w;

        public MotionArg() {
        }

        public MotionArg(double d2, double d3, double d4, double d5, boolean z) {
            this.w = d2;
            this.r = d3;
            this.f6178a = d4;
            this.f6179f = z;
            this.l = d5;
        }
    }

    private boolean hasThisWheel(List<MotionArg> list, double d2) {
        Iterator<MotionArg> it = list.iterator();
        while (it.hasNext()) {
            if (Math.abs(it.next().w - d2) < 45.0d) {
                return true;
            }
        }
        return false;
    }

    public synchronized boolean addWR(double d2, double d3, double d4, double d5, boolean z) {
        if (d5 > 50.0d) {
            if (Math.abs(d4) >= 1.0d) {
                double dAbs = Math.abs(d2);
                if (z) {
                    if (this.wheelRFront == null) {
                        this.wheelRFront = new ArrayList();
                    }
                    if (hasThisWheel(this.wheelRFront, dAbs)) {
                        return false;
                    }
                    this.wheelRFront.add(new MotionArg(dAbs, d3, d4, d5, true));
                    Collections.sort(this.wheelRFront, new Comparator() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autocreate.a
                        @Override // java.util.Comparator
                        public final int compare(Object obj, Object obj2) {
                            return Double.compare(((WR.MotionArg) obj).w, ((WR.MotionArg) obj2).w);
                        }
                    });
                } else {
                    if (this.wheelRBack == null) {
                        this.wheelRBack = new ArrayList();
                    }
                    if (hasThisWheel(this.wheelRBack, dAbs)) {
                        return false;
                    }
                    this.wheelRBack.add(new MotionArg(dAbs, d3, d4, d5, false));
                    Collections.sort(this.wheelRBack, new Comparator() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autocreate.b
                        @Override // java.util.Comparator
                        public final int compare(Object obj, Object obj2) {
                            return Double.compare(((WR.MotionArg) obj).w, ((WR.MotionArg) obj2).w);
                        }
                    });
                }
                cn.mucang.android.jiakaoyi.framework.log.f.o("学习方向盘: 方向盘角度=" + dAbs + ",半径=" + d3 + ",角度=" + d4 + ",轴距=" + d5 + ",前进=" + z);
                return true;
            }
        }
        return false;
    }

    public synchronized void clear(boolean z) {
        try {
            if (z) {
                List<MotionArg> list = this.wheelRFront;
                if (list != null) {
                    list.clear();
                }
            } else {
                List<MotionArg> list2 = this.wheelRBack;
                if (list2 != null) {
                    list2.clear();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized RuntimeWheelAndR.WheelAndR getMaxR(boolean z) {
        try {
            List<MotionArg> list = z ? this.wheelRFront : this.wheelRBack;
            if (cn.mucang.android.core.utils.g.b(list)) {
                return null;
            }
            MotionArg motionArg = list.get(list.size() - 1);
            double d2 = motionArg.w;
            if (d2 > 505.0d) {
                double d3 = motionArg.r;
                if (d3 < 500.0d) {
                    return RuntimeWheelAndR.WheelAndR.create(d2, d3);
                }
            }
            return null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized double getR(boolean z, double d2) {
        try {
            List<MotionArg> list = z ? this.wheelRFront : this.wheelRBack;
            if (cn.mucang.android.core.utils.g.b(list)) {
                return 0.0d;
            }
            MotionArg motionArg = list.get(list.size() - 1);
            double d3 = d2 - motionArg.w;
            if (d3 >= 0.0d) {
                if (d3 > 30.0d) {
                    return 0.0d;
                }
                return motionArg.r;
            }
            int i = 0;
            if (d2 <= list.get(0).w) {
                return list.get(0).r;
            }
            while (i < list.size() - 1) {
                MotionArg motionArg2 = list.get(i);
                i++;
                MotionArg motionArg3 = list.get(i);
                double d4 = motionArg2.w;
                if (d2 >= d4) {
                    double d5 = motionArg3.w;
                    if (d2 <= d5) {
                        double d6 = motionArg2.f6178a;
                        return motionArg2.l / Math.tan(Math.toRadians(d6 + (((d2 - d4) * (motionArg3.f6178a - d6)) / (d5 - d4))));
                    }
                }
            }
            return 0.0d;
        } catch (Throwable th) {
            throw th;
        }
    }
}
