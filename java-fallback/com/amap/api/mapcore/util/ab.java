package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.RemoteException;
import cn.mucang.android.core.webview.MenuOptions;
import com.amap.api.maps.AMap;
import com.amap.api.maps.MapsInitializer;
import com.amap.api.maps.model.CameraPosition;
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
    List<ITileOverlayDelegate> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    a f10466d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    List<Integer> f10467e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    f2 f10468f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    float[] f10469g;

    static class a implements Serializable, Comparator<Object> {
        a() {
        }

        @Override // java.util.Comparator
        public int compare(Object r2, Object r3) {
            ITileOverlayDelegate r4 = (ITileOverlayDelegate) r2;
            ITileOverlayDelegate r5 = (ITileOverlayDelegate) r3;
            if (r4 == null) goto L13;
            if (r5 == null) goto L14;
            return Float.compare(r4.getZIndex(), r5.getZIndex());
        L7:
            th = move-exception;
            e6.r(th, "TileOverlayView", "compare");
            th.printStackTrace();
            return 0;
        L14:
            return 0;
        L13:
            return 0;
        }
    }

    public ab(Context r2, IAMapDelegate r3) {
        this.c = new ArrayList();
        this.f10466d = new a();
        this.f10467e = new ArrayList();
        this.f10468f = null;
        this.f10469g = new float[16];
        this.f10465a = r3;
        this.b = r2;
        u2 r4 = new u2(256, 256, this.f10465a.getMapConfig());
        TileOverlayOptions r5 = new TileOverlayOptions().tileProvider(r4);
        r5.memCacheSize(10485760);
        r5.diskCacheSize(CacheDataSink.DEFAULT_BUFFER_SIZE);
        this.f10468f = new f2(r5, this, true);
    }

    private boolean q() {
        if (this.f10465a != null) goto L6;
        return false;
    L6:
        if (MapsInitializer.isLoadWorldGridMap() == false) goto L8;
        return true;
    L8:
        if (this.f10465a.getMapConfig().getMapLanguage().equals(AMap.ENGLISH) == true) goto L13;
        return false;
    L13:
        return true;
    }

    public TileOverlay a(TileOverlayOptions r4) throws RemoteException {
        if (r4 != null) goto L5;
    L11:
        return null;
    L5:
        if (r4.getTileProvider() == null) goto L11;
        f2 r1 = new f2(r4, this, false);     // Catch: Throwable -> L9
        d(r1);     // Catch: Throwable -> L9
        r1.refresh(true);     // Catch: Throwable -> L9
        this.f10465a.setRunLowFrame(false);     // Catch: Throwable -> L9
        return new TileOverlay(r1);
    L9:
        th = move-exception;
        th.printStackTrace();
        goto L11
    }

    public IAMapDelegate b() {
        return this.f10465a;
    }

    public void c(int r2) {
        this.f10467e.add(Integer.valueOf(r2));
    }

    public void d(ITileOverlayDelegate r3) {
        List<ITileOverlayDelegate> r0 = this.c;
        monitor-enter(r0);
        i(r3);     // Catch: Throwable -> L8
        this.c.add(r3);     // Catch: Throwable -> L8
        monitor-exit(r0);     // Catch: Throwable -> L8
        k();
        return;
    L8:
        th = move-exception;
        throw th;
    }

    public void e(String r2) {
        f2 r0 = this.f10468f;
        if (r0 == null) goto L6;
        r0.e(r2);
        return;
    }

    public void f(boolean r6) {
        /*  JADX ERROR: Simple mode code generation failed
            java.lang.IndexOutOfBoundsException: Index 0 out of bounds for length 0
            	at java.base/jdk.internal.util.Preconditions.outOfBounds(Preconditions.java:100)
            	at java.base/jdk.internal.util.Preconditions.outOfBoundsCheckIndex(Preconditions.java:106)
            	at java.base/jdk.internal.util.Preconditions.checkIndex(Preconditions.java:302)
            	at java.base/java.util.Objects.checkIndex(Objects.java:385)
            	at java.base/java.util.ArrayList.get(ArrayList.java:427)
            	at jadx.core.codegen.MethodGen.generateSimpleCode(MethodGen.java:354)
            	at jadx.core.codegen.MethodGen.addSimpleMethodCode(MethodGen.java:316)
            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:279)
            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
            */
        /*
            this = this;
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
        Iterator<Integer> r0 = this.f10467e.iterator();     // Catch: Throwable -> L25
    L4:
        if (r0.hasNext() == false) goto L6;
        r3.f0(r0.next().intValue());     // Catch: Throwable -> L25
        goto L4
    L6:
        this.f10467e.clear();     // Catch: Throwable -> L25
        if (q() == false) goto L11;
        f2 r1 = this.f10468f;     // Catch: Throwable -> L25
        if (r1 == null) goto L11;
        r1.drawTiles();     // Catch: Throwable -> L25
    L11:
        List<ITileOverlayDelegate> r2 = this.c;     // Catch: Throwable -> L25
        monitor-enter(r2);     // Catch: Throwable -> L25
        int r3 = this.c.size();     // Catch: Throwable -> L21
        int r4 = 0;
    L14:
        if (r4 >= r3) goto L19;
        ITileOverlayDelegate r5 = this.c.get(r4);     // Catch: Throwable -> L21
        if (r5.isVisible() == false) goto L18;
        r5.drawTiles();     // Catch: Throwable -> L21
    L18:
        r4 = r4 + 1;     // Catch: Throwable -> L21
        goto L14
    L19:
        monitor-exit(r2);     // Catch: Throwable -> L21
        goto L33
    L24:
        return;
    L21:
        th = move-exception;
        throw th;     // Catch: Throwable -> L25
    }

    public void h(boolean r5) {
        f2 r0 = this.f10468f;
        if (r0 == null) goto L5;
        r0.onFling(r5);
    L5:
        List<ITileOverlayDelegate> r1 = this.c;
        monitor-enter(r1);
        int r2 = this.c.size();     // Catch: Throwable -> L15
        int r3 = 0;
    L8:
        if (r3 >= r2) goto L13;
        ITileOverlayDelegate r4 = this.c.get(r3);     // Catch: Throwable -> L15
        if (r4 == null) goto L12;
        r4.onFling(r5);     // Catch: Throwable -> L15
    L12:
        r3 = r3 + 1;     // Catch: Throwable -> L15
        goto L8
    L13:
        monitor-exit(r1);     // Catch: Throwable -> L15
        return;
    L15:
        th = move-exception;
        throw th;
    }

    public boolean i(ITileOverlayDelegate r3) {
        List<ITileOverlayDelegate> r0 = this.c;
        monitor-enter(r0);
        boolean r4 = this.c.remove(r3);     // Catch: Throwable -> L7
        monitor-exit(r0);     // Catch: Throwable -> L7
        return r4;
    L7:
        th = move-exception;
        throw th;
    }

    public void j() {
        List<ITileOverlayDelegate> r0 = this.c;
        monitor-enter(r0);
        int r1 = this.c.size();     // Catch: Throwable -> L13
        int r2 = 0;
    L5:
        if (r2 >= r1) goto L10;
        ITileOverlayDelegate r3 = this.c.get(r2);     // Catch: Throwable -> L13
        if (r3 == null) goto L9;
        r3.destroy(true);     // Catch: Throwable -> L13
    L9:
        r2 = r2 + 1;     // Catch: Throwable -> L13
        goto L5
    L10:
        this.c.clear();     // Catch: Throwable -> L13
        monitor-exit(r0);     // Catch: Throwable -> L13
        return;
    L13:
        th = move-exception;
        throw th;
    }

    public void k() {
        List<ITileOverlayDelegate> r0 = this.c;
        monitor-enter(r0);
        Collections.sort(this.c, this.f10466d);     // Catch: Throwable -> L7
        monitor-exit(r0);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        throw th;
    }

    public void l() {
        f2 r0 = this.f10468f;
        if (r0 == null) goto L5;
        r0.onResume();
    L5:
        List<ITileOverlayDelegate> r1 = this.c;
        monitor-enter(r1);
        int r2 = this.c.size();     // Catch: Throwable -> L15
        int r3 = 0;
    L8:
        if (r3 >= r2) goto L13;
        ITileOverlayDelegate r4 = this.c.get(r3);     // Catch: Throwable -> L15
        if (r4 == null) goto L12;
        r4.onResume();     // Catch: Throwable -> L15
    L12:
        r3 = r3 + 1;     // Catch: Throwable -> L15
        goto L8
    L13:
        monitor-exit(r1);     // Catch: Throwable -> L15
        return;
    L15:
        th = move-exception;
        throw th;
    }

    public Context m() {
        return this.b;
    }

    public void n() {
        j();
        f2 r0 = this.f10468f;
        if (r0 == null) goto L5;
        r0.onPause();
        this.f10468f.destroy(false);
    L5:
        this.f10468f = null;
    }

    public float[] o() {
        IAMapDelegate r0 = this.f10465a;
        if (r0 == null) goto L7;
        return r0.getFinalMatrix();
    L7:
        return this.f10469g;
    }

    public void p() {
        f2 r0 = this.f10468f;
        if (r0 == null) goto L5;
        r0.clearTileCache();
        h3.c(this.b, "Map3DCache", "time", Long.valueOf(System.currentTimeMillis()));
    L5:
        List<ITileOverlayDelegate> r1 = this.c;
        monitor-enter(r1);
        int r2 = this.c.size();     // Catch: Throwable -> L15
        int r3 = 0;
    L8:
        if (r3 >= r2) goto L13;
        ITileOverlayDelegate r4 = this.c.get(r3);     // Catch: Throwable -> L15
        if (r4 == null) goto L12;
        r4.clearTileCache();     // Catch: Throwable -> L15
    L12:
        r3 = r3 + 1;     // Catch: Throwable -> L15
        goto L8
    L13:
        monitor-exit(r1);     // Catch: Throwable -> L15
        return;
    L15:
        th = move-exception;
        throw th;
    }
}
