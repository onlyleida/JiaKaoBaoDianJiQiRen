package com.amap.api.mapcore.util;

import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.opengl.GLES20;
import com.amap.api.maps.MapsInitializer;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.TileOverlayOptions;
import com.amap.api.maps.model.TileProvider;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.interfaces.ITileOverlay;
import com.autonavi.base.ae.gmap.GLMapState;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import com.autonavi.base.amap.api.mapcore.overlays.ITileOverlayDelegate;
import com.autonavi.base.amap.mapcore.MapConfig;
import com.serenegiant.glutils.ShaderConst;
import java.lang.ref.WeakReference;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class f2 implements ITileOverlayDelegate {
    private static int q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ab f10771a;
    private TileProvider b;
    private Float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f10772d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f10773e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private IAMapDelegate f10774f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f10775g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f10776h;
    private int i;
    private s3 j;
    private List<b> k = new ArrayList();
    private boolean l = false;
    private c m = null;
    private String n;
    private FloatBuffer o;
    h2.g p;

    class a implements u3.c {
        a() {
        }

        @Override // com.amap.api.mapcore.util.u3.c
        public void a() {
            f2.this.f10774f.resetRenderTimeLongLong();
        }
    }

    private static class c extends dq<Void, Void, List<b>> {
        private int m;
        private boolean n;
        private int o;
        private int p;
        private int q;
        private WeakReference<IAMapDelegate> r;
        private List<b> s;
        private boolean t;
        private WeakReference<ab> u;
        private WeakReference<s3> v;

        public c(boolean z, IAMapDelegate iAMapDelegate, int i, int i2, int i3, List<b> list, boolean z2, ab abVar, s3 s3Var) {
            this.o = 256;
            this.p = 256;
            this.q = 0;
            this.n = z;
            this.r = new WeakReference<>(iAMapDelegate);
            this.o = i;
            this.p = i2;
            this.q = i3;
            this.s = list;
            this.t = z2;
            this.u = new WeakReference<>(abVar);
            this.v = new WeakReference<>(s3Var);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amap.api.mapcore.util.dq
        /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
        public List<b> d(Void... voidArr) {
            try {
                IAMapDelegate iAMapDelegate = this.r.get();
                if (iAMapDelegate == null) {
                    return null;
                }
                int mapWidth = iAMapDelegate.getMapWidth();
                int mapHeight = iAMapDelegate.getMapHeight();
                int zoomLevel = (int) iAMapDelegate.getZoomLevel();
                this.m = zoomLevel;
                if (mapWidth > 0 && mapHeight > 0) {
                    return f2.j(iAMapDelegate, zoomLevel, this.o, this.p, this.q, this.u.get(), this.v.get());
                }
                return null;
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amap.api.mapcore.util.dq
        /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
        public void f(List<b> list) {
            if (list == null) {
                return;
            }
            try {
                if (list.size() <= 0) {
                    return;
                }
                f2.l(this.r.get(), list, this.m, this.n, this.s, this.t, this.u.get(), this.v.get());
                list.clear();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public f2(TileOverlayOptions tileOverlayOptions, ab abVar, boolean z) {
        this.f10773e = false;
        this.f10775g = 256;
        this.f10776h = 256;
        this.i = -1;
        this.n = null;
        this.o = null;
        this.f10771a = abVar;
        TileProvider tileProvider = tileOverlayOptions.getTileProvider();
        this.b = tileProvider;
        this.f10775g = tileProvider.getTileWidth();
        this.f10776h = this.b.getTileHeight();
        this.o = r3.E(new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, 1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED});
        this.c = Float.valueOf(tileOverlayOptions.getZIndex());
        this.f10772d = tileOverlayOptions.isVisible();
        this.f10773e = z;
        if (z) {
            this.n = "TileOverlay0";
        } else {
            this.n = getId();
        }
        this.f10774f = this.f10771a.b();
        this.i = Integer.parseInt(this.n.substring(11));
        try {
            v3.b bVar = z ? new v3.b(this.f10771a.m(), this.n, abVar.b().getMapConfig().getMapLanguage()) : new v3.b(this.f10771a.m(), this.n);
            bVar.d(tileOverlayOptions.getMemoryCacheEnabled());
            if (this.f10773e) {
                bVar.i = false;
            }
            bVar.f(tileOverlayOptions.getDiskCacheEnabled());
            bVar.a(tileOverlayOptions.getMemCacheSize());
            bVar.b(tileOverlayOptions.getDiskCacheSize());
            String diskCacheDir = tileOverlayOptions.getDiskCacheDir();
            if (diskCacheDir != null && !"".equals(diskCacheDir)) {
                bVar.c(diskCacheDir);
            }
            s3 s3Var = new s3(this.f10771a.m(), this.f10775g, this.f10776h);
            this.j = s3Var;
            s3Var.z(this.b);
            this.j.e(bVar);
            this.j.d(new a());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void d(int i, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        if (floatBuffer == null || floatBuffer2 == null || i == 0) {
            return;
        }
        h2.g gVar = this.p;
        if (gVar == null || gVar.i()) {
            m();
        }
        this.p.b();
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(1, 771);
        GLES20.glBlendColor(1.0f, 1.0f, 1.0f, 1.0f);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(ShaderConst.GL_TEXTURE_2D, i);
        GLES20.glEnableVertexAttribArray(this.p.f10863f);
        GLES20.glVertexAttribPointer(this.p.f10863f, 3, 5126, false, 12, (Buffer) floatBuffer);
        GLES20.glEnableVertexAttribArray(this.p.f10864g);
        GLES20.glVertexAttribPointer(this.p.f10864g, 2, 5126, false, 8, (Buffer) floatBuffer2);
        GLES20.glUniformMatrix4fv(this.p.f10862e, 1, false, this.f10771a.o(), 0);
        GLES20.glDrawArrays(6, 0, 4);
        GLES20.glDisableVertexAttribArray(this.p.f10863f);
        GLES20.glDisableVertexAttribArray(this.p.f10864g);
        GLES20.glBindTexture(ShaderConst.GL_TEXTURE_2D, 0);
        GLES20.glUseProgram(0);
        GLES20.glDisable(3042);
    }

    private void f(boolean z) {
        c cVar = new c(z, this.f10774f, this.f10775g, this.f10776h, this.i, this.k, this.f10773e, this.f10771a, this.j);
        this.m = cVar;
        cVar.m(new Void[0]);
    }

    private boolean g(b bVar) {
        float f2 = bVar.c;
        int i = this.f10775g;
        int i2 = this.f10776h;
        IPoint iPoint = bVar.f10780e;
        int i3 = ((Point) iPoint).x;
        int i4 = 1 << (20 - ((int) f2));
        int i5 = i2 * i4;
        int i6 = ((Point) iPoint).y + i5;
        MapConfig mapConfig = this.f10774f.getMapConfig();
        double d2 = i3;
        double d3 = i6;
        double d4 = i3 + (i4 * i);
        double d5 = i6 - i5;
        float[] fArr = {(float) (d2 - mapConfig.getSX()), (float) (d3 - mapConfig.getSY()), BitmapDescriptorFactory.HUE_RED, (float) (d4 - mapConfig.getSX()), (float) (d3 - mapConfig.getSY()), BitmapDescriptorFactory.HUE_RED, (float) (d4 - mapConfig.getSX()), (float) (d5 - mapConfig.getSY()), BitmapDescriptorFactory.HUE_RED, (float) (d2 - mapConfig.getSX()), (float) (d5 - mapConfig.getSY()), BitmapDescriptorFactory.HUE_RED};
        FloatBuffer floatBuffer = bVar.f10783h;
        if (floatBuffer == null) {
            bVar.f10783h = r3.E(fArr);
            return true;
        }
        bVar.f10783h = r3.F(fArr, floatBuffer);
        return true;
    }

    private static String i(String str) {
        q++;
        return str + q;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:32:0x0196  */
    public static ArrayList<b> j(IAMapDelegate iAMapDelegate, int i, int i2, int i3, int i4, ab abVar, s3 s3Var) {
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z;
        int i9;
        boolean z2;
        int i10;
        int i11;
        GLMapState mapProjection = iAMapDelegate.getMapProjection();
        Rect rect = iAMapDelegate.getMapConfig().getGeoRectangle().getRect();
        IPoint iPointObtain = IPoint.obtain();
        IPoint iPointObtain2 = IPoint.obtain();
        int i12 = rect.left;
        ((Point) iPointObtain).x = i12;
        ((Point) iPointObtain).y = rect.top;
        int iMin = Math.min(Integer.MAX_VALUE, i12);
        int iMax = Math.max(0, ((Point) iPointObtain).x);
        int iMin2 = Math.min(Integer.MAX_VALUE, ((Point) iPointObtain).y);
        int iMax2 = Math.max(0, ((Point) iPointObtain).y);
        int i13 = rect.right;
        ((Point) iPointObtain).x = i13;
        ((Point) iPointObtain).y = rect.top;
        int iMin3 = Math.min(iMin, i13);
        int iMax3 = Math.max(iMax, ((Point) iPointObtain).x);
        int iMin4 = Math.min(iMin2, ((Point) iPointObtain).y);
        int iMax4 = Math.max(iMax2, ((Point) iPointObtain).y);
        int i14 = rect.left;
        ((Point) iPointObtain).x = i14;
        ((Point) iPointObtain).y = rect.bottom;
        int iMin5 = Math.min(iMin3, i14);
        int iMax5 = Math.max(iMax3, ((Point) iPointObtain).x);
        int iMin6 = Math.min(iMin4, ((Point) iPointObtain).y);
        int iMax6 = Math.max(iMax4, ((Point) iPointObtain).y);
        int i15 = rect.right;
        ((Point) iPointObtain).x = i15;
        ((Point) iPointObtain).y = rect.bottom;
        int iMin7 = Math.min(iMin5, i15);
        int iMax7 = Math.max(iMax5, ((Point) iPointObtain).x);
        int iMin8 = Math.min(iMin6, ((Point) iPointObtain).y);
        int iMax8 = Math.max(iMax6, ((Point) iPointObtain).y);
        int i16 = 20 - i;
        int i17 = 1 << i16;
        int i18 = iMin7 - (i17 * i2);
        mapProjection.getMapGeoCenter(iPointObtain2);
        int i19 = (((Point) iPointObtain2).x >> i16) / i2;
        int i20 = (((Point) iPointObtain2).y >> i16) / i3;
        int i21 = iMin8 - (i17 * i3);
        int i22 = iMax8;
        b bVar = new b(i19, i20, i, i4, iAMapDelegate, abVar, s3Var);
        bVar.f10780e = IPoint.obtain((i19 << i16) * i2, (i20 << i16) * i3);
        iPointObtain.recycle();
        iPointObtain2.recycle();
        ArrayList<b> arrayList = new ArrayList<>();
        arrayList.add(bVar);
        int i23 = 1;
        while (true) {
            int i24 = i19 - i23;
            int i25 = i24;
            boolean z3 = false;
            while (true) {
                i5 = i19 + i23;
                if (i25 > i5) {
                    break;
                }
                int i26 = i20 + i23;
                int i27 = (i25 << i16) * i2;
                IPoint iPoint = new IPoint(i27, (i26 << i16) * i3);
                int i28 = ((Point) iPoint).x;
                if (i28 >= iMax7 || i28 <= i18) {
                    i8 = i22;
                } else {
                    int i29 = ((Point) iPoint).y;
                    int i30 = i22;
                    if (i29 < i30) {
                        int i31 = i21;
                        if (i29 > i31) {
                            if (!z3) {
                                z3 = true;
                            }
                            int i32 = i25;
                            i19 = i19;
                            i24 = i24;
                            i8 = i30;
                            i25 = i25;
                            i27 = i27;
                            i21 = i31;
                            b bVar2 = new b(i32, i26, i, i4, iAMapDelegate, abVar, s3Var);
                            bVar2.f10780e = iPoint;
                            arrayList.add(bVar2);
                            z = z3;
                        } else {
                            i24 = i24;
                            i25 = i25;
                            i21 = i31;
                            i8 = i30;
                            i27 = i27;
                            z = z3;
                        }
                    } else {
                        i8 = i30;
                    }
                    int i33 = i20 - i23;
                    IPoint iPoint2 = new IPoint(i27, (i33 << i16) * i3);
                    i9 = ((Point) iPoint2).x;
                    if (i9 < iMax7 || i9 <= i18 || (i11 = ((Point) iPoint2).y) >= i8) {
                        z2 = z;
                        i10 = i21;
                    } else {
                        int i34 = i21;
                        if (i11 > i34) {
                            if (!z) {
                                z = true;
                            }
                            boolean z4 = z;
                            i10 = i34;
                            b bVar3 = new b(i25, i33, i, i4, iAMapDelegate, abVar, s3Var);
                            bVar3.f10780e = iPoint2;
                            arrayList.add(bVar3);
                            z2 = z4;
                        } else {
                            z2 = z;
                            i10 = i34;
                        }
                    }
                    i25++;
                    i22 = i8;
                    i24 = i24;
                    int i35 = i10;
                    z3 = z2;
                    i19 = i19;
                    i21 = i35;
                }
                z = z3;
                int i36 = i20 - i23;
                IPoint iPoint3 = new IPoint(i27, (i36 << i16) * i3);
                i9 = ((Point) iPoint3).x;
                if (i9 < iMax7) {
                    z2 = z;
                    i10 = i21;
                } else {
                    z2 = z;
                    i10 = i21;
                }
                i25++;
                i22 = i8;
                i24 = i24;
                int i37 = i10;
                z3 = z2;
                i19 = i19;
                i21 = i37;
            }
            int i38 = i24;
            int i39 = i22;
            int i40 = i21;
            int i41 = i19;
            boolean z5 = z3;
            int i42 = (i20 + i23) - 1;
            while (i42 > i20 - i23) {
                int i43 = (i42 << i16) * i3;
                IPoint iPoint4 = new IPoint((i5 << i16) * i2, i43);
                int i44 = ((Point) iPoint4).x;
                if (i44 < iMax7 && i44 > i18 && (i7 = ((Point) iPoint4).y) < i39 && i7 > i40) {
                    if (!z5) {
                        z5 = true;
                    }
                    b bVar4 = new b(i5, i42, i, i4, iAMapDelegate, abVar, s3Var);
                    bVar4.f10780e = iPoint4;
                    arrayList.add(bVar4);
                    z5 = z5;
                }
                IPoint iPoint5 = new IPoint((i38 << i16) * i2, i43);
                int i45 = ((Point) iPoint5).x;
                if (i45 < iMax7 && i45 > i18 && (i6 = ((Point) iPoint5).y) < i39 && i6 > i40) {
                    if (!z5) {
                        z5 = true;
                    }
                    b bVar5 = new b(i38, i42, i, i4, iAMapDelegate, abVar, s3Var);
                    bVar5.f10780e = iPoint5;
                    arrayList.add(bVar5);
                }
                i42--;
                i23 = i23;
                i5 = i5;
            }
            int i46 = i23;
            if (!z5) {
                return arrayList;
            }
            i23 = i46 + 1;
            i22 = i39;
            i19 = i41;
            i21 = i40;
        }
    }

    private void k() {
        c cVar = this.m;
        if (cVar == null || cVar.a() != dq.e.RUNNING) {
            return;
        }
        this.m.g(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:53:0x00a9 A[Catch: all -> 0x00bc, TryCatch #0 {, blocks: (B:8:0x0008, B:9:0x000c, B:11:0x0013, B:12:0x001d, B:14:0x0023, B:16:0x002f, B:18:0x0033, B:21:0x003d, B:22:0x0041, B:24:0x004b, B:27:0x0054, B:29:0x005a, B:32:0x005e, B:57:0x00b5, B:36:0x0069, B:38:0x007e, B:41:0x0085, B:43:0x0089, B:46:0x0094, B:48:0x009a, B:50:0x009e, B:53:0x00a9, B:56:0x00b2, B:58:0x00b8, B:60:0x00ba), top: B:65:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00b0 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:84:0x00b5 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    public static boolean l(IAMapDelegate iAMapDelegate, List<b> list, int i, boolean z, List<b> list2, boolean z2, ab abVar, s3 s3Var) {
        int i2;
        int i3;
        boolean z3;
        if (list == null || list2 == null) {
            return false;
        }
        synchronized (list2) {
            Iterator<b> it = list2.iterator();
            while (true) {
                boolean z4 = true;
                if (!it.hasNext()) {
                    break;
                }
                b next = it.next();
                Iterator<b> it2 = list.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z4 = false;
                        break;
                    }
                    b next2 = it2.next();
                    if (next.equals(next2) && (z3 = next.f10782g)) {
                        next2.f10782g = z3;
                        next2.f10781f = next.f10781f;
                        break;
                    }
                }
                if (!z4) {
                    next.d();
                }
            }
            list2.clear();
            if (i <= ((int) iAMapDelegate.getMaxZoomLevel()) && i >= ((int) iAMapDelegate.getMinZoomLevel())) {
                int size = list.size();
                if (size <= 0) {
                    return false;
                }
                for (int i4 = 0; i4 < size; i4++) {
                    b bVar = list.get(i4);
                    if (bVar != null) {
                        if (!z2) {
                            list2.add(bVar);
                            if (bVar.f10782g && s3Var != null) {
                                s3Var.h(z, bVar);
                            }
                        } else if (abVar.b().getMapConfig().getMapLanguage().equals("zh_cn")) {
                            if (MapsInitializer.isLoadWorldGridMap() && (i3 = bVar.c) >= 6 && !k3.b(bVar.f10778a, bVar.b, i3)) {
                                list2.add(bVar);
                                if (bVar.f10782g) {
                                }
                            }
                        } else if (MapsInitializer.isLoadWorldGridMap() || (i2 = bVar.c) < 6 || k3.b(bVar.f10778a, bVar.b, i2)) {
                            list2.add(bVar);
                            if (bVar.f10782g) {
                            }
                        }
                    }
                }
                return true;
            }
            return false;
        }
    }

    private void m() {
        ab abVar = this.f10771a;
        if (abVar == null || abVar.b() == null) {
            return;
        }
        this.p = (h2.g) this.f10771a.b().getGLShader(0);
    }

    public void c() {
        List<b> list = this.k;
        if (list != null) {
            synchronized (list) {
                this.k.clear();
            }
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.ITileOverlay
    public void clearTileCache() {
        s3 s3Var = this.j;
        if (s3Var != null) {
            s3Var.u();
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.ITileOverlay
    public void destroy(boolean z) {
        k();
        synchronized (this.k) {
            int size = this.k.size();
            for (int i = 0; i < size; i++) {
                this.k.get(i).d();
            }
            this.k.clear();
        }
        s3 s3Var = this.j;
        if (s3Var != null) {
            s3Var.s(z);
            this.j.l(true);
            this.j.z(null);
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.ITileOverlayDelegate
    public void drawTiles() {
        List<b> list = this.k;
        if (list != null) {
            synchronized (list) {
                if (this.k.size() == 0) {
                    return;
                }
                int size = this.k.size();
                for (int i = 0; i < size; i++) {
                    b bVar = this.k.get(i);
                    if (!bVar.f10782g) {
                        try {
                            IPoint iPoint = bVar.f10780e;
                            Bitmap bitmap = bVar.i;
                            if (bitmap != null && !bitmap.isRecycled() && iPoint != null) {
                                int iK = r3.k(bVar.i);
                                bVar.f10781f = iK;
                                if (iK != 0) {
                                    bVar.f10782g = true;
                                }
                                bVar.i = null;
                            }
                        } catch (Throwable th) {
                            e6.r(th, "TileOverlayDelegateImp", "drawTiles");
                        }
                    }
                    if (bVar.f10782g) {
                        g(bVar);
                        d(bVar.f10781f, bVar.f10783h, this.o);
                    }
                }
            }
        }
    }

    public void e(String str) {
        k();
        c();
        s3 s3Var = this.j;
        if (s3Var != null) {
            s3Var.l(true);
            this.j.f(str);
            this.j.l(false);
        }
        f(true);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.ITileOverlay
    public boolean equalsRemote(ITileOverlay iTileOverlay) {
        return equals(iTileOverlay) || iTileOverlay.getId().equals(getId());
    }

    @Override // com.autonavi.amap.mapcore.interfaces.ITileOverlay
    public String getId() {
        if (this.n == null) {
            this.n = i("TileOverlay");
        }
        return this.n;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.ITileOverlay
    public float getZIndex() {
        return this.c.floatValue();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.ITileOverlay
    public int hashCodeRemote() {
        return super.hashCode();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.ITileOverlay
    public boolean isVisible() {
        return this.f10772d;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.ITileOverlayDelegate
    public void onFling(boolean z) {
        if (this.l != z) {
            this.l = z;
            s3 s3Var = this.j;
            if (s3Var != null) {
                s3Var.l(z);
            }
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.ITileOverlayDelegate
    public void onPause() {
        k();
        synchronized (this.k) {
            int size = this.k.size();
            for (int i = 0; i < size; i++) {
                this.k.get(i).d();
            }
            this.k.clear();
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.ITileOverlayDelegate
    public void onResume() {
        s3 s3Var = this.j;
        if (s3Var != null) {
            s3Var.g(false);
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.ITileOverlayDelegate
    public void reLoadTexture() {
        List<b> list = this.k;
        if (list != null) {
            synchronized (list) {
                if (this.k.size() == 0) {
                    return;
                }
                for (b bVar : this.k) {
                    bVar.f10782g = false;
                    bVar.f10781f = 0;
                }
            }
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.ITileOverlayDelegate
    public void refresh(boolean z) {
        if (this.l) {
            return;
        }
        k();
        f(z);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.ITileOverlay
    public void remove() {
        this.f10771a.i(this);
        this.f10774f.setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.ITileOverlay
    public void setVisible(boolean z) {
        this.f10772d = z;
        this.f10774f.setRunLowFrame(false);
        if (z) {
            refresh(true);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.ITileOverlay
    public void setZIndex(float f2) {
        this.c = Float.valueOf(f2);
        this.f10771a.k();
    }

    public static class b implements Cloneable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f10778a;
        public int b;
        public int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f10779d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public IPoint f10780e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f10781f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f10782g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public FloatBuffer f10783h;
        public Bitmap i;
        public u3.a j;
        public int k;
        private IAMapDelegate l;
        private ab m;
        private s3 n;

        public b(int i, int i2, int i3, int i4, IAMapDelegate iAMapDelegate, ab abVar, s3 s3Var) {
            this.f10781f = 0;
            this.f10782g = false;
            this.f10783h = null;
            this.i = null;
            this.j = null;
            this.k = 0;
            this.f10778a = i;
            this.b = i2;
            this.c = i3;
            this.f10779d = i4;
            this.l = iAMapDelegate;
            this.m = abVar;
            this.n = s3Var;
        }

        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public b clone() {
            try {
                b bVar = (b) super.clone();
                bVar.f10778a = this.f10778a;
                bVar.b = this.b;
                bVar.c = this.c;
                bVar.f10779d = this.f10779d;
                bVar.f10780e = (IPoint) this.f10780e.clone();
                bVar.f10783h = this.f10783h.asReadOnlyBuffer();
                this.k = 0;
            } catch (CloneNotSupportedException e2) {
                e2.printStackTrace();
            }
            return new b(this);
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0031 A[Catch: all -> 0x0041, TryCatch #0 {all -> 0x0041, blocks: (B:5:0x0005, B:11:0x0018, B:13:0x0026, B:15:0x002d, B:16:0x0031, B:18:0x0035, B:20:0x003c, B:8:0x000c), top: B:26:0x0005, inners: #1 }] */
        /* JADX WARN: Code duplicated, block: B:18:0x0035 A[Catch: all -> 0x0041, TryCatch #0 {all -> 0x0041, blocks: (B:5:0x0005, B:11:0x0018, B:13:0x0026, B:15:0x002d, B:16:0x0031, B:18:0x0035, B:20:0x003c, B:8:0x000c), top: B:26:0x0005, inners: #1 }] */
        /* JADX WARN: Code duplicated, block: B:20:0x003c A[Catch: all -> 0x0041, TRY_LEAVE, TryCatch #0 {all -> 0x0041, blocks: (B:5:0x0005, B:11:0x0018, B:13:0x0026, B:15:0x002d, B:16:0x0031, B:18:0x0035, B:20:0x003c, B:8:0x000c), top: B:26:0x0005, inners: #1 }] */
        public synchronized void c(Bitmap bitmap) {
            int i;
            s3 s3Var;
            if (bitmap != null) {
                try {
                    if (bitmap.isRecycled()) {
                        i = this.k;
                        if (i < 3) {
                            this.k = i + 1;
                            s3Var = this.n;
                            if (s3Var != null) {
                                s3Var.h(true, this);
                            }
                        }
                    } else {
                        try {
                            this.j = null;
                            this.i = bitmap;
                            this.l.setRunLowFrame(false);
                        } catch (Throwable th) {
                            e6.r(th, "TileOverlayDelegateImp", "setBitmap");
                            th.printStackTrace();
                            int i2 = this.k;
                            if (i2 < 3) {
                                this.k = i2 + 1;
                                s3 s3Var2 = this.n;
                                if (s3Var2 != null) {
                                    s3Var2.h(true, this);
                                }
                            }
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            } else {
                i = this.k;
                if (i < 3) {
                    this.k = i + 1;
                    s3Var = this.n;
                    if (s3Var != null) {
                        s3Var.h(true, this);
                    }
                }
            }
        }

        public void d() {
            try {
                u3.c(this);
                if (this.f10782g) {
                    this.m.c(this.f10781f);
                }
                this.f10782g = false;
                this.f10781f = 0;
                Bitmap bitmap = this.i;
                if (bitmap != null && !bitmap.isRecycled()) {
                    r3.g0(this.i);
                }
                this.i = null;
                FloatBuffer floatBuffer = this.f10783h;
                if (floatBuffer != null) {
                    floatBuffer.clear();
                }
                this.f10783h = null;
                this.j = null;
                this.k = 0;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f10778a == bVar.f10778a && this.b == bVar.b && this.c == bVar.c && this.f10779d == bVar.f10779d;
        }

        public int hashCode() {
            return (this.f10778a * 7) + (this.b * 11) + (this.c * 13) + this.f10779d;
        }

        public String toString() {
            return this.f10778a + "-" + this.b + "-" + this.c + "-" + this.f10779d;
        }

        public b(b bVar) {
            this.f10781f = 0;
            this.f10782g = false;
            this.f10783h = null;
            this.i = null;
            this.j = null;
            this.k = 0;
            this.f10778a = bVar.f10778a;
            this.b = bVar.b;
            this.c = bVar.c;
            this.f10779d = bVar.f10779d;
            this.f10780e = bVar.f10780e;
            this.f10783h = bVar.f10783h;
            this.k = 0;
            this.m = bVar.m;
            this.l = bVar.l;
            this.n = bVar.n;
        }
    }
}
