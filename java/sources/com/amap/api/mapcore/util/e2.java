package com.amap.api.mapcore.util;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.opengl.GLES20;
import android.os.Build;
import android.os.RemoteException;
import android.util.Log;
import com.amap.api.maps.model.BitmapDescriptor;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.TextOptions;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.interfaces.IMarkerAction;
import com.autonavi.amap.mapcore.interfaces.IOverlayImage;
import com.autonavi.base.ae.gmap.GLMapState;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import com.autonavi.base.amap.api.mapcore.overlays.ITextDelegate;
import com.autonavi.base.amap.mapcore.FPoint;
import com.autonavi.base.amap.mapcore.Rectangle;
import com.autonavi.base.amap.mapcore.interfaces.IAnimation;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class e2 implements ITextDelegate {
    private static int F;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f10723f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private BitmapDescriptor f10724g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f10725h;
    private int i;
    private String j;
    private LatLng k;
    private boolean n;
    private u o;
    private Object p;
    private String q;
    private int r;
    private int s;
    private int t;
    private Typeface u;
    private float v;
    private int y;
    private int z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f10720a = BitmapDescriptorFactory.HUE_RED;
    private float b = BitmapDescriptorFactory.HUE_RED;
    private int c = 4;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f10721d = 32;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private FPoint f10722e = FPoint.obtain();
    private float l = 0.5f;
    private float m = 1.0f;
    private Rect w = new Rect();
    private Paint x = new Paint();
    private boolean A = false;
    private List<ha> B = new ArrayList();
    private boolean C = false;
    private boolean D = false;
    private float[] E = {-1.0f, -1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, -1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, -1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f};

    public e2(TextOptions textOptions, u uVar) throws RemoteException {
        this.n = true;
        this.o = uVar;
        if (textOptions.getPosition() != null) {
            this.k = textOptions.getPosition();
        }
        setAlign(textOptions.getAlignX(), textOptions.getAlignY());
        this.n = textOptions.isVisible();
        this.q = textOptions.getText();
        this.r = textOptions.getBackgroundColor();
        this.s = textOptions.getFontColor();
        this.t = textOptions.getFontSize();
        this.p = textOptions.getObject();
        this.v = textOptions.getZIndex();
        this.u = textOptions.getTypeface();
        this.j = getId();
        setRotateAngle(textOptions.getRotate());
        c();
        calFPoint();
    }

    private int a(boolean z, BitmapDescriptor bitmapDescriptor) {
        ha haVar;
        Bitmap bitmap;
        g();
        if (z) {
            haVar = this.o.v().getTextureItem(bitmapDescriptor);
            if (haVar != null) {
                int iU = haVar.u();
                d(haVar);
                return iU;
            }
        } else {
            haVar = null;
        }
        int iH = 0;
        if (haVar == null) {
            haVar = new ha(bitmapDescriptor, 0);
        }
        if (bitmapDescriptor != null && (bitmap = bitmapDescriptor.getBitmap()) != null && !bitmap.isRecycled()) {
            iH = h();
            haVar.b(iH);
            if (z) {
                this.o.v().addTextureItem(haVar);
            }
            d(haVar);
            r3.c0(iH, bitmap, true);
        }
        return iH;
    }

    private static String b(String str) {
        F++;
        return str + F;
    }

    private void c() {
        String str = this.q;
        if (str == null || str.trim().length() <= 0) {
            return;
        }
        try {
            this.x.setTypeface(this.u);
            this.x.setSubpixelText(true);
            this.x.setAntiAlias(true);
            this.x.setStrokeWidth(5.0f);
            this.x.setStrokeCap(Paint.Cap.ROUND);
            this.x.setTextSize(this.t);
            this.x.setTextAlign(Paint.Align.CENTER);
            this.x.setColor(this.s);
            Paint.FontMetrics fontMetrics = this.x.getFontMetrics();
            int i = (int) (fontMetrics.descent - fontMetrics.ascent);
            int i2 = (int) (((i - fontMetrics.bottom) - fontMetrics.top) / 2.0f);
            Paint paint = this.x;
            String str2 = this.q;
            paint.getTextBounds(str2, 0, str2.length(), this.w);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.w.width() + 6, i, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            canvas.drawColor(this.r);
            canvas.drawText(this.q, this.w.centerX() + 3, i2, this.x);
            BitmapDescriptor bitmapDescriptorFromBitmap = BitmapDescriptorFactory.fromBitmap(bitmapCreateBitmap);
            this.f10724g = bitmapDescriptorFromBitmap;
            this.f10725h = bitmapDescriptorFromBitmap.getWidth();
            this.i = this.f10724g.getHeight();
        } catch (Throwable th) {
            e6.r(th, "TextDelegateImp", "initBitmap");
        }
    }

    private void d(ha haVar) {
        if (haVar != null) {
            this.B.add(haVar);
            haVar.w();
        }
    }

    private void e(IAMapDelegate iAMapDelegate, float[] fArr, int i, float f2) throws RemoteException {
        float f3 = this.f10725h * f2;
        float f4 = f2 * this.i;
        FPoint fPoint = this.f10722e;
        float f5 = ((PointF) fPoint).x;
        float f6 = ((PointF) fPoint).y;
        float sc = iAMapDelegate.getMapConfig().getSC();
        float[] fArr2 = this.E;
        float f7 = this.l;
        fArr2[0] = f5 - (f3 * f7);
        float f8 = this.m;
        fArr2[1] = ((1.0f - f8) * f4) + f6;
        fArr2[2] = f5;
        fArr2[3] = f6;
        float f9 = this.f10720a;
        fArr2[6] = f9;
        fArr2[7] = sc;
        fArr2[9] = ((1.0f - f7) * f3) + f5;
        fArr2[10] = ((1.0f - f8) * f4) + f6;
        fArr2[11] = f5;
        fArr2[12] = f6;
        fArr2[15] = f9;
        fArr2[16] = sc;
        fArr2[18] = ((1.0f - f7) * f3) + f5;
        fArr2[19] = f6 - (f4 * f8);
        fArr2[20] = f5;
        fArr2[21] = f6;
        fArr2[24] = f9;
        fArr2[25] = sc;
        fArr2[27] = f5 - (f3 * f7);
        fArr2[28] = f6 - (f4 * f8);
        fArr2[29] = f5;
        fArr2[30] = f6;
        fArr2[33] = f9;
        fArr2[34] = sc;
        System.arraycopy(fArr2, 0, fArr, i, fArr2.length);
    }

    private void f() {
        if (this.o.v() != null) {
            this.o.v().setRunLowFrame(false);
        }
    }

    private void g() {
        u uVar;
        List<ha> list = this.B;
        if (list != null) {
            for (ha haVar : list) {
                if (haVar != null && (uVar = this.o) != null) {
                    uVar.k(haVar);
                }
            }
            this.B.clear();
        }
    }

    private int h() {
        int[] iArr = {0};
        GLES20.glGenTextures(1, iArr, 0);
        return iArr[0];
    }

    private synchronized void i() {
        c();
        this.D = false;
        f();
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public boolean calFPoint() {
        if (this.k == null) {
            return false;
        }
        IPoint iPointObtain = IPoint.obtain();
        LatLng latLng = this.k;
        GLMapState.lonlat2Geo(latLng.longitude, latLng.latitude, iPointObtain);
        this.y = ((Point) iPointObtain).x;
        this.z = ((Point) iPointObtain).y;
        IAMapDelegate iAMapDelegateV = this.o.v();
        LatLng latLng2 = this.k;
        iAMapDelegateV.getLatLng2Map(latLng2.latitude, latLng2.longitude, this.f10722e);
        iPointObtain.recycle();
        return true;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public boolean checkInBounds() {
        Rectangle geoRectangle = this.o.v().getMapConfig().getGeoRectangle();
        return geoRectangle != null && geoRectangle.contains(this.y, this.z);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlayImage
    public void destroy(boolean z) {
        u uVar;
        try {
            this.C = true;
            if (z) {
                remove();
            }
            List<ha> list = this.B;
            if (list != null && list.size() > 0) {
                for (int i = 0; i < this.B.size(); i++) {
                    ha haVar = this.B.get(i);
                    if (haVar != null && (uVar = this.o) != null) {
                        uVar.k(haVar);
                        if (this.o.v() != null) {
                            this.o.v().removeTextureItem(haVar.z());
                        }
                    }
                }
                this.B.clear();
            }
            BitmapDescriptor bitmapDescriptor = this.f10724g;
            if (bitmapDescriptor != null) {
                bitmapDescriptor.recycle();
                this.f10724g = null;
            }
            this.k = null;
            this.p = null;
        } catch (Throwable th) {
            e6.r(th, "TextDelegateImp", "destroy");
            th.printStackTrace();
            Log.d("destroy erro", "TextDelegateImp destroy");
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public void drawMarker(IAMapDelegate iAMapDelegate) {
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public void drawMarker(IAMapDelegate iAMapDelegate, float[] fArr, int i, float f2) {
        if (!this.n || this.C || this.k == null || this.f10724g == null) {
            return;
        }
        ((PointF) this.f10722e).x = this.y - ((int) iAMapDelegate.getMapConfig().getSX());
        ((PointF) this.f10722e).y = this.z - ((int) iAMapDelegate.getMapConfig().getSY());
        try {
            e(iAMapDelegate, fArr, i, f2);
        } catch (Throwable th) {
            e6.r(th, "TextDelegateImp", "drawMarker");
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlayImage
    public boolean equalsRemote(IOverlayImage iOverlayImage) throws RemoteException {
        return equals(iOverlayImage) || iOverlayImage.getId().equals(getId());
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IText
    public int getAlignX() throws RemoteException {
        return this.c;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IText
    public int getAlignY() {
        return this.f10721d;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlayImage
    public float getAnchorU() {
        return this.l;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlayImage
    public float getAnchorV() {
        return this.m;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IText
    public int getBackgroundColor() throws RemoteException {
        return this.r;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IText
    public int getFontColor() throws RemoteException {
        return this.s;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IText
    public int getFontSize() throws RemoteException {
        return this.t;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public IAnimation getIAnimation() {
        return null;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public IMarkerAction getIMarkerAction() {
        return null;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlayImage
    public String getId() {
        if (this.j == null) {
            this.j = b("Text");
        }
        return this.j;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlayImage
    public Object getObject() {
        return this.p;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlayImage
    public LatLng getPosition() {
        return this.k;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public Rect getRect() {
        return null;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlayImage
    public float getRotateAngle() {
        return this.b;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IText
    public String getText() throws RemoteException {
        return this.q;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public int getTextureId() {
        try {
            return this.f10723f;
        } catch (Throwable unused) {
            return 0;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IText
    public Typeface getTypeface() throws RemoteException {
        return this.u;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlayImage
    public float getZIndex() {
        return this.v;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlayImage
    public int hashCodeRemote() {
        return super.hashCode();
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public boolean isAllowLow() {
        return true;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public boolean isBelowMaskLayer() {
        return false;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public boolean isInfoWindowShown() {
        return false;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public boolean isOnTap() {
        return this.A;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlayImage
    public boolean isVisible() {
        return this.n;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public void loadTexture(IAMapDelegate iAMapDelegate) {
        if (this.D) {
            return;
        }
        try {
            this.f10723f = a(Build.VERSION.SDK_INT >= 12, this.f10724g);
            this.D = true;
        } catch (Throwable th) {
            e6.r(th, "TextDelegateImp", "loadtexture");
            th.printStackTrace();
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public void reLoadTexture() {
        this.D = false;
        this.f10723f = 0;
        c();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlayImage
    public boolean remove() {
        f();
        this.n = false;
        return this.o.p(this);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IText
    public void setAlign(int i, int i2) throws RemoteException {
        this.c = i;
        if (i == 1) {
            this.l = BitmapDescriptorFactory.HUE_RED;
        } else if (i == 2) {
            this.l = 1.0f;
        } else if (i != 4) {
            this.l = 0.5f;
        } else {
            this.l = 0.5f;
        }
        this.f10721d = i2;
        if (i2 == 8) {
            this.m = BitmapDescriptorFactory.HUE_RED;
        } else if (i2 == 16) {
            this.m = 1.0f;
        } else if (i2 != 32) {
            this.m = 0.5f;
        } else {
            this.m = 0.5f;
        }
        f();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlayImage
    public void setAnchor(float f2, float f3) {
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IText
    public void setBackgroundColor(int i) throws RemoteException {
        this.r = i;
        i();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IText
    public void setFontColor(int i) throws RemoteException {
        this.s = i;
        i();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IText
    public void setFontSize(int i) throws RemoteException {
        this.t = i;
        i();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlayImage
    public void setObject(Object obj) {
        this.p = obj;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public void setOnTap(boolean z) {
        this.A = z;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlayImage
    public void setPosition(LatLng latLng) {
        this.k = latLng;
        calFPoint();
        f();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlayImage
    public void setRotateAngle(float f2) {
        this.b = f2;
        this.f10720a = (((-f2) % 360.0f) + 360.0f) % 360.0f;
        f();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IText
    public void setText(String str) throws RemoteException {
        this.q = str;
        i();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IText
    public void setTypeface(Typeface typeface) throws RemoteException {
        this.u = typeface;
        i();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlayImage
    public void setVisible(boolean z) {
        if (this.n == z) {
            return;
        }
        this.n = z;
        f();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlayImage
    public void setZIndex(float f2) {
        this.v = f2;
        this.o.A();
    }
}
