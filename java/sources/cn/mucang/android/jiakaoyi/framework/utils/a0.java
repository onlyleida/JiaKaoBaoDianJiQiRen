package cn.mucang.android.jiakaoyi.framework.utils;

/* JADX INFO: loaded from: classes2.dex */
public class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Boolean f3599a;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static a0 f3600a = new a0();
    }

    public static a0 b() {
        return b.f3600a;
    }

    public void a() {
        Boolean boolValueOf = Boolean.valueOf(!c());
        this.f3599a = boolValueOf;
        i0.i("enable_gear_learn", boolValueOf.booleanValue());
    }

    public boolean c() {
        if (AppUtils.f()) {
            return true;
        }
        if (this.f3599a == null) {
            this.f3599a = Boolean.valueOf(i0.b("enable_gear_learn", false));
        }
        return this.f3599a.booleanValue();
    }

    private a0() {
        this.f3599a = null;
    }
}
