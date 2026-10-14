package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public class GyroPosHolder {
    private static final ThreadLocal<PosInfo> posCache = new ThreadLocal<>();
    private static final ThreadLocal<Estimator> estimator = new ThreadLocal<>();

    private static class Estimator {
        private Pos last;
        private float lastAngel;
        private float lastSpeed;
        private long lastTime;

        private Estimator() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Pos getCurrentPos(e eVar) {
            float f2 = eVar.d().b;
            long j = eVar.d().L;
            float f3 = eVar.d().D;
            Pos pos = new Pos();
            if (this.last == null) {
                Pos pos2 = new Pos(0.0d, 0.0d, eVar.d().L);
                this.last = pos2;
                pos.setPos(pos2);
            } else {
                float f4 = ((float) (((((double) (this.lastSpeed + f2)) * 0.5d) / 3.6d) * (j - this.lastTime) * 0.001d)) * 100.0f;
                double radians = Math.toRadians(((double) (this.lastAngel + f3)) * 0.5d);
                double d2 = f4;
                pos.x = this.last.x + (Math.cos(radians) * d2);
                pos.y = this.last.y + (d2 * Math.sin(radians));
                pos.z = j;
                this.last.setPos(pos);
            }
            this.lastTime = j;
            this.lastAngel = f3;
            this.lastSpeed = f2;
            return pos;
        }
    }

    private static class PosInfo {
        Pos pos;
        long time;

        private PosInfo() {
        }
    }

    public static Pos get(e eVar) {
        ThreadLocal<PosInfo> threadLocal = posCache;
        PosInfo posInfo = threadLocal.get();
        if (posInfo == null) {
            posInfo = new PosInfo();
        }
        if (posInfo.pos == null || eVar.d().L != posInfo.time) {
            ThreadLocal<Estimator> threadLocal2 = estimator;
            Estimator estimator2 = threadLocal2.get();
            if (estimator2 == null) {
                estimator2 = new Estimator();
                threadLocal2.set(estimator2);
            }
            posInfo.pos = estimator2.getCurrentPos(eVar);
            posInfo.time = eVar.d().L;
        }
        threadLocal.set(posInfo);
        return posInfo.pos;
    }

    public static void reset() {
        posCache.set(null);
        estimator.set(null);
    }
}
