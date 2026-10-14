package cn.mucang.android.jiakaoyi.exam.k3.helper;

/* JADX INFO: loaded from: classes2.dex */
public class CarStraightenChecker {
    private static final int DEFAULT_DURATION = 3000;
    private Float initAngel;
    private boolean isStarted;
    private int time;
    private Long timeAtSpeed0;

    public CarStraightenChecker() {
        this(DEFAULT_DURATION);
    }

    public boolean onCheck(float f2, float f3, long j) {
        Float f4;
        if (!this.isStarted) {
            this.timeAtSpeed0 = null;
            this.initAngel = null;
            return false;
        }
        if (f2 <= 3.0f || ((f4 = this.initAngel) != null && Math.abs(f3 - f4.floatValue()) > 5.0f)) {
            this.timeAtSpeed0 = null;
            this.initAngel = null;
            return false;
        }
        Long l = this.timeAtSpeed0;
        if (l == null || this.initAngel == null) {
            this.timeAtSpeed0 = Long.valueOf(j);
            this.initAngel = Float.valueOf(f3);
        } else if (j - l.longValue() >= this.time) {
            return true;
        }
        return false;
    }

    public void start() {
        this.isStarted = true;
    }

    public void stop() {
        this.isStarted = false;
    }

    public CarStraightenChecker(int i) {
        this.timeAtSpeed0 = null;
        this.initAngel = null;
        this.isStarted = false;
        this.time = i;
    }
}
