package cn.mucang.android.core.location;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.z;

/* JADX INFO: loaded from: classes.dex */
public class MucangLocateOption {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f2576a = 120000;
    private long b = 10000;
    private boolean c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LocateMode f2577d = LocateMode.FINE_LOCATION_ONLY;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f2578e = 5;

    public enum LocateMode {
        FINE_LOCATION_ONLY,
        COARSE_LOCATION_ONLY,
        FINE_LOCATION_FIRST
    }

    public MucangLocateOption a(LocateMode locateMode) {
        this.f2577d = locateMode;
        return this;
    }

    public LocateMode b() {
        LocateMode locateMode = this.f2577d;
        if (locateMode != LocateMode.FINE_LOCATION_FIRST) {
            return locateMode;
        }
        if (z.a("android.permission.ACCESS_FINE_LOCATION")) {
            t.d("MucangLocateOption", "FINE_LOCATION_FIRST => FINE_LOCATION");
            return LocateMode.FINE_LOCATION_ONLY;
        }
        t.d("MucangLocateOption", "FINE_LOCATION_FIRST => COARSE_LOCATION");
        return LocateMode.COARSE_LOCATION_ONLY;
    }

    public long c() {
        long j = this.b;
        if (j < 0) {
            throw new RuntimeException("等待时长必须在0-120秒之间");
        }
        if (j <= 120000) {
            return j;
        }
        if (MucangConfig.v()) {
            throw new RuntimeException("等待时长必须在0-120秒之间");
        }
        t.d("MucangLocateOption", "等待时长必须在0-120秒之间,当前等待时长：120000");
        return 120000L;
    }

    public long d() {
        return this.f2576a;
    }

    public int e() {
        return this.f2578e;
    }

    public boolean f() {
        return this.c;
    }

    public MucangLocateOption g(long j) {
        this.b = j;
        return this;
    }

    public MucangLocateOption h(boolean z) {
        this.c = z;
        return this;
    }
}
