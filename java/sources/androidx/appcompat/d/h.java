package androidx.appcompat.d;

import android.view.View;
import android.view.animation.Interpolator;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class h {
    private Interpolator c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ViewPropertyAnimatorListener f205d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f206e;
    private long b = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ViewPropertyAnimatorListenerAdapter f207f = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ArrayList<ViewPropertyAnimatorCompat> f204a = new ArrayList<>();

    class a extends ViewPropertyAnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f208a = false;
        private int b = 0;

        a() {
        }

        void a() {
            this.b = 0;
            this.f208a = false;
            h.this.b();
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            int i = this.b + 1;
            this.b = i;
            if (i == h.this.f204a.size()) {
                ViewPropertyAnimatorListener viewPropertyAnimatorListener = h.this.f205d;
                if (viewPropertyAnimatorListener != null) {
                    viewPropertyAnimatorListener.onAnimationEnd(null);
                }
                a();
            }
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
            if (this.f208a) {
                return;
            }
            this.f208a = true;
            ViewPropertyAnimatorListener viewPropertyAnimatorListener = h.this.f205d;
            if (viewPropertyAnimatorListener != null) {
                viewPropertyAnimatorListener.onAnimationStart(null);
            }
        }
    }

    public void a() {
        if (this.f206e) {
            Iterator<ViewPropertyAnimatorCompat> it = this.f204a.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
            this.f206e = false;
        }
    }

    void b() {
        this.f206e = false;
    }

    public h c(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat) {
        if (!this.f206e) {
            this.f204a.add(viewPropertyAnimatorCompat);
        }
        return this;
    }

    public h d(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2) {
        this.f204a.add(viewPropertyAnimatorCompat);
        viewPropertyAnimatorCompat2.setStartDelay(viewPropertyAnimatorCompat.getDuration());
        this.f204a.add(viewPropertyAnimatorCompat2);
        return this;
    }

    public h e(long j) {
        if (!this.f206e) {
            this.b = j;
        }
        return this;
    }

    public h f(Interpolator interpolator) {
        if (!this.f206e) {
            this.c = interpolator;
        }
        return this;
    }

    public h g(ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        if (!this.f206e) {
            this.f205d = viewPropertyAnimatorListener;
        }
        return this;
    }

    public void h() {
        if (this.f206e) {
            return;
        }
        for (ViewPropertyAnimatorCompat viewPropertyAnimatorCompat : this.f204a) {
            long j = this.b;
            if (j >= 0) {
                viewPropertyAnimatorCompat.setDuration(j);
            }
            Interpolator interpolator = this.c;
            if (interpolator != null) {
                viewPropertyAnimatorCompat.setInterpolator(interpolator);
            }
            if (this.f205d != null) {
                viewPropertyAnimatorCompat.setListener(this.f207f);
            }
            viewPropertyAnimatorCompat.start();
        }
        this.f206e = true;
    }
}
