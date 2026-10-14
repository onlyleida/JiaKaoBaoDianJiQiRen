package org.libpag;

import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.os.Build;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public class PAGImageView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f16263a = new Object();
    protected static long b = 1073741824;
    private static ThreadPoolExecutor c;
    private final ValueAnimator.AnimatorUpdateListener A;
    private ArrayList<PAGImageViewListener> B;
    private final AnimatorListenerAdapter C;
    private volatile int D;
    private volatile int E;
    private volatile int F;
    private volatile int G;
    private float H;
    private boolean I;
    private volatile boolean J;
    private Runnable K;
    private Runnable L;
    private boolean M;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ValueAnimator f16264d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f16265e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile boolean f16266f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile Boolean f16267g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile boolean f16268h;
    private final Object i;
    private int j;
    private float k;
    private PAGComposition l;
    private String m;
    private int n;
    private volatile Matrix o;
    private ArrayList<WeakReference<Future>> p;
    private float q;
    private AtomicBoolean r;
    protected volatile CacheManager.a s;
    protected volatile a t;
    protected volatile k.b u;
    protected volatile CacheManager v;
    private volatile Bitmap w;
    private ConcurrentHashMap<Integer, Bitmap> x;
    private Matrix y;
    private volatile long z;

    public interface PAGImageViewListener {
        void onAnimationCancel(PAGImageView pAGImageView);

        void onAnimationEnd(PAGImageView pAGImageView);

        void onAnimationRepeat(PAGImageView pAGImageView);

        void onAnimationStart(PAGImageView pAGImageView);

        void onAnimationUpdate(PAGImageView pAGImageView);
    }

    protected static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f16269a;
        String b;
        boolean c = false;

        protected a() {
        }
    }

    public PAGImageView(Context context) {
        super(context);
        this.f16265e = false;
        this.f16266f = false;
        this.f16267g = null;
        this.f16268h = true;
        this.i = new Object();
        this.k = 30.0f;
        this.n = 2;
        this.p = new ArrayList<>();
        this.q = 1.0f;
        this.r = new AtomicBoolean(false);
        this.u = new k.b();
        this.x = new ConcurrentHashMap<>();
        this.A = new f(this);
        this.B = new ArrayList<>();
        this.C = new g(this);
        this.H = 1.0f;
        this.I = false;
        this.J = false;
        this.K = new h(this);
        this.L = new i(this);
        this.M = true;
        k();
    }

    public static long MaxDiskCache() {
        return b;
    }

    public static void SetMaxDiskCache(long j) {
        b = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g() {
        return this.x.size() == this.u.f16294d;
    }

    private void h() {
        if (l()) {
            this.z = this.f16264d.getCurrentPlayTime();
            this.f16264d.cancel();
        } else {
            removeCallbacks(this.K);
            post(this.L);
        }
    }

    private void i() {
        if (!this.I) {
            Log.e("PAGImageView", "doPlay: View is not attached to window");
            return;
        }
        if (this.H == BitmapDescriptorFactory.HUE_RED) {
            n();
            Log.e("PAGImageView", "doPlay: The scale of animator duration is turned off");
        } else {
            k.b(3, this);
            Log.i("PAGImageView", "doPlay");
            this.f16264d.setCurrentPlayTime(this.z);
            t();
        }
    }

    private boolean j() {
        return this.D > 0 && this.E > 0;
    }

    private void k() {
        f();
        this.v = CacheManager.a(getContext());
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.f16264d = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setRepeatCount(0);
        this.f16264d.setInterpolator(new LinearInterpolator());
        this.f16264d.addUpdateListener(this.A);
        this.H = a(getContext());
    }

    private boolean l() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    private void m() {
        ArrayList arrayList;
        if (this.B.isEmpty() || !this.f16264d.isRunning()) {
            return;
        }
        synchronized (this) {
            arrayList = new ArrayList(this.B);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((PAGImageViewListener) it.next()).onAnimationUpdate(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        ArrayList arrayList;
        this.f16266f = false;
        synchronized (this) {
            arrayList = new ArrayList(this.B);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((PAGImageViewListener) it.next()).onAnimationEnd(this);
        }
    }

    private void o() {
        if (this.f16267g == null) {
            this.f16267g = Boolean.valueOf(this.f16264d.isRunning());
        }
        if (this.f16264d.isRunning()) {
            h();
        }
    }

    private void p() {
        int i = this.n;
        if (i == 0) {
            return;
        }
        this.o = k.a(i, this.u.f16293a, this.u.b, this.D, this.E);
    }

    private void q() {
        try {
            Iterator<WeakReference<Future>> it = this.p.iterator();
            while (it.hasNext()) {
                WeakReference<Future> next = it.next();
                if (next.get() != null) {
                    next.get().cancel(false);
                }
                it.remove();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void r() {
        if (this.s == null || this.t == null || TextUtils.isEmpty(this.t.f16269a)) {
            return;
        }
        if (g()) {
            this.s.g();
            if (this.u.f16296f != null) {
                this.u.b();
            }
            this.v.b(this.t.b);
            this.s.h();
            this.s = null;
            return;
        }
        if (this.u.f16296f == null || !this.s.b()) {
            return;
        }
        this.s.g();
        this.u.b();
        this.s.f();
        this.s.h();
    }

    private void s() {
        if (this.D == 0 || this.E == 0 || !this.f16266f || this.f16264d.isRunning() || !(this.f16267g == null || this.f16267g.booleanValue())) {
            this.f16267g = null;
        } else {
            this.f16267g = null;
            i();
        }
    }

    private void t() {
        if (this.f16264d.getDuration() <= 0) {
            return;
        }
        if (l()) {
            this.f16264d.start();
        } else {
            removeCallbacks(this.L);
            post(this.K);
        }
    }

    public void addListener(PAGImageViewListener pAGImageViewListener) {
        synchronized (this) {
            this.B.add(pAGImageViewListener);
        }
    }

    public boolean cacheAllFramesInMemory() {
        return this.f16265e;
    }

    public int currentFrame() {
        return this.j;
    }

    public Bitmap currentImage() {
        return this.w;
    }

    protected void finalize() throws Throwable {
        super.finalize();
    }

    public boolean flush() {
        if (!this.u.a()) {
            return false;
        }
        synchronized (this.i) {
            if (this.f16268h) {
                this.f16268h = false;
                this.f16264d.setCurrentPlayTime((long) (((double) (this.u.f16295e * 0.001f)) * k.b(this.j, this.u.f16294d)));
            }
            int iA = k.a(this.f16264d.getAnimatedFraction(), this.u.f16294d);
            if (iA == this.j && !this.J) {
                return false;
            }
            this.J = false;
            this.j = iA;
            if (!a(iA)) {
                return false;
            }
            postInvalidate();
            m();
            return true;
        }
    }

    public PAGComposition getComposition() {
        return this.l;
    }

    public String getPath() {
        return this.m;
    }

    public boolean isPlaying() {
        ValueAnimator valueAnimator = this.f16264d;
        if (valueAnimator != null) {
            return valueAnimator.isRunning();
        }
        return false;
    }

    public Matrix matrix() {
        return this.o;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        this.I = true;
        super.onAttachedToWindow();
        this.J = true;
        this.f16264d.addUpdateListener(this.A);
        this.f16264d.addListener(this.C);
        synchronized (f16263a) {
            k.b();
        }
        s();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        this.I = false;
        super.onDetachedFromWindow();
        k.a(1, this);
        o();
        this.f16264d.removeUpdateListener(this.A);
        this.f16264d.removeListener(this.C);
        q();
        k.b(2, this);
        synchronized (f16263a) {
            k.a();
        }
        this.w = null;
        this.x.clear();
        this.r.set(false);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.r.get() || this.w == null || this.w.isRecycled()) {
            return;
        }
        super.onDraw(canvas);
        canvas.save();
        Matrix matrix = this.y;
        if (matrix != null) {
            canvas.concat(matrix);
        }
        if (this.o != null) {
            canvas.concat(this.o);
        }
        try {
            canvas.drawBitmap(this.w, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        canvas.restore();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.F = i;
        this.G = i2;
        float f2 = this.q;
        this.D = (int) (i * f2);
        this.E = (int) (f2 * i2);
        k.b(3, this);
        s();
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
        if (this.M == z) {
            return;
        }
        this.M = z;
        Log.i("PAGImageView", "onVisibilityAggregated isVisible=" + z);
        if (z) {
            s();
        } else {
            o();
        }
    }

    public void pause() {
        this.f16266f = false;
        this.f16267g = null;
        h();
    }

    public void play() {
        this.f16266f = true;
        this.f16267g = null;
        if (this.f16264d.getAnimatedFraction() == 1.0d) {
            setCurrentFrame(0);
        }
        i();
    }

    public void removeListener(PAGImageViewListener pAGImageViewListener) {
        synchronized (this) {
            this.B.remove(pAGImageViewListener);
        }
    }

    public float renderScale() {
        return this.q;
    }

    public int scaleMode() {
        return this.n;
    }

    public void setCacheAllFramesInMemory(boolean z) {
        this.f16265e = z;
    }

    public void setComposition(PAGComposition pAGComposition) {
        setComposition(pAGComposition, 30.0f);
    }

    public void setCurrentFrame(int i) {
        if (!this.u.a() || i < 0 || i >= this.u.f16294d) {
            return;
        }
        if (this.s != null || g()) {
            this.j = i;
            this.z = (long) (Math.max(BitmapDescriptorFactory.HUE_RED, Math.min((float) (((double) (this.u.f16295e * 0.001f)) * k.b(this.j, this.u.f16294d)), 1.0f)) * this.f16264d.getDuration());
            synchronized (this.i) {
                this.f16264d.setCurrentPlayTime(this.z);
                this.f16268h = true;
            }
            k.a(this);
        }
    }

    public void setMatrix(Matrix matrix) {
        this.o = matrix;
        this.n = 0;
        if (j()) {
            postInvalidate();
        }
    }

    public boolean setPath(String str, float f2) {
        if (str == null) {
            return false;
        }
        if (str.equals(this.m) && this.k == f2 && this.u.a()) {
            return true;
        }
        this.r.set(true);
        this.m = str;
        this.k = f2;
        this.f16268h = true;
        this.f16264d.setCurrentPlayTime(0L);
        q();
        this.o = null;
        this.w = null;
        k.b(4, this);
        return true;
    }

    public void setRenderScale(float f2) {
        if (this.q == f2) {
            return;
        }
        if (f2 < BitmapDescriptorFactory.HUE_RED || f2 > 1.0f) {
            f2 = 1.0f;
        }
        this.q = f2;
        this.D = (int) (this.F * f2);
        this.E = (int) (this.G * f2);
        p();
        if (f2 < 1.0f) {
            Matrix matrix = new Matrix();
            this.y = matrix;
            float f3 = 1.0f / f2;
            matrix.setScale(f3, f3);
        }
    }

    public void setRepeatCount(int i) {
        if (i < 0) {
            i = 0;
        }
        this.f16264d.setRepeatCount(i - 1);
    }

    public void setScaleMode(int i) {
        if (i == this.n) {
            return;
        }
        this.n = i;
        if (!j()) {
            this.o = null;
        } else {
            p();
            postInvalidate();
        }
    }

    private static void f() {
        if (c == null) {
            synchronized (PAGImageView.class) {
                if (c == null) {
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 2L, TimeUnit.SECONDS, new LinkedBlockingQueue());
                    c = threadPoolExecutor;
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                }
            }
        }
    }

    protected void b() {
        if (!this.u.a() && this.u.a(getContext(), this.l, this.m, this.D, this.E, this.k)) {
            this.f16264d.setDuration(this.u.f16295e / 1000);
            if (!this.u.a()) {
                return;
            }
            this.t = a();
            if (this.s != null || this.t == null) {
                return;
            } else {
                this.s = this.v.a(this.t.b, this.u.f16293a, this.u.b, this.u.f16294d);
            }
        }
        p();
        this.r.set(false);
    }

    protected void c() {
        if (this.u != null) {
            this.u.c();
        }
        d();
        this.t = null;
        b();
    }

    protected void d() {
        if (this.s != null) {
            this.s.g();
            if (this.t.c) {
                try {
                    new File(this.v.a(this.t.b)).delete();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            this.s.h();
            this.v.b(this.t.b);
            this.s = null;
        }
    }

    protected boolean e() {
        if (this.I) {
            return flush();
        }
        return true;
    }

    public void setComposition(PAGComposition pAGComposition, float f2) {
        if (pAGComposition == this.l && this.k == f2 && this.u.a()) {
            return;
        }
        this.r.set(true);
        this.l = pAGComposition;
        this.k = f2;
        this.f16268h = true;
        this.f16264d.setCurrentPlayTime(0L);
        q();
        this.o = null;
        this.w = null;
        k.b(4, this);
    }

    private float a(Context context) {
        if (Build.VERSION.SDK_INT >= 17) {
            return Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f);
        }
        return Settings.System.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f);
    }

    protected a a() {
        String str;
        if (!this.u.a()) {
            return null;
        }
        if (this.l == null && this.m == null) {
            return null;
        }
        if (this.m != null && this.t != null) {
            return this.t;
        }
        String str2 = "_" + ((this.u.f16293a << 16) | this.u.b) + "_" + this.u.c;
        boolean z = false;
        if (this.m != null) {
            str = this.m + str2;
        } else {
            PAGComposition pAGComposition = this.l;
            if ((pAGComposition instanceof PAGFile) && CacheManager.ContentVersion(pAGComposition) == 0) {
                str = ((PAGFile) this.l).path() + str2;
            } else {
                str = this.l.toString() + "_" + CacheManager.ContentVersion(this.l) + str2;
                z = true;
            }
        }
        if (this.t != null && str.equals(this.t.f16269a)) {
            return this.t;
        }
        a aVar = new a();
        aVar.f16269a = str;
        aVar.b = k.a(str);
        aVar.c = z;
        return aVar;
    }

    protected boolean b(k.a aVar) {
        if (aVar != null) {
            try {
                if (this.s != null) {
                    return this.s.a(aVar.c, aVar.f16292d);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return false;
    }

    public boolean setPath(String str) {
        return setPath(str, 30.0f);
    }

    private boolean a(int i) {
        if (this.u.a() && !this.r.get()) {
            a aVarA = a();
            if (this.t != null && this.t.f16269a != null && !this.t.f16269a.equals(aVarA.f16269a)) {
                d();
                this.s = this.v.a(aVarA.b, this.u.f16293a, this.u.b, this.u.f16294d);
                this.x.clear();
            }
            this.t = aVarA;
            if (this.r.get()) {
                return false;
            }
            r();
            if (this.t != null && this.t.b != null) {
                Bitmap bitmap = this.x.get(Integer.valueOf(i));
                if (bitmap != null) {
                    this.w = bitmap;
                    return true;
                }
                if (this.s != null) {
                    try {
                        if (this.s.a(i)) {
                            if (this.w == null || this.f16265e) {
                                this.w = k.a(this.u.f16293a, this.u.b);
                            }
                            a(k.a.a(this, this.t.b, i, this.w));
                            return true;
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
            if (this.r.get()) {
                return false;
            }
            if (this.w == null || this.f16265e) {
                this.w = k.a(this.u.f16293a, this.u.b);
            }
            if (this.u.f16296f != null && this.u.f16296f.copyFrameTo(this.w, i)) {
                if (this.f16265e) {
                    this.x.put(Integer.valueOf(i), this.w);
                }
                if (this.s != null && this.s.b(i, this.w)) {
                    this.p.add(new WeakReference<>(c.submit(new j(this))));
                }
                return true;
            }
        }
        return false;
    }

    public PAGImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16265e = false;
        this.f16266f = false;
        this.f16267g = null;
        this.f16268h = true;
        this.i = new Object();
        this.k = 30.0f;
        this.n = 2;
        this.p = new ArrayList<>();
        this.q = 1.0f;
        this.r = new AtomicBoolean(false);
        this.u = new k.b();
        this.x = new ConcurrentHashMap<>();
        this.A = new f(this);
        this.B = new ArrayList<>();
        this.C = new g(this);
        this.H = 1.0f;
        this.I = false;
        this.J = false;
        this.K = new h(this);
        this.L = new i(this);
        this.M = true;
        k();
    }

    public PAGImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16265e = false;
        this.f16266f = false;
        this.f16267g = null;
        this.f16268h = true;
        this.i = new Object();
        this.k = 30.0f;
        this.n = 2;
        this.p = new ArrayList<>();
        this.q = 1.0f;
        this.r = new AtomicBoolean(false);
        this.u = new k.b();
        this.x = new ConcurrentHashMap<>();
        this.A = new f(this);
        this.B = new ArrayList<>();
        this.C = new g(this);
        this.H = 1.0f;
        this.I = false;
        this.J = false;
        this.K = new h(this);
        this.L = new i(this);
        this.M = true;
        k();
    }

    protected static boolean a(k.a aVar) {
        if (aVar.f16291a == null || TextUtils.isEmpty(aVar.b)) {
            return false;
        }
        if (!aVar.f16291a.b(aVar)) {
            Log.e("PAGImageView", "inflateBitmapFromDiskCache failed:" + aVar.f16291a.m);
            return false;
        }
        PAGImageView pAGImageView = aVar.f16291a;
        if (!pAGImageView.f16265e) {
            return true;
        }
        pAGImageView.x.put(Integer.valueOf(aVar.c), aVar.f16292d);
        return true;
    }
}
