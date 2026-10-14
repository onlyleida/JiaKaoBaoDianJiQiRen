package cn.mucang.android.jiakaoyi.hpmap.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.TextureView;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.o0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class MapView extends TextureView implements TextureView.SurfaceTextureListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    volatile boolean f3713a;
    private float b;
    private float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PointF f3714d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private PointF f3715e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private PointF f3716f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Matrix f3717g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile Matrix f3718h;
    private float i;
    private float j;
    private float k;
    private int l;
    private float m;
    private float n;
    private boolean o;
    private Mode p;
    private boolean q;
    private RectF r;
    private final Object s;
    private o t;
    public final m u;
    private cn.mucang.android.jiakaoyi.framework.h.b<Boolean> v;
    private cn.mucang.android.jiakaoyi.framework.h.b<Pos> w;
    private n x;
    private boolean y;

    public enum Mode {
        Show,
        Edit
    }

    public MapView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private float d(MotionEvent motionEvent, PointF pointF) {
        return cn.mucang.android.jiakaoyi.hpmap.view.s.a.b(motionEvent.getX(0), motionEvent.getY(0), pointF.x, pointF.y);
    }

    private void f() {
        this.f3713a = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void h(cn.mucang.android.jiakaoyi.hpmap.view.p.k kVar, Pos pos) {
        o oVar = this.t;
        if (oVar != null) {
            oVar.a(kVar, pos);
        }
    }

    private PointF j(MotionEvent motionEvent) {
        return cn.mucang.android.jiakaoyi.hpmap.view.s.a.c(motionEvent.getX(0), motionEvent.getY(0), motionEvent.getX(1), motionEvent.getY(1));
    }

    private void l(Pos pos) {
        this.u.L(pos);
    }

    private void o(int i, int i2) {
        RectF rectF = this.r;
        rectF.bottom = i2;
        rectF.right = i;
        this.u.S();
    }

    private void p() {
        RectF rectF = this.r;
        rectF.left = BitmapDescriptorFactory.HUE_RED;
        rectF.top = BitmapDescriptorFactory.HUE_RED;
        rectF.bottom = getHeight();
        this.r.right = getWidth();
        Log.e("MapView", "surfaceCreated : width : " + getWidth() + " , height = " + getHeight());
        this.u.S();
        this.u.u();
    }

    private void q() {
        Log.e("MapView", "surfaceDestroyed");
        this.u.k();
    }

    private float s(MotionEvent motionEvent, PointF pointF) {
        return cn.mucang.android.jiakaoyi.hpmap.view.s.a.a(motionEvent.getX(0), motionEvent.getY(0), pointF.x, pointF.y);
    }

    public float[] a(float f2, float f3) {
        Matrix matrix = new Matrix();
        this.f3718h.invert(matrix);
        float[] fArr = {f2, f3};
        matrix.mapPoints(fArr);
        return fArr;
    }

    public float[] b(float f2, float f3) {
        float[] fArr = {f2, f3};
        this.f3718h.mapPoints(fArr);
        return fArr;
    }

    public void c() {
        this.u.k();
        final m mVar = this.u;
        mVar.getClass();
        u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.hpmap.view.a
            @Override // java.lang.Runnable
            public final void run() {
                mVar.n();
            }
        }, 200L);
    }

    @SuppressLint({"RestrictedApi"})
    public boolean e() {
        return getMeasuredHeight() == o0.p(MucangConfig.i().getWindowManager());
    }

    public Matrix getCurrentMatrix() {
        Matrix matrix;
        synchronized (this.s) {
            matrix = new Matrix(this.f3718h);
        }
        return matrix;
    }

    public double getCurrentRotateDegrees() {
        float[] fArr = new float[9];
        this.f3718h.getValues(fArr);
        return Math.toDegrees(Math.atan2(-fArr[1], fArr[0]));
    }

    public cn.mucang.android.jiakaoyi.signal.pos.c getCurrentViewport() {
        Matrix matrix = new Matrix();
        this.f3718h.invert(matrix);
        float width = getWidth();
        float height = getHeight();
        float[] fArr = {BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};
        float[] fArr2 = {width, BitmapDescriptorFactory.HUE_RED};
        float[] fArr3 = {width, height};
        float[] fArr4 = {BitmapDescriptorFactory.HUE_RED, height};
        matrix.mapPoints(fArr);
        matrix.mapPoints(fArr2);
        matrix.mapPoints(fArr3);
        matrix.mapPoints(fArr4);
        return new cn.mucang.android.jiakaoyi.signal.pos.c(new Pos(fArr[0], fArr[1]), new Pos(fArr2[0], fArr2[1]), new Pos(fArr3[0], fArr3[1]), new Pos(fArr4[0], fArr4[1]));
    }

    public float getCurrentZoom() {
        return this.i;
    }

    public Mode getMapMode() {
        return this.p;
    }

    public void i(float f2, float f3) {
        synchronized (this.s) {
            float[] fArr = {f2, f3};
            this.f3718h.mapPoints(fArr);
            this.f3718h.postTranslate((getWidth() * 0.5f) - fArr[0], (getHeight() * 0.5f) - fArr[1]);
        }
    }

    public void k(final cn.mucang.android.jiakaoyi.hpmap.view.p.k kVar, final Pos pos) {
        if (this.t != null) {
            post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.hpmap.view.l
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3730a.h(kVar, pos);
                }
            });
        }
    }

    public void m() {
        this.u.N();
    }

    public void n() {
        this.u.O();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        p();
        o(i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        q();
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        o(i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Boolean bool = Boolean.FALSE;
        if (!this.f3713a) {
            return false;
        }
        if (!this.y) {
            return super.onTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar = this.v;
            if (bVar != null) {
                bVar.callback(Boolean.TRUE);
            }
            this.f3717g.set(this.f3718h);
            this.f3714d.set(motionEvent.getX(), motionEvent.getY());
            this.f3715e.set(motionEvent.getX(), motionEvent.getY());
            this.l = 1;
            this.q = false;
        } else if (action == 1) {
            if (!this.q && (this.t != null || this.w != null)) {
                Log.e("MapView", "1x = " + motionEvent.getX() + " , y = " + motionEvent.getY());
                float[] fArrA = a(motionEvent.getX(), motionEvent.getY());
                Log.e("MapView", "2x = " + fArrA[0] + " , y = " + fArrA[1]);
                Pos pos = new Pos((double) fArrA[0], (double) fArrA[1]);
                if (this.t != null) {
                    l(pos);
                }
                cn.mucang.android.jiakaoyi.framework.h.b<Pos> bVar2 = this.w;
                if (bVar2 != null) {
                    bVar2.callback(pos);
                }
            }
            this.l = 0;
            cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar3 = this.v;
            if (bVar3 != null) {
                bVar3.callback(bool);
            }
        } else if (action == 2) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            PointF pointF = this.f3715e;
            double dB = cn.mucang.android.jiakaoyi.hpmap.view.s.a.b(x, y, pointF.x, pointF.y);
            if (dB > 0.0d) {
                if (dB > 10.0d) {
                    this.q = true;
                }
                int i = this.l;
                if (i == 1) {
                    synchronized (this.s) {
                        this.f3718h.set(this.f3717g);
                        this.f3718h.postTranslate(motionEvent.getX() - this.f3714d.x, motionEvent.getY() - this.f3714d.y);
                    }
                    r();
                } else if (i == 2) {
                    synchronized (this.s) {
                        this.f3718h.set(this.f3717g);
                        float fD = d(motionEvent, this.f3716f) / this.m;
                        float f2 = this.k;
                        float f3 = fD * f2;
                        float f4 = this.b;
                        if (f3 < f4) {
                            fD = f4 / f2;
                        } else {
                            float f5 = fD * f2;
                            f4 = this.c;
                            if (f5 > f4) {
                                fD = f4 / f2;
                            }
                        }
                        this.i = f2 * fD;
                        Matrix matrix = this.f3718h;
                        PointF pointF2 = this.f3716f;
                        matrix.postScale(fD, fD, pointF2.x, pointF2.y);
                    }
                    r();
                } else if (i == 3) {
                    synchronized (this.s) {
                        this.f3718h.set(this.f3717g);
                        float fS = s(motionEvent, this.f3716f) - this.n;
                        Matrix matrix2 = this.f3718h;
                        PointF pointF3 = this.f3716f;
                        matrix2.postRotate(fS, pointF3.x, pointF3.y);
                    }
                    r();
                } else if (i == 4) {
                    if (this.o) {
                        synchronized (this.s) {
                            this.f3718h.set(this.f3717g);
                            float fD2 = d(motionEvent, this.f3716f);
                            float fS2 = s(motionEvent, this.f3716f) - this.n;
                            float f6 = fD2 / this.m;
                            float f7 = this.k;
                            float f8 = f6 * f7;
                            float f9 = this.b;
                            if (f8 < f9) {
                                f6 = f9 / f7;
                            } else {
                                float f10 = f6 * f7;
                                f9 = this.c;
                                if (f10 > f9) {
                                    f6 = f9 / f7;
                                }
                            }
                            this.i = f7 * f6;
                            Matrix matrix3 = this.f3718h;
                            PointF pointF4 = this.f3716f;
                            matrix3.postScale(f6, f6, pointF4.x, pointF4.y);
                            Matrix matrix4 = this.f3718h;
                            PointF pointF5 = this.f3716f;
                            matrix4.postRotate(fS2, pointF5.x, pointF5.y);
                        }
                        r();
                    } else {
                        float f11 = this.m;
                        float x2 = motionEvent.getX(0);
                        float y2 = motionEvent.getY(0);
                        PointF pointF6 = this.f3714d;
                        float fB = cn.mucang.android.jiakaoyi.hpmap.view.s.a.b(x2, y2, pointF6.x, pointF6.y);
                        float fD3 = d(motionEvent, this.f3716f);
                        float degrees = (float) Math.toDegrees(Math.acos((((f11 * f11) + (fB * fB)) - (fD3 * fD3)) / ((f11 * 2.0f) * fB)));
                        if (degrees >= 120.0f || degrees <= 45.0f) {
                            this.m = d(motionEvent, this.f3716f);
                            this.l = 2;
                        } else {
                            this.n = s(motionEvent, this.f3716f);
                            this.l = 3;
                        }
                    }
                }
                this.f3715e.set(motionEvent.getX(), motionEvent.getY());
            }
        } else if (action == 3) {
            cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar4 = this.v;
            if (bVar4 != null) {
                bVar4.callback(bool);
            }
        } else if (action != 5) {
            if (action == 6) {
                this.l = 0;
            }
        } else if (motionEvent.getPointerCount() == 2) {
            this.f3717g.set(this.f3718h);
            this.k = this.i;
            this.f3714d.set(motionEvent.getX(0), motionEvent.getY(0));
            this.l = 4;
            PointF pointFJ = j(motionEvent);
            this.f3716f = pointFJ;
            this.m = d(motionEvent, pointFJ);
            this.n = s(motionEvent, this.f3716f);
        }
        return true;
    }

    public void r() {
        this.u.P();
        n nVar = this.x;
        if (nVar != null) {
            float f2 = this.j;
            float f3 = this.i;
            if (f2 != f3) {
                nVar.a(f3);
            }
        }
        this.j = this.i;
    }

    public void setClickViewListener(cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar) {
        this.v = bVar;
    }

    public void setCurrentRotateDegrees(float f2) {
        if (this.l != 0) {
            return;
        }
        t(f2, getWidth() * 0.5f, getHeight() * 0.5f);
    }

    public void setCurrentZoom(float f2) {
        u(f2, getWidth() * 0.5f, getHeight() * 0.5f);
    }

    public void setHasGesture(boolean z) {
        this.y = z;
    }

    public void setMapMode(Mode mode) {
        this.p = mode;
    }

    public void setMaxZoom(float f2) {
        this.c = f2;
    }

    public void setMinZoom(float f2) {
        this.b = f2;
    }

    public void setOnClickListener(cn.mucang.android.jiakaoyi.framework.h.b<Pos> bVar) {
        this.w = bVar;
    }

    public void setOnSelect(o oVar) {
        this.t = oVar;
    }

    public void setOnZoomCallbackListener(n nVar) {
        this.x = nVar;
    }

    public void setScaleAndRotateTogether(boolean z) {
        this.o = z;
    }

    public void t(float f2, float f3, float f4) {
        if (this.l != 0) {
            return;
        }
        double currentRotateDegrees = ((double) f2) - getCurrentRotateDegrees();
        synchronized (this.s) {
            this.f3718h.postRotate((float) currentRotateDegrees, f3, f4);
        }
    }

    public void u(float f2, float f3, float f4) {
        float fMax = Math.max(f2, 0.02f);
        synchronized (this.s) {
            Matrix matrix = this.f3718h;
            float f5 = this.i;
            matrix.postScale(fMax / f5, fMax / f5, f3, f4);
        }
        this.i = fMax;
    }

    public void v(float f2, float f3) {
        if (this.l != 0) {
            return;
        }
        i(f2, f3);
        r();
    }

    public void w(float f2, float f3) {
        synchronized (this.s) {
            this.f3718h.postTranslate(f2, f3);
        }
    }

    public MapView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3713a = false;
        this.b = 0.02f;
        this.c = 20.0f;
        this.f3714d = new PointF();
        this.f3715e = new PointF();
        this.f3716f = new PointF();
        this.f3717g = new Matrix();
        this.f3718h = new Matrix();
        this.i = 1.0f;
        this.j = 1.0f;
        this.k = BitmapDescriptorFactory.HUE_RED;
        this.l = 0;
        this.m = BitmapDescriptorFactory.HUE_RED;
        this.n = BitmapDescriptorFactory.HUE_RED;
        this.o = true;
        this.p = Mode.Show;
        this.r = new RectF();
        this.s = new Object();
        this.y = true;
        setLayerType(2, null);
        setSurfaceTextureListener(this);
        this.u = new m(this);
        f();
    }
}
