package androidx.core.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.core.R;
import androidx.core.graphics.d;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import org.apache.commons.math3.geometry.VectorFormat;

/* JADX INFO: loaded from: classes.dex */
public final class WindowInsetsAnimationCompat {
    private static final boolean DEBUG = false;
    private static final String TAG = "WindowInsetsAnimCompat";
    private c mImpl;

    public static abstract class Callback {
        public static final int DISPATCH_MODE_CONTINUE_ON_SUBTREE = 1;
        public static final int DISPATCH_MODE_STOP = 0;
        WindowInsets mDispachedInsets;
        private final int mDispatchMode;

        @Retention(RetentionPolicy.SOURCE)
        public @interface DispatchMode {
        }

        public Callback(int i) {
            this.mDispatchMode = i;
        }

        public final int getDispatchMode() {
            return this.mDispatchMode;
        }

        public void onEnd(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        }

        public void onPrepare(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        }

        public abstract WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List<WindowInsetsAnimationCompat> list);

        public BoundsCompat onStart(WindowInsetsAnimationCompat windowInsetsAnimationCompat, BoundsCompat boundsCompat) {
            return boundsCompat;
        }
    }

    private static class a extends c {

        /* JADX INFO: renamed from: androidx.core.view.WindowInsetsAnimationCompat$a$a, reason: collision with other inner class name */
        private static class ViewOnApplyWindowInsetsListenerC0033a implements View.OnApplyWindowInsetsListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final Callback f1173a;
            private WindowInsetsCompat b;

            /* JADX INFO: renamed from: androidx.core.view.WindowInsetsAnimationCompat$a$a$a, reason: collision with other inner class name */
            class C0034a implements ValueAnimator.AnimatorUpdateListener {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ WindowInsetsAnimationCompat f1174a;
                final /* synthetic */ WindowInsetsCompat b;
                final /* synthetic */ WindowInsetsCompat c;

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                final /* synthetic */ int f1175d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                final /* synthetic */ View f1176e;

                C0034a(ViewOnApplyWindowInsetsListenerC0033a viewOnApplyWindowInsetsListenerC0033a, WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsCompat windowInsetsCompat, WindowInsetsCompat windowInsetsCompat2, int i, View view) {
                    this.f1174a = windowInsetsAnimationCompat;
                    this.b = windowInsetsCompat;
                    this.c = windowInsetsCompat2;
                    this.f1175d = i;
                    this.f1176e = view;
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f1174a.setFraction(valueAnimator.getAnimatedFraction());
                    a.n(this.f1176e, a.r(this.b, this.c, this.f1174a.getInterpolatedFraction(), this.f1175d), Collections.singletonList(this.f1174a));
                }
            }

            /* JADX INFO: renamed from: androidx.core.view.WindowInsetsAnimationCompat$a$a$b */
            class b extends AnimatorListenerAdapter {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ WindowInsetsAnimationCompat f1177a;
                final /* synthetic */ View b;

                b(ViewOnApplyWindowInsetsListenerC0033a viewOnApplyWindowInsetsListenerC0033a, WindowInsetsAnimationCompat windowInsetsAnimationCompat, View view) {
                    this.f1177a = windowInsetsAnimationCompat;
                    this.b = view;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    this.f1177a.setFraction(1.0f);
                    a.l(this.b, this.f1177a);
                }
            }

            /* JADX INFO: renamed from: androidx.core.view.WindowInsetsAnimationCompat$a$a$c */
            class c implements Runnable {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ View f1178a;
                final /* synthetic */ WindowInsetsAnimationCompat b;
                final /* synthetic */ BoundsCompat c;

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                final /* synthetic */ ValueAnimator f1179d;

                c(ViewOnApplyWindowInsetsListenerC0033a viewOnApplyWindowInsetsListenerC0033a, View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, BoundsCompat boundsCompat, ValueAnimator valueAnimator) {
                    this.f1178a = view;
                    this.b = windowInsetsAnimationCompat;
                    this.c = boundsCompat;
                    this.f1179d = valueAnimator;
                }

                @Override // java.lang.Runnable
                public void run() {
                    a.o(this.f1178a, this.b, this.c);
                    this.f1179d.start();
                }
            }

            ViewOnApplyWindowInsetsListenerC0033a(View view, Callback callback) {
                this.f1173a = callback;
                WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(view);
                this.b = rootWindowInsets != null ? new WindowInsetsCompat.Builder(rootWindowInsets).build() : null;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                if (!view.isLaidOut()) {
                    this.b = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, view);
                    return a.p(view, windowInsets);
                }
                WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, view);
                if (this.b == null) {
                    this.b = ViewCompat.getRootWindowInsets(view);
                }
                if (this.b == null) {
                    this.b = windowInsetsCompat;
                    return a.p(view, windowInsets);
                }
                Callback callbackQ = a.q(view);
                if (callbackQ != null && Objects.equals(callbackQ.mDispachedInsets, windowInsets)) {
                    return a.p(view, windowInsets);
                }
                int i = a.i(windowInsetsCompat, this.b);
                if (i == 0) {
                    return a.p(view, windowInsets);
                }
                WindowInsetsCompat windowInsetsCompat2 = this.b;
                WindowInsetsAnimationCompat windowInsetsAnimationCompat = new WindowInsetsAnimationCompat(i, new DecelerateInterpolator(), 160L);
                windowInsetsAnimationCompat.setFraction(BitmapDescriptorFactory.HUE_RED);
                ValueAnimator duration = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f).setDuration(windowInsetsAnimationCompat.getDurationMillis());
                BoundsCompat boundsCompatJ = a.j(windowInsetsCompat, windowInsetsCompat2, i);
                a.m(view, windowInsetsAnimationCompat, windowInsets, false);
                duration.addUpdateListener(new C0034a(this, windowInsetsAnimationCompat, windowInsetsCompat, windowInsetsCompat2, i, view));
                duration.addListener(new b(this, windowInsetsAnimationCompat, view));
                OneShotPreDrawListener.add(view, new c(this, view, windowInsetsAnimationCompat, boundsCompatJ, duration));
                this.b = windowInsetsCompat;
                return a.p(view, windowInsets);
            }
        }

        a(int i, Interpolator interpolator, long j) {
            super(i, interpolator, j);
        }

        @SuppressLint({"WrongConstant"})
        static int i(WindowInsetsCompat windowInsetsCompat, WindowInsetsCompat windowInsetsCompat2) {
            int i = 0;
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if (!windowInsetsCompat.getInsets(i2).equals(windowInsetsCompat2.getInsets(i2))) {
                    i |= i2;
                }
            }
            return i;
        }

        static BoundsCompat j(WindowInsetsCompat windowInsetsCompat, WindowInsetsCompat windowInsetsCompat2, int i) {
            d insets = windowInsetsCompat.getInsets(i);
            d insets2 = windowInsetsCompat2.getInsets(i);
            return new BoundsCompat(d.b(Math.min(insets.f1113a, insets2.f1113a), Math.min(insets.b, insets2.b), Math.min(insets.c, insets2.c), Math.min(insets.f1114d, insets2.f1114d)), d.b(Math.max(insets.f1113a, insets2.f1113a), Math.max(insets.b, insets2.b), Math.max(insets.c, insets2.c), Math.max(insets.f1114d, insets2.f1114d)));
        }

        private static View.OnApplyWindowInsetsListener k(View view, Callback callback) {
            return new ViewOnApplyWindowInsetsListenerC0033a(view, callback);
        }

        static void l(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
            Callback callbackQ = q(view);
            if (callbackQ != null) {
                callbackQ.onEnd(windowInsetsAnimationCompat);
                if (callbackQ.getDispatchMode() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    l(viewGroup.getChildAt(i), windowInsetsAnimationCompat);
                }
            }
        }

        static void m(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsets windowInsets, boolean z) {
            Callback callbackQ = q(view);
            if (callbackQ != null) {
                callbackQ.mDispachedInsets = windowInsets;
                if (!z) {
                    callbackQ.onPrepare(windowInsetsAnimationCompat);
                    z = callbackQ.getDispatchMode() == 0;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    m(viewGroup.getChildAt(i), windowInsetsAnimationCompat, windowInsets, z);
                }
            }
        }

        static void n(View view, WindowInsetsCompat windowInsetsCompat, List<WindowInsetsAnimationCompat> list) {
            Callback callbackQ = q(view);
            if (callbackQ != null) {
                windowInsetsCompat = callbackQ.onProgress(windowInsetsCompat, list);
                if (callbackQ.getDispatchMode() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    n(viewGroup.getChildAt(i), windowInsetsCompat, list);
                }
            }
        }

        static void o(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, BoundsCompat boundsCompat) {
            Callback callbackQ = q(view);
            if (callbackQ != null) {
                callbackQ.onStart(windowInsetsAnimationCompat, boundsCompat);
                if (callbackQ.getDispatchMode() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    o(viewGroup.getChildAt(i), windowInsetsAnimationCompat, boundsCompat);
                }
            }
        }

        static WindowInsets p(View view, WindowInsets windowInsets) {
            return view.getTag(R.id.tag_on_apply_window_listener) != null ? windowInsets : view.onApplyWindowInsets(windowInsets);
        }

        static Callback q(View view) {
            Object tag = view.getTag(R.id.tag_window_insets_animation_callback);
            if (tag instanceof ViewOnApplyWindowInsetsListenerC0033a) {
                return ((ViewOnApplyWindowInsetsListenerC0033a) tag).f1173a;
            }
            return null;
        }

        @SuppressLint({"WrongConstant"})
        static WindowInsetsCompat r(WindowInsetsCompat windowInsetsCompat, WindowInsetsCompat windowInsetsCompat2, float f2, int i) {
            WindowInsetsCompat.Builder builder = new WindowInsetsCompat.Builder(windowInsetsCompat);
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) == 0) {
                    builder.setInsets(i2, windowInsetsCompat.getInsets(i2));
                } else {
                    d insets = windowInsetsCompat.getInsets(i2);
                    d insets2 = windowInsetsCompat2.getInsets(i2);
                    float f3 = 1.0f - f2;
                    builder.setInsets(i2, WindowInsetsCompat.insetInsets(insets, (int) (((double) ((insets.f1113a - insets2.f1113a) * f3)) + 0.5d), (int) (((double) ((insets.b - insets2.b) * f3)) + 0.5d), (int) (((double) ((insets.c - insets2.c) * f3)) + 0.5d), (int) (((double) ((insets.f1114d - insets2.f1114d) * f3)) + 0.5d)));
                }
            }
            return builder.build();
        }

        static void s(View view, Callback callback) {
            Object tag = view.getTag(R.id.tag_on_apply_window_listener);
            if (callback == null) {
                view.setTag(R.id.tag_window_insets_animation_callback, null);
                if (tag == null) {
                    view.setOnApplyWindowInsetsListener(null);
                    return;
                }
                return;
            }
            View.OnApplyWindowInsetsListener onApplyWindowInsetsListenerK = k(view, callback);
            view.setTag(R.id.tag_window_insets_animation_callback, onApplyWindowInsetsListenerK);
            if (tag == null) {
                view.setOnApplyWindowInsetsListener(onApplyWindowInsetsListenerK);
            }
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f1183a;
        private float b;
        private final Interpolator c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final long f1184d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private float f1185e;

        c(int i, Interpolator interpolator, long j) {
            this.f1183a = i;
            this.c = interpolator;
            this.f1184d = j;
        }

        public float a() {
            return this.f1185e;
        }

        public long b() {
            return this.f1184d;
        }

        public float c() {
            return this.b;
        }

        public float d() {
            Interpolator interpolator = this.c;
            return interpolator != null ? interpolator.getInterpolation(this.b) : this.b;
        }

        public Interpolator e() {
            return this.c;
        }

        public int f() {
            return this.f1183a;
        }

        public void g(float f2) {
            this.f1185e = f2;
        }

        public void h(float f2) {
            this.b = f2;
        }
    }

    public WindowInsetsAnimationCompat(int i, Interpolator interpolator, long j) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            this.mImpl = new b(i, interpolator, j);
        } else if (i2 >= 21) {
            this.mImpl = new a(i, interpolator, j);
        } else {
            this.mImpl = new c(0, interpolator, j);
        }
    }

    static void setCallback(View view, Callback callback) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            b.l(view, callback);
        } else if (i >= 21) {
            a.s(view, callback);
        }
    }

    static WindowInsetsAnimationCompat toWindowInsetsAnimationCompat(WindowInsetsAnimation windowInsetsAnimation) {
        return new WindowInsetsAnimationCompat(windowInsetsAnimation);
    }

    public float getAlpha() {
        return this.mImpl.a();
    }

    public long getDurationMillis() {
        return this.mImpl.b();
    }

    public float getFraction() {
        return this.mImpl.c();
    }

    public float getInterpolatedFraction() {
        return this.mImpl.d();
    }

    public Interpolator getInterpolator() {
        return this.mImpl.e();
    }

    public int getTypeMask() {
        return this.mImpl.f();
    }

    public void setAlpha(float f2) {
        this.mImpl.g(f2);
    }

    public void setFraction(float f2) {
        this.mImpl.h(f2);
    }

    private static class b extends c {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final WindowInsetsAnimation f1180f;

        private static class a extends WindowInsetsAnimation.Callback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final Callback f1181a;
            private List<WindowInsetsAnimationCompat> b;
            private ArrayList<WindowInsetsAnimationCompat> c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final HashMap<WindowInsetsAnimation, WindowInsetsAnimationCompat> f1182d;

            a(Callback callback) {
                super(callback.getDispatchMode());
                this.f1182d = new HashMap<>();
                this.f1181a = callback;
            }

            private WindowInsetsAnimationCompat a(WindowInsetsAnimation windowInsetsAnimation) {
                WindowInsetsAnimationCompat windowInsetsAnimationCompat = this.f1182d.get(windowInsetsAnimation);
                if (windowInsetsAnimationCompat != null) {
                    return windowInsetsAnimationCompat;
                }
                WindowInsetsAnimationCompat windowInsetsAnimationCompat2 = WindowInsetsAnimationCompat.toWindowInsetsAnimationCompat(windowInsetsAnimation);
                this.f1182d.put(windowInsetsAnimation, windowInsetsAnimationCompat2);
                return windowInsetsAnimationCompat2;
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
                this.f1181a.onEnd(a(windowInsetsAnimation));
                this.f1182d.remove(windowInsetsAnimation);
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public void onPrepare(WindowInsetsAnimation windowInsetsAnimation) {
                this.f1181a.onPrepare(a(windowInsetsAnimation));
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public WindowInsets onProgress(WindowInsets windowInsets, List<WindowInsetsAnimation> list) {
                ArrayList<WindowInsetsAnimationCompat> arrayList = this.c;
                if (arrayList == null) {
                    ArrayList<WindowInsetsAnimationCompat> arrayList2 = new ArrayList<>(list.size());
                    this.c = arrayList2;
                    this.b = Collections.unmodifiableList(arrayList2);
                } else {
                    arrayList.clear();
                }
                for (int size = list.size() - 1; size >= 0; size--) {
                    WindowInsetsAnimation windowInsetsAnimation = list.get(size);
                    WindowInsetsAnimationCompat windowInsetsAnimationCompatA = a(windowInsetsAnimation);
                    windowInsetsAnimationCompatA.setFraction(windowInsetsAnimation.getFraction());
                    this.c.add(windowInsetsAnimationCompatA);
                }
                return this.f1181a.onProgress(WindowInsetsCompat.toWindowInsetsCompat(windowInsets), this.b).toWindowInsets();
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public WindowInsetsAnimation.Bounds onStart(WindowInsetsAnimation windowInsetsAnimation, WindowInsetsAnimation.Bounds bounds) {
                return this.f1181a.onStart(a(windowInsetsAnimation), BoundsCompat.toBoundsCompat(bounds)).toBounds();
            }
        }

        b(WindowInsetsAnimation windowInsetsAnimation) {
            super(0, null, 0L);
            this.f1180f = windowInsetsAnimation;
        }

        public static WindowInsetsAnimation.Bounds i(BoundsCompat boundsCompat) {
            return new WindowInsetsAnimation.Bounds(boundsCompat.getLowerBound().e(), boundsCompat.getUpperBound().e());
        }

        public static d j(WindowInsetsAnimation.Bounds bounds) {
            return d.d(bounds.getUpperBound());
        }

        public static d k(WindowInsetsAnimation.Bounds bounds) {
            return d.d(bounds.getLowerBound());
        }

        public static void l(View view, Callback callback) {
            view.setWindowInsetsAnimationCallback(callback != null ? new a(callback) : null);
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.c
        public long b() {
            return this.f1180f.getDurationMillis();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.c
        public float c() {
            return this.f1180f.getFraction();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.c
        public float d() {
            return this.f1180f.getInterpolatedFraction();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.c
        public Interpolator e() {
            return this.f1180f.getInterpolator();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.c
        public int f() {
            return this.f1180f.getTypeMask();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.c
        public void h(float f2) {
            this.f1180f.setFraction(f2);
        }

        b(int i, Interpolator interpolator, long j) {
            this(new WindowInsetsAnimation(i, interpolator, j));
        }
    }

    public static final class BoundsCompat {
        private final d mLowerBound;
        private final d mUpperBound;

        public BoundsCompat(d dVar, d dVar2) {
            this.mLowerBound = dVar;
            this.mUpperBound = dVar2;
        }

        public static BoundsCompat toBoundsCompat(WindowInsetsAnimation.Bounds bounds) {
            return new BoundsCompat(bounds);
        }

        public d getLowerBound() {
            return this.mLowerBound;
        }

        public d getUpperBound() {
            return this.mUpperBound;
        }

        public BoundsCompat inset(d dVar) {
            return new BoundsCompat(WindowInsetsCompat.insetInsets(this.mLowerBound, dVar.f1113a, dVar.b, dVar.c, dVar.f1114d), WindowInsetsCompat.insetInsets(this.mUpperBound, dVar.f1113a, dVar.b, dVar.c, dVar.f1114d));
        }

        public WindowInsetsAnimation.Bounds toBounds() {
            return b.i(this);
        }

        public String toString() {
            return "Bounds{lower=" + this.mLowerBound + " upper=" + this.mUpperBound + VectorFormat.DEFAULT_SUFFIX;
        }

        private BoundsCompat(WindowInsetsAnimation.Bounds bounds) {
            this.mLowerBound = b.k(bounds);
            this.mUpperBound = b.j(bounds);
        }
    }

    private WindowInsetsAnimationCompat(WindowInsetsAnimation windowInsetsAnimation) {
        this(0, null, 0L);
        if (Build.VERSION.SDK_INT >= 30) {
            this.mImpl = new b(windowInsetsAnimation);
        }
    }
}
