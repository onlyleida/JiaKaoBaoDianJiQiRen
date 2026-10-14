package com.amap.api.mapcore.util;

import android.graphics.Bitmap;
import android.graphics.Point;
import android.opengl.GLES20;
import android.os.Build;
import android.os.RemoteException;
import android.util.Log;
import com.amap.api.maps.model.BitmapDescriptor;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.autonavi.amap.mapcore.DPoint;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.interfaces.IOverlay;
import com.autonavi.base.ae.gmap.GLMapState;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import com.autonavi.base.amap.api.mapcore.overlays.IGroundOverlayDelegate;
import com.autonavi.base.amap.mapcore.MapConfig;
import com.serenegiant.glutils.ShaderConst;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class u1 implements IGroundOverlayDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IAMapDelegate f11216a;
    private BitmapDescriptor b;
    private LatLng c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f11217d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f11218e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private LatLngBounds f11219f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f11220g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f11221h;
    private boolean i;
    private float j;
    private float k;
    private float l;
    private float m;
    private String n;
    private FloatBuffer o;
    private FloatBuffer p;
    private int q;
    private boolean r;
    private boolean s;
    private List<ha> t;
    private r u;
    float[] v;
    h2.c w;

    public u1(IAMapDelegate iAMapDelegate, r rVar) {
        this(iAMapDelegate);
        this.u = rVar;
    }

    private int a(boolean z, BitmapDescriptor bitmapDescriptor) {
        ha haVar;
        i();
        if (z) {
            haVar = this.u.a(bitmapDescriptor);
            if (haVar != null) {
                int iU = haVar.u();
                d(haVar);
                return iU;
            }
        } else {
            haVar = null;
        }
        int iJ = 0;
        if (haVar == null) {
            haVar = new ha(bitmapDescriptor, 0);
        }
        Bitmap bitmap = bitmapDescriptor.getBitmap();
        if (bitmap != null && !bitmap.isRecycled()) {
            iJ = j();
            haVar.b(iJ);
            if (z) {
                this.f11216a.addTextureItem(haVar);
            }
            d(haVar);
            r3.c0(iJ, bitmap, true);
        }
        return iJ;
    }

    private void b() {
        LatLng latLng = this.c;
        if (latLng == null) {
            return;
        }
        double dCos = ((double) this.f11217d) / ((Math.cos(latLng.latitude * 0.01745329251994329d) * 6371000.79d) * 0.01745329251994329d);
        double d2 = ((double) this.f11218e) / 111194.94043265979d;
        try {
            LatLng latLng2 = this.c;
            LatLng latLng3 = new LatLng(latLng2.latitude - (((double) (1.0f - this.m)) * d2), latLng2.longitude - (((double) this.l) * dCos));
            LatLng latLng4 = this.c;
            this.f11219f = new LatLngBounds(latLng3, new LatLng(latLng4.latitude + (((double) this.m) * d2), latLng4.longitude + (((double) (1.0f - this.l)) * dCos)));
        } catch (Throwable th) {
            th.printStackTrace();
        }
        g();
    }

    private void c(int i, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        if (floatBuffer == null || floatBuffer2 == null) {
            return;
        }
        h2.c cVar = this.w;
        if (cVar == null || cVar.i()) {
            k();
        }
        this.w.b();
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(1, 771);
        float f2 = this.k;
        GLES20.glBlendColor(f2 * 1.0f, f2 * 1.0f, f2 * 1.0f, f2);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(ShaderConst.GL_TEXTURE_2D, i);
        GLES20.glEnableVertexAttribArray(this.w.f10852f);
        GLES20.glVertexAttribPointer(this.w.f10852f, 4, 5126, false, 16, (Buffer) floatBuffer);
        GLES20.glEnableVertexAttribArray(this.w.f10853g);
        GLES20.glVertexAttribPointer(this.w.f10853g, 2, 5126, false, 8, (Buffer) floatBuffer2);
        GLES20.glUniform4f(this.w.f10854h, ((int) this.f11216a.getMapConfig().getSX()) / 10000, ((int) this.f11216a.getMapConfig().getSY()) / 10000, ((int) this.f11216a.getMapConfig().getSX()) % 10000, ((int) this.f11216a.getMapConfig().getSY()) % 10000);
        int i2 = this.w.i;
        float f3 = this.k;
        GLES20.glUniform4f(i2, f3 * 1.0f, f3 * 1.0f, 1.0f * f3, f3);
        GLES20.glUniformMatrix4fv(this.w.f10851e, 1, false, this.f11216a.getFinalMatrix(), 0);
        GLES20.glDrawArrays(6, 0, 4);
        GLES20.glBindTexture(ShaderConst.GL_TEXTURE_2D, 0);
        GLES20.glDisableVertexAttribArray(this.w.f10852f);
        GLES20.glDisableVertexAttribArray(this.w.f10853g);
        GLES20.glDisable(3042);
        GLES20.glUseProgram(0);
    }

    private void d(ha haVar) {
        if (haVar != null) {
            this.t.add(haVar);
            haVar.w();
        }
    }

    private void e(DPoint dPoint, double d2, double d3, double d4, double d5, IPoint iPoint) {
        double d6 = d2 - (d4 * ((double) this.l));
        double d7 = (d5 * ((double) (1.0f - this.m))) - d3;
        double d8 = ((double) (-this.f11220g)) * 0.01745329251994329d;
        ((Point) iPoint).x = (int) (dPoint.x + (Math.cos(d8) * d6) + (Math.sin(d8) * d7));
        ((Point) iPoint).y = (int) (dPoint.y + ((d7 * Math.cos(d8)) - (d6 * Math.sin(d8))));
    }

    private synchronized void f() {
        LatLngBounds latLngBounds = this.f11219f;
        if (latLngBounds == null) {
            return;
        }
        LatLng latLng = latLngBounds.southwest;
        LatLng latLng2 = latLngBounds.northeast;
        double d2 = latLng.latitude;
        double d3 = d2 + (((double) (1.0f - this.m)) * (latLng2.latitude - d2));
        double d4 = latLng.longitude;
        LatLng latLng3 = new LatLng(d3, d4 + (((double) this.l) * (latLng2.longitude - d4)));
        this.c = latLng3;
        this.f11217d = (float) (Math.cos(latLng3.latitude * 0.01745329251994329d) * 6371000.79d * (latLng2.longitude - latLng.longitude) * 0.01745329251994329d);
        this.f11218e = (float) ((latLng2.latitude - latLng.latitude) * 6371000.79d * 0.01745329251994329d);
        g();
    }

    private synchronized void g() {
        if (this.f11219f == null) {
            return;
        }
        this.v = new float[16];
        IPoint iPointObtain = IPoint.obtain();
        IPoint iPointObtain2 = IPoint.obtain();
        IPoint iPointObtain3 = IPoint.obtain();
        IPoint iPointObtain4 = IPoint.obtain();
        LatLng latLng = this.f11219f.southwest;
        GLMapState.lonlat2Geo(latLng.longitude, latLng.latitude, iPointObtain);
        LatLngBounds latLngBounds = this.f11219f;
        GLMapState.lonlat2Geo(latLngBounds.northeast.longitude, latLngBounds.southwest.latitude, iPointObtain2);
        LatLng latLng2 = this.f11219f.northeast;
        GLMapState.lonlat2Geo(latLng2.longitude, latLng2.latitude, iPointObtain3);
        LatLngBounds latLngBounds2 = this.f11219f;
        GLMapState.lonlat2Geo(latLngBounds2.southwest.longitude, latLngBounds2.northeast.latitude, iPointObtain4);
        if (this.f11220g != BitmapDescriptorFactory.HUE_RED) {
            double d2 = ((Point) iPointObtain2).x - ((Point) iPointObtain).x;
            double d3 = ((Point) iPointObtain2).y - ((Point) iPointObtain3).y;
            DPoint dPointObtain = DPoint.obtain();
            dPointObtain.x = ((double) ((Point) iPointObtain).x) + (((double) this.l) * d2);
            dPointObtain.y = ((double) ((Point) iPointObtain).y) - (((double) (1.0f - this.m)) * d3);
            e(dPointObtain, 0.0d, 0.0d, d2, d3, iPointObtain);
            e(dPointObtain, d2, 0.0d, d2, d3, iPointObtain2);
            e(dPointObtain, d2, d3, d2, d3, iPointObtain3);
            e(dPointObtain, 0.0d, d3, d2, d3, iPointObtain4);
            dPointObtain.recycle();
        }
        float[] fArr = this.v;
        int i = ((Point) iPointObtain).x;
        fArr[0] = i / 10000;
        int i2 = ((Point) iPointObtain).y;
        fArr[1] = i2 / 10000;
        fArr[2] = i % 10000;
        fArr[3] = i2 % 10000;
        int i3 = ((Point) iPointObtain2).x;
        fArr[4] = i3 / 10000;
        int i4 = ((Point) iPointObtain2).y;
        fArr[5] = i4 / 10000;
        fArr[6] = i3 % 10000;
        fArr[7] = i4 % 10000;
        int i5 = ((Point) iPointObtain3).x;
        fArr[8] = i5 / 10000;
        int i6 = ((Point) iPointObtain3).y;
        fArr[9] = i6 / 10000;
        fArr[10] = i5 % 10000;
        fArr[11] = i6 % 10000;
        int i7 = ((Point) iPointObtain4).x;
        fArr[12] = i7 / 10000;
        int i8 = ((Point) iPointObtain4).y;
        fArr[13] = i8 / 10000;
        fArr[14] = i7 % 10000;
        fArr[15] = i8 % 10000;
        FloatBuffer floatBuffer = this.o;
        if (floatBuffer == null) {
            this.o = r3.E(fArr);
        } else {
            this.o = r3.F(fArr, floatBuffer);
        }
        iPointObtain4.recycle();
        iPointObtain.recycle();
        iPointObtain2.recycle();
        iPointObtain3.recycle();
    }

    private void h() {
        BitmapDescriptor bitmapDescriptor = this.b;
        if (bitmapDescriptor == null && (bitmapDescriptor == null || bitmapDescriptor.getBitmap() == null)) {
            return;
        }
        int width = this.b.getWidth();
        int height = this.b.getHeight();
        int height2 = this.b.getBitmap().getHeight();
        float width2 = width / this.b.getBitmap().getWidth();
        float f2 = height / height2;
        this.p = r3.E(new float[]{BitmapDescriptorFactory.HUE_RED, f2, width2, f2, width2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED});
    }

    private void i() {
        r rVar;
        List<ha> list = this.t;
        if (list != null) {
            for (ha haVar : list) {
                if (haVar != null && (rVar = this.u) != null) {
                    rVar.o(haVar);
                }
            }
            this.t.clear();
        }
    }

    private int j() {
        int[] iArr = {0};
        GLES20.glGenTextures(1, iArr, 0);
        return iArr[0];
    }

    private void k() {
        IAMapDelegate iAMapDelegate = this.f11216a;
        if (iAMapDelegate != null) {
            this.w = (h2.c) iAMapDelegate.getGLShader(2);
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean calMapFPoint() throws RemoteException {
        synchronized (this) {
            if (this.v != null) {
                return false;
            }
            this.s = false;
            if (this.c == null) {
                f();
                return true;
            }
            if (this.f11219f == null) {
                b();
                return true;
            }
            g();
            return true;
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean checkInBounds() {
        return true;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void destroy() {
        Bitmap bitmap;
        try {
            remove();
            List<ha> list = this.t;
            if (list != null && list.size() > 0) {
                for (int i = 0; i < this.t.size(); i++) {
                    ha haVar = this.t.get(i);
                    if (haVar != null) {
                        r rVar = this.u;
                        if (rVar != null) {
                            rVar.o(haVar);
                        }
                        IAMapDelegate iAMapDelegate = this.f11216a;
                        if (iAMapDelegate != null) {
                            iAMapDelegate.removeTextureItem(haVar.z());
                        }
                    }
                }
                this.t.clear();
            }
            BitmapDescriptor bitmapDescriptor = this.b;
            if (bitmapDescriptor != null && (bitmap = bitmapDescriptor.getBitmap()) != null) {
                r3.g0(bitmap);
                this.b = null;
            }
            FloatBuffer floatBuffer = this.p;
            if (floatBuffer != null) {
                floatBuffer.clear();
                this.p = null;
            }
            synchronized (this) {
                FloatBuffer floatBuffer2 = this.o;
                if (floatBuffer2 != null) {
                    floatBuffer2.clear();
                    this.o = null;
                }
                this.f11219f = null;
            }
            this.c = null;
        } catch (Throwable th) {
            e6.r(th, "GroundOverlayDelegateImp", "destroy");
            th.printStackTrace();
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public void draw(MapConfig mapConfig) throws RemoteException {
        synchronized (this) {
            if (!this.i || (this.c == null && this.f11219f == null) || this.b == null) {
                return;
            }
            calMapFPoint();
            if (!this.r) {
                this.q = a(Build.VERSION.SDK_INT >= 12, this.b);
                this.r = true;
            }
            if (this.f11217d == BitmapDescriptorFactory.HUE_RED && this.f11218e == BitmapDescriptorFactory.HUE_RED) {
                return;
            }
            synchronized (this) {
                c(this.q, this.o, this.p);
            }
            this.s = true;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public boolean equalsRemote(IOverlay iOverlay) throws RemoteException {
        return equals(iOverlay) || iOverlay.getId().equals(getId());
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IGroundOverlay
    public float getBearing() throws RemoteException {
        return this.f11220g;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IGroundOverlay
    public LatLngBounds getBounds() throws RemoteException {
        return this.f11219f;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IGroundOverlay
    public float getHeight() throws RemoteException {
        return this.f11218e;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public String getId() throws RemoteException {
        if (this.n == null) {
            this.n = this.f11216a.createId("GroundOverlay");
        }
        return this.n;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IGroundOverlay
    public LatLng getPosition() throws RemoteException {
        return this.c;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IGroundOverlay
    public float getTransparency() throws RemoteException {
        return this.j;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IGroundOverlay
    public float getWidth() throws RemoteException {
        return this.f11217d;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public float getZIndex() throws RemoteException {
        return this.f11221h;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public int hashCodeRemote() throws RemoteException {
        return super.hashCode();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public boolean isAboveMaskLayer() {
        return false;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean isDrawFinish() {
        return this.s;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public boolean isVisible() throws RemoteException {
        return this.i;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IGroundOverlayDelegate
    public void reLoadTexture() {
        this.r = false;
        this.q = 0;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void remove() throws RemoteException {
        this.f11216a.removeGLOverlay(getId());
        this.f11216a.setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setAboveMaskLayer(boolean z) {
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IGroundOverlayDelegate
    public void setAnchor(float f2, float f3) throws RemoteException {
        this.l = f2;
        this.m = f3;
        this.f11216a.setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IGroundOverlay
    public void setBearing(float f2) throws RemoteException {
        float f3 = ((f2 % 360.0f) + 360.0f) % 360.0f;
        if (Math.abs(this.f11220g - f3) > 1.0E-7d) {
            this.f11220g = f3;
            g();
        }
        this.f11216a.setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IGroundOverlay
    public void setDimensions(float f2) throws RemoteException {
        if (f2 <= BitmapDescriptorFactory.HUE_RED) {
            Log.w("GroundOverlayDelegateImp", "Width must be non-negative");
        }
        if (!this.r || this.f11217d == f2) {
            this.f11217d = f2;
            this.f11218e = f2;
        } else {
            this.f11217d = f2;
            this.f11218e = f2;
            b();
        }
        this.f11216a.setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IGroundOverlay
    public void setImage(BitmapDescriptor bitmapDescriptor) throws RemoteException {
        if (bitmapDescriptor == null || bitmapDescriptor.getBitmap() == null || bitmapDescriptor.getBitmap().isRecycled()) {
            return;
        }
        this.b = bitmapDescriptor;
        h();
        if (this.r) {
            this.r = false;
        }
        this.f11216a.setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IGroundOverlay
    public void setPosition(LatLng latLng) throws RemoteException {
        this.c = latLng;
        b();
        this.f11216a.setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IGroundOverlay
    public void setPositionFromBounds(LatLngBounds latLngBounds) throws RemoteException {
        if (latLngBounds == null) {
            return;
        }
        this.f11219f = latLngBounds;
        f();
        this.f11216a.setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IGroundOverlay
    public void setTransparency(float f2) throws RemoteException {
        this.j = (float) Math.min(1.0d, Math.max(0.0d, f2));
        this.k = 1.0f - f2;
        this.f11216a.setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setVisible(boolean z) throws RemoteException {
        this.i = z;
        this.f11216a.setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setZIndex(float f2) throws RemoteException {
        this.f11221h = f2;
        this.f11216a.changeGLOverlayIndex();
        this.f11216a.setRunLowFrame(false);
    }

    private u1(IAMapDelegate iAMapDelegate) {
        this.i = true;
        this.j = BitmapDescriptorFactory.HUE_RED;
        this.k = 1.0f;
        this.l = 0.5f;
        this.m = 0.5f;
        this.o = null;
        this.r = false;
        this.s = false;
        this.t = new ArrayList();
        this.v = null;
        this.f11216a = iAMapDelegate;
        try {
            this.n = getId();
        } catch (RemoteException e2) {
            e6.r(e2, "GroundOverlayDelegateImp", "create");
            e2.printStackTrace();
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IGroundOverlay
    public void setDimensions(float f2, float f3) throws RemoteException {
        if (f2 <= BitmapDescriptorFactory.HUE_RED || f3 <= BitmapDescriptorFactory.HUE_RED) {
            Log.w("GroundOverlayDelegateImp", "Width and Height must be non-negative");
        }
        if (this.r && this.f11217d != f2 && this.f11218e != f3) {
            this.f11217d = f2;
            this.f11218e = f3;
            b();
        } else {
            this.f11217d = f2;
            this.f11218e = f3;
        }
        this.f11216a.setRunLowFrame(false);
    }
}
