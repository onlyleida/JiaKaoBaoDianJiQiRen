package org.libpag;

import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.opengl.EGLContext;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.TextureView;
import android.view.animation.LinearInterpolator;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class PAGView extends TextureView implements TextureView.SurfaceTextureListener, org.extra.tools.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f16272a = new Object();
    private static a b;
    private static HandlerThread c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile int f16273d;
    private Runnable A;
    private boolean B;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextureView.SurfaceTextureListener f16274e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private PAGPlayer f16275f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private PAGSurface f16276g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private PAGFile f16277h;
    private ValueAnimator i;
    private volatile boolean j;
    private volatile Boolean k;
    private String l;
    private boolean m;
    private EGLContext n;
    private SparseArray<PAGText> o;
    private SparseArray<PAGImage> p;
    private boolean q;
    private volatile boolean r;
    private final Object s;
    private float t;
    private ArrayList<PAGViewListener> u;
    private ArrayList<PAGFlushListener> v;
    private volatile long w;
    private final ValueAnimator.AnimatorUpdateListener x;
    private final AnimatorListenerAdapter y;
    private Runnable z;

    public interface PAGFlushListener {
        void onFlush();
    }

    public interface PAGViewListener {
        void onAnimationCancel(PAGView pAGView);

        void onAnimationEnd(PAGView pAGView);

        void onAnimationRepeat(PAGView pAGView);

        void onAnimationStart(PAGView pAGView);

        void onAnimationUpdate(PAGView pAGView);
    }

    static class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f16278a;
        private List<PAGView> b;

        a(Looper looper) {
            super(looper);
            this.f16278a = new Object();
            this.b = new ArrayList();
        }

        void a(PAGView pAGView) {
            synchronized (this.f16278a) {
                if (this.b.isEmpty()) {
                    Message messageObtainMessage = obtainMessage();
                    messageObtainMessage.arg1 = 0;
                    sendMessage(messageObtainMessage);
                }
                this.b.add(pAGView);
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            ArrayList arrayList;
            super.handleMessage(message);
            int i = message.arg1;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        return;
                    }
                    new Handler(Looper.getMainLooper()).post(new s(this));
                    return;
                } else {
                    Object obj = message.obj;
                    if (obj instanceof SurfaceTexture) {
                        ((SurfaceTexture) obj).release();
                        return;
                    }
                    return;
                }
            }
            synchronized (this.f16278a) {
                arrayList = new ArrayList(this.b);
                this.b.clear();
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : arrayList) {
                if (obj2 instanceof PAGView) {
                    PAGView pAGView = (PAGView) obj2;
                    if (!arrayList2.contains(pAGView)) {
                        pAGView.n();
                        arrayList2.add(pAGView);
                    }
                }
            }
        }
    }

    public PAGView(Context context) {
        super(context);
        this.j = false;
        this.k = null;
        this.l = "";
        this.m = false;
        this.n = null;
        this.o = new SparseArray<>();
        this.p = new SparseArray<>();
        this.q = false;
        this.r = true;
        this.s = new Object();
        this.t = 1.0f;
        this.u = new ArrayList<>();
        this.v = new ArrayList<>();
        this.x = new m(this);
        this.y = new n(this);
        this.z = new q(this);
        this.A = new RunnableC0454r(this);
        this.B = true;
        k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void i(PAGView pAGView) {
        if (pAGView.q) {
            pAGView.n();
            return;
        }
        a aVar = b;
        if (aVar == null) {
            return;
        }
        aVar.a(pAGView);
    }

    private void j() {
        if (this.j && !this.i.isRunning() && (this.k == null || this.k.booleanValue())) {
            this.k = null;
            f();
        } else {
            this.k = null;
            m();
        }
    }

    private void k() {
        org.extra.tools.b.a().b(this);
        setOpaque(false);
        this.f16275f = new PAGPlayer();
        setSurfaceTextureListener(this);
        this.t = getAnimationScale(getContext());
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.i = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setRepeatCount(0);
        this.i.setInterpolator(new LinearInterpolator());
    }

    private void l() {
        if (this.i.getDuration() <= 0) {
            return;
        }
        if (g()) {
            this.i.start();
        } else {
            removeCallbacks(this.A);
            post(this.z);
        }
    }

    private void m() {
        post(new o(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        if (this.m) {
            flush();
            m();
            if (this.v.isEmpty()) {
                return;
            }
            post(new p(this));
        }
    }

    public void addListener(PAGViewListener pAGViewListener) {
        synchronized (this) {
            this.u.add(pAGViewListener);
        }
    }

    public void addPAGFlushListener(PAGFlushListener pAGFlushListener) {
        synchronized (this) {
            this.v.add(pAGFlushListener);
        }
    }

    public boolean cacheEnabled() {
        return this.f16275f.cacheEnabled();
    }

    public float cacheScale() {
        return this.f16275f.cacheScale();
    }

    public long currentFrame() {
        return this.f16275f.currentFrame();
    }

    public long duration() {
        return this.f16275f.duration();
    }

    public boolean flush() {
        boolean zFlush;
        ArrayList arrayList;
        if (this.f16276g == null) {
            return this.f16275f.flush();
        }
        synchronized (this.s) {
            if (this.r) {
                zFlush = this.f16275f.flush();
                long progress = (long) ((this.f16275f.getProgress() * this.f16275f.duration()) / 1000.0d);
                this.r = false;
                this.i.setCurrentPlayTime(progress);
            } else {
                this.f16275f.setProgress(this.i.getAnimatedFraction());
                zFlush = this.f16275f.flush();
            }
        }
        synchronized (this) {
            arrayList = new ArrayList(this.u);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((PAGViewListener) it.next()).onAnimationUpdate(this);
        }
        return zFlush;
    }

    public void freeCache() {
        PAGSurface pAGSurface = this.f16276g;
        if (pAGSurface != null) {
            pAGSurface.freeCache();
        }
    }

    public float getAnimationScale(Context context) {
        return Build.VERSION.SDK_INT >= 17 ? Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f) : Settings.System.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f);
    }

    public PAGComposition getComposition() {
        return this.f16275f.getComposition();
    }

    public PAGLayer[] getLayersUnderPoint(float f2, float f3) {
        return this.f16275f.getLayersUnderPoint(f2, f3);
    }

    public String getPath() {
        return this.l;
    }

    public double getProgress() {
        return this.f16275f.getProgress();
    }

    public boolean isPlaying() {
        ValueAnimator valueAnimator = this.i;
        if (valueAnimator != null) {
            return valueAnimator.isRunning();
        }
        return false;
    }

    public boolean isSync() {
        return this.q;
    }

    public Bitmap makeSnapshot() {
        PAGSurface pAGSurface = this.f16276g;
        if (pAGSurface != null) {
            return pAGSurface.makeSnapshot();
        }
        return null;
    }

    public Matrix matrix() {
        return this.f16275f.matrix();
    }

    public float maxFrameRate() {
        return this.f16275f.maxFrameRate();
    }

    @Override // android.view.TextureView, android.view.View
    protected void onAttachedToWindow() {
        this.m = true;
        super.onAttachedToWindow();
        this.i.addUpdateListener(this.x);
        this.i.addListener(this.y);
        synchronized (f16272a) {
            d();
        }
        j();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        this.m = false;
        super.onDetachedFromWindow();
        PAGSurface pAGSurface = this.f16276g;
        if (pAGSurface != null) {
            pAGSurface.release();
            this.f16276g = null;
        }
        i();
        if (Build.VERSION.SDK_INT < 26) {
            synchronized (f16272a) {
                b();
            }
        }
        this.i.removeUpdateListener(this.x);
        this.i.removeListener(this.y);
    }

    @Override // org.extra.tools.d
    public void onResume() {
        if (this.m && getVisibility() == 0) {
            setVisibility(4);
            setVisibility(0);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        PAGSurface pAGSurface = this.f16276g;
        if (pAGSurface != null) {
            pAGSurface.release();
            this.f16276g = null;
        }
        PAGSurface pAGSurfaceFromSurfaceTexture = PAGSurface.FromSurfaceTexture(surfaceTexture, this.n);
        this.f16276g = pAGSurfaceFromSurfaceTexture;
        this.f16275f.setSurface(pAGSurfaceFromSurfaceTexture);
        PAGSurface pAGSurface2 = this.f16276g;
        if (pAGSurface2 == null) {
            return;
        }
        pAGSurface2.clearAll();
        i(this);
        TextureView.SurfaceTextureListener surfaceTextureListener = this.f16274e;
        if (surfaceTextureListener != null) {
            surfaceTextureListener.onSurfaceTextureAvailable(surfaceTexture, i, i2);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.f16275f.setSurface(null);
        TextureView.SurfaceTextureListener surfaceTextureListener = this.f16274e;
        if (surfaceTextureListener != null) {
            surfaceTextureListener.onSurfaceTextureDestroyed(surfaceTexture);
        }
        PAGSurface pAGSurface = this.f16276g;
        if (pAGSurface != null) {
            pAGSurface.freeCache();
        }
        boolean z = true;
        if (b != null && surfaceTexture != null) {
            a(1, surfaceTexture);
            z = false;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            synchronized (f16272a) {
                b();
            }
        }
        return z;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        PAGSurface pAGSurface = this.f16276g;
        if (pAGSurface != null) {
            pAGSurface.updateSize();
            this.f16276g.clearAll();
            i(this);
        }
        TextureView.SurfaceTextureListener surfaceTextureListener = this.f16274e;
        if (surfaceTextureListener != null) {
            surfaceTextureListener.onSurfaceTextureSizeChanged(surfaceTexture, i, i2);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        TextureView.SurfaceTextureListener surfaceTextureListener = this.f16274e;
        if (surfaceTextureListener != null) {
            surfaceTextureListener.onSurfaceTextureUpdated(surfaceTexture);
        }
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
        if (this.B == z) {
            return;
        }
        this.B = z;
        Log.i("PAGView", "onVisibilityAggregated isVisible=" + z);
        if (z) {
            j();
        } else {
            i();
        }
    }

    public void play() {
        this.j = true;
        this.k = null;
        if (this.i.getAnimatedFraction() == 1.0d) {
            setProgress(0.0d);
        }
        f();
    }

    public void removeListener(PAGViewListener pAGViewListener) {
        synchronized (this) {
            this.u.remove(pAGViewListener);
        }
    }

    public void removePAGFlushListener(PAGFlushListener pAGFlushListener) {
        synchronized (this) {
            this.v.remove(pAGFlushListener);
        }
    }

    public int scaleMode() {
        return this.f16275f.scaleMode();
    }

    @Override // android.view.TextureView, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 24 || drawable == null) {
            return;
        }
        super.setBackgroundDrawable(drawable);
    }

    public void setCacheEnabled(boolean z) {
        this.f16275f.setCacheEnabled(z);
    }

    public void setCacheScale(float f2) {
        this.f16275f.setCacheScale(f2);
    }

    public void setComposition(PAGComposition pAGComposition) {
        this.l = null;
        this.f16277h = null;
        this.f16275f.setComposition(pAGComposition);
        this.r = true;
        this.i.setDuration(this.f16275f.duration() / 1000);
        this.i.setCurrentPlayTime(0L);
    }

    public void setMatrix(Matrix matrix) {
        this.f16275f.setMatrix(matrix);
    }

    public void setMaxFrameRate(float f2) {
        this.f16275f.setMaxFrameRate(f2);
    }

    public boolean setPath(String str) {
        PAGFile pAGFileLoad = (str == null || !str.startsWith("assets://")) ? PAGFile.Load(str) : PAGFile.Load(getContext().getAssets(), str.substring(9));
        setComposition(pAGFileLoad);
        this.l = str;
        return pAGFileLoad != null;
    }

    public void setProgress(double d2) {
        synchronized (this.s) {
            this.f16275f.setProgress(d2);
            this.r = true;
        }
        i(this);
    }

    public void setRepeatCount(int i) {
        if (i < 0) {
            i = 0;
        }
        this.i.setRepeatCount(i - 1);
    }

    public void setScaleMode(int i) {
        this.f16275f.setScaleMode(i);
    }

    @Override // android.view.TextureView
    public void setSurfaceTextureListener(TextureView.SurfaceTextureListener surfaceTextureListener) {
        if (surfaceTextureListener == this) {
            super.setSurfaceTextureListener(surfaceTextureListener);
        } else {
            this.f16274e = surfaceTextureListener;
        }
    }

    public void setSync(boolean z) {
        this.q = z;
    }

    public void setVideoEnabled(boolean z) {
        this.f16275f.setVideoEnabled(z);
    }

    public void stop() {
        Log.i("PAGView", "stop");
        this.j = false;
        this.k = null;
        e();
    }

    public boolean videoEnabled() {
        return this.f16275f.videoEnabled();
    }

    private static synchronized void b() {
        HandlerThread handlerThread;
        f16273d--;
        if (f16273d != 0) {
            return;
        }
        if (b != null && (handlerThread = c) != null) {
            if (handlerThread.isAlive()) {
                a(2, (Object) null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c() {
        HandlerThread handlerThread;
        if (f16273d == 0 && b != null && (handlerThread = c) != null && handlerThread.isAlive()) {
            b.removeCallbacksAndMessages(null);
            if (Build.VERSION.SDK_INT > 18) {
                c.quitSafely();
            } else {
                c.quit();
            }
            c = null;
            b = null;
        }
    }

    private static synchronized void d() {
        f16273d++;
        if (c == null) {
            HandlerThread handlerThread = new HandlerThread("pag-renderer");
            c = handlerThread;
            try {
                handlerThread.start();
            } catch (Error | Exception e2) {
                e2.printStackTrace();
                c = null;
            }
        }
        if (b == null) {
            b = new a(c.getLooper());
        }
    }

    private void e() {
        if (g()) {
            this.w = this.i.getCurrentPlayTime();
            this.i.cancel();
        } else {
            removeCallbacks(this.z);
            post(this.A);
        }
    }

    private void f() {
        this.f16275f.prepare();
        if (!this.m) {
            Log.w("PAGView", "doPlay: PAGView is not attached to window");
            return;
        }
        Log.i("PAGView", "doPlay");
        if (this.t == BitmapDescriptorFactory.HUE_RED) {
            h();
            Log.e("PAGView", "doPlay: The scale of animator duration is turned off");
        } else {
            this.i.setCurrentPlayTime(this.w);
            l();
        }
    }

    private boolean g() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        ArrayList arrayList;
        this.j = false;
        synchronized (this) {
            arrayList = new ArrayList(this.u);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((PAGViewListener) it.next()).onAnimationEnd(this);
        }
    }

    private static void a(int i, Object obj) {
        a aVar = b;
        if (aVar == null) {
            return;
        }
        Message messageObtainMessage = aVar.obtainMessage();
        messageObtainMessage.arg1 = i;
        if (obj != null) {
            messageObtainMessage.obj = obj;
        }
        b.sendMessage(messageObtainMessage);
    }

    private void i() {
        if (this.k == null) {
            this.k = Boolean.valueOf(this.i.isRunning());
        }
        if (this.i.isRunning()) {
            e();
        }
    }

    public PAGView(Context context, EGLContext eGLContext) {
        super(context);
        this.j = false;
        this.k = null;
        this.l = "";
        this.m = false;
        this.n = null;
        this.o = new SparseArray<>();
        this.p = new SparseArray<>();
        this.q = false;
        this.r = true;
        this.s = new Object();
        this.t = 1.0f;
        this.u = new ArrayList<>();
        this.v = new ArrayList<>();
        this.x = new m(this);
        this.y = new n(this);
        this.z = new q(this);
        this.A = new RunnableC0454r(this);
        this.B = true;
        this.n = eGLContext;
        k();
    }

    public PAGView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.j = false;
        this.k = null;
        this.l = "";
        this.m = false;
        this.n = null;
        this.o = new SparseArray<>();
        this.p = new SparseArray<>();
        this.q = false;
        this.r = true;
        this.s = new Object();
        this.t = 1.0f;
        this.u = new ArrayList<>();
        this.v = new ArrayList<>();
        this.x = new m(this);
        this.y = new n(this);
        this.z = new q(this);
        this.A = new RunnableC0454r(this);
        this.B = true;
        k();
    }

    public PAGView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.j = false;
        this.k = null;
        this.l = "";
        this.m = false;
        this.n = null;
        this.o = new SparseArray<>();
        this.p = new SparseArray<>();
        this.q = false;
        this.r = true;
        this.s = new Object();
        this.t = 1.0f;
        this.u = new ArrayList<>();
        this.v = new ArrayList<>();
        this.x = new m(this);
        this.y = new n(this);
        this.z = new q(this);
        this.A = new RunnableC0454r(this);
        this.B = true;
        k();
    }
}
