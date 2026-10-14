package cn.mucang.android.jiakaoyi.signal.d;

import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.n;
import cn.mucang.android.jiakaoyi.signal.communicate.AbsSignalProvider;

/* JADX INFO: loaded from: classes3.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f5556a;
    public final float b;
    public final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f5557d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f5558e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f5559f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f5560g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f5561h;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private float f5562a = 1.0f;
        private float b = 1.0f;
        private boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f5563d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f5564e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f5565f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f5566g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f5567h;

        public h a() {
            return new h(this.f5562a, this.b, this.c, this.f5563d, this.f5564e, this.f5565f, this.f5566g, this.f5567h);
        }

        public a b(boolean z) {
            this.f5566g = z;
            return this;
        }

        public a c(boolean z) {
            this.c = z;
            return this;
        }

        public a d(boolean z) {
            this.f5564e = z;
            return this;
        }

        public a e(float f2) {
            this.b = f2;
            return this;
        }

        public a f(float f2) {
            this.f5562a = f2;
            return this;
        }

        public a g(boolean z) {
            this.f5565f = z;
            return this;
        }

        public a h(boolean z) {
            this.f5563d = z;
            return this;
        }

        public a i(boolean z) {
            this.f5567h = z;
            return this;
        }
    }

    public h(float f2, float f3, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.f5556a = f2;
        this.b = f3;
        this.c = z;
        this.f5557d = z2;
        this.f5558e = z3;
        this.f5559f = z4;
        this.f5560g = z5;
        this.f5561h = z6;
    }

    public static h a() {
        AbsSignalProvider absSignalProvider = (AbsSignalProvider) DataProviderRegister.f3433a.a(AbsSignalProvider.class, null);
        boolean zUseNonOldProtocol = absSignalProvider != null ? absSignalProvider.useNonOldProtocol() : false;
        a aVar = new a();
        aVar.f(cn.mucang.android.jiakaoyi.signal.car.b.c());
        aVar.e(cn.mucang.android.jiakaoyi.signal.car.b.b());
        aVar.c(n.a());
        aVar.h(zUseNonOldProtocol);
        aVar.d(AppUtils.k());
        aVar.g(AppUtils.l());
        aVar.b(AppUtils.b());
        aVar.i(AppUtils.n());
        return aVar.a();
    }
}
