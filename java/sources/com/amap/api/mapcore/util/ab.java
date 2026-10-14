package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.RemoteException;
import com.amap.api.maps.AMap;
import com.amap.api.maps.MapsInitializer;
import com.amap.api.maps.model.TileOverlay;
import com.amap.api.maps.model.TileOverlayOptions;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import com.autonavi.base.amap.api.mapcore.overlays.ITileOverlayDelegate;
import com.google.android.exoplayer2.upstream.cache.CacheDataSink;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IAMapDelegate f10465a;
    private Context b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    f2 f10468f;
    List<ITileOverlayDelegate> c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    a f10466d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    List<Integer> f10467e = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    float[] f10469g = new float[16];

    static class a implements Serializable, Comparator<Object> {
        a() {
        }

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            ITileOverlayDelegate iTileOverlayDelegate = (ITileOverlayDelegate) obj;
            ITileOverlayDelegate iTileOverlayDelegate2 = (ITileOverlayDelegate) obj2;
            if (iTileOverlayDelegate == null || iTileOverlayDelegate2 == null) {
                return 0;
            }
            try {
                return Float.compare(iTileOverlayDelegate.getZIndex(), iTileOverlayDelegate2.getZIndex());
            } catch (Throwable th) {
                e6.r(th, "TileOverlayView", "compare");
                th.printStackTrace();
                return 0;
            }
        }
    }

    public ab(Context context, IAMapDelegate iAMapDelegate) {
        this.f10468f = null;
        this.f10465a = iAMapDelegate;
        this.b = context;
        TileOverlayOptions tileOverlayOptionsTileProvider = new TileOverlayOptions().tileProvider(new u2(256, 256, this.f10465a.getMapConfig()));
        tileOverlayOptionsTileProvider.memCacheSize(10485760);
        tileOverlayOptionsTileProvider.diskCacheSize(CacheDataSink.DEFAULT_BUFFER_SIZE);
        this.f10468f = new f2(tileOverlayOptionsTileProvider, this, true);
    }

    private boolean q() {
        if (this.f10465a == null) {
            return false;
        }
        return MapsInitializer.isLoadWorldGridMap() || this.f10465a.getMapConfig().getMapLanguage().equals(AMap.ENGLISH);
    }

    public TileOverlay a(TileOverlayOptions tileOverlayOptions) throws RemoteException {
        if (tileOverlayOptions != null && tileOverlayOptions.getTileProvider() != null) {
            try {
                f2 f2Var = new f2(tileOverlayOptions, this, false);
                d(f2Var);
                f2Var.refresh(true);
                this.f10465a.setRunLowFrame(false);
                return new TileOverlay(f2Var);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return null;
    }

    public IAMapDelegate b() {
        return this.f10465a;
    }

    public void c(int i) {
        this.f10467e.add(Integer.valueOf(i));
    }

    public void d(ITileOverlayDelegate iTileOverlayDelegate) {
        synchronized (this.c) {
            i(iTileOverlayDelegate);
            this.c.add(iTileOverlayDelegate);
        }
        k();
    }

    public void e(String str) {
        f2 f2Var = this.f10468f;
        if (f2Var != null) {
            f2Var.e(str);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x007c */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0084, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void f(boolean r6) {
        /*
            r5 = this;
            boolean r0 = r5.q()     // Catch: java.lang.Throwable -> L7c
            if (r0 == 0) goto L55
            com.autonavi.base.amap.api.mapcore.IAMapDelegate r0 = r5.f10465a     // Catch: java.lang.Throwable -> L7c
            com.amap.api.maps.model.CameraPosition r0 = r0.getCameraPosition()     // Catch: java.lang.Throwable -> L7c
            if (r0 != 0) goto Lf
            return
        Lf:
            boolean r1 = r0.isAbroad     // Catch: java.lang.Throwable -> L7c
            if (r1 == 0) goto L34
            float r0 = r0.zoom     // Catch: java.lang.Throwable -> L7c
            r1 = 1086324736(0x40c00000, float:6.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L34
            com.autonavi.base.amap.api.mapcore.IAMapDelegate r0 = r5.f10465a     // Catch: java.lang.Throwable -> L7c
            int r0 = r0.getMapType()     // Catch: java.lang.Throwable -> L7c
            r1 = 1
            if (r0 != r1) goto L2c
            com.amap.api.mapcore.util.f2 r0 = r5.f10468f     // Catch: java.lang.Throwable -> L7c
            if (r0 == 0) goto L55
            r0.refresh(r6)     // Catch: java.lang.Throwable -> L7c
            goto L55
        L2c:
            com.amap.api.mapcore.util.f2 r0 = r5.f10468f     // Catch: java.lang.Throwable -> L7c
            if (r0 == 0) goto L55
            r0.c()     // Catch: java.lang.Throwable -> L7c
            goto L55
        L34:
            com.amap.api.mapcore.util.f2 r0 = r5.f10468f     // Catch: java.lang.Throwable -> L7c
            if (r0 == 0) goto L55
            com.autonavi.base.amap.api.mapcore.IAMapDelegate r0 = r5.f10465a     // Catch: java.lang.Throwable -> L7c
            com.autonavi.base.amap.mapcore.MapConfig r0 = r0.getMapConfig()     // Catch: java.lang.Throwable -> L7c
            java.lang.String r0 = r0.getMapLanguage()     // Catch: java.lang.Throwable -> L7c
            java.lang.String r1 = "en"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> L7c
            if (r0 == 0) goto L50
            com.amap.api.mapcore.util.f2 r0 = r5.f10468f     // Catch: java.lang.Throwable -> L7c
            r0.refresh(r6)     // Catch: java.lang.Throwable -> L7c
            goto L55
        L50:
            com.amap.api.mapcore.util.f2 r0 = r5.f10468f     // Catch: java.lang.Throwable -> L7c
            r0.c()     // Catch: java.lang.Throwable -> L7c
        L55:
            java.util.List<com.autonavi.base.amap.api.mapcore.overlays.ITileOverlayDelegate> r0 = r5.c     // Catch: java.lang.Throwable -> L7c
            monitor-enter(r0)     // Catch: java.lang.Throwable -> L7c
            java.util.List<com.autonavi.base.amap.api.mapcore.overlays.ITileOverlayDelegate> r1 = r5.c     // Catch: java.lang.Throwable -> L79
            int r1 = r1.size()     // Catch: java.lang.Throwable -> L79
            r2 = 0
        L5f:
            if (r2 >= r1) goto L77
            java.util.List<com.autonavi.base.amap.api.mapcore.overlays.ITileOverlayDelegate> r3 = r5.c     // Catch: java.lang.Throwable -> L79
            java.lang.Object r3 = r3.get(r2)     // Catch: java.lang.Throwable -> L79
            com.autonavi.base.amap.api.mapcore.overlays.ITileOverlayDelegate r3 = (com.autonavi.base.amap.api.mapcore.overlays.ITileOverlayDelegate) r3     // Catch: java.lang.Throwable -> L79
            if (r3 == 0) goto L74
            boolean r4 = r3.isVisible()     // Catch: java.lang.Throwable -> L79
            if (r4 == 0) goto L74
            r3.refresh(r6)     // Catch: java.lang.Throwable -> L79
        L74:
            int r2 = r2 + 1
            goto L5f
        L77:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L79
            goto L84
        L79:
            r6 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L79
            throw r6     // Catch: java.lang.Throwable -> L7c
        L7c:
            r6 = move-exception
            java.lang.String r0 = "TileOverlayView"
            java.lang.String r1 = "refresh"
            com.amap.api.mapcore.util.e6.r(r6, r0, r1)
        L84:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.ab.f(boolean):void");
    }

    public void g() {
        f2 f2Var;
        try {
            Iterator<Integer> it = this.f10467e.iterator();
            while (it.hasNext()) {
                r3.f0(it.next().intValue());
            }
            this.f10467e.clear();
            if (q() && (f2Var = this.f10468f) != null) {
                f2Var.drawTiles();
            }
            synchronized (this.c) {
                int size = this.c.size();
                for (int i = 0; i < size; i++) {
                    ITileOverlayDelegate iTileOverlayDelegate = this.c.get(i);
                    if (iTileOverlayDelegate.isVisible()) {
                        iTileOverlayDelegate.drawTiles();
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void h(boolean z) {
        f2 f2Var = this.f10468f;
        if (f2Var != null) {
            f2Var.onFling(z);
        }
        synchronized (this.c) {
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                ITileOverlayDelegate iTileOverlayDelegate = this.c.get(i);
                if (iTileOverlayDelegate != null) {
                    iTileOverlayDelegate.onFling(z);
                }
            }
        }
    }

    public boolean i(ITileOverlayDelegate iTileOverlayDelegate) {
        boolean zRemove;
        synchronized (this.c) {
            zRemove = this.c.remove(iTileOverlayDelegate);
        }
        return zRemove;
    }

    public void j() {
        synchronized (this.c) {
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                ITileOverlayDelegate iTileOverlayDelegate = this.c.get(i);
                if (iTileOverlayDelegate != null) {
                    iTileOverlayDelegate.destroy(true);
                }
            }
            this.c.clear();
        }
    }

    public void k() {
        synchronized (this.c) {
            Collections.sort(this.c, this.f10466d);
        }
    }

    public void l() {
        f2 f2Var = this.f10468f;
        if (f2Var != null) {
            f2Var.onResume();
        }
        synchronized (this.c) {
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                ITileOverlayDelegate iTileOverlayDelegate = this.c.get(i);
                if (iTileOverlayDelegate != null) {
                    iTileOverlayDelegate.onResume();
                }
            }
        }
    }

    public Context m() {
        return this.b;
    }

    public void n() {
        j();
        f2 f2Var = this.f10468f;
        if (f2Var != null) {
            f2Var.onPause();
            this.f10468f.destroy(false);
        }
        this.f10468f = null;
    }

    public float[] o() {
        IAMapDelegate iAMapDelegate = this.f10465a;
        return iAMapDelegate != null ? iAMapDelegate.getFinalMatrix() : this.f10469g;
    }

    public void p() {
        f2 f2Var = this.f10468f;
        if (f2Var != null) {
            f2Var.clearTileCache();
            h3.c(this.b, "Map3DCache", "time", Long.valueOf(System.currentTimeMillis()));
        }
        synchronized (this.c) {
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                ITileOverlayDelegate iTileOverlayDelegate = this.c.get(i);
                if (iTileOverlayDelegate != null) {
                    iTileOverlayDelegate.clearTileCache();
                }
            }
        }
    }
}
