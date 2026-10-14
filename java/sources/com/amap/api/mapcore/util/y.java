package com.amap.api.mapcore.util;

import android.graphics.Point;
import android.graphics.Rect;
import android.opengl.Matrix;
import android.os.RemoteException;
import com.amap.api.maps.model.BitmapDescriptor;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.MultiPointItem;
import com.amap.api.maps.model.MultiPointOverlayOptions;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.MapProjection;
import com.autonavi.base.amap.mapcore.MapConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class y implements x {
    private static int B;
    private String c;
    List<MultiPointItem> i;
    IPoint o;
    z q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    BitmapDescriptor f11346a = BitmapDescriptorFactory.defaultMarker();
    BitmapDescriptor b = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    float f11347d = BitmapDescriptorFactory.HUE_RED;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    float f11348e = BitmapDescriptorFactory.HUE_RED;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    float f11349f = BitmapDescriptorFactory.HUE_RED;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    float f11350g = 0.5f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    float f11351h = 0.5f;
    a0 j = null;
    w k = null;
    w l = new w(0, 1, 0, 1);
    List<MultiPointItem> m = new ArrayList();
    private float[] n = {-0.5f, -0.5f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, -0.5f, 0.5f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, 0.5f, 0.5f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, 0.5f, -0.5f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED};
    private boolean p = true;
    List<v> r = new ArrayList();
    private ExecutorService s = null;
    private List<String> t = new ArrayList();
    private float[] u = new float[v.l * 3];
    float[] v = new float[16];
    float[] w = new float[4];
    float[] x = new float[4];
    Rect y = new Rect();
    w z = null;
    w A = null;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ v f11352a;
        final /* synthetic */ String b;

        a(v vVar, String str) {
            this.f11352a = vVar;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f11352a.h()) {
                return;
            }
            try {
                this.f11352a.a();
                y.this.t.remove(this.b);
            } catch (Throwable unused) {
            }
        }
    }

    public y(MultiPointOverlayOptions multiPointOverlayOptions, z zVar) {
        this.q = zVar;
        e(multiPointOverlayOptions);
        v vVar = new v(g(), this);
        vVar.c(zVar.a());
        vVar.d(this.b);
        this.r.add(vVar);
    }

    private static String b(String str) {
        B++;
        return str + B;
    }

    private void d(float f2, float f3, float f4, float f5) {
        if (this.l == null) {
            this.l = new w(0, 1, 0, 1);
        }
        this.y.set(0, 0, 0, 0);
        IPoint iPoint = new IPoint();
        float f6 = this.f11350g;
        float f7 = this.f11351h;
        Matrix.setIdentityM(this.v, 0);
        Matrix.rotateM(this.v, 0, -f4, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
        float[] fArr = this.x;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        float[] fArr2 = this.w;
        float f8 = (-f2) * f6;
        fArr2[0] = f8;
        float f9 = f3 * f7;
        fArr2[1] = f9;
        fArr2[2] = 0.0f;
        fArr2[3] = 1.0f;
        Matrix.multiplyMV(fArr, 0, this.v, 0, fArr2, 0);
        Rect rect = this.y;
        int i = ((Point) iPoint).x;
        float[] fArr3 = this.x;
        int i2 = (int) (i + fArr3[0]);
        int i3 = ((Point) iPoint).y;
        rect.set(i2, (int) (i3 - fArr3[1]), (int) (i + fArr3[0]), (int) (i3 - fArr3[1]));
        float[] fArr4 = this.w;
        float f10 = f2 * (1.0f - f6);
        fArr4[0] = f10;
        fArr4[1] = f9;
        fArr4[2] = 0.0f;
        fArr4[3] = 1.0f;
        Matrix.multiplyMV(this.x, 0, this.v, 0, fArr4, 0);
        Rect rect2 = this.y;
        float f11 = ((Point) iPoint).x;
        float[] fArr5 = this.x;
        rect2.union((int) (f11 + fArr5[0]), (int) (((Point) iPoint).y - fArr5[1]));
        float[] fArr6 = this.w;
        fArr6[0] = f10;
        float f12 = (-f3) * (1.0f - f7);
        fArr6[1] = f12;
        fArr6[2] = 0.0f;
        fArr6[3] = 1.0f;
        Matrix.multiplyMV(this.x, 0, this.v, 0, fArr6, 0);
        Rect rect3 = this.y;
        float f13 = ((Point) iPoint).x;
        float[] fArr7 = this.x;
        rect3.union((int) (f13 + fArr7[0]), (int) (((Point) iPoint).y - fArr7[1]));
        float[] fArr8 = this.w;
        fArr8[0] = f8;
        fArr8[1] = f12;
        fArr8[2] = 0.0f;
        fArr8[3] = 1.0f;
        Matrix.multiplyMV(this.x, 0, this.v, 0, fArr8, 0);
        Rect rect4 = this.y;
        float f14 = ((Point) iPoint).x;
        float[] fArr9 = this.x;
        rect4.union((int) (f14 + fArr9[0]), (int) (((Point) iPoint).y - fArr9[1]));
        w wVar = this.l;
        Rect rect5 = this.y;
        wVar.a(rect5.left, rect5.right, rect5.top, rect5.bottom);
    }

    private void e(MultiPointOverlayOptions multiPointOverlayOptions) {
        if (multiPointOverlayOptions != null) {
            if (multiPointOverlayOptions.getIcon() == null || multiPointOverlayOptions.getIcon().getBitmap() == null || multiPointOverlayOptions.getIcon().getBitmap().isRecycled()) {
                this.b = this.f11346a;
            } else {
                this.b = multiPointOverlayOptions.getIcon();
            }
            this.f11350g = multiPointOverlayOptions.getAnchorU();
            this.f11351h = multiPointOverlayOptions.getAnchorV();
        }
    }

    private void f(MapConfig mapConfig) {
        if (mapConfig != null) {
            Rect rect = mapConfig.getGeoRectangle().getRect();
            w wVar = this.k;
            if (wVar == null) {
                this.k = new w(rect.left, rect.right, rect.top, rect.bottom);
            } else {
                wVar.a(rect.left, rect.right, rect.top, rect.bottom);
            }
        }
    }

    private float[] g() {
        float[] fArr = this.n;
        if (fArr == null) {
            return null;
        }
        float[] fArr2 = (float[]) fArr.clone();
        float f2 = this.f11350g - 0.5f;
        float f3 = this.f11351h - 0.5f;
        fArr2[0] = fArr2[0] + f2;
        fArr2[1] = fArr2[1] - f3;
        fArr2[6] = fArr2[6] + f2;
        fArr2[7] = fArr2[7] - f3;
        fArr2[12] = fArr2[12] + f2;
        fArr2[13] = fArr2[13] - f3;
        fArr2[18] = fArr2[18] + f2;
        fArr2[19] = fArr2[19] - f3;
        return fArr2;
    }

    private w h() {
        List<MultiPointItem> list = this.i;
        if (list == null || list.size() == 0) {
            return null;
        }
        Iterator<MultiPointItem> it = this.i.iterator();
        MultiPointItem next = it.next();
        int i = ((Point) next.getIPoint()).x;
        int i2 = ((Point) next.getIPoint()).x;
        int i3 = ((Point) next.getIPoint()).y;
        int i4 = ((Point) next.getIPoint()).y;
        while (it.hasNext()) {
            MultiPointItem next2 = it.next();
            int i5 = ((Point) next2.getIPoint()).x;
            int i6 = ((Point) next2.getIPoint()).y;
            if (i5 < i) {
                i = i5;
            }
            if (i5 > i2) {
                i2 = i5;
            }
            if (i6 < i3) {
                i3 = i6;
            }
            if (i6 > i4) {
                i4 = i6;
            }
        }
        return new w(i, i2, i3, i4);
    }

    private void i() {
        if (this.s == null) {
            this.s = new ThreadPoolExecutor(1, 2, 1, TimeUnit.SECONDS, new LinkedBlockingQueue(), new e3("MultiPointOverlay"), new ThreadPoolExecutor.AbortPolicy());
        }
        for (v vVar : this.r) {
            if (vVar != null && !vVar.h()) {
                String str = vVar.hashCode() + "";
                if (!this.t.contains(str)) {
                    this.t.add(str);
                    this.s.execute(new a(vVar, str));
                }
            }
        }
    }

    private void j() {
        z zVar = this.q;
        if (zVar != null) {
            zVar.j();
        }
    }

    @Override // com.amap.api.mapcore.util.x
    public void a(MapConfig mapConfig, float[] fArr, float[] fArr2) {
        int i;
        float[] fArr3;
        z zVar;
        try {
            if (this.p) {
                i();
                if (this.r.size() < 1 || this.j == null || mapConfig == null) {
                    return;
                }
                float sr = mapConfig.getSR();
                float sc = mapConfig.getSC();
                if (mapConfig.getChangeRatio() != 1.0d || this.m.size() == 0) {
                    synchronized (this.m) {
                        f(mapConfig);
                        this.m.clear();
                        float mapPerPixelUnitLength = mapConfig.getMapPerPixelUnitLength();
                        this.f11347d = mapPerPixelUnitLength;
                        this.f11348e = mapPerPixelUnitLength * this.b.getWidth();
                        float height = this.f11347d * this.b.getHeight();
                        this.f11349f = height;
                        float f2 = this.f11348e;
                        d(f2, height, sr, sc);
                        this.j.d(this.k, this.m, f2 * height * 16.0f);
                    }
                }
                if (this.o == null) {
                    this.o = new IPoint();
                }
                IPoint iPoint = this.o;
                if (iPoint != null && mapConfig != null) {
                    ((Point) iPoint).x = (int) mapConfig.getSX();
                    ((Point) this.o).y = (int) mapConfig.getSY();
                }
                v vVar = this.r.get(0);
                synchronized (this.m) {
                    Iterator<MultiPointItem> it = this.m.iterator();
                    loop0: while (true) {
                        i = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                break loop0;
                            }
                            IPoint iPoint2 = it.next().getIPoint();
                            if (iPoint2 != null) {
                                int i2 = ((Point) iPoint2).x;
                                IPoint iPoint3 = this.o;
                                int i3 = i2 - ((Point) iPoint3).x;
                                int i4 = ((Point) iPoint2).y - ((Point) iPoint3).y;
                                if (vVar != null && vVar.h()) {
                                    if (!vVar.j() && (zVar = this.q) != null) {
                                        vVar.c(zVar.a());
                                    }
                                    fArr3 = this.u;
                                    int i5 = i * 3;
                                    fArr3[i5 + 0] = i3;
                                    fArr3[i5 + 1] = i4;
                                    fArr3[i5 + 2] = 0.0f;
                                    i++;
                                    if (i >= v.l) {
                                        break;
                                    }
                                }
                            }
                        }
                        vVar.g(fArr, fArr2, fArr3, this.f11348e, this.f11349f, sr, sc, i);
                    }
                }
                if (i > 0) {
                    vVar.g(fArr, fArr2, this.u, this.f11348e, this.f11349f, sr, sc, i);
                }
            }
        } catch (Throwable th) {
            e6.r(th, "MultiPointOverlayDelegate", "draw");
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMultiPointOverlay
    public void addItem(MultiPointItem multiPointItem) {
        j();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMultiPointOverlay
    public void addItems(List<MultiPointItem> list) {
        a0 a0Var;
        w wVarH;
        if (list != null) {
            try {
                if (list.size() == 0) {
                    return;
                }
                synchronized (this) {
                    if (this.i == null) {
                        this.i = new ArrayList();
                    }
                    this.i.clear();
                    this.i.addAll(list);
                    int size = this.i.size();
                    for (int i = 0; i < size; i++) {
                        List<MultiPointItem> list2 = this.i;
                        if (list2 == null) {
                            return;
                        }
                        MultiPointItem multiPointItem = list2.get(i);
                        if (multiPointItem != null && multiPointItem.getLatLng() != null && multiPointItem.getIPoint() == null) {
                            IPoint iPoint = new IPoint();
                            MapProjection.lonlat2Geo(multiPointItem.getLatLng().longitude, multiPointItem.getLatLng().latitude, iPoint);
                            multiPointItem.setIPoint(iPoint);
                        }
                    }
                    if (this.j == null && (wVarH = h()) != null) {
                        this.j = new a0(wVarH);
                    }
                    List<MultiPointItem> list3 = this.i;
                    if (list3 != null) {
                        int size2 = list3.size();
                        for (int i2 = 0; i2 < size2; i2++) {
                            MultiPointItem multiPointItem2 = this.i.get(i2);
                            if (multiPointItem2 != null && multiPointItem2.getIPoint() != null && (a0Var = this.j) != null) {
                                a0Var.f(multiPointItem2);
                            }
                        }
                    }
                    j();
                }
            } catch (Throwable th) {
                e6.r(th, "MultiPointOverlayDelegate", "addItems");
            }
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMultiPointOverlay
    public void destroy(boolean z) {
        remove(z);
        BitmapDescriptor bitmapDescriptor = this.b;
        if (bitmapDescriptor != null) {
            bitmapDescriptor.recycle();
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMultiPointOverlay
    public String getId() throws RemoteException {
        if (this.c == null) {
            this.c = b("MultiPointOverlay");
        }
        return this.c;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMultiPointOverlay
    public MultiPointItem onClick(IPoint iPoint) {
        if (!this.p || this.j == null) {
            return null;
        }
        if (this.z == null) {
            this.z = new w(0, 1, 0, 1);
        }
        int i = (int) (this.f11347d * 8.0f);
        w wVar = this.z;
        int i2 = ((Point) iPoint).x;
        int i3 = ((Point) iPoint).y;
        wVar.a(i2 - i, i2 + i, i3 - i, i3 + i);
        synchronized (this.m) {
            for (int size = this.m.size() - 1; size >= 0; size--) {
                MultiPointItem multiPointItem = this.m.get(size);
                IPoint iPoint2 = multiPointItem.getIPoint();
                if (iPoint2 != null) {
                    if (this.l == null) {
                        return null;
                    }
                    if (this.A == null) {
                        this.A = new w(0, 1, 0, 1);
                    }
                    w wVar2 = this.A;
                    int i4 = ((Point) iPoint2).x;
                    w wVar3 = this.l;
                    int i5 = wVar3.f11293a + i4;
                    int i6 = i4 + wVar3.c;
                    int i7 = ((Point) iPoint2).y;
                    wVar2.a(i5, i6, wVar3.b + i7, i7 + wVar3.f11294d);
                    if (this.A.c(this.z)) {
                        return multiPointItem;
                    }
                }
            }
            return null;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMultiPointOverlay
    public void remove(boolean z) {
        z zVar;
        this.p = false;
        try {
            BitmapDescriptor bitmapDescriptor = this.f11346a;
            if (bitmapDescriptor != null) {
                bitmapDescriptor.recycle();
            }
            synchronized (this) {
                List<MultiPointItem> list = this.i;
                if (list != null) {
                    list.clear();
                    this.i = null;
                }
            }
            a0 a0Var = this.j;
            if (a0Var != null) {
                a0Var.b();
                this.j = null;
            }
            List<MultiPointItem> list2 = this.m;
            if (list2 != null) {
                list2.clear();
            }
            ExecutorService executorService = this.s;
            if (executorService != null) {
                executorService.shutdownNow();
                this.s = null;
            }
            List<String> list3 = this.t;
            if (list3 != null) {
                list3.clear();
            }
            List<v> list4 = this.r;
            if (list4 != null) {
                for (v vVar : list4) {
                    if (vVar != null) {
                        vVar.i();
                    }
                }
                this.r.clear();
            }
            if (z && (zVar = this.q) != null) {
                zVar.d(this);
                this.q.j();
            }
            this.q = null;
            this.n = null;
        } catch (Throwable unused) {
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMultiPointOverlay
    public void setAnchor(float f2, float f3) {
        this.f11350g = f2;
        this.f11351h = f3;
        j();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMultiPointOverlay
    public void setVisible(boolean z) {
        if (this.p != z) {
            j();
        }
        this.p = z;
    }
}
