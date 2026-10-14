package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.opengl.GLES20;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.GL3DModel;
import com.amap.api.maps.model.Marker;
import com.amap.api.maps.model.animation.Animation;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.animation.GLAnimation;
import com.autonavi.amap.mapcore.animation.GLTransformation;
import com.autonavi.amap.mapcore.interfaces.IInfoWindowManager;
import com.autonavi.amap.mapcore.interfaces.IMarker;
import com.autonavi.amap.mapcore.interfaces.IOverlay;
import com.autonavi.base.ae.gmap.GLMapState;
import com.autonavi.base.amap.api.mapcore.BaseOverlayImp;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import com.autonavi.base.amap.api.mapcore.infowindow.IInfoWindowAction;
import com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate;
import com.autonavi.base.amap.mapcore.FPoint;
import com.autonavi.base.amap.mapcore.MapConfig;
import com.serenegiant.glutils.ShaderConst;
import java.nio.Buffer;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class d2 implements IInfoWindowManager, IInfoWindowAction, IOverlayDelegate {
    IAMapDelegate A;
    b D;
    private GLAnimation G;
    private GLAnimation H;
    s M;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f10632a;
    private BaseOverlayImp b;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private FPoint f10637h;
    private FloatBuffer l;
    private boolean o;
    private Bitmap p;
    private Bitmap q;
    private int t;
    private boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f10633d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f10634e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f10635f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f10636g = 0;
    private FloatBuffer i = null;
    private boolean k = true;
    private float m = 0.5f;
    private float n = 1.0f;
    private Rect r = new Rect();
    private float s = BitmapDescriptorFactory.HUE_RED;
    private boolean u = true;
    private Bitmap v = null;
    private Bitmap w = null;
    private Bitmap x = null;
    private Bitmap y = null;
    private boolean z = false;
    private boolean B = false;
    float[] C = new float[12];
    float[] E = {1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f};
    long F = 0;
    private boolean I = false;
    private boolean K = true;
    private String j = getId();

    class a implements Animation.AnimationListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f10638a;

        a(boolean z) {
            this.f10638a = z;
        }

        @Override // com.amap.api.maps.model.animation.Animation.AnimationListener
        public void onAnimationEnd() {
            if (d2.this.G != null) {
                d2.this.I = true;
                d2.this.G.startNow();
                d2.this.n(this.f10638a);
            }
        }

        @Override // com.amap.api.maps.model.animation.Animation.AnimationListener
        public void onAnimationStart() {
        }
    }

    static class b extends g2 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f10639e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f10640f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f10641g;

        b(String str) {
            if (c(str)) {
                this.f10639e = h("aMVP");
                this.f10640f = e("aVertex");
                this.f10641g = e("aTextureCoord");
            }
        }
    }

    public d2(IAMapDelegate iAMapDelegate, Context context) {
        this.A = null;
        this.f10632a = context;
        this.A = iAMapDelegate;
    }

    private synchronized Bitmap A() {
        return this.v;
    }

    private synchronized Bitmap B() {
        return this.x;
    }

    private void C() {
        GLAnimation gLAnimation;
        if (!this.K && (gLAnimation = this.H) != null && !gLAnimation.hasEnded()) {
            this.I = true;
            GLTransformation gLTransformation = new GLTransformation();
            this.H.getTransformation(AnimationUtils.currentAnimationTimeMillis(), gLTransformation);
            if (Double.isNaN(gLTransformation.scaleX) || Double.isNaN(gLTransformation.scaleY)) {
                return;
            }
            this.s = (float) gLTransformation.scaleX;
            return;
        }
        GLAnimation gLAnimation2 = this.G;
        if (gLAnimation2 == null || gLAnimation2.hasEnded()) {
            this.s = 1.0f;
            this.I = false;
            return;
        }
        this.K = false;
        this.I = true;
        this.f10633d = this.f10635f;
        this.f10634e = this.f10636g;
        GLTransformation gLTransformation2 = new GLTransformation();
        this.G.getTransformation(AnimationUtils.currentAnimationTimeMillis(), gLTransformation2);
        if (Double.isNaN(gLTransformation2.scaleX) || Double.isNaN(gLTransformation2.scaleY)) {
            return;
        }
        this.s = (float) gLTransformation2.scaleX;
    }

    private int D() {
        int[] iArr = {0};
        GLES20.glGenTextures(1, iArr, 0);
        return iArr[0];
    }

    private void E() {
        if (!this.u || this.p == null) {
            l(B());
        } else {
            r(false);
        }
        f(false);
    }

    private void F() {
        if (this.u || this.p == null) {
            l(A());
        } else {
            r(true);
        }
        f(true);
    }

    private synchronized void G() {
        Bitmap bitmap = this.p;
        if (bitmap != null && bitmap != null) {
            r3.g0(bitmap);
            this.p = null;
        }
        Bitmap bitmap2 = this.q;
        if (bitmap2 != null && !bitmap2.isRecycled()) {
            r3.g0(this.q);
            this.q = null;
        }
        Bitmap bitmap3 = this.v;
        if (bitmap3 != null && !bitmap3.isRecycled()) {
            r3.g0(this.v);
            this.v = null;
        }
        Bitmap bitmap4 = this.w;
        if (bitmap4 != null && !bitmap4.isRecycled()) {
            r3.g0(this.w);
            this.w = null;
        }
        Bitmap bitmap5 = this.x;
        if (bitmap5 != null && !bitmap5.isRecycled()) {
            r3.g0(this.x);
            this.x = null;
        }
        Bitmap bitmap6 = this.y;
        if (bitmap6 != null && !bitmap6.isRecycled()) {
            r3.g0(this.y);
            this.y = null;
        }
    }

    private void H() {
    }

    private Rect I() {
        Rect rect = this.r;
        int i = rect.left;
        int i2 = rect.top;
        return new Rect(i, i2, rect.right, K() + i2);
    }

    private Rect J() {
        Rect rect = this.r;
        int i = rect.left;
        int i2 = rect.top;
        return new Rect(i, i2, rect.right, L() + i2);
    }

    private int K() {
        Bitmap bitmap = this.v;
        if (bitmap == null || bitmap.isRecycled()) {
            return 0;
        }
        return this.v.getHeight();
    }

    private int L() {
        Bitmap bitmap = this.x;
        if (bitmap == null || bitmap.isRecycled()) {
            return 0;
        }
        return this.x.getHeight();
    }

    private Bitmap a(View view) {
        if (view == null) {
            return null;
        }
        if ((view instanceof RelativeLayout) && this.f10632a != null) {
            LinearLayout linearLayout = new LinearLayout(this.f10632a);
            linearLayout.setOrientation(1);
            linearLayout.addView(view);
            view = linearLayout;
        }
        view.setDrawingCacheEnabled(true);
        view.setDrawingCacheQuality(0);
        return r3.q(view);
    }

    private void c(int i, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        if (floatBuffer == null || floatBuffer2 == null || i == 0) {
            return;
        }
        if (this.D == null) {
            s();
        }
        this.D.b();
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(1, 771);
        GLES20.glBlendColor(1.0f, 1.0f, 1.0f, 1.0f);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(ShaderConst.GL_TEXTURE_2D, i);
        GLES20.glEnableVertexAttribArray(this.D.f10640f);
        GLES20.glVertexAttribPointer(this.D.f10640f, 3, 5126, false, 12, (Buffer) floatBuffer);
        GLES20.glEnableVertexAttribArray(this.D.f10641g);
        GLES20.glVertexAttribPointer(this.D.f10641g, 2, 5126, false, 8, (Buffer) floatBuffer2);
        GLES20.glUniformMatrix4fv(this.D.f10639e, 1, false, this.E, 0);
        GLES20.glDrawArrays(6, 0, 4);
        GLES20.glDisableVertexAttribArray(this.D.f10640f);
        GLES20.glDisableVertexAttribArray(this.D.f10641g);
        GLES20.glBindTexture(ShaderConst.GL_TEXTURE_2D, 0);
        GLES20.glUseProgram(0);
        GLES20.glDisable(3042);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(boolean z) {
        if (z) {
            l(A());
        } else {
            l(B());
        }
    }

    private synchronized void q(Bitmap bitmap) {
        if (bitmap != null) {
            if (!bitmap.isRecycled()) {
                r3.g0(bitmap);
            }
        }
    }

    private void r(boolean z) {
        GLAnimation gLAnimation = this.H;
        if (gLAnimation != null) {
            this.K = false;
            this.I = true;
            gLAnimation.startNow();
            this.H.setAnimationListener(new a(z));
            return;
        }
        GLAnimation gLAnimation2 = this.G;
        if (gLAnimation2 == null) {
            n(z);
            return;
        }
        this.I = true;
        gLAnimation2.startNow();
        n(z);
    }

    private synchronized void t(Bitmap bitmap) {
        if (bitmap != null) {
            if (!bitmap.isRecycled()) {
                q(this.w);
                this.w = bitmap;
            }
        }
    }

    private synchronized void v(Bitmap bitmap) {
        if (bitmap != null) {
            if (!bitmap.isRecycled()) {
                q(this.x);
                this.x = bitmap;
            }
        }
    }

    private synchronized void w(Bitmap bitmap) {
        if (bitmap != null) {
            if (!bitmap.isRecycled()) {
                q(this.y);
                this.y = bitmap;
            }
        }
    }

    private boolean z(Bitmap bitmap) {
        if (this.v != null && bitmap.hashCode() == this.v.hashCode()) {
            return true;
        }
        if (this.x != null && bitmap.hashCode() == this.x.hashCode()) {
            return true;
        }
        if (this.w == null || bitmap.hashCode() != this.w.hashCode()) {
            return this.y != null && bitmap.hashCode() == this.y.hashCode();
        }
        return true;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean calMapFPoint() throws RemoteException {
        return false;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean checkInBounds() {
        return true;
    }

    public synchronized void d(Bitmap bitmap) {
        if (bitmap != null) {
            if (!bitmap.isRecycled()) {
                this.v = bitmap;
            }
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void destroy() {
        if (this.c) {
            try {
                remove();
                G();
                FloatBuffer floatBuffer = this.l;
                if (floatBuffer != null) {
                    floatBuffer.clear();
                    this.l = null;
                }
                FloatBuffer floatBuffer2 = this.i;
                if (floatBuffer2 != null) {
                    floatBuffer2.clear();
                    this.i = null;
                }
                this.f10637h = null;
                this.t = 0;
            } catch (Throwable th) {
                e6.r(th, "PopupOverlay", "realDestroy");
                th.printStackTrace();
            }
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public void draw(MapConfig mapConfig) throws RemoteException {
    }

    public void e(FPoint fPoint) {
        this.f10637h = fPoint;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public boolean equalsRemote(IOverlay iOverlay) throws RemoteException {
        return equals(iOverlay) || iOverlay.getId().equals(getId());
    }

    public void f(boolean z) {
        this.u = z;
    }

    public boolean g() {
        return this.u;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public String getId() {
        if (this.j == null) {
            this.j = "PopupOverlay";
        }
        return this.j;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public float getZIndex() {
        return BitmapDescriptorFactory.HUE_RED;
    }

    public boolean h(int i, int i2) {
        Bitmap bitmap;
        GLMapState mapProjection = this.A.getMapProjection();
        if (this.f10637h != null && mapProjection != null) {
            IPoint iPointObtain = IPoint.obtain();
            if (this.A.getMapConfig() != null && mapProjection != null) {
                FPoint fPointObtain = FPoint.obtain();
                FPoint fPoint = this.f10637h;
                mapProjection.p20ToScreenPoint((int) ((PointF) fPoint).x, (int) ((PointF) fPoint).y, fPointObtain);
                ((Point) iPointObtain).x = (int) ((PointF) fPointObtain).x;
                ((Point) iPointObtain).y = (int) ((PointF) fPointObtain).y;
                fPointObtain.recycle();
            }
            int iJ = j();
            int iO = o();
            int i3 = (int) ((((Point) iPointObtain).x + this.f10633d) - (iJ * this.m));
            int i4 = (int) (((Point) iPointObtain).y + this.f10634e + (iO * (1.0f - this.n)));
            iPointObtain.recycle();
            if (i3 - iJ > i || i3 < (-iJ) * 2 || i4 < (-iO) * 2 || i4 - iO > i2 || (bitmap = this.p) == null) {
                return false;
            }
            int width = bitmap.getWidth();
            int height = this.p.getHeight();
            if (this.l == null) {
                this.l = r3.E(new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, 1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED});
            }
            int i5 = (int) (((double) (1.0f - this.s)) * 0.5d * ((double) width));
            float[] fArr = this.C;
            int i6 = i3 + i5;
            float f2 = i6;
            fArr[0] = f2;
            Rect rect = this.r;
            rect.left = i6;
            int i7 = i2 - i4;
            float f3 = i7;
            fArr[1] = f3;
            fArr[2] = 0.0f;
            int i8 = i3 + width;
            float f4 = i8 - i5;
            fArr[3] = f4;
            fArr[4] = f3;
            rect.top = i4 - height;
            fArr[5] = 0.0f;
            fArr[6] = f4;
            rect.right = i8;
            float f5 = i7 + height;
            fArr[7] = f5;
            rect.bottom = i4;
            fArr[8] = 0.0f;
            fArr[9] = f2;
            fArr[10] = f5;
            fArr[11] = 0.0f;
            FloatBuffer floatBuffer = this.i;
            if (floatBuffer == null) {
                this.i = r3.E(fArr);
            } else {
                this.i = r3.F(fArr, floatBuffer);
            }
            return true;
        }
        return false;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public int hashCodeRemote() {
        return super.hashCode();
    }

    @Override // com.autonavi.base.amap.api.mapcore.infowindow.IInfoWindowAction
    public synchronized void hideInfoWindow() {
        setVisible(false);
        G();
        this.z = false;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public boolean isAboveMaskLayer() {
        return false;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean isDrawFinish() {
        return false;
    }

    @Override // com.autonavi.base.amap.api.mapcore.infowindow.IInfoWindowAction
    public boolean isInfoWindowShown() {
        return false;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public boolean isVisible() {
        return this.k;
    }

    public int j() {
        try {
            synchronized (this) {
                Bitmap bitmap = this.p;
                if (bitmap == null || bitmap.isRecycled()) {
                    return 0;
                }
                return this.p.getWidth();
            }
        } catch (Throwable unused) {
            return 0;
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x004f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void k(int r11, int r12) {
        /*
            r10 = this;
            boolean r0 = r10.k
            if (r0 == 0) goto L89
            com.autonavi.base.amap.mapcore.FPoint r0 = r10.f10637h
            if (r0 == 0) goto L89
            android.graphics.Bitmap r0 = r10.p
            if (r0 != 0) goto Le
            goto L89
        Le:
            r10.u()
            android.graphics.Bitmap r0 = r10.p
            r0.isRecycled()
            boolean r0 = r10.B
            r1 = 0
            if (r0 != 0) goto L5b
            android.graphics.Bitmap r0 = r10.p
            boolean r0 = r0.isRecycled()
            if (r0 != 0) goto L5b
            int r0 = r10.t     // Catch: java.lang.Throwable -> L4f
            r2 = 1
            if (r0 == 0) goto L30
            int[] r3 = new int[r2]     // Catch: java.lang.Throwable -> L4f
            r3[r1] = r0     // Catch: java.lang.Throwable -> L4f
            android.opengl.GLES20.glDeleteTextures(r2, r3, r1)     // Catch: java.lang.Throwable -> L4f
            goto L36
        L30:
            int r0 = r10.D()     // Catch: java.lang.Throwable -> L4f
            r10.t = r0     // Catch: java.lang.Throwable -> L4f
        L36:
            monitor-enter(r10)     // Catch: java.lang.Throwable -> L4f
            android.graphics.Bitmap r0 = r10.p     // Catch: java.lang.Throwable -> L4c
            if (r0 == 0) goto L4a
            boolean r0 = r0.isRecycled()     // Catch: java.lang.Throwable -> L4c
            if (r0 != 0) goto L4a
            int r0 = r10.t     // Catch: java.lang.Throwable -> L4c
            android.graphics.Bitmap r3 = r10.p     // Catch: java.lang.Throwable -> L4c
            com.amap.api.mapcore.util.r3.c0(r0, r3, r1)     // Catch: java.lang.Throwable -> L4c
            r10.B = r2     // Catch: java.lang.Throwable -> L4c
        L4a:
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L4c
            goto L5b
        L4c:
            r11 = move-exception
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L4c
            throw r11     // Catch: java.lang.Throwable -> L4f
        L4f:
            r11 = move-exception
            java.lang.String r12 = "PopupOverlay"
            java.lang.String r0 = "drawMarker"
            com.amap.api.mapcore.util.e6.r(r11, r12, r0)
            r11.printStackTrace()
            return
        L5b:
            r10.C()
            boolean r0 = r10.h(r11, r12)
            if (r0 == 0) goto L89
            float[] r0 = r10.E
            android.opengl.Matrix.setIdentityM(r0, r1)
            float[] r2 = r10.E
            r3 = 0
            r4 = 0
            float r5 = (float) r11
            r6 = 0
            float r7 = (float) r12
            r8 = 1065353216(0x3f800000, float:1.0)
            r9 = -1082130432(0xffffffffbf800000, float:-1.0)
            android.opengl.Matrix.orthoM(r2, r3, r4, r5, r6, r7, r8, r9)
            int r11 = r10.t
            java.nio.FloatBuffer r12 = r10.i
            java.nio.FloatBuffer r0 = r10.l
            r10.c(r11, r12, r0)
            boolean r11 = r10.o
            if (r11 == 0) goto L89
            r10.o = r1
            r10.H()
        L89:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.d2.k(int, int):void");
    }

    public synchronized void l(Bitmap bitmap) {
        if (bitmap != null) {
            try {
                if (!bitmap.isRecycled()) {
                    Bitmap bitmap2 = this.p;
                    if (bitmap2 != null && bitmap2.hashCode() == bitmap.hashCode()) {
                        return;
                    }
                    Bitmap bitmap3 = this.p;
                    if (bitmap3 != null && ((this.v == null && this.w == null && this.x == null && this.y == null) || !z(bitmap3))) {
                        q(this.q);
                        this.q = this.p;
                    }
                    this.B = false;
                    this.p = bitmap;
                }
            } catch (Throwable unused) {
            }
        }
    }

    public int o() {
        try {
            Bitmap bitmap = this.p;
            if (bitmap == null || bitmap.isRecycled()) {
                return 0;
            }
            return this.p.getHeight();
        } catch (Throwable unused) {
            return 0;
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.infowindow.IInfoWindowAction
    public boolean onInfoWindowTap(MotionEvent motionEvent) {
        return this.k && this.b != null && this.z && r3.M(this.r, (int) motionEvent.getX(), (int) motionEvent.getY());
    }

    public void p(int i, int i2) throws RemoteException {
        if (this.I) {
            this.f10635f = i;
            this.f10636g = i2;
        } else {
            this.f10633d = i;
            this.f10634e = i2;
            this.f10635f = i;
            this.f10636g = i2;
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.infowindow.IInfoWindowAction
    public void redrawInfoWindow() {
        try {
            synchronized (this) {
                BaseOverlayImp baseOverlayImp = this.b;
                boolean z = false;
                if (baseOverlayImp != null && baseOverlayImp.checkInBounds()) {
                    setVisible(true);
                    Rect rect = this.b.getRect();
                    int realInfoWindowOffsetX = this.b.getRealInfoWindowOffsetX() + this.b.getInfoWindowOffsetX();
                    int realInfoWindowOffsetY = this.b.getRealInfoWindowOffsetY() + this.b.getInfoWindowOffsetY() + 2;
                    if (!(this.b instanceof w1)) {
                        if (x()) {
                            if (this.p != null) {
                                return;
                            }
                            if (this.v == null && this.x == null) {
                                return;
                            }
                        }
                        if (!this.b.isInfoWindowEnable()) {
                            setVisible(false);
                            return;
                        }
                        setVisible(true);
                        e(this.b.getGeoPosition());
                        p(realInfoWindowOffsetX, realInfoWindowOffsetY);
                        F();
                        return;
                    }
                    synchronized (this) {
                        if (!x() || (this.p == null && !(this.v == null && this.x == null))) {
                            w1 w1Var = (w1) this.b;
                            w1Var.getIMarkerAction();
                            if (w1Var != null && !w1Var.isInfoWindowEnable()) {
                                setVisible(false);
                                return;
                            }
                            setVisible(true);
                            if (w1Var == null || !w1Var.isInfoWindowAutoOverturn()) {
                                e(this.b.getGeoPosition());
                                p(realInfoWindowOffsetX, realInfoWindowOffsetY);
                                F();
                            } else {
                                Rect rectI = I();
                                Rect rectJ = J();
                                if (g()) {
                                    rectJ.offset(0, rect.height() + rectI.height() + 2);
                                } else {
                                    rectI.offset(0, -(rect.height() + rectI.height() + 2));
                                }
                                int iCheckMarkerInRect = this.A.checkMarkerInRect(w1Var, rectI);
                                int iCheckMarkerInRect2 = this.A.checkMarkerInRect(w1Var, rectJ);
                                if (iCheckMarkerInRect > 0 && (iCheckMarkerInRect2 == 0 || (iCheckMarkerInRect2 > 0 && iCheckMarkerInRect < iCheckMarkerInRect2))) {
                                    z = true;
                                }
                                if (z) {
                                    realInfoWindowOffsetY = this.b.getRealInfoWindowOffsetY() + this.b.getInfoWindowOffsetY() + 2 + rect.height() + rectJ.height();
                                    E();
                                } else {
                                    F();
                                }
                                e(this.b.getGeoPosition());
                                p(realInfoWindowOffsetX, realInfoWindowOffsetY);
                            }
                        }
                        return;
                    }
                }
                setVisible(false);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void remove() throws RemoteException {
    }

    public void s() {
        this.D = new b("texture.glsl");
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setAboveMaskLayer(boolean z) {
    }

    @Override // com.autonavi.base.amap.api.mapcore.infowindow.IInfoWindowAction
    public void setInfoWindowAdapterManager(s sVar) {
        synchronized (this) {
            this.M = sVar;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IInfoWindowManager
    public void setInfoWindowAnimation(Animation animation, Animation.AnimationListener animationListener) {
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IInfoWindowManager
    public void setInfoWindowAppearAnimation(Animation animation) {
        GLAnimation gLAnimation = this.H;
        if (gLAnimation == null || !gLAnimation.equals(animation.glAnimation)) {
            this.G = animation.glAnimation;
            return;
        }
        try {
            this.G = animation.glAnimation.mo130clone();
        } catch (Throwable th) {
            e6.r(th, "PopupOverlay", "setInfoWindowDisappearAnimation");
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IInfoWindowManager
    public void setInfoWindowBackColor(int i) {
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IInfoWindowManager
    public void setInfoWindowBackEnable(boolean z) {
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IInfoWindowManager
    public void setInfoWindowBackScale(float f2, float f3) {
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IInfoWindowManager
    public void setInfoWindowDisappearAnimation(Animation animation) {
        GLAnimation gLAnimation = this.G;
        if (gLAnimation == null || !gLAnimation.equals(animation.glAnimation)) {
            this.H = animation.glAnimation;
            return;
        }
        try {
            this.H = animation.glAnimation.mo130clone();
        } catch (Throwable th) {
            e6.r(th, "PopupOverlay", "setInfoWindowDisappearAnimation");
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IInfoWindowManager
    public void setInfoWindowMovingAnimation(Animation animation) {
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setVisible(boolean z) {
        if (!this.k && z) {
            this.o = true;
        }
        this.k = z;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setZIndex(float f2) {
    }

    @Override // com.autonavi.base.amap.api.mapcore.infowindow.IInfoWindowAction
    public synchronized void showInfoWindow(BaseOverlayImp baseOverlayImp) throws RemoteException {
        if (baseOverlayImp == null) {
            return;
        }
        if (baseOverlayImp.isInfoWindowEnable()) {
            BaseOverlayImp baseOverlayImp2 = this.b;
            if (baseOverlayImp2 != null && !baseOverlayImp2.getId().equals(baseOverlayImp.getId())) {
                hideInfoWindow();
            }
            if (this.M != null) {
                this.b = baseOverlayImp;
                baseOverlayImp.setInfoWindowShown(true);
                setVisible(true);
                y();
            }
            this.z = true;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IInfoWindowManager
    public void startAnimation() {
    }

    protected void u() {
        long j;
        long jT;
        synchronized (this) {
            j = 100;
            if (this.M != null) {
                Object obj = this.b;
                if (obj instanceof w1) {
                    jT = this.M.t(new Marker((IMarker) obj));
                } else {
                    jT = this.M.t(new GL3DModel((t1) obj));
                }
                if (jT <= 0) {
                    j = Long.MAX_VALUE;
                } else if (jT > 100) {
                    j = jT;
                }
            } else {
                j = 0;
            }
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j2 = this.F;
        if (jCurrentTimeMillis - j2 > j) {
            if (j2 != 0) {
                try {
                    showInfoWindow(this.b);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
            this.F = jCurrentTimeMillis;
        }
    }

    public boolean x() {
        return this.I;
    }

    protected void y() {
        View viewO;
        View viewO2;
        try {
            Object obj = this.b;
            if (!(obj instanceof w1)) {
                if (this.M != null) {
                    GL3DModel gL3DModel = new GL3DModel((t1) obj);
                    Bitmap bitmapA = a(this.M.d(gL3DModel));
                    if (bitmapA == null && (viewO = this.M.o(gL3DModel)) != null) {
                        if (viewO.getBackground() == null) {
                            viewO.setBackground(this.M.B());
                        }
                        bitmapA = a(viewO);
                    }
                    d(bitmapA);
                    return;
                }
                return;
            }
            Marker marker = new Marker((IMarker) obj);
            s sVar = this.M;
            if (sVar != null) {
                Bitmap bitmapA2 = a(sVar.d(marker));
                if (bitmapA2 == null && (viewO2 = this.M.o(marker)) != null) {
                    if (viewO2.getBackground() == null) {
                        viewO2.setBackground(this.M.B());
                    }
                    bitmapA2 = a(viewO2);
                }
                d(bitmapA2);
                t(a(this.M.e(marker)));
                v(a(this.M.p(marker)));
                w(a(this.M.u(marker)));
            }
        } catch (Throwable th) {
            e6.r(th, "PopupOverlay", "getInfoWindow");
            th.printStackTrace();
        }
    }
}
