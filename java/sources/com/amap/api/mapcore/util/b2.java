package com.amap.api.mapcore.util;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.opengl.GLES20;
import android.os.Build;
import android.os.RemoteException;
import android.util.Log;
import androidx.core.view.ViewCompat;
import com.amap.api.maps.AMapUtils;
import com.amap.api.maps.model.BitmapDescriptor;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.amap.api.maps.model.PolylineOptions;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.interfaces.IOverlay;
import com.autonavi.base.amap.api.mapcore.overlays.IPolylineDelegate;
import com.autonavi.base.amap.mapcore.AMapNativePolyline;
import com.autonavi.base.amap.mapcore.AMapNativeRenderer;
import com.autonavi.base.amap.mapcore.FPoint;
import com.autonavi.base.amap.mapcore.FPoint3;
import com.autonavi.base.amap.mapcore.FPointBounds;
import com.autonavi.base.amap.mapcore.MapConfig;
import com.autonavi.base.amap.mapcore.Rectangle;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class b2 implements IPolylineDelegate {
    private float G;
    private float H;
    private float I;
    private float K;
    private float[] Q;
    private int[] T;
    private int[] U;
    private PolylineOptions Y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private r f10488a;
    private String b;
    private h2 c0;
    private FloatBuffer l;
    private List<IPoint> c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<FPoint> f10489d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<LatLng> f10490e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<BitmapDescriptor> f10491f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<ha> f10492g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<Integer> f10493h = new ArrayList();
    private List<Integer> i = new ArrayList();
    private List<Integer> j = new ArrayList();
    private List<Integer> k = new ArrayList();
    private BitmapDescriptor m = null;
    private Object n = new Object();
    private boolean o = true;
    private boolean p = true;
    private boolean q = false;
    private boolean r = false;
    private boolean s = false;
    private boolean t = true;
    private boolean u = false;
    private boolean v = false;
    private boolean w = true;
    private int x = 0;
    private int y = 0;
    private float z = 1.0f;
    private int A = ViewCompat.MEASURED_STATE_MASK;
    private int B = 0;
    private int C = 0;
    private float D = 10.0f;
    private float E = BitmapDescriptorFactory.HUE_RED;
    private float F = BitmapDescriptorFactory.HUE_RED;
    private float M = 1.0f;
    private float N = BitmapDescriptorFactory.HUE_RED;
    private boolean V = false;
    private FPointBounds W = null;
    Rect X = null;
    private int Z = 0;
    private PolylineOptions.LineJoinType a0 = PolylineOptions.LineJoinType.LineJoinBevel;
    private PolylineOptions.LineCapType b0 = PolylineOptions.LineCapType.LineCapRound;
    private long d0 = 0;
    private boolean e0 = false;
    private float f0 = -1.0f;
    private float g0 = -1.0f;
    private float h0 = -1.0f;
    private int i0 = -1;
    private List<IPoint> j0 = new ArrayList();
    private boolean k0 = false;
    int l0 = 0;
    ArrayList<FPoint> m0 = new ArrayList<>();
    long n0 = 0;

    public b2(r rVar, PolylineOptions polylineOptions) {
        this.f10488a = rVar;
        setOptions(polylineOptions);
        try {
            this.b = getId();
        } catch (RemoteException e2) {
            e6.r(e2, "PolylineDelegateImp", "create");
            e2.printStackTrace();
        }
    }

    private void A(float f2, MapConfig mapConfig) {
        List<FPoint> listG;
        float[] fArr;
        int iU;
        if (!this.s) {
            synchronized (this) {
                try {
                    BitmapDescriptor bitmapDescriptor = this.m;
                    if (bitmapDescriptor != null) {
                        ha haVarC = c(Build.VERSION.SDK_INT >= 12, bitmapDescriptor, true);
                        if (haVarC != null) {
                            iU = haVarC.u();
                            this.z = haVarC.v();
                        } else {
                            iU = 0;
                        }
                        this.y = iU;
                        this.s = true;
                    }
                } catch (Throwable th) {
                    e6.r(th, "MarkerDelegateImp", "loadtexture");
                    return;
                }
            }
        }
        try {
            if (mapConfig.getChangeRatio() == 1.0d && (fArr = this.Q) != null) {
                int i = this.Z + 1;
                this.Z = i;
                if (i > 2) {
                    AMapNativeRenderer.nativeDrawLineByTextureID(fArr, this.l0, f2, this.y, this.z, this.H, this.I, this.K, this.G, 1.0f - this.M, false, false, false, this.f10488a.B(), this.b0.getTypeValue(), this.a0.getTypeValue());
                    return;
                }
            }
            this.Z = 0;
            FPoint[] clipMapRect = mapConfig.getGeoRectangle().getClipMapRect();
            List<FPoint> list = this.f10489d;
            if (s(clipMapRect)) {
                synchronized (this.n) {
                    listG = r3.G(clipMapRect, this.f10489d, false);
                }
                list = listG;
            }
            if (list.size() >= 2) {
                y(list);
                AMapNativeRenderer.nativeDrawLineByTextureID(this.Q, this.l0, f2, this.y, this.z, this.H, this.I, this.K, this.G, 1.0f - this.M, false, false, false, this.f10488a.B(), this.b0.getTypeValue(), this.a0.getTypeValue());
            }
        } catch (Throwable unused) {
        }
    }

    private void B(List<BitmapDescriptor> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        if (list.size() <= 1) {
            setCustomTexture(list.get(0));
            return;
        }
        this.p = false;
        this.x = 5;
        this.f10491f = list;
        this.f10488a.A().setRunLowFrame(false);
    }

    private List<Integer> C(List<Integer> list) {
        int[] iArr = new int[list.size()];
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            int iIntValue = list.get(i3).intValue();
            if (i3 == 0 || iIntValue != i) {
                arrayList.add(Integer.valueOf(iIntValue));
                iArr[i2] = i3;
                i2++;
                i = iIntValue;
            }
        }
        int[] iArr2 = new int[arrayList.size()];
        this.T = iArr2;
        System.arraycopy(iArr, 0, iArr2, 0, iArr2.length);
        return arrayList;
    }

    private void D(float f2, MapConfig mapConfig) {
        float[] fArr;
        int iU;
        if (!this.s) {
            synchronized (this) {
                try {
                    BitmapDescriptor bitmapDescriptor = this.m;
                    if (bitmapDescriptor != null) {
                        ha haVarC = c(Build.VERSION.SDK_INT >= 12, bitmapDescriptor, true);
                        if (haVarC != null) {
                            iU = haVarC.u();
                            this.z = haVarC.v();
                        } else {
                            iU = 0;
                        }
                        this.y = iU;
                        this.s = true;
                    }
                } catch (Throwable th) {
                    e6.r(th, "MarkerDelegateImp", "loadtexture");
                    return;
                }
            }
        }
        try {
            List<FPoint> listG = this.f10489d;
            if (this.f10488a.A() == null) {
                return;
            }
            if (mapConfig.getChangeRatio() == 1.0d && (fArr = this.Q) != null) {
                int i = this.Z + 1;
                this.Z = i;
                if (i > 2) {
                    AMapNativeRenderer.nativeDrawLineByTextureID(fArr, this.l0, f2, this.f10488a.A().getDottedLineTextureID(this.C), this.f10488a.A().getLineTextureRatio(), this.H, this.I, this.K, this.G, BitmapDescriptorFactory.HUE_RED, true, true, false, this.f10488a.B(), this.b0.getTypeValue(), this.a0.getTypeValue());
                    return;
                }
            }
            this.Z = 0;
            FPoint[] clipMapRect = mapConfig.getGeoRectangle().getClipMapRect();
            if (s(clipMapRect)) {
                synchronized (this.n) {
                    listG = r3.G(clipMapRect, this.f10489d, false);
                }
            }
            if (listG.size() >= 2) {
                y(listG);
                AMapNativeRenderer.nativeDrawLineByTextureID(this.Q, this.l0, f2, this.f10488a.A().getDottedLineTextureID(this.C), this.f10488a.A().getLineTextureRatio(), this.H, this.I, this.K, this.G, BitmapDescriptorFactory.HUE_RED, true, true, false, this.f10488a.B(), this.b0.getTypeValue(), this.a0.getTypeValue());
            }
        } catch (Throwable unused) {
        }
    }

    private void E(float f2, MapConfig mapConfig) {
        float[] fArr;
        try {
            List<FPoint> listG = this.f10489d;
            if (this.f10488a.A() == null) {
                return;
            }
            if (mapConfig.getChangeRatio() == 1.0d && (fArr = this.Q) != null) {
                int i = this.Z + 1;
                this.Z = i;
                if (i > 2) {
                    long j = this.d0;
                    if (j == 0 || this.c0 == null) {
                        AMapNativeRenderer.nativeDrawLineByTextureID(fArr, this.l0, f2, this.f10488a.A().getLineTextureID(), this.f10488a.A().getLineTextureRatio(), this.H, this.I, this.K, this.G, BitmapDescriptorFactory.HUE_RED, false, true, false, this.f10488a.B(), this.b0.getTypeValue(), this.a0.getTypeValue());
                        return;
                    } else {
                        AMapNativePolyline.nativeDrawLineByTextureID(j, fArr, this.l0, f2, this.f10488a.A().getLineTextureID(), this.H, this.I, this.K, this.G, BitmapDescriptorFactory.HUE_RED, false, true, false, this.f10488a.B(), this.b0.getTypeValue(), this.a0.getTypeValue());
                        return;
                    }
                }
            }
            this.Z = 0;
            FPoint[] clipMapRect = mapConfig.getGeoRectangle().getClipMapRect();
            if (s(clipMapRect)) {
                synchronized (this.n) {
                    listG = r3.G(clipMapRect, this.f10489d, false);
                }
            }
            if (listG.size() >= 2) {
                y(listG);
                long j2 = this.d0;
                if (j2 == 0 || this.c0 == null) {
                    AMapNativeRenderer.nativeDrawLineByTextureID(this.Q, this.l0, f2, this.f10488a.A().getLineTextureID(), this.f10488a.A().getLineTextureRatio(), this.H, this.I, this.K, this.G, BitmapDescriptorFactory.HUE_RED, false, true, false, this.f10488a.B(), this.b0.getTypeValue(), this.a0.getTypeValue());
                } else {
                    AMapNativePolyline.nativeDrawLineByTextureID(j2, this.Q, this.l0, f2, this.f10488a.A().getLineTextureID(), this.H, this.I, this.K, this.G, BitmapDescriptorFactory.HUE_RED, false, true, false, this.f10488a.B(), this.b0.getTypeValue(), this.a0.getTypeValue());
                }
            }
        } catch (Throwable unused) {
        }
    }

    private double a(double d2, double d3, double d4, double d5, double d6, double d7) {
        double d8 = d6 - d4;
        double d9 = d2 - d4;
        double d10 = d7 - d5;
        double d11 = d3 - d5;
        double d12 = (d8 * d9) + (d10 * d11);
        if (d12 <= 0.0d) {
            return Math.sqrt((d9 * d9) + (d11 * d11));
        }
        double d13 = (d8 * d8) + (d10 * d10);
        if (d12 >= d13) {
            double d14 = d2 - d6;
            double d15 = d3 - d7;
            return Math.sqrt((d14 * d14) + (d15 * d15));
        }
        double d16 = d12 / d13;
        double d17 = d2 - (d4 + (d8 * d16));
        double d18 = (d5 + (d10 * d16)) - d3;
        return Math.sqrt((d17 * d17) + (d18 * d18));
    }

    private double b(FPoint fPoint, FPoint fPoint2, FPoint fPoint3) {
        return a(((PointF) fPoint).x, ((PointF) fPoint).y, ((PointF) fPoint2).x, ((PointF) fPoint2).y, ((PointF) fPoint3).x, ((PointF) fPoint3).y);
    }

    private ha c(boolean z, BitmapDescriptor bitmapDescriptor, boolean z2) {
        if (z2) {
            t();
        }
        ha haVar = null;
        if (z && (haVar = this.f10488a.a(bitmapDescriptor)) != null && haVar.u() > 0) {
            haVar.u();
            j(haVar);
            return haVar;
        }
        if (haVar == null) {
            haVar = new ha(bitmapDescriptor, 0);
        }
        Bitmap bitmap = bitmapDescriptor.getBitmap();
        if (bitmap != null && !bitmap.isRecycled()) {
            int iW = w();
            if (z) {
                haVar.b(iW);
                this.f10488a.A().addTextureItem(haVar);
            }
            j(haVar);
            r3.c0(iW, bitmap, true);
        }
        return haVar;
    }

    private FPoint e(LatLng latLng) {
        IPoint iPointObtain = IPoint.obtain();
        this.f10488a.A().latlon2Geo(latLng.latitude, latLng.longitude, iPointObtain);
        FPoint fPointObtain = FPoint.obtain();
        this.f10488a.A().geo2Map(((Point) iPointObtain).x, ((Point) iPointObtain).y, fPointObtain);
        iPointObtain.recycle();
        return fPointObtain;
    }

    private void f() {
        float mapPerPixelUnitLength = this.f10488a.A().getMapConfig().getMapPerPixelUnitLength();
        if (this.B <= 5000) {
            this.N = mapPerPixelUnitLength * 2.0f;
            return;
        }
        float f2 = this.F;
        if (f2 > 12) {
            this.N = mapPerPixelUnitLength * 10.0f;
            return;
        }
        float f3 = (this.D / 2.0f) + (f2 / 2.0f);
        if (f3 > 200.0f) {
            f3 = 200.0f;
        }
        this.N = mapPerPixelUnitLength * f3;
    }

    private void g(float f2, MapConfig mapConfig) {
        int size;
        int[] iArr;
        List<FPoint> listE0;
        if (this.k0) {
            return;
        }
        if (!this.s) {
            try {
                List<BitmapDescriptor> list = this.f10491f;
                if (list != null) {
                    this.U = new int[list.size()];
                    boolean z = Build.VERSION.SDK_INT >= 12;
                    t();
                    Iterator<BitmapDescriptor> it = this.f10491f.iterator();
                    int i = 0;
                    int iU = 0;
                    while (it.hasNext()) {
                        ha haVarC = c(z, it.next(), false);
                        if (haVarC != null) {
                            iU = haVarC.u();
                            this.z = haVarC.v();
                        }
                        this.U[i] = iU;
                        i++;
                    }
                    this.s = true;
                }
            } catch (Throwable th) {
                e6.r(th, "MarkerDelegateImp", "loadtexture");
                return;
            }
        }
        FPoint[] clipMapRect = mapConfig.getGeoRectangle().getClipMapRect();
        try {
            List<FPoint> list2 = this.f10489d;
            if (s(clipMapRect)) {
                synchronized (this.n) {
                    listE0 = r3.e0(clipMapRect, this.f10489d, false);
                }
                list2 = listE0;
            }
            if (list2.size() >= 2) {
                y(list2);
                synchronized (this.j) {
                    size = this.j.size();
                    iArr = new int[size];
                    for (int i2 = 0; i2 < size; i2++) {
                        int iIntValue = this.j.get(i2).intValue();
                        if (iIntValue < 0) {
                            iIntValue = 0;
                        }
                        iArr[i2] = this.U[iIntValue];
                    }
                }
                int[] iArr2 = this.T;
                if (true && (iArr2 != null)) {
                    AMapNativeRenderer.nativeDrawLineByMultiTextureID(this.Q, this.l0, f2, iArr, this.z, size, iArr2, iArr2.length, 1.0f - this.M, this.f10488a.B(), this.b0.getTypeValue(), this.a0.getTypeValue());
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    private void j(ha haVar) {
        if (haVar != null) {
            this.f10492g.add(haVar);
            haVar.w();
        }
    }

    private void n(MapConfig mapConfig) {
        float mapLenWithWin = this.f10488a.A().getMapProjection().getMapLenWithWin((int) this.D);
        int i = this.x;
        if (i == 0) {
            E(mapLenWithWin, mapConfig);
            return;
        }
        if (i == 1) {
            if (this.w) {
                A(mapLenWithWin, mapConfig);
                return;
            } else {
                E(mapLenWithWin, mapConfig);
                return;
            }
        }
        if (i == 2) {
            if (this.C == -1) {
                E(mapLenWithWin, mapConfig);
                return;
            } else {
                D(mapLenWithWin, mapConfig);
                return;
            }
        }
        if (i == 3) {
            x(mapLenWithWin, mapConfig);
            return;
        }
        if (i == 4) {
            u(mapLenWithWin, mapConfig);
        } else {
            if (i != 5) {
                return;
            }
            if (this.w) {
                g(mapLenWithWin, mapConfig);
            } else {
                x(mapLenWithWin, mapConfig);
            }
        }
    }

    private boolean r(FPoint fPoint, FPoint fPoint2) {
        return ((fPoint instanceof FPoint3) && (fPoint2 instanceof FPoint3) && ((FPoint3) fPoint).colorIndex != ((FPoint3) fPoint2).colorIndex) || Math.abs(((PointF) fPoint2).x - ((PointF) fPoint).x) >= this.N || Math.abs(((PointF) fPoint2).y - ((PointF) fPoint).y) >= this.N;
    }

    private boolean s(FPoint[] fPointArr) {
        this.F = this.f10488a.A().getZoomLevel();
        f();
        if (this.F <= (this.c.size() > 10000 ? 7 : 3)) {
            return false;
        }
        try {
            if (this.f10488a.A() != null) {
                return (r3.R(this.W.northeast, fPointArr) && r3.R(this.W.southwest, fPointArr)) ? false : true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    private void t() {
        r rVar;
        List<ha> list = this.f10492g;
        if (list != null) {
            for (ha haVar : list) {
                if (haVar != null && (rVar = this.f10488a) != null) {
                    rVar.o(haVar);
                }
            }
            this.f10492g.clear();
        }
    }

    private void u(float f2, MapConfig mapConfig) {
        List<FPoint> listE0;
        synchronized (this.i) {
            int[] iArr = new int[this.i.size()];
            for (int i = 0; i < this.i.size(); i++) {
                iArr[i] = this.i.get(i).intValue();
            }
        }
        FPoint[] clipMapRect = mapConfig.getGeoRectangle().getClipMapRect();
        try {
            List<FPoint> list = this.f10489d;
            if (s(clipMapRect)) {
                synchronized (this.n) {
                    listE0 = r3.e0(clipMapRect, this.f10489d, false);
                }
                list = listE0;
            }
            if (list.size() >= 2) {
                y(list);
                int size = this.k.size();
                int[] iArr2 = new int[size];
                for (int i2 = 0; i2 < size; i2++) {
                    iArr2[i2] = this.k.get(i2).intValue();
                }
                int[] iArr3 = this.T;
                if (true && (iArr3 != null)) {
                    AMapNativeRenderer.nativeDrawGradientColorLine(this.Q, this.l0, f2, iArr2, size, iArr3, iArr3.length, this.f10488a.A().getLineTextureID(), this.f10488a.B(), this.b0.getTypeValue(), this.a0.getTypeValue());
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private int w() {
        int[] iArr = {0};
        GLES20.glGenTextures(1, iArr, 0);
        return iArr[0];
    }

    private void x(float f2, MapConfig mapConfig) {
        List<FPoint> listE0;
        synchronized (this.i) {
            int[] iArr = new int[this.i.size()];
            for (int i = 0; i < this.i.size(); i++) {
                iArr[i] = this.i.get(i).intValue();
            }
        }
        FPoint[] clipMapRect = mapConfig.getGeoRectangle().getClipMapRect();
        try {
            List<FPoint> list = this.f10489d;
            if (s(clipMapRect)) {
                synchronized (this.n) {
                    listE0 = r3.e0(clipMapRect, this.f10489d, false);
                }
                list = listE0;
            }
            if (list.size() >= 2) {
                y(list);
                int size = this.k.size();
                int[] iArr2 = new int[size];
                for (int i2 = 0; i2 < size; i2++) {
                    iArr2[i2] = this.k.get(i2).intValue();
                }
                if (true && (this.T != null)) {
                    float[] fArr = this.Q;
                    int i3 = this.l0;
                    int lineTextureID = this.f10488a.A().getLineTextureID();
                    int[] iArr3 = this.T;
                    AMapNativeRenderer.nativeDrawLineByMultiColor(fArr, i3, f2, lineTextureID, iArr2, size, iArr3, iArr3.length, this.f10488a.B(), this.b0.getTypeValue(), this.a0.getTypeValue());
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void y(List<FPoint> list) throws RemoteException {
        int i;
        this.m0.clear();
        int size = list.size();
        if (size < 2) {
            return;
        }
        int i2 = 0;
        FPoint fPoint = list.get(0);
        this.m0.add(fPoint);
        int i3 = 1;
        while (true) {
            i = size - 1;
            if (i3 >= i) {
                break;
            }
            FPoint fPoint2 = list.get(i3);
            if (i3 == 1 || r(fPoint, fPoint2)) {
                this.m0.add(fPoint2);
                fPoint = fPoint2;
            } else {
                ArrayList<FPoint> arrayList = this.m0;
                arrayList.set(arrayList.size() - 1, fPoint2);
            }
            i3++;
        }
        this.m0.add(list.get(i));
        int size2 = this.m0.size() * 3;
        this.l0 = size2;
        float[] fArr = this.Q;
        if (fArr == null || fArr.length < size2) {
            this.Q = new float[size2];
        }
        int i4 = this.x;
        if (i4 != 5 && i4 != 3 && i4 != 4) {
            for (FPoint fPoint3 : this.m0) {
                float[] fArr2 = this.Q;
                int i5 = i2 * 3;
                fArr2[i5] = ((PointF) fPoint3).x;
                fArr2[i5 + 1] = ((PointF) fPoint3).y;
                fArr2[i5 + 2] = 0.0f;
                i2++;
            }
            return;
        }
        int[] iArr = new int[this.m0.size()];
        ArrayList arrayList2 = new ArrayList();
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < size2 / 3; i8++) {
            FPoint3 fPoint4 = (FPoint3) this.m0.get(i8);
            float[] fArr3 = this.Q;
            int i9 = i8 * 3;
            fArr3[i9] = ((PointF) fPoint4).x;
            fArr3[i9 + 1] = ((PointF) fPoint4).y;
            fArr3[i9 + 2] = 0.0f;
            int i10 = fPoint4.colorIndex;
            if (i8 == 0) {
                arrayList2.add(Integer.valueOf(i10));
                i6 = i10;
            } else {
                if (i10 != i6) {
                    if (i10 != -1) {
                        i6 = i10;
                    }
                    arrayList2.add(Integer.valueOf(i6));
                }
            }
            iArr[i7] = i8;
            i7++;
        }
        int[] iArr2 = new int[arrayList2.size()];
        this.T = iArr2;
        System.arraycopy(iArr, 0, iArr2, 0, iArr2.length);
        this.j = arrayList2;
        this.k = arrayList2;
    }

    private ArrayList<FPoint> z() {
        ArrayList<FPoint> arrayList = new ArrayList<>();
        int i = 0;
        while (true) {
            float[] fArr = this.Q;
            if (i >= fArr.length) {
                return arrayList;
            }
            float f2 = fArr[i];
            int i2 = i + 1;
            arrayList.add(FPoint.obtain(f2, fArr[i2]));
            i = i2 + 1 + 1;
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean calMapFPoint() throws RemoteException {
        if (this.f0 == -1.0f && this.g0 == -1.0f && this.h0 == -1.0f) {
            v(this.c);
            return true;
        }
        v(this.j0);
        return true;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean checkInBounds() {
        if (this.e0) {
            return true;
        }
        Rectangle geoRectangle = this.f10488a.A().getMapConfig().getGeoRectangle();
        Rect rect = this.X;
        return rect == null || geoRectangle == null || geoRectangle.isOverlap(rect);
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IPolylineDelegate
    public boolean contains(LatLng latLng) {
        float[] fArr = this.Q;
        int length = fArr.length;
        System.arraycopy(fArr, 0, new float[length], 0, fArr.length);
        if (length / 3 < 2) {
            return false;
        }
        try {
            ArrayList<FPoint> arrayListZ = z();
            if (arrayListZ != null && arrayListZ.size() >= 1) {
                double mapLenWithWin = this.f10488a.A().getMapProjection().getMapLenWithWin(((int) this.D) / 4);
                double mapLenWithWin2 = this.f10488a.A().getMapProjection().getMapLenWithWin(5);
                FPoint fPointE = e(latLng);
                FPoint fPoint = null;
                int i = 0;
                while (i < arrayListZ.size() - 1) {
                    if (i == 0) {
                        fPoint = arrayListZ.get(i);
                    }
                    i++;
                    FPoint fPoint2 = arrayListZ.get(i);
                    if ((mapLenWithWin2 + mapLenWithWin) - b(fPointE, fPoint, fPoint2) >= 0.0d) {
                        arrayListZ.clear();
                        return true;
                    }
                    fPoint = fPoint2;
                }
                arrayListZ.clear();
            }
        } catch (Exception unused) {
        }
        return false;
    }

    IPoint d(IPoint iPoint, IPoint iPoint2, IPoint iPoint3, double d2, int i) {
        IPoint iPointObtain = IPoint.obtain();
        double d3 = ((Point) iPoint2).x - ((Point) iPoint).x;
        double d4 = ((Point) iPoint2).y - ((Point) iPoint).y;
        int iSqrt = (int) (((((double) i) * d2) / Math.sqrt(((d4 * d4) / (d3 * d3)) + 1.0d)) + ((double) ((Point) iPoint3).y));
        ((Point) iPointObtain).y = iSqrt;
        ((Point) iPointObtain).x = (int) (((((double) (((Point) iPoint3).y - iSqrt)) * d4) / d3) + ((double) ((Point) iPoint3).x));
        return iPointObtain;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void destroy() {
        try {
            remove();
            List<ha> list = this.f10492g;
            if (list != null && list.size() > 0) {
                for (int i = 0; i < this.f10492g.size(); i++) {
                    ha haVar = this.f10492g.get(i);
                    if (haVar != null) {
                        this.f10488a.o(haVar);
                        this.f10488a.A().removeTextureItem(haVar.z());
                    }
                }
                this.f10492g.clear();
            }
            if (this.Q != null) {
                this.Q = null;
            }
            FloatBuffer floatBuffer = this.l;
            if (floatBuffer != null) {
                floatBuffer.clear();
                this.l = null;
            }
            List<BitmapDescriptor> list2 = this.f10491f;
            if (list2 != null && list2.size() > 0) {
                Iterator<BitmapDescriptor> it = this.f10491f.iterator();
                while (it.hasNext()) {
                    it.next().recycle();
                }
            }
            synchronized (this) {
                BitmapDescriptor bitmapDescriptor = this.m;
                if (bitmapDescriptor != null) {
                    bitmapDescriptor.recycle();
                }
            }
            synchronized (this.i) {
                List<Integer> list3 = this.i;
                if (list3 != null) {
                    list3.clear();
                }
            }
            List<Integer> list4 = this.f10493h;
            if (list4 != null) {
                synchronized (list4) {
                    this.f10493h.clear();
                    this.f10493h = null;
                }
            }
            List<LatLng> list5 = this.f10490e;
            if (list5 != null) {
                list5.clear();
                this.f10490e = null;
            }
            this.Y = null;
            long j = this.d0;
            if (j != 0) {
                AMapNativePolyline.nativeDestroy(j);
            }
        } catch (Throwable th) {
            e6.r(th, "PolylineDelegateImp", "destroy");
            th.printStackTrace();
            Log.d("destroy erro", "PolylineDelegateImp destroy");
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public void draw(MapConfig mapConfig) throws RemoteException {
        long j;
        h2 h2Var;
        if (this.k0) {
            return;
        }
        if (this.d0 == 0) {
            long jNativeCreate = AMapNativePolyline.nativeCreate();
            this.d0 = jNativeCreate;
            if (jNativeCreate != 0 && (h2Var = this.c0) != null) {
                AMapNativePolyline.nativeSetGLShaderManager(jNativeCreate, h2Var.a());
            }
        }
        synchronized (this.n) {
            List<IPoint> list = (this.f0 == -1.0f && this.g0 == -1.0f && this.h0 == -1.0f) ? this.c : this.j0;
            if (list != null && list.size() != 0 && this.D > BitmapDescriptorFactory.HUE_RED) {
                if (this.f10488a.A() == null) {
                    return;
                }
                int sx = (int) mapConfig.getSX();
                int sy = (int) mapConfig.getSY();
                int beyond180Mode = mapConfig.getGeoRectangle().getBeyond180Mode();
                int size = this.f10489d.size();
                int size2 = list.size();
                if (size == size2) {
                    for (int i = 0; i < size2; i++) {
                        IPoint iPoint = list.get(i);
                        FPoint fPoint = this.f10489d.get(i);
                        ((PointF) fPoint).x = ((Point) iPoint).x - sx;
                        ((PointF) fPoint).y = ((Point) iPoint).y - sy;
                        if (this.e0 && (beyond180Mode < 0 || mapConfig.getSX() < 1.34217728E8d)) {
                            ((PointF) fPoint).x -= 2.6843546E8f;
                        }
                    }
                } else {
                    this.f10489d.clear();
                    int i2 = 0;
                    for (int i3 = 0; i3 < size2; i3++) {
                        IPoint iPoint2 = list.get(i3);
                        FPoint3 fPoint3 = new FPoint3();
                        List<Integer> list2 = this.f10493h;
                        if (list2 != null) {
                            synchronized (list2) {
                                if (this.i0 <= 0) {
                                    List<Integer> list3 = this.f10493h;
                                    if (list3 != null && list3.size() > i2) {
                                        fPoint3.setColorIndex(this.f10493h.get(i2).intValue());
                                    }
                                } else {
                                    List<Integer> list4 = this.f10493h;
                                    if (list4 != null) {
                                        int size3 = list4.size();
                                        int i4 = this.i0;
                                        if (size3 > i2 + i4) {
                                            fPoint3.setColorIndex(this.f10493h.get(i4 + i2).intValue());
                                        }
                                    }
                                }
                            }
                        }
                        ((PointF) fPoint3).x = ((Point) iPoint2).x - sx;
                        ((PointF) fPoint3).y = ((Point) iPoint2).y - sy;
                        if (this.e0) {
                            if (beyond180Mode >= 0) {
                                j = 4728779608739020800L;
                                if (mapConfig.getSX() < 1.34217728E8d) {
                                }
                            } else {
                                j = 4728779608739020800L;
                            }
                            ((PointF) fPoint3).x -= 2.6843546E8f;
                        } else {
                            j = 4728779608739020800L;
                        }
                        this.f10489d.add(fPoint3);
                        i2++;
                    }
                }
                if (this.t) {
                    calMapFPoint();
                    this.t = false;
                } else if (this.u) {
                    synchronized (this.n) {
                        int size4 = this.f10489d.size();
                        synchronized (this.f10493h) {
                            int size5 = this.f10493h.size();
                            for (int i5 = 0; i5 < size4; i5++) {
                                if (size5 <= i5 || this.i0 > 0) {
                                    int i6 = this.i0;
                                    if (size5 > i6 + i5 && i6 > 0) {
                                        ((FPoint3) this.f10489d.get(i5)).setColorIndex(this.f10493h.get(this.i0 + i5).intValue());
                                    }
                                } else {
                                    ((FPoint3) this.f10489d.get(i5)).setColorIndex(this.f10493h.get(i5).intValue());
                                }
                            }
                        }
                    }
                }
                if (this.Q != null && this.B > 0) {
                    n(this.f10488a.A().getMapConfig());
                }
                this.v = true;
            }
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public boolean equalsRemote(IOverlay iOverlay) throws RemoteException {
        return equals(iOverlay) || iOverlay.getId().equals(getId());
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolyline
    public int getColor() throws RemoteException {
        return this.A;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public String getId() throws RemoteException {
        if (this.b == null) {
            this.b = this.f10488a.l("Polyline");
        }
        return this.b;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolyline
    public LatLng getNearestLatLng(LatLng latLng) {
        List<LatLng> list;
        if (latLng != null && (list = this.f10490e) != null && list.size() != 0) {
            float fCalculateLineDistance = BitmapDescriptorFactory.HUE_RED;
            int i = 0;
            for (int i2 = 0; i2 < this.f10490e.size(); i2++) {
                try {
                    if (i2 == 0) {
                        fCalculateLineDistance = AMapUtils.calculateLineDistance(latLng, this.f10490e.get(i2));
                    } else {
                        float fCalculateLineDistance2 = AMapUtils.calculateLineDistance(latLng, this.f10490e.get(i2));
                        if (fCalculateLineDistance > fCalculateLineDistance2) {
                            i = i2;
                            fCalculateLineDistance = fCalculateLineDistance2;
                        }
                    }
                } catch (Throwable th) {
                    e6.r(th, "PolylineDelegateImp", "getNearestLatLng");
                    th.printStackTrace();
                }
            }
            return this.f10490e.get(i);
        }
        return null;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolyline
    public PolylineOptions getOptions() {
        return this.Y;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolyline
    public List<LatLng> getPoints() throws RemoteException {
        return this.f10490e;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolyline
    public float getShownRatio() {
        return this.f0;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolyline
    public float getWidth() throws RemoteException {
        return this.D;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public float getZIndex() throws RemoteException {
        return this.E;
    }

    public void h(int i) {
        this.C = i;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public int hashCodeRemote() throws RemoteException {
        return super.hashCode();
    }

    public void i(h2 h2Var) {
        this.c0 = h2Var;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public boolean isAboveMaskLayer() {
        return this.V;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolyline
    public boolean isDottedLine() {
        return this.r;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean isDrawFinish() {
        return this.v;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolyline
    public boolean isGeodesic() {
        return this.q;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public boolean isVisible() throws RemoteException {
        return this.o;
    }

    void k(LatLng latLng, LatLng latLng2, List<IPoint> list, LatLngBounds.Builder builder) {
        double dAbs = (Math.abs(latLng.longitude - latLng2.longitude) * 3.141592653589793d) / 180.0d;
        LatLng latLng3 = new LatLng((latLng2.latitude + latLng.latitude) / 2.0d, (latLng2.longitude + latLng.longitude) / 2.0d, false);
        builder.include(latLng).include(latLng3).include(latLng2);
        int i = latLng3.latitude > 0.0d ? -1 : 1;
        IPoint iPointObtain = IPoint.obtain();
        this.f10488a.A().latlon2Geo(latLng.latitude, latLng.longitude, iPointObtain);
        IPoint iPointObtain2 = IPoint.obtain();
        this.f10488a.A().latlon2Geo(latLng2.latitude, latLng2.longitude, iPointObtain2);
        IPoint iPointObtain3 = IPoint.obtain();
        this.f10488a.A().latlon2Geo(latLng3.latitude, latLng3.longitude, iPointObtain3);
        double d2 = dAbs * 0.5d;
        double dCos = Math.cos(d2);
        IPoint iPointD = d(iPointObtain, iPointObtain2, iPointObtain3, Math.hypot(((Point) iPointObtain).x - ((Point) iPointObtain2).x, ((Point) iPointObtain).y - ((Point) iPointObtain2).y) * 0.5d * Math.tan(d2), i);
        ArrayList arrayList = new ArrayList();
        arrayList.add(iPointObtain);
        arrayList.add(iPointD);
        arrayList.add(iPointObtain2);
        p(arrayList, list, dCos);
        iPointObtain.recycle();
        iPointD.recycle();
        iPointObtain2.recycle();
    }

    public void l(PolylineOptions.LineCapType lineCapType) {
        this.b0 = lineCapType;
    }

    public void m(PolylineOptions.LineJoinType lineJoinType) {
        this.a0 = lineJoinType;
    }

    void o(List<LatLng> list) throws RemoteException {
        boolean z;
        ArrayList arrayList = new ArrayList();
        LatLngBounds.Builder builder = LatLngBounds.builder();
        if (list != null) {
            LatLng latLng = null;
            z = false;
            for (LatLng latLng2 : list) {
                if (!this.q) {
                    IPoint iPointObtain = IPoint.obtain();
                    this.f10488a.A().latlon2Geo(latLng2.latitude, latLng2.longitude, iPointObtain);
                    arrayList.add(iPointObtain);
                    builder.include(latLng2);
                } else if (latLng != null) {
                    if (Math.abs(latLng2.longitude - latLng.longitude) < 0.01d) {
                        IPoint iPointObtain2 = IPoint.obtain();
                        this.f10488a.A().latlon2Geo(latLng.latitude, latLng.longitude, iPointObtain2);
                        arrayList.add(iPointObtain2);
                        builder.include(latLng);
                        IPoint iPointObtain3 = IPoint.obtain();
                        this.f10488a.A().latlon2Geo(latLng2.latitude, latLng2.longitude, iPointObtain3);
                        arrayList.add(iPointObtain3);
                        builder.include(latLng2);
                    } else {
                        k(latLng, latLng2, arrayList, builder);
                    }
                }
                if (latLng2 != null) {
                    if (!z && latLng2.longitude < -180.0d) {
                        this.e0 = true;
                        z = true;
                    }
                    if (!this.e0 && latLng2.longitude > 180.0d) {
                        this.e0 = true;
                    }
                }
                latLng = latLng2;
            }
        } else {
            z = false;
        }
        this.c = arrayList;
        this.B = 0;
        if (this.X == null) {
            this.X = new Rect();
        }
        r3.H(this.X);
        for (IPoint iPoint : this.c) {
            if (z) {
                ((Point) iPoint).x += 268435456;
            }
            r3.h0(this.X, ((Point) iPoint).x, ((Point) iPoint).y);
        }
        this.X.sort();
        this.f10488a.A().setRunLowFrame(false);
    }

    void p(List<IPoint> list, List<IPoint> list2, double d2) {
        if (list.size() != 3) {
            return;
        }
        int i = 10;
        int i2 = 0;
        int i3 = 0;
        while (i3 <= i) {
            float f2 = i3;
            float f3 = f2 / 10.0f;
            IPoint iPointObtain = IPoint.obtain();
            double d3 = 1.0d - ((double) f3);
            double d4 = d3 * d3;
            double d5 = ((double) (2.0f * f3)) * d3;
            float f4 = f3 * f3;
            double d6 = (((double) ((Point) list.get(i2)).x) * d4) + (((double) ((Point) list.get(1)).x) * d5 * d2) + ((double) (((Point) list.get(2)).x * f4));
            double d7 = (((double) ((Point) list.get(i2)).y) * d4) + (((double) ((Point) list.get(1)).y) * d5 * d2) + ((double) (((Point) list.get(2)).y * f4));
            double d8 = d4 + (d5 * d2) + ((double) f4);
            ((Point) iPointObtain).x = (int) (d6 / d8);
            ((Point) iPointObtain).y = (int) (d7 / d8);
            list2.add(iPointObtain);
            i3 = (int) (f2 + 1.0f);
            i = 10;
            i2 = 0;
        }
    }

    public void q(boolean z) {
        this.w = z;
        this.f10488a.A().setRunLowFrame(false);
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IPolylineDelegate
    public void reLoadTexture() {
        this.s = false;
        this.y = 0;
        this.z = 1.0f;
        int[] iArr = this.U;
        if (iArr != null) {
            Arrays.fill(iArr, 0);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void remove() throws RemoteException {
        this.k0 = true;
        this.f10488a.removeOverlay(getId());
        setVisible(false);
        this.f10488a.A().setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setAboveMaskLayer(boolean z) {
        this.V = z;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolyline
    public void setColor(int i) {
        int i2 = this.x;
        if (i2 == 0 || i2 == 2) {
            this.A = i;
            this.G = Color.alpha(i) / 255.0f;
            this.H = Color.red(i) / 255.0f;
            this.I = Color.green(i) / 255.0f;
            this.K = Color.blue(i) / 255.0f;
            if (this.p) {
                if (this.r) {
                    this.x = 2;
                } else {
                    this.x = 0;
                }
            }
            this.f10488a.A().setRunLowFrame(false);
        }
        this.Y.color(i);
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IPolylineDelegate
    public void setColorValues(List<Integer> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        try {
            synchronized (this.i) {
                try {
                    this.i.clear();
                    this.i.addAll(list);
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable unused) {
        }
        if (list.size() <= 1) {
            setColor(list.get(0).intValue());
            return;
        }
        this.p = false;
        this.k = C(list);
        this.x = 3;
        this.f10488a.A().setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolyline
    public void setCustemTextureIndex(List<Integer> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        try {
            synchronized (this.f10493h) {
                try {
                    this.f10493h.clear();
                    this.f10493h.addAll(list);
                    this.j = C(list);
                    this.u = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolyline
    public void setCustomTexture(BitmapDescriptor bitmapDescriptor) {
        long jNanoTime = System.nanoTime();
        if (jNanoTime - this.n0 < 16) {
            return;
        }
        this.n0 = jNanoTime;
        if (bitmapDescriptor == null) {
            return;
        }
        synchronized (this) {
            if (bitmapDescriptor.equals(this.m)) {
                return;
            }
            this.p = false;
            this.s = false;
            this.x = 1;
            this.m = bitmapDescriptor;
            this.f10488a.A().setRunLowFrame(false);
            PolylineOptions polylineOptions = this.Y;
            if (polylineOptions != null) {
                polylineOptions.setCustomTexture(bitmapDescriptor);
            }
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IPolylineDelegate, com.autonavi.amap.mapcore.interfaces.IPolyline
    public void setCustomTextureList(List<BitmapDescriptor> list) {
        B(list);
        setCustemTextureIndex(this.Y.getCustomTextureIndex());
        reLoadTexture();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolyline
    public void setDottedLine(boolean z) {
        int i = this.x;
        if (i == 2 || i == 0) {
            this.r = z;
            if (z && this.p) {
                this.x = 2;
            } else if (!z && this.p) {
                this.x = 0;
            }
            this.f10488a.A().setRunLowFrame(false);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolyline
    public void setGeodesic(boolean z) throws RemoteException {
        this.q = z;
        this.f10488a.A().setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolyline
    public void setOptions(PolylineOptions polylineOptions) {
        if (polylineOptions == null) {
            return;
        }
        this.Y = polylineOptions;
        try {
            setColor(polylineOptions.getColor());
            setGeodesic(polylineOptions.isGeodesic());
            setDottedLine(polylineOptions.isDottedLine());
            h(polylineOptions.getDottedLineType());
            setAboveMaskLayer(polylineOptions.isAboveMaskLayer());
            setVisible(polylineOptions.isVisible());
            setWidth(polylineOptions.getWidth());
            setZIndex(polylineOptions.getZIndex());
            q(polylineOptions.isUseTexture());
            setTransparency(polylineOptions.getTransparency());
            l(polylineOptions.getLineCapType());
            m(polylineOptions.getLineJoinType());
            if (polylineOptions.getColorValues() != null) {
                setColorValues(polylineOptions.getColorValues());
                useGradient(polylineOptions.isUseGradient());
            }
            if (polylineOptions.getCustomTexture() != null) {
                setCustomTexture(polylineOptions.getCustomTexture());
                reLoadTexture();
            }
            if (polylineOptions.getCustomTextureList() != null) {
                B(polylineOptions.getCustomTextureList());
                setCustemTextureIndex(polylineOptions.getCustomTextureIndex());
                reLoadTexture();
            }
            setPoints(polylineOptions.getPoints());
            setShownRatio(polylineOptions.getShownRatio());
            setShowRange(polylineOptions.getShownRangeBegin(), polylineOptions.getShownRangeEnd());
        } catch (RemoteException e2) {
            e6.r(e2, "PolylineDelegateImp", "setOptions");
            e2.printStackTrace();
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolyline
    public void setPoints(List<LatLng> list) throws RemoteException {
        try {
            this.f10490e = list;
            synchronized (this.n) {
                o(list);
            }
            this.t = true;
            this.f10488a.A().setRunLowFrame(false);
            this.Y.setPoints(list);
            setShownRatio(this.Y.getShownRatio());
            setShowRange(this.Y.getShownRangeBegin(), this.Y.getShownRangeEnd());
        } catch (Throwable th) {
            e6.r(th, "PolylineDelegateImp", "setPoints");
            this.c.clear();
            th.printStackTrace();
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolyline
    public void setShowRange(float f2, float f3) {
        double d2;
        double d3;
        float f4 = f2;
        float f5 = f3;
        this.g0 = f4;
        this.h0 = f5;
        synchronized (this.n) {
            int size = this.c.size();
            if (size < 2) {
                this.j0.clear();
                return;
            }
            if (f4 > f5) {
                this.j0.clear();
                Log.d("mapcore", "setShownRange return begin < end");
                return;
            }
            if (f4 < BitmapDescriptorFactory.HUE_RED || Float.isNaN(f2)) {
                f4 = BitmapDescriptorFactory.HUE_RED;
            } else if (f4 >= size) {
                f4 = size - 1;
            }
            if (f5 < BitmapDescriptorFactory.HUE_RED) {
                f5 = BitmapDescriptorFactory.HUE_RED;
            } else if (f5 >= size || Float.isNaN(f3)) {
                f5 = size - 1;
            }
            if (this.q) {
                int size2 = this.f10490e.size();
                if (size2 < 2) {
                    Log.d("mapcore", "setShownRatio return m_polylineOptions.m_latLngPoints.size() < MIN_POLYLINE_COUNT");
                    return;
                }
                float f6 = size2 - 1;
                float f7 = size - 1;
                f4 = (f4 / f6) * f7;
                f5 = (f5 / f6) * f7;
            }
            this.j0.clear();
            int iFloor = (int) Math.floor(f4);
            int iFloor2 = (int) Math.floor(f5);
            double d4 = f4 - iFloor;
            double d5 = f5 - iFloor2;
            IPoint iPoint = null;
            IPoint iPoint2 = null;
            int i = iFloor;
            while (i < size) {
                IPoint iPoint3 = this.c.get(i);
                if (iFloor >= i) {
                    d2 = d4;
                    d3 = d5;
                    iPoint = iPoint3;
                    iPoint2 = iPoint;
                } else if (iFloor >= i || iFloor != i - 1) {
                    d2 = d4;
                    d3 = d5;
                    if (iFloor < i && iFloor2 >= i) {
                        this.j0.add(iPoint3);
                        iPoint2 = iPoint3;
                    } else if (iFloor2 < i) {
                        IPoint iPoint4 = new IPoint();
                        int i2 = ((Point) iPoint2).x;
                        ((Point) iPoint4).x = (int) (((double) i2) + (((double) (((Point) iPoint3).x - i2)) * d3));
                        int i3 = ((Point) iPoint2).y;
                        ((Point) iPoint4).y = (int) (((double) i3) + (((double) (((Point) iPoint3).y - i3)) * d3));
                        this.j0.add(iPoint4);
                        break;
                    }
                } else {
                    IPoint iPoint5 = new IPoint();
                    int i4 = ((Point) iPoint).x;
                    d2 = d4;
                    d3 = d5;
                    ((Point) iPoint5).x = (int) (((double) i4) + (((double) (((Point) iPoint3).x - i4)) * d2));
                    int i5 = ((Point) iPoint).y;
                    ((Point) iPoint5).y = (int) (((double) i5) + (((double) (((Point) iPoint3).y - i5)) * d2));
                    this.j0.add(iPoint5);
                    if (iFloor2 == iFloor) {
                        IPoint iPoint6 = new IPoint();
                        int i6 = ((Point) iPoint).x;
                        ((Point) iPoint6).x = (int) (((double) i6) + (((double) (((Point) iPoint3).x - i6)) * d3));
                        int i7 = ((Point) iPoint).y;
                        ((Point) iPoint6).y = (int) (((double) i7) + (((double) (((Point) iPoint3).y - i7)) * d3));
                        this.j0.add(iPoint6);
                        break;
                    }
                    this.j0.add(iPoint3);
                    iPoint2 = iPoint3;
                }
                i++;
                d4 = d2;
                d5 = d3;
            }
            if (iFloor >= 0) {
                this.i0 = iFloor;
            }
            this.t = true;
            this.f10488a.A().setRunLowFrame(false);
            this.Y.setShownRange(this.g0, this.h0);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolyline
    public void setShownRatio(float f2) {
        this.f0 = f2;
        synchronized (this.n) {
            int size = this.c.size();
            if (size < 2) {
                this.j0.clear();
                return;
            }
            float f3 = this.f0;
            if (f3 < BitmapDescriptorFactory.HUE_RED) {
                f3 = BitmapDescriptorFactory.HUE_RED;
            } else if (f3 >= size) {
                f3 = size - 1;
            }
            if (this.q) {
                int size2 = this.f10490e.size();
                if (size2 < 2) {
                    return;
                } else {
                    f3 = (f3 / (size2 - 1)) * (size - 1);
                }
            }
            this.j0.clear();
            int iFloor = (int) Math.floor(f3);
            IPoint iPoint = null;
            int i = 0;
            while (i < size) {
                IPoint iPoint2 = this.c.get(i);
                if (i > iFloor) {
                    float f4 = f3 - iFloor;
                    if (f2 != BitmapDescriptorFactory.HUE_RED && iPoint != null) {
                        IPoint iPoint3 = new IPoint();
                        int i2 = ((Point) iPoint).x;
                        ((Point) iPoint3).x = (int) (i2 + ((((Point) iPoint2).x - i2) * f4));
                        int i3 = ((Point) iPoint).y;
                        ((Point) iPoint3).y = (int) (i3 + ((((Point) iPoint2).y - i3) * f4));
                        this.j0.add(iPoint3);
                        break;
                    }
                    break;
                    break;
                }
                this.j0.add(iPoint2);
                i++;
                iPoint = iPoint2;
            }
            this.t = true;
            this.f10488a.A().setRunLowFrame(false);
            this.Y.setShownRatio(f2);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolyline
    public void setTransparency(float f2) {
        this.M = (float) Math.min(1.0d, Math.max(0.0d, f2));
        this.f10488a.A().setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setVisible(boolean z) throws RemoteException {
        this.o = z;
        this.f10488a.A().setRunLowFrame(false);
        PolylineOptions polylineOptions = this.Y;
        if (polylineOptions != null) {
            polylineOptions.visible(z);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolyline
    public void setWidth(float f2) throws RemoteException {
        this.D = f2;
        this.f10488a.A().setRunLowFrame(false);
        this.Y.width(f2);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setZIndex(float f2) throws RemoteException {
        this.E = f2;
        this.f10488a.y();
        this.f10488a.A().setRunLowFrame(false);
        PolylineOptions polylineOptions = this.Y;
        if (polylineOptions != null) {
            polylineOptions.zIndex(f2);
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IPolylineDelegate
    public void useGradient(boolean z) {
        List<Integer> list;
        if (!z || (list = this.i) == null || list.size() <= 1) {
            return;
        }
        this.x = 4;
        this.f10488a.A().setRunLowFrame(false);
    }

    public boolean v(List<IPoint> list) {
        synchronized (this.n) {
            FPointBounds.Builder builder = new FPointBounds.Builder();
            this.f10489d.clear();
            this.v = false;
            float[] fArr = new float[list.size() * 3];
            this.Q = fArr;
            this.l0 = fArr.length;
            Iterator<IPoint> it = list.iterator();
            int i = 0;
            while (true) {
                boolean z = true;
                if (!it.hasNext()) {
                    break;
                }
                IPoint next = it.next();
                FPoint3 fPoint3 = new FPoint3();
                this.f10488a.A().geo2Map(((Point) next).x, ((Point) next).y, fPoint3);
                float[] fArr2 = this.Q;
                int i2 = i * 3;
                fArr2[i2] = ((PointF) fPoint3).x;
                fArr2[i2 + 1] = ((PointF) fPoint3).y;
                fArr2[i2 + 2] = 0.0f;
                List<Integer> list2 = this.f10493h;
                if (list2 != null) {
                    synchronized (list2) {
                        List<Integer> list3 = this.f10493h;
                        if (list3 == null || list3.size() <= i) {
                            z = false;
                        } else {
                            int i3 = this.i0;
                            if (i3 <= 0) {
                                fPoint3.setColorIndex(this.f10493h.get(i).intValue());
                            } else if (i3 + i < this.f10493h.size()) {
                                fPoint3.setColorIndex(this.f10493h.get(this.i0 + i).intValue());
                            }
                        }
                    }
                    synchronized (this.i) {
                        if (!z) {
                            List<Integer> list4 = this.i;
                            if (list4 != null && list4.size() > i) {
                                int i4 = this.i0;
                                if (i4 <= 0) {
                                    fPoint3.setColorIndex(this.i.get(i).intValue());
                                } else if (i4 + i < this.i.size()) {
                                    fPoint3.setColorIndex(this.i.get(this.i0 + i).intValue());
                                }
                            }
                        }
                    }
                }
                this.f10489d.add(fPoint3);
                builder.include(fPoint3);
                i++;
            }
            this.W = builder.build();
            if (!this.w) {
                this.l = r3.E(this.Q);
            }
            this.B = list.size();
            f();
        }
        return true;
    }
}
