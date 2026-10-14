package androidx.core.view;

import android.os.Build;
import android.view.WindowInsetsAnimationController;
import androidx.core.graphics.d;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes.dex */
public final class WindowInsetsAnimationControllerCompat {
    private final b mImpl;

    private static class a extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WindowInsetsAnimationController f1186a;

        a(WindowInsetsAnimationController windowInsetsAnimationController) {
            this.f1186a = windowInsetsAnimationController;
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.b
        void a(boolean z) {
            this.f1186a.finish(z);
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.b
        public float b() {
            return this.f1186a.getCurrentAlpha();
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.b
        public float c() {
            return this.f1186a.getCurrentFraction();
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.b
        public d d() {
            return d.d(this.f1186a.getCurrentInsets());
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.b
        public d e() {
            return d.d(this.f1186a.getHiddenStateInsets());
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.b
        public d f() {
            return d.d(this.f1186a.getShownStateInsets());
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.b
        public int g() {
            return this.f1186a.getTypes();
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.b
        boolean h() {
            return this.f1186a.isCancelled();
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.b
        boolean i() {
            return this.f1186a.isFinished();
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.b
        public void j(d dVar, float f2, float f3) {
            this.f1186a.setInsetsAndAlpha(dVar == null ? null : dVar.e(), f2, f3);
        }
    }

    private static class b {
        b() {
        }

        void a(boolean z) {
        }

        public float b() {
            return BitmapDescriptorFactory.HUE_RED;
        }

        public float c() {
            return BitmapDescriptorFactory.HUE_RED;
        }

        public d d() {
            return d.f1112e;
        }

        public d e() {
            return d.f1112e;
        }

        public d f() {
            return d.f1112e;
        }

        public int g() {
            return 0;
        }

        boolean h() {
            return true;
        }

        boolean i() {
            return false;
        }

        public void j(d dVar, float f2, float f3) {
        }
    }

    WindowInsetsAnimationControllerCompat() {
        if (Build.VERSION.SDK_INT < 30) {
            this.mImpl = new b();
            return;
        }
        throw new UnsupportedOperationException("On API 30+, the constructor taking a " + WindowInsetsAnimationController.class.getSimpleName() + " as parameter");
    }

    public void finish(boolean z) {
        this.mImpl.a(z);
    }

    public float getCurrentAlpha() {
        return this.mImpl.b();
    }

    public float getCurrentFraction() {
        return this.mImpl.c();
    }

    public d getCurrentInsets() {
        return this.mImpl.d();
    }

    public d getHiddenStateInsets() {
        return this.mImpl.e();
    }

    public d getShownStateInsets() {
        return this.mImpl.f();
    }

    public int getTypes() {
        return this.mImpl.g();
    }

    public boolean isCancelled() {
        return this.mImpl.h();
    }

    public boolean isFinished() {
        return this.mImpl.i();
    }

    public boolean isReady() {
        return (isFinished() || isCancelled()) ? false : true;
    }

    public void setInsetsAndAlpha(d dVar, float f2, float f3) {
        this.mImpl.j(dVar, f2, f3);
    }

    WindowInsetsAnimationControllerCompat(WindowInsetsAnimationController windowInsetsAnimationController) {
        this.mImpl = new a(windowInsetsAnimationController);
    }
}
