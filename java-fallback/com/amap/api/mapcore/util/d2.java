package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.opengl.GLES20;
import android.opengl.Matrix;
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
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class d2 implements IInfoWindowManager, IInfoWindowAction, IOverlayDelegate {
    IAMapDelegate A;
    private boolean B;
    float[] C;
    b D;
    float[] E;
    long F;
    private GLAnimation G;
    private GLAnimation H;
    private boolean I;
    private boolean K;
    s M;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f10632a;
    private BaseOverlayImp b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f10633d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f10634e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f10635f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f10636g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private FPoint f10637h;
    private FloatBuffer i;
    private String j;
    private boolean k;
    private FloatBuffer l;
    private float m;
    private float n;
    private boolean o;
    private Bitmap p;
    private Bitmap q;
    private Rect r;
    private float s;
    private int t;
    private boolean u;
    private Bitmap v;
    private Bitmap w;
    private Bitmap x;
    private Bitmap y;
    private boolean z;

    class a implements Animation.AnimationListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f10638a;
        final /* synthetic */ d2 b;

        a(d2 r1, boolean r2) {
            this.b = r1;
            this.f10638a = r2;
        }

        @Override // com.amap.api.maps.model.animation.Animation.AnimationListener
        public void onAnimationEnd() {
            if (d2.b(this.b) == null) goto L6;
            d2.i(this.b, true);
            d2.b(this.b).startNow();
            d2.m(this.b, this.f10638a);
            return;
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

        b(String r1) {
            if (c(r1) == true) goto L5;
            return;
        L5:
            this.f10639e = h("aMVP");
            this.f10640f = e("aVertex");
            this.f10641g = e("aTextureCoord");
        }
    }

    public d2(IAMapDelegate r6, Context r7) {
        this.c = false;
        this.f10633d = 0;
        this.f10634e = 0;
        this.f10635f = 0;
        this.f10636g = 0;
        this.i = null;
        this.k = true;
        this.m = 0.5f;
        this.n = 1.0f;
        this.r = new Rect();
        this.s = BitmapDescriptorFactory.HUE_RED;
        this.u = true;
        this.v = null;
        this.w = null;
        this.x = null;
        this.y = null;
        this.z = false;
        this.A = null;
        this.B = false;
        this.C = new float[12];
        this.E = new float[]{1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f};
        this.F = 0;
        this.I = false;
        this.K = true;
        this.f10632a = r7;
        this.A = r6;
        this.j = getId();
    }

    private synchronized Bitmap A() {
        monitor-enter(this);
        Bitmap r0 = this.v;     // Catch: Throwable -> L6
        monitor-exit(this);
        return r0;
    L6:
        th = move-exception;
        throw th;
    }

    private synchronized Bitmap B() {
        monitor-enter(this);
        Bitmap r0 = this.x;     // Catch: Throwable -> L6
        monitor-exit(this);
        return r0;
    L6:
        th = move-exception;
        throw th;
    }

    private void C() {
        if (this.K == true) goto L13;
        GLAnimation r0 = this.H;
        if (r0 == null) goto L13;
        if (r0.hasEnded() == true) goto L13;
        this.I = true;
        GLTransformation r1 = new GLTransformation();
        this.H.getTransformation(AnimationUtils.currentAnimationTimeMillis(), r1);
        if (Double.isNaN(r1.scaleX) == false) goto L11;
        return;
    L11:
        if (Double.isNaN(r1.scaleY) == true) goto L25;
        this.s = (float) r1.scaleX;
        return;
    L25:
        return;
    L13:
        GLAnimation r2 = this.G;
        if (r2 != null) goto L16;
    L22:
        this.s = 1.0f;
        this.I = false;
        return;
    L16:
        if (r2.hasEnded() == true) goto L22;
        this.K = false;
        this.I = true;
        this.f10633d = this.f10635f;
        this.f10634e = this.f10636g;
        GLTransformation r3 = new GLTransformation();
        this.G.getTransformation(AnimationUtils.currentAnimationTimeMillis(), r3);
        if (Double.isNaN(r3.scaleX) == false) goto L20;
        return;
    L20:
        if (Double.isNaN(r3.scaleY) == true) goto L28;
        this.s = (float) r3.scaleX;
        return;
    }

    private int D() {
        int[] r1 = {0};
        GLES20.glGenTextures(1, r1, 0);
        return r1[0];
    }

    private void E() {
        if (this.u == true) goto L5;
    L7:
        l(B());
    L8:
        f(false);
        return;
    L5:
        if (this.p == null) goto L7;
        r(false);
        goto L8
    }

    private void F() {
        if (this.u == false) goto L5;
    L7:
        l(A());
    L8:
        f(true);
        return;
    L5:
        if (this.p == null) goto L7;
        r(true);
        goto L8
    }

    private synchronized void G() {
        monitor-enter(this);
        Bitmap r0 = this.p;     // Catch: Throwable -> L34
        if (r0 == null) goto L7;
        if (r0 == null) goto L7;
        r3.g0(r0);     // Catch: Throwable -> L34
        this.p = null;     // Catch: Throwable -> L34
    L7:
        Bitmap r1 = this.q;     // Catch: Throwable -> L34
        if (r1 != null) goto L10;
    L12:
        Bitmap r2 = this.v;     // Catch: Throwable -> L34
        if (r2 != null) goto L15;
    L17:
        Bitmap r3 = this.w;     // Catch: Throwable -> L34
        if (r3 != null) goto L20;
    L22:
        Bitmap r4 = this.x;     // Catch: Throwable -> L34
        if (r4 != null) goto L25;
    L27:
        Bitmap r5 = this.y;     // Catch: Throwable -> L34
        if (r5 != null) goto L30;
    L32:
        monitor-exit(this);
        return;
    L30:
        if (r5.isRecycled() == true) goto L32;
        r3.g0(this.y);     // Catch: Throwable -> L34
        this.y = null;     // Catch: Throwable -> L34
        goto L32
    L25:
        if (r4.isRecycled() == true) goto L27;
        r3.g0(this.x);     // Catch: Throwable -> L34
        this.x = null;     // Catch: Throwable -> L34
        goto L27
    L20:
        if (r3.isRecycled() == true) goto L22;
        r3.g0(this.w);     // Catch: Throwable -> L34
        this.w = null;     // Catch: Throwable -> L34
        goto L22
    L15:
        if (r2.isRecycled() == true) goto L17;
        r3.g0(this.v);     // Catch: Throwable -> L34
        this.v = null;     // Catch: Throwable -> L34
        goto L17
    L10:
        if (r1.isRecycled() == true) goto L12;
        r3.g0(this.q);     // Catch: Throwable -> L34
        this.q = null;     // Catch: Throwable -> L34
    L34:
        th = move-exception;
        throw th;
    }

    private void H() {
    }

    private Rect I() {
        Rect r1 = this.r;
        int r2 = r1.left;
        int r3 = r1.top;
        return new Rect(r2, r3, r1.right, K() + r3);
    }

    private Rect J() {
        Rect r1 = this.r;
        int r2 = r1.left;
        int r3 = r1.top;
        return new Rect(r2, r3, r1.right, L() + r3);
    }

    private int K() {
        Bitmap r0 = this.v;
        if (r0 != null) goto L5;
        return 0;
    L5:
        if (r0.isRecycled() == false) goto L8;
        return 0;
    L8:
        return this.v.getHeight();
    }

    private int L() {
        Bitmap r0 = this.x;
        if (r0 != null) goto L5;
        return 0;
    L5:
        if (r0.isRecycled() == false) goto L8;
        return 0;
    L8:
        return this.x.getHeight();
    }

    private Bitmap a(View r4) {
        if (r4 != null) goto L6;
        return null;
    L6:
        if ((r4 instanceof RelativeLayout) == true) goto L8;
    L10:
        r4.setDrawingCacheEnabled(true);
        r4.setDrawingCacheQuality(0);
        return r3.q(r4);
    L8:
        if (this.f10632a == null) goto L10;
        LinearLayout r0 = new LinearLayout(this.f10632a);
        r0.setOrientation(1);
        r0.addView(r4);
        r4 = r0;
        goto L10
    }

    static /* synthetic */ GLAnimation b(d2 r0) {
        return r0.G;
    }

    private void c(int r10, FloatBuffer r11, FloatBuffer r12) {
        if (r11 == null) goto L11;
        if (r12 == null) goto L12;
        if (r10 != 0) goto L7;
        return;
    L7:
        if (this.D != null) goto L9;
        s();
    L9:
        this.D.b();
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(1, 771);
        GLES20.glBlendColor(1.0f, 1.0f, 1.0f, 1.0f);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(ShaderConst.GL_TEXTURE_2D, r10);
        GLES20.glEnableVertexAttribArray(this.D.f10640f);
        GLES20.glVertexAttribPointer(this.D.f10640f, 3, 5126, false, 12, r11);
        GLES20.glEnableVertexAttribArray(this.D.f10641g);
        GLES20.glVertexAttribPointer(this.D.f10641g, 2, 5126, false, 8, r12);
        GLES20.glUniformMatrix4fv(this.D.f10639e, 1, false, this.E, 0);
        GLES20.glDrawArrays(6, 0, 4);
        GLES20.glDisableVertexAttribArray(this.D.f10640f);
        GLES20.glDisableVertexAttribArray(this.D.f10641g);
        GLES20.glBindTexture(ShaderConst.GL_TEXTURE_2D, 0);
        GLES20.glUseProgram(0);
        GLES20.glDisable(3042);
        return;
    L12:
        return;
    }

    static /* synthetic */ boolean i(d2 r0, boolean r1) {
        r0.I = r1;
        return r1;
    }

    static /* synthetic */ void m(d2 r0, boolean r1) {
        r0.n(r1);
    }

    private void n(boolean r1) {
        if (r1 == false) goto L4;
        l(A());
        return;
    L4:
        l(B());
    }

    private synchronized void q(Bitmap r2) {
        monitor-enter(this);
        if (r2 != null) goto L13;
    L11:
        monitor-exit(this);
        return;
    L13:
    L8:
        th = move-exception;
        throw th;
    L5:
        if (r2.isRecycled() == true) goto L11;
        r3.g0(r2);     // Catch: Throwable -> L8
        goto L11
    }

    private void r(boolean r4) {
        GLAnimation r0 = this.H;
        if (r0 == null) goto L5;
        this.K = false;
        this.I = true;
        r0.startNow();
        this.H.setAnimationListener(new a(this, r4));
        return;
    L5:
        GLAnimation r1 = this.G;
        if (r1 == null) goto L8;
        this.I = true;
        r1.startNow();
        n(r4);
        return;
    L8:
        n(r4);
    }

    private synchronized void t(Bitmap r2) {
        monitor-enter(this);
        if (r2 != null) goto L13;
    L11:
        monitor-exit(this);
        return;
    L13:
    L8:
        th = move-exception;
        throw th;
    L5:
        if (r2.isRecycled() == true) goto L11;
        q(this.w);     // Catch: Throwable -> L8
        this.w = r2;     // Catch: Throwable -> L8
        goto L11
    }

    private synchronized void v(Bitmap r2) {
        monitor-enter(this);
        if (r2 != null) goto L13;
    L11:
        monitor-exit(this);
        return;
    L13:
    L8:
        th = move-exception;
        throw th;
    L5:
        if (r2.isRecycled() == true) goto L11;
        q(this.x);     // Catch: Throwable -> L8
        this.x = r2;     // Catch: Throwable -> L8
        goto L11
    }

    private synchronized void w(Bitmap r2) {
        monitor-enter(this);
        if (r2 != null) goto L13;
    L11:
        monitor-exit(this);
        return;
    L13:
    L8:
        th = move-exception;
        throw th;
    L5:
        if (r2.isRecycled() == true) goto L11;
        q(this.y);     // Catch: Throwable -> L8
        this.y = r2;     // Catch: Throwable -> L8
        goto L11
    }

    private boolean z(Bitmap r4) {
        if (this.v == null) goto L8;
        if (r4.hashCode() != this.v.hashCode()) goto L8;
        return true;
    L8:
        if (this.x == null) goto L13;
        if (r4.hashCode() != this.x.hashCode()) goto L13;
        return true;
    L13:
        if (this.w == null) goto L18;
        if (r4.hashCode() != this.w.hashCode()) goto L18;
        return true;
    L18:
        if (this.y != null) goto L20;
        return false;
    L20:
        if (r4.hashCode() != this.y.hashCode()) goto L24;
        return true;
    L24:
        return false;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean calMapFPoint() throws RemoteException {
        return false;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean checkInBounds() {
        return true;
    }

    public synchronized void d(Bitmap r2) {
        monitor-enter(this);
        if (r2 != null) goto L13;
    L11:
        monitor-exit(this);
        return;
    L13:
    L8:
        th = move-exception;
        throw th;
    L5:
        if (r2.isRecycled() == true) goto L11;
        this.v = r2;     // Catch: Throwable -> L8
        goto L11
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void destroy() {
        if (this.c == false) goto L17;
        remove();     // Catch: Throwable -> L12
        G();     // Catch: Throwable -> L12
        FloatBuffer r0 = this.l;     // Catch: Throwable -> L12
        if (r0 == null) goto L7;
        r0.clear();     // Catch: Throwable -> L12
        this.l = null;     // Catch: Throwable -> L12
    L7:
        FloatBuffer r1 = this.i;     // Catch: Throwable -> L12
        if (r1 == null) goto L10;
        r1.clear();     // Catch: Throwable -> L12
        this.i = null;     // Catch: Throwable -> L12
    L10:
        this.f10637h = null;     // Catch: Throwable -> L12
        this.t = 0;     // Catch: Throwable -> L12
        return;
    L12:
        th = move-exception;
        e6.r(th, "PopupOverlay", "realDestroy");
        th.printStackTrace();
        return;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public void draw(MapConfig r1) throws RemoteException {
    }

    public void e(FPoint r1) {
        this.f10637h = r1;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public boolean equalsRemote(IOverlay r2) throws RemoteException {
        if (equals(r2) == false) goto L5;
        return true;
    L5:
        if (r2.getId().equals(getId()) == true) goto L11;
        return false;
    L11:
        return true;
    }

    public void f(boolean r1) {
        this.u = r1;
    }

    public boolean g() {
        return this.u;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public String getId() {
        if (this.j != null) goto L6;
        this.j = "PopupOverlay";
    L6:
        return this.j;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public float getZIndex() {
        return BitmapDescriptorFactory.HUE_RED;
    }

    public boolean h(int r13, int r14) {
        GLMapState r0 = this.A.getMapProjection();
        if (this.f10637h == null) goto L30;
        if (r0 == null) goto L30;
        IPoint r1 = IPoint.obtain();
        if (this.A.getMapConfig() == null) goto L10;
        if (r0 == null) goto L10;
        FPoint r3 = FPoint.obtain();
        FPoint r4 = this.f10637h;
        r0.p20ToScreenPoint((int) ((PointF) r4).x, (int) ((PointF) r4).y, r3);
        ((Point) r1).x = (int) ((PointF) r3).x;
        ((Point) r1).y = (int) ((PointF) r3).y;
        r3.recycle();
    L10:
        int r2 = j();
        int r5 = o();
        int r6 = (int) ((((Point) r1).x + this.f10633d) - (r2 * this.m));
        int r7 = (int) ((((Point) r1).y + this.f10634e) + (r5 * (1.0f - this.n)));
        r1.recycle();
        if ((r6 - r2) > r13) goto L30;
        if (r6 < ((-r2) * 2)) goto L30;
        if (r7 < ((-r5) * 2)) goto L30;
        if ((r7 - r5) > r14) goto L30;
        Bitmap r15 = this.p;
        if (r15 != null) goto L22;
        return false;
    L22:
        int r16 = r15.getWidth();
        int r8 = this.p.getHeight();
        if (this.l != null) goto L25;
        this.l = r3.E(new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, 1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED});
    L25:
        int r9 = (int) ((((double) (1.0f - this.s)) * 0.5d) * ((double) r16));
        float[] r10 = this.C;
        int r11 = r6 + r9;
        float r12 = r11;
        r10[0] = r12;
        Rect r17 = this.r;
        r17.left = r11;
        int r18 = r14 - r7;
        float r19 = r18;
        r10[1] = r19;
        r10[2] = 0.0f;
        int r20 = r6 + r16;
        float r110 = r20 - r9;
        r10[3] = r110;
        r10[4] = r19;
        r17.top = r7 - r8;
        r10[5] = 0.0f;
        r10[6] = r110;
        r17.right = r20;
        float r111 = r18 + r8;
        r10[7] = r111;
        r17.bottom = r7;
        r10[8] = 0.0f;
        r10[9] = r12;
        r10[10] = r111;
        r10[11] = 0.0f;
        FloatBuffer r112 = this.i;
        if (r112 != null) goto L28;
        this.i = r3.E(r10);
    L29:
        return true;
    L28:
        this.i = r3.F(r10, r112);
    L30:
        return false;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public int hashCodeRemote() {
        return super.hashCode();
    }

    @Override // com.autonavi.base.amap.api.mapcore.infowindow.IInfoWindowAction
    public synchronized void hideInfoWindow() {
        monitor-enter(this);
        setVisible(false);     // Catch: Throwable -> L7
        G();     // Catch: Throwable -> L7
        this.z = false;     // Catch: Throwable -> L7
        monitor-exit(this);
        return;
    L7:
        th = move-exception;
        throw th;
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
        monitor-enter(this);     // Catch: Throwable -> L16
        Bitmap r1 = this.p;     // Catch: Throwable -> L13
        if (r1 != null) goto L7;
    L11:
        monitor-exit(this);     // Catch: Throwable -> L13
        return 0;
    L7:
        if (r1.isRecycled() == true) goto L11;
        int r2 = this.p.getWidth();     // Catch: Throwable -> L13
        monitor-exit(this);     // Catch: Throwable -> L13
        return r2;
    L13:
        th = move-exception;
        throw th;     // Catch: Throwable -> L16
    L16:
        return 0;
    }

    public void k(int r11, int r12) {
        if (this.k == true) goto L5;
        return;
    L5:
        if (this.f10637h != null) goto L7;
        return;
    L7:
        if (this.p == null) goto L45;
        u();
        this.p.isRecycled();
        if (this.B == false) goto L12;
    L31:
        C();
        if (h(r11, r12) == false) goto L43;
        Matrix.setIdentityM(this.E, 0);
        Matrix.orthoM(this.E, 0, BitmapDescriptorFactory.HUE_RED, r11, BitmapDescriptorFactory.HUE_RED, r12, 1.0f, -1.0f);
        c(this.t, this.i, this.l);
        if (this.o == false) goto L44;
        this.o = false;
        H();
        return;
    L44:
        return;
    L43:
        return;
    L12:
        if (this.p.isRecycled() == true) goto L31;
        int r0 = this.t;     // Catch: Throwable -> L28
        if (r0 == 0) goto L16;
        GLES20.glDeleteTextures(1, new int[]{r0}, 0);     // Catch: Throwable -> L28
    L17:
        monitor-enter(this);     // Catch: Throwable -> L28
        Bitmap r1 = this.p;     // Catch: Throwable -> L25
        if (r1 != null) goto L21;
    L23:
        monitor-exit(this);     // Catch: Throwable -> L25
    L21:
        if (r1.isRecycled() == true) goto L23;
        r3.c0(this.t, this.p, false);     // Catch: Throwable -> L25
        this.B = true;     // Catch: Throwable -> L25
    L25:
        th = move-exception;
        throw th;     // Catch: Throwable -> L28
    L16:
        this.t = D();     // Catch: Throwable -> L28
    L28:
        th = move-exception;
        e6.r(th, "PopupOverlay", "drawMarker");
        th.printStackTrace();
        return;
    }

    public synchronized void l(Bitmap r3) {
        monitor-enter(this);
        if (r3 != null) goto L33;
    L30:
        monitor-exit(this);
        return;
    L33:
        if (r3.isRecycled() == true) goto L30;
        Bitmap r0 = this.p;     // Catch: Throwable -> L32
        if (r0 != null) goto L10;
    L13:
        Bitmap r1 = this.p;     // Catch: Throwable -> L32
        if (r1 != null) goto L16;
    L27:
        this.B = false;     // Catch: Throwable -> L32
        this.p = r3;     // Catch: Throwable -> L32
        goto L28
    L16:
        if (this.v != null) goto L25;
        if (this.w != null) goto L25;
        if (this.x != null) goto L25;
        if (this.y != null) goto L25;
        q(this.q);     // Catch: Throwable -> L32
        this.q = this.p;     // Catch: Throwable -> L32
    L25:
        if (z(r1) == true) goto L27;
        q(this.q);     // Catch: Throwable -> L32
        this.q = this.p;     // Catch: Throwable -> L32
        goto L27
    L10:
        if (r0.hashCode() != r3.hashCode()) goto L13;
        monitor-exit(this);
        return;
    L28:
        monitor-exit(this);
    }

    public int o() {
        Bitmap r1 = this.p;     // Catch: Throwable -> L9
        if (r1 != null) goto L6;
        return 0;
    L6:
        if (r1.isRecycled() == true) goto L13;
        return this.p.getHeight();
    L13:
        return 0;
    L14:
        return 0;
    }

    @Override // com.autonavi.base.amap.api.mapcore.infowindow.IInfoWindowAction
    public boolean onInfoWindowTap(MotionEvent r4) {
        if (this.k == true) goto L5;
    L13:
        return false;
    L5:
        if (this.b == null) goto L13;
        if (this.z == false) goto L13;
        if (r3.M(this.r, (int) r4.getX(), (int) r4.getY()) == false) goto L13;
        return true;
    }

    public void p(int r2, int r3) throws RemoteException {
        if (this.I == false) goto L5;
        this.f10635f = r2;
        this.f10636g = r3;
        return;
    L5:
        this.f10633d = r2;
        this.f10634e = r3;
        this.f10635f = r2;
        this.f10636g = r3;
    }

    @Override // com.autonavi.base.amap.api.mapcore.infowindow.IInfoWindowAction
    public void redrawInfoWindow() {
        monitor-enter(this);     // Catch: Throwable -> L76
        BaseOverlayImp r0 = this.b;     // Catch: Throwable -> L73
        boolean r1 = false;
        if (r0 != null) goto L6;
    L70:
        setVisible(false);     // Catch: Throwable -> L73
        monitor-exit(this);     // Catch: Throwable -> L73
        return;
    L6:
        if (r0.checkInBounds() == false) goto L70;
        monitor-exit(this);     // Catch: Throwable -> L73
        setVisible(true);     // Catch: Throwable -> L76
        Rect r2 = this.b.getRect();     // Catch: Throwable -> L76
        int r3 = this.b.getRealInfoWindowOffsetX() + this.b.getInfoWindowOffsetX();     // Catch: Throwable -> L76
        int r4 = (this.b.getRealInfoWindowOffsetY() + this.b.getInfoWindowOffsetY()) + 2;     // Catch: Throwable -> L76
        if ((this.b instanceof w1) == false) goto L57;
        monitor-enter(this);     // Catch: Throwable -> L76
    L53:
        th = move-exception;
        throw th;     // Catch: Throwable -> L76
    L14:
        if (x() == true) goto L16;
    L23:
        boolean r5 = true;
    L24:
        if (r5 == false) goto L51;
        w1 r6 = (w1) this.b;     // Catch: Throwable -> L53
        r6.getIMarkerAction();     // Catch: Throwable -> L53
        if (r6 != null) goto L28;
    L32:
        setVisible(true);     // Catch: Throwable -> L53
        if (r6 != null) goto L35;
    L50:
        e(this.b.getGeoPosition());     // Catch: Throwable -> L53
        p(r3, r4);     // Catch: Throwable -> L53
        F();     // Catch: Throwable -> L53
        goto L51
    L35:
        if (r6.isInfoWindowAutoOverturn() == false) goto L50;
        Rect r7 = I();     // Catch: Throwable -> L53
        Rect r8 = J();     // Catch: Throwable -> L53
        if (g() == false) goto L39;
        r8.offset(0, (r2.height() + r7.height()) + 2);     // Catch: Throwable -> L53
    L40:
        int r9 = this.A.checkMarkerInRect(r6, r7);     // Catch: Throwable -> L53
        int r10 = this.A.checkMarkerInRect(r6, r8);     // Catch: Throwable -> L53
        if (r9 <= 0) goto L46;
        if (r10 == 0) goto L45;
        if (r10 <= 0) goto L46;
        if (r9 >= r10) goto L46;
    L45:
        r1 = true;
    L46:
        if (r1 == false) goto L48;
        r4 = (((this.b.getRealInfoWindowOffsetY() + this.b.getInfoWindowOffsetY()) + 2) + r2.height()) + r8.height();     // Catch: Throwable -> L53
        E();     // Catch: Throwable -> L53
    L49:
        e(this.b.getGeoPosition());     // Catch: Throwable -> L53
        p(r3, r4);     // Catch: Throwable -> L53
        goto L51
    L48:
        F();     // Catch: Throwable -> L53
        goto L49
    L39:
        r7.offset(0, -((r2.height() + r7.height()) + 2));     // Catch: Throwable -> L53
        goto L40
    L28:
        if (r6.isInfoWindowEnable() == true) goto L32;
        setVisible(false);     // Catch: Throwable -> L53
        monitor-exit(this);     // Catch: Throwable -> L53
        return;
    L51:
        monitor-exit(this);     // Catch: Throwable -> L53
        return;
    L16:
        if (this.p == null) goto L18;
    L22:
        r5 = false;
        goto L24
    L18:
        if (this.v != null) goto L23;
        if (this.x == null) goto L22;
    L57:
        if (x() == false) goto L65;
        if (this.p == null) goto L61;
        return;
    L61:
        if (this.v != null) goto L65;
        if (this.x != null) goto L65;
        return;
    L65:
        if (this.b.isInfoWindowEnable() == true) goto L68;
        setVisible(false);     // Catch: Throwable -> L76
        return;
    L68:
        setVisible(true);     // Catch: Throwable -> L76
        e(this.b.getGeoPosition());     // Catch: Throwable -> L76
        p(r3, r4);     // Catch: Throwable -> L76
        F();     // Catch: Throwable -> L76
        return;
    L73:
        th = move-exception;
        throw th;     // Catch: Throwable -> L76
    L76:
        th = move-exception;
        th.printStackTrace();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void remove() throws RemoteException {
    }

    public void s() {
        this.D = new b("texture.glsl");
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setAboveMaskLayer(boolean r1) {
    }

    @Override // com.autonavi.base.amap.api.mapcore.infowindow.IInfoWindowAction
    public void setInfoWindowAdapterManager(s r1) {
        monitor-enter(this);
        this.M = r1;     // Catch: Throwable -> L6
        monitor-exit(this);     // Catch: Throwable -> L6
        return;
    L6:
        th = move-exception;
        throw th;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IInfoWindowManager
    public void setInfoWindowAnimation(Animation r1, Animation.AnimationListener r2) {
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IInfoWindowManager
    public void setInfoWindowAppearAnimation(Animation r3) {
        GLAnimation r0 = this.H;
        if (r0 != null) goto L5;
    L10:
        this.G = r3.glAnimation;
        return;
    L5:
        if (r0.equals(r3.glAnimation) == false) goto L10;
        this.G = r3.glAnimation.clone();     // Catch: Throwable -> L8
        return;
    L8:
        th = move-exception;
        e6.r(th, "PopupOverlay", "setInfoWindowDisappearAnimation");
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IInfoWindowManager
    public void setInfoWindowBackColor(int r1) {
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IInfoWindowManager
    public void setInfoWindowBackEnable(boolean r1) {
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IInfoWindowManager
    public void setInfoWindowBackScale(float r1, float r2) {
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IInfoWindowManager
    public void setInfoWindowDisappearAnimation(Animation r3) {
        GLAnimation r0 = this.G;
        if (r0 != null) goto L5;
    L10:
        this.H = r3.glAnimation;
        return;
    L5:
        if (r0.equals(r3.glAnimation) == false) goto L10;
        this.H = r3.glAnimation.clone();     // Catch: Throwable -> L8
        return;
    L8:
        th = move-exception;
        e6.r(th, "PopupOverlay", "setInfoWindowDisappearAnimation");
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IInfoWindowManager
    public void setInfoWindowMovingAnimation(Animation r1) {
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setVisible(boolean r2) {
        if (this.k == true) goto L6;
        if (r2 == false) goto L6;
        this.o = true;
    L6:
        this.k = r2;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setZIndex(float r1) {
    }

    @Override // com.autonavi.base.amap.api.mapcore.infowindow.IInfoWindowAction
    public synchronized void showInfoWindow(BaseOverlayImp r3) throws RemoteException {
        monitor-enter(this);
        if (r3 != null) goto L24;
        monitor-exit(this);
        return;
    L24:
    L21:
        th = move-exception;
        throw th;
    L7:
        if (r3.isInfoWindowEnable() == true) goto L10;
        monitor-exit(this);
        return;
    L10:
        BaseOverlayImp r0 = this.b;     // Catch: Throwable -> L21
        if (r0 == null) goto L16;
        if (r0.getId().equals(r3.getId()) == true) goto L16;
        hideInfoWindow();     // Catch: Throwable -> L21
    L16:
        if (this.M == null) goto L18;
        this.b = r3;     // Catch: Throwable -> L21
        r3.setInfoWindowShown(true);     // Catch: Throwable -> L21
        setVisible(true);     // Catch: Throwable -> L21
        y();     // Catch: Throwable -> L21
    L18:
        this.z = true;     // Catch: Throwable -> L21
        monitor-exit(this);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IInfoWindowManager
    public void startAnimation() {
    }

    protected void u() {
        monitor-enter(this);
        long r1 = 100;
        if (this.M == null) goto L16;
        Object r0 = this.b;     // Catch: Throwable -> L28
        if ((r0 instanceof w1) == false) goto L8;
        long r5 = this.M.t(new Marker((IMarker) r0));     // Catch: Throwable -> L28
    L10:
        if (r5 > 0) goto L13;
        r1 = Long.MAX_VALUE;
    L17:
        monitor-exit(this);     // Catch: Throwable -> L28
        long r6 = System.currentTimeMillis();
        long r7 = this.F;
        if ((r6 - r7) > r1) goto L21;
        return;
    L21:
        if (r7 != 0) goto L31;
    L26:
        this.F = r6;
        return;
    L31:
        showInfoWindow(this.b);     // Catch: RemoteException -> L24
    L24:
        e = move-exception;
        e.printStackTrace();
        goto L26
    L13:
        if (r5 <= 100) goto L17;
        r1 = r5;
        goto L17
    L8:
        r5 = this.M.t(new GL3DModel((t1) r0));     // Catch: Throwable -> L28
        goto L10
    L16:
        r1 = 0;
    L28:
        th = move-exception;
        throw th;
    }

    public boolean x() {
        return this.I;
    }

    protected void y() {
        Object r0 = this.b;     // Catch: Throwable -> L27
        if ((r0 instanceof w1) == false) goto L16;
        Marker r1 = new Marker((IMarker) r0);     // Catch: Throwable -> L27
        s r2 = this.M;     // Catch: Throwable -> L27
        if (r2 == null) goto L31;
        Bitmap r3 = a(r2.d(r1));     // Catch: Throwable -> L27
        if (r3 != null) goto L14;
        View r4 = this.M.o(r1);     // Catch: Throwable -> L27
        if (r4 == null) goto L14;
        if (r4.getBackground() != null) goto L13;
        r4.setBackground(this.M.B());     // Catch: Throwable -> L27
    L13:
        r3 = a(r4);     // Catch: Throwable -> L27
    L14:
        d(r3);     // Catch: Throwable -> L27
        t(a(this.M.e(r1)));     // Catch: Throwable -> L27
        v(a(this.M.p(r1)));     // Catch: Throwable -> L27
        w(a(this.M.u(r1)));     // Catch: Throwable -> L27
        return;
    L31:
        return;
    L16:
        if (this.M == null) goto L33;
        GL3DModel r5 = new GL3DModel((t1) r0);     // Catch: Throwable -> L27
        Bitmap r6 = a(this.M.d(r5));     // Catch: Throwable -> L27
        if (r6 != null) goto L25;
        View r7 = this.M.o(r5);     // Catch: Throwable -> L27
        if (r7 == null) goto L25;
        if (r7.getBackground() != null) goto L24;
        r7.setBackground(this.M.B());     // Catch: Throwable -> L27
    L24:
        r6 = a(r7);     // Catch: Throwable -> L27
    L25:
        d(r6);     // Catch: Throwable -> L27
        return;
    L33:
        return;
    L27:
        th = move-exception;
        e6.r(th, "PopupOverlay", "getInfoWindow");
        th.printStackTrace();
    }
}
