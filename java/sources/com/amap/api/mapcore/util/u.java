package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.RemoteException;
import android.util.Log;
import android.view.MotionEvent;
import cn.mucang.sundial.android.tcp.Constant;
import com.amap.api.maps.model.LatLngBounds;
import com.amap.api.maps.model.Marker;
import com.amap.api.maps.model.MarkerOptions;
import com.amap.api.maps.model.Text;
import com.amap.api.maps.model.TextOptions;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.interfaces.IMarker;
import com.autonavi.base.amap.api.mapcore.BaseOverlayImp;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import com.autonavi.base.amap.api.mapcore.overlays.IMarkerDelegate;
import com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate;
import com.autonavi.base.amap.mapcore.MapConfig;
import com.serenegiant.glutils.ShaderConst;
import java.io.Serializable;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.apache.commons.math3.optimization.direct.CMAESOptimizer;

/* JADX INFO: loaded from: classes5.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    IAMapDelegate f11208a;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private IPoint f11211f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private BaseOverlayImp f11212g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private IMarkerDelegate f11213h;
    private FloatBuffer k;
    private HandlerThread l;
    private Handler m;
    public h2.d p;
    private List<IOverlayImageDelegate> b = new ArrayList(500);
    private List<ha> c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<IOverlayImageDelegate> f11209d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f11210e = new a();
    private int[] n = new int[1];
    float[] o = new float[180000];
    int q = 0;
    int r = 0;
    private Runnable s = new c();
    private ew i = new ew(512, 1024);
    private f3 j = new f3();

    static class a implements Serializable, Comparator<Object> {
        a() {
        }

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            IOverlayImageDelegate iOverlayImageDelegate = (IOverlayImageDelegate) obj;
            IOverlayImageDelegate iOverlayImageDelegate2 = (IOverlayImageDelegate) obj2;
            if (iOverlayImageDelegate == null || iOverlayImageDelegate2 == null) {
                return 0;
            }
            try {
                return Float.compare(iOverlayImageDelegate.getZIndex(), iOverlayImageDelegate2.getZIndex());
            } catch (Throwable th) {
                e6.r(th, "MapOverlayImageView", "compare");
                th.printStackTrace();
                return 0;
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ LatLngBounds.Builder f11214a;

        b(LatLngBounds.Builder builder) {
            this.f11214a = builder;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                u.this.f11208a.moveCamera(h.i(this.f11214a.build(), 50));
            } catch (Throwable unused) {
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (u.this.b) {
                u.this.E();
            }
        }
    }

    public u(Context context, IAMapDelegate iAMapDelegate) {
        this.f11208a = iAMapDelegate;
        HandlerThread handlerThread = new HandlerThread("AMapZindexSortThread");
        this.l = handlerThread;
        handlerThread.start();
        this.m = new Handler(this.l.getLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        try {
            Collections.sort(this.b, this.f11210e);
        } catch (Throwable th) {
            e6.r(th, "MapOverlayImageView", "changeOverlayIndex");
        }
    }

    private void F() {
        IAMapDelegate iAMapDelegate;
        if (this.p != null || (iAMapDelegate = this.f11208a) == null) {
            return;
        }
        this.p = (h2.d) iAMapDelegate.getGLShader(1);
    }

    private void h(int i) {
        if (i > 5000) {
            i = 5000;
        }
        if (this.q == 0) {
            int[] iArr = new int[2];
            GLES20.glGenBuffers(2, iArr, 0);
            this.q = iArr[0];
            this.r = iArr[1];
            ShortBuffer shortBufferE = this.j.e(CMAESOptimizer.DEFAULT_MAXITERATIONS);
            short[] sArr = new short[CMAESOptimizer.DEFAULT_MAXITERATIONS];
            for (int i2 = 0; i2 < 5000; i2++) {
                int i3 = i2 * 6;
                int i4 = i2 * 4;
                short s = (short) (i4 + 0);
                sArr[i3 + 0] = s;
                sArr[i3 + 1] = (short) (i4 + 1);
                short s2 = (short) (i4 + 2);
                sArr[i3 + 2] = s2;
                sArr[i3 + 3] = s;
                sArr[i3 + 4] = s2;
                sArr[i3 + 5] = (short) (i4 + 3);
            }
            shortBufferE.put(sArr);
            shortBufferE.flip();
            GLES20.glBindBuffer(34963, this.r);
            GLES20.glBufferData(34963, Constant.ONE_MINUTE, shortBufferE, 35044);
        }
        GLES20.glBindBuffer(34962, this.q);
        GLES20.glBufferData(34962, i * 36 * 4, this.k, 35044);
    }

    private void i(int i, int i2, int i3, int i4) {
        if (i2 == 0 || i == 0) {
            return;
        }
        FloatBuffer floatBufferF = this.j.f(i2 * 36);
        this.k = floatBufferF;
        floatBufferF.put(this.o, i3, i4);
        this.k.flip();
        h(i2);
        j(i, i4, i2, this.k, this.f11208a.getMapConfig());
        this.j.d();
    }

    private void j(int i, int i2, int i3, FloatBuffer floatBuffer, MapConfig mapConfig) {
        if (i == 0 || floatBuffer == null || i3 == 0) {
            return;
        }
        h2.d dVar = this.p;
        if (dVar == null || dVar.i()) {
            F();
        }
        h2.d dVar2 = this.p;
        if (dVar2 == null || this.q == 0 || dVar2.f10857g < 0 || this.r == 0) {
            return;
        }
        dVar2.b();
        GLES20.glUniform1f(this.p.i, mapConfig.getSR());
        GLES20.glEnableVertexAttribArray(this.p.f10856f);
        GLES20.glBindBuffer(34962, this.q);
        GLES20.glVertexAttribPointer(this.p.f10856f, 4, 5126, false, 36, 0);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(1, 771);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(ShaderConst.GL_TEXTURE_2D, i);
        GLES20.glEnableVertexAttribArray(this.p.f10857g);
        GLES20.glBindBuffer(34962, this.q);
        GLES20.glVertexAttribPointer(this.p.f10857g, 2, 5126, false, 36, 16);
        GLES20.glEnableVertexAttribArray(this.p.f10858h);
        GLES20.glBindBuffer(34962, this.q);
        GLES20.glVertexAttribPointer(this.p.f10858h, 3, 5126, false, 36, 24);
        GLES20.glUniformMatrix4fv(this.p.f10855e, 1, false, u(), 0);
        GLES20.glBindBuffer(34963, this.r);
        GLES20.glDrawElements(4, i3 * 6, 5123, 0);
        GLES20.glBindBuffer(34962, 0);
        GLES20.glBindBuffer(34963, 0);
        GLES20.glBindTexture(ShaderConst.GL_TEXTURE_2D, 0);
        GLES20.glDisableVertexAttribArray(this.p.f10856f);
        GLES20.glDisableVertexAttribArray(this.p.f10857g);
        GLES20.glDisable(3042);
        GLES20.glUseProgram(0);
    }

    private void y(IOverlayImageDelegate iOverlayImageDelegate) {
        try {
            this.b.add(iOverlayImageDelegate);
            A();
        } catch (Throwable th) {
            e6.r(th, "MapOverlayImageView", "addMarker");
        }
    }

    public void A() {
        Handler handler = this.m;
        if (handler != null) {
            handler.removeCallbacks(this.s);
            this.m.postDelayed(this.s, 10L);
        }
    }

    protected int B() {
        int size;
        synchronized (this.b) {
            size = this.b.size();
        }
        return size;
    }

    public void C() {
        synchronized (this.c) {
            int baseOverlayTextureID = this.f11208a.getBaseOverlayTextureID();
            for (int i = 0; i < this.c.size(); i++) {
                ha haVar = this.c.get(i);
                if (haVar != null) {
                    haVar.x();
                    if (haVar.y() <= 0) {
                        if (haVar.u() == baseOverlayTextureID) {
                            this.i.c(haVar.z());
                        } else {
                            this.n[0] = haVar.u();
                            GLES20.glDeleteTextures(1, this.n, 0);
                            haVar.b(0);
                        }
                        IAMapDelegate iAMapDelegate = this.f11208a;
                        if (iAMapDelegate != null) {
                            iAMapDelegate.removeTextureItem(haVar.z());
                        }
                    }
                }
            }
            this.c.clear();
        }
    }

    public void D() {
        try {
            for (IOverlayImageDelegate iOverlayImageDelegate : this.b) {
                if (iOverlayImageDelegate != null) {
                    iOverlayImageDelegate.destroy(false);
                }
            }
            s(null);
            HandlerThread handlerThread = this.l;
            if (handlerThread != null) {
                handlerThread.quit();
            }
            this.m = null;
            this.f11208a = null;
        } catch (Throwable th) {
            e6.r(th, "MapOverlayImageView", "destroy");
            th.printStackTrace();
            Log.d("amapApi", "MapOverlayImageView clear erro" + th.getMessage());
        }
    }

    public Marker a(MarkerOptions markerOptions) throws RemoteException {
        Marker marker;
        if (markerOptions == null) {
            return null;
        }
        w1 w1Var = new w1(markerOptions, this);
        synchronized (this.b) {
            y(w1Var);
            b3.b(this.b.size());
            marker = new Marker(w1Var);
        }
        return marker;
    }

    public Text b(TextOptions textOptions) throws RemoteException {
        Text text;
        if (textOptions == null) {
            return null;
        }
        synchronized (this.b) {
            e2 e2Var = new e2(textOptions, this);
            y(e2Var);
            text = new Text(e2Var);
        }
        return text;
    }

    public BaseOverlayImp c(MotionEvent motionEvent) {
        synchronized (this.b) {
            for (int size = this.b.size() - 1; size >= 0; size--) {
                IOverlayImageDelegate iOverlayImageDelegate = this.b.get(size);
                if ((iOverlayImageDelegate instanceof w1) && r3.M(iOverlayImageDelegate.getRect(), (int) motionEvent.getX(), (int) motionEvent.getY())) {
                    w1 w1Var = (w1) iOverlayImageDelegate;
                    this.f11212g = w1Var;
                    return w1Var;
                }
            }
            return null;
        }
    }

    public IOverlayImageDelegate d(String str) throws RemoteException {
        synchronized (this.b) {
            int size = this.b.size();
            for (int i = 0; i < size; i++) {
                IOverlayImageDelegate iOverlayImageDelegate = this.b.get(i);
                if (iOverlayImageDelegate != null && iOverlayImageDelegate.getId().equals(str)) {
                    return iOverlayImageDelegate;
                }
            }
            return null;
        }
    }

    public ArrayList<Marker> e(ArrayList<MarkerOptions> arrayList, boolean z) throws RemoteException {
        MarkerOptions markerOptions;
        if (arrayList == null || arrayList.size() == 0) {
            return null;
        }
        ArrayList<Marker> arrayList2 = new ArrayList<>();
        try {
            if (arrayList.size() != 1 || (markerOptions = arrayList.get(0)) == null) {
                LatLngBounds.Builder builder = LatLngBounds.builder();
                for (int i = 0; i < arrayList.size(); i++) {
                    MarkerOptions markerOptions2 = arrayList.get(i);
                    if (arrayList.get(i) != null) {
                        arrayList2.add(a(markerOptions2));
                        if (markerOptions2.getPosition() != null) {
                            builder.include(markerOptions2.getPosition());
                        }
                    }
                }
                if (z && arrayList2.size() > 0) {
                    this.f11208a.getMainHandler().postDelayed(new b(builder), 50L);
                }
            } else {
                arrayList2.add(a(markerOptions));
                if (z && markerOptions.getPosition() != null) {
                    this.f11208a.moveCamera(h.h(markerOptions.getPosition(), 18.0f));
                }
            }
            return arrayList2;
        } catch (Throwable th) {
            e6.r(th, "AMapDelegateImpGLSurfaceView", "addMarkers");
            th.printStackTrace();
            return arrayList2;
        }
    }

    public void g() {
        this.f11213h = null;
    }

    public void k(ha haVar) {
        synchronized (this.c) {
            if (haVar != null) {
                this.c.add(haVar);
            }
        }
    }

    public void l(BaseOverlayImp baseOverlayImp) {
        if (this.f11211f == null) {
            this.f11211f = IPoint.obtain();
        }
        Rect rect = baseOverlayImp.getRect();
        this.f11211f = IPoint.obtain(rect.left + (rect.width() / 2), rect.top);
        this.f11212g = baseOverlayImp;
        try {
            this.f11208a.showInfoWindow(baseOverlayImp);
        } catch (Throwable th) {
            e6.r(th, "MapOverlayImageView", "showInfoWindow");
            th.printStackTrace();
        }
    }

    public void m(IMarkerDelegate iMarkerDelegate) {
        try {
            if (this.f11213h != null) {
                if (iMarkerDelegate != null && iMarkerDelegate.getId().equals(this.f11213h.getId())) {
                    return;
                } else {
                    this.f11213h.setOnTap(false);
                }
            }
            if (this.b.contains(iMarkerDelegate)) {
                if (iMarkerDelegate != null) {
                    iMarkerDelegate.setOnTap(true);
                }
                this.f11213h = iMarkerDelegate;
            }
        } catch (Throwable th) {
            e6.r(th, "MapOverlayImageView", "set2Top");
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x004a A[Catch: all -> 0x00eb, TryCatch #1 {, blocks: (B:7:0x0010, B:9:0x001b, B:11:0x001d, B:13:0x002c, B:15:0x0038, B:34:0x0070, B:21:0x004a, B:23:0x0050, B:26:0x0057, B:28:0x0060, B:33:0x006d, B:18:0x0041, B:35:0x0073, B:37:0x0077, B:39:0x007d, B:40:0x0084, B:42:0x008c, B:44:0x0099, B:45:0x00a1, B:62:0x00e3, B:64:0x00e6, B:65:0x00e9, B:46:0x00a2, B:48:0x00a9, B:52:0x00bb, B:54:0x00c8, B:55:0x00cf, B:57:0x00d7, B:58:0x00dd, B:59:0x00de, B:49:0x00ae, B:51:0x00b4, B:30:0x0066), top: B:75:0x0010, outer: #3, inners: #0, #2 }] */
    public void n(boolean z) {
        try {
            IAMapDelegate iAMapDelegate = this.f11208a;
            if (iAMapDelegate == null) {
                return;
            }
            float mapPerPixelUnitLength = iAMapDelegate.getMapConfig().getMapPerPixelUnitLength();
            synchronized (this.b) {
                C();
                if (this.b.size() == 0) {
                    return;
                }
                this.f11209d.clear();
                int size = this.b.size();
                for (int i = 0; i < size; i++) {
                    IOverlayImageDelegate iOverlayImageDelegate = this.b.get(i);
                    if (z) {
                        if (iOverlayImageDelegate.getZIndex() == 2.1474836E9f) {
                            if (iOverlayImageDelegate.isVisible()) {
                                iOverlayImageDelegate.isAllowLow();
                                if (!iOverlayImageDelegate.checkInBounds()) {
                                }
                                this.f11209d.add(iOverlayImageDelegate);
                            }
                        }
                    } else if (iOverlayImageDelegate.getZIndex() != 2.1474836E9f) {
                        if (iOverlayImageDelegate.isVisible() && !iOverlayImageDelegate.isOnTap()) {
                            iOverlayImageDelegate.isAllowLow();
                            if (!iOverlayImageDelegate.checkInBounds() || iOverlayImageDelegate.isInfoWindowShown()) {
                                try {
                                    this.f11209d.add(iOverlayImageDelegate);
                                } catch (Throwable th) {
                                    th.printStackTrace();
                                }
                            }
                        }
                    }
                }
                IMarkerDelegate iMarkerDelegate = this.f11213h;
                if (iMarkerDelegate != null && iMarkerDelegate.isVisible()) {
                    this.f11209d.add(this.f11213h);
                }
                if (this.f11209d.size() > 0) {
                    int size2 = this.f11209d.size();
                    int i2 = 0;
                    int textureId = 0;
                    int i3 = 0;
                    int i4 = 0;
                    for (int i5 = 0; i5 < size2; i5++) {
                        IOverlayImageDelegate iOverlayImageDelegate2 = this.f11209d.get(i5);
                        synchronized (iOverlayImageDelegate2) {
                            iOverlayImageDelegate2.loadTexture(this.f11208a);
                            if (i5 == 0) {
                                textureId = iOverlayImageDelegate2.getTextureId();
                            } else {
                                int textureId2 = iOverlayImageDelegate2.getTextureId();
                                if (textureId2 != textureId) {
                                    i(textureId, i2, i3, i4);
                                    textureId = textureId2;
                                    i2 = 0;
                                    i3 = 0;
                                    i4 = 0;
                                }
                            }
                            iOverlayImageDelegate2.drawMarker(this.f11208a, this.o, i4, mapPerPixelUnitLength);
                            int textureId3 = iOverlayImageDelegate2.getTextureId();
                            if (textureId3 != textureId) {
                                i(textureId, i2, i3, i4);
                                i3 = i4;
                                textureId = textureId3;
                                i2 = 0;
                                i4 = 0;
                            }
                            i4 += 36;
                            i2++;
                            if (i2 == 5000) {
                                i(textureId, i2, i3, i4);
                                i2 = 0;
                                i3 = 0;
                                i4 = 0;
                            }
                        }
                    }
                    if (i2 > 0) {
                        i(textureId, i2, i3, i4);
                    }
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public synchronized boolean o(Bitmap bitmap, ha haVar) {
        ew.d dVarB = this.i.b(bitmap.getWidth() + 1, bitmap.getHeight() + 1, haVar.z());
        if (dVarB == null) {
            return false;
        }
        haVar.n(dVarB.f10767a / this.i.a());
        haVar.l(dVarB.b / this.i.d());
        haVar.p(((dVarB.f10767a + dVarB.c) - 1) / this.i.a());
        haVar.r(((dVarB.b + dVarB.f10768d) - 1) / this.i.d());
        haVar.h((dVarB.f10767a + 0.5f) / this.i.a());
        haVar.j((dVarB.b + 0.5f) / this.i.d());
        haVar.a((((dVarB.f10767a + dVarB.c) - 1) - 0.5f) / this.i.a());
        haVar.f((((dVarB.b + dVarB.f10768d) - 1) - 0.5f) / this.i.d());
        haVar.c(true);
        return true;
    }

    public boolean p(IOverlayImageDelegate iOverlayImageDelegate) {
        boolean zRemove;
        synchronized (this.b) {
            try {
                IMarkerDelegate iMarkerDelegate = this.f11213h;
                if (iMarkerDelegate != null && iMarkerDelegate.getId().equals(iOverlayImageDelegate.getId())) {
                    this.f11213h = null;
                }
                r(iOverlayImageDelegate);
            } catch (Throwable th) {
                th.printStackTrace();
            }
            zRemove = this.b.remove(iOverlayImageDelegate);
        }
        return zRemove;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0011 A[Catch: all -> 0x0026, TryCatch #0 {all -> 0x0026, blocks: (B:4:0x0003, B:6:0x0009, B:7:0x0011, B:9:0x0015, B:11:0x0023), top: B:17:0x0003 }] */
    public void r(IOverlayImageDelegate iOverlayImageDelegate) {
        BaseOverlayImp baseOverlayImp;
        if (iOverlayImageDelegate != null) {
            try {
                if (iOverlayImageDelegate.isInfoWindowShown()) {
                    this.f11208a.hideInfoWindow();
                    this.f11212g = null;
                } else {
                    baseOverlayImp = this.f11212g;
                    if (baseOverlayImp != null && baseOverlayImp.getId().equals(iOverlayImageDelegate.getId())) {
                        this.f11212g = null;
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        } else {
            baseOverlayImp = this.f11212g;
            if (baseOverlayImp != null) {
                this.f11212g = null;
            }
        }
    }

    public void s(String str) {
        boolean z;
        if (str != null) {
            try {
                z = str.trim().length() == 0;
            } catch (Throwable th) {
                e6.r(th, "MapOverlayImageView", "clear");
                th.printStackTrace();
                return;
            }
        }
        IOverlayImageDelegate iOverlayImageDelegate = null;
        this.f11212g = null;
        this.f11211f = null;
        this.f11213h = null;
        synchronized (this.b) {
            this.f11209d.clear();
            if (z) {
                this.b.clear();
            } else {
                int size = this.b.size();
                for (int i = 0; i < size; i++) {
                    IOverlayImageDelegate iOverlayImageDelegate2 = this.b.get(i);
                    if (str.equals(iOverlayImageDelegate2.getId())) {
                        iOverlayImageDelegate = iOverlayImageDelegate2;
                        break;
                    }
                }
                this.b.clear();
                if (iOverlayImageDelegate != null) {
                    this.b.add(iOverlayImageDelegate);
                    if (iOverlayImageDelegate.isOnTap() && (iOverlayImageDelegate instanceof IMarkerDelegate)) {
                        this.f11213h = (IMarkerDelegate) iOverlayImageDelegate;
                    }
                }
            }
        }
    }

    public boolean t(MotionEvent motionEvent) throws RemoteException {
        boolean z;
        Rect rect;
        boolean zM;
        synchronized (this.b) {
            z = false;
            for (int size = this.b.size() - 1; size >= 0; size--) {
                IOverlayImageDelegate iOverlayImageDelegate = this.b.get(size);
                if ((iOverlayImageDelegate instanceof w1) && iOverlayImageDelegate.isVisible() && ((w1) iOverlayImageDelegate).isClickable() && (zM = r3.M((rect = iOverlayImageDelegate.getRect()), (int) motionEvent.getX(), (int) motionEvent.getY()))) {
                    this.f11211f = IPoint.obtain(rect.left + (rect.width() / 2), rect.top);
                    this.f11212g = (w1) iOverlayImageDelegate;
                    z = zM;
                    break;
                }
            }
        }
        return z;
    }

    public float[] u() {
        IAMapDelegate iAMapDelegate = this.f11208a;
        return iAMapDelegate != null ? iAMapDelegate.getFinalMatrix() : new float[16];
    }

    public IAMapDelegate v() {
        return this.f11208a;
    }

    public boolean w(IOverlayImageDelegate iOverlayImageDelegate) {
        boolean zContains;
        synchronized (this.b) {
            zContains = this.b.contains(iOverlayImageDelegate);
        }
        return zContains;
    }

    public BaseOverlayImp x() {
        return this.f11212g;
    }

    public List<Marker> z() {
        ArrayList arrayList;
        synchronized (this.b) {
            arrayList = new ArrayList();
            try {
                for (IOverlayImageDelegate iOverlayImageDelegate : this.b) {
                    if ((iOverlayImageDelegate instanceof w1) && iOverlayImageDelegate.checkInBounds()) {
                        arrayList.add(new Marker((IMarker) iOverlayImageDelegate));
                    }
                }
            } catch (Throwable th) {
                e6.r(th, "MapOverlayImageView", "getMapScreenMarkers");
                th.printStackTrace();
            }
        }
        return arrayList;
    }
}
