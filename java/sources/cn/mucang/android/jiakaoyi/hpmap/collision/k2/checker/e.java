package cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker;

import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f3705a;
    private long b = 0;

    public e(long j) {
        this.f3705a = j;
    }

    public boolean a(CarModel.Direction direction, long j) {
        if (direction != CarModel.Direction.Stop) {
            this.b = 0L;
            return false;
        }
        if (this.b == 0) {
            this.b = j;
        }
        return j - this.b > this.f3705a;
    }

    public void b() {
        this.b = 0L;
    }

    public void c(long j) {
        this.f3705a = j;
    }
}
