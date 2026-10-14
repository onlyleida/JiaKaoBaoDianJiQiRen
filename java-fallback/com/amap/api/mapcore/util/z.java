package com.amap.api.mapcore.util;

import android.os.RemoteException;
import com.amap.api.maps.AMap;
import com.amap.api.maps.model.MultiPointItem;
import com.amap.api.maps.model.MultiPointOverlayOptions;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.interfaces.IMultiPointOverlay;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import com.autonavi.base.amap.mapcore.MapConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<x> f11416a;
    private AMap.OnMultiPointClickListener b;
    private IAMapDelegate c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    h2 f11417d;

    public z(IAMapDelegate r2) {
        this.f11416a = new ArrayList();
        this.c = r2;
    }

    private void c(x r3) throws RemoteException {
        List<x> r0 = this.f11416a;
        monitor-enter(r0);
        this.f11416a.add(r3);     // Catch: Throwable -> L7
        monitor-exit(r0);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        throw th;
    }

    public h2 a() {
        h2 r0 = this.c.getGLShaderManager();
        this.f11417d = r0;
        return r0;
    }

    public synchronized IMultiPointOverlay b(MultiPointOverlayOptions r2) throws RemoteException {
        monitor-enter(this);
        if (r2 == null) goto L5;
        y r0 = new y(r2, this);     // Catch: Throwable -> L10
        c(r0);     // Catch: Throwable -> L10
        monitor-exit(this);
        return r0;
    L10:
        th = move-exception;
        throw th;
    L5:
        monitor-exit(this);
        return null;
    }

    public void d(y r2) {
        this.f11416a.remove(r2);
    }

    public void e(AMap.OnMultiPointClickListener r1) {
        this.b = r1;
    }

    public void f(MapConfig r4, float[] r5, float[] r6) {
        List<x> r0 = this.f11416a;     // Catch: Throwable -> L13
        monitor-enter(r0);     // Catch: Throwable -> L13
        Iterator<x> r1 = this.f11416a.iterator();     // Catch: Throwable -> L10
    L6:
        if (r1.hasNext() == false) goto L8;
        r1.next().a(r4, r5, r6);     // Catch: Throwable -> L10
        goto L6
    L8:
        monitor-exit(r0);     // Catch: Throwable -> L10
    L21:
        return;
    L10:
        th = move-exception;
        throw th;     // Catch: Throwable -> L13
    L13:
        th = move-exception;
        e6.r(th, "MultiPointOverlayManagerLayer", "draw");
        th.printStackTrace();
    }

    public boolean g(IPoint r5) {
        boolean r1 = false;
        if (this.b != null) goto L5;
        return false;
    L5:
        List<x> r0 = this.f11416a;
        monitor-enter(r0);
        Iterator<x> r2 = this.f11416a.iterator();     // Catch: Throwable -> L21
    L9:
        if (r2.hasNext() == false) goto L19;
        x r3 = r2.next();     // Catch: Throwable -> L21
        if (r3 == null) goto L9;
        MultiPointItem r4 = r3.onClick(r5);     // Catch: Throwable -> L21
        if (r4 == null) goto L9;
        AMap.OnMultiPointClickListener r6 = this.b;     // Catch: Throwable -> L21
        if (r6 == null) goto L17;
        r1 = r6.onPointClick(r4);     // Catch: Throwable -> L21
    L17:
        monitor-exit(r0);     // Catch: Throwable -> L21
        return r1;
    L19:
        monitor-exit(r0);     // Catch: Throwable -> L21
        return false;
    L21:
        th = move-exception;
        throw th;
    }

    public synchronized void h() {
        monitor-enter(this);
        this.b = null;     // Catch: Throwable -> L21
        List<x> r0 = this.f11416a;     // Catch: Throwable -> L17
        monitor-enter(r0);     // Catch: Throwable -> L17
        Iterator<x> r1 = this.f11416a.iterator();     // Catch: Throwable -> L14
    L9:
        if (r1.hasNext() == false) goto L11;
        r1.next().destroy(false);     // Catch: Throwable -> L14
        goto L9
    L11:
        this.f11416a.clear();     // Catch: Throwable -> L14
        monitor-exit(r0);     // Catch: Throwable -> L14
    L19:
        monitor-exit(this);
        return;
    L14:
        th = move-exception;
        throw th;     // Catch: Throwable -> L17
    L17:
        th = move-exception;
        e6.r(th, "MultiPointOverlayManagerLayer", "destory");     // Catch: Throwable -> L21
        th.printStackTrace();     // Catch: Throwable -> L21
    L21:
        th = move-exception;
        throw th;
    }

    public synchronized void i() {
        monitor-enter(this);
        List<x> r0 = this.f11416a;     // Catch: Throwable -> L11
        monitor-enter(r0);     // Catch: Throwable -> L11
        this.f11416a.clear();     // Catch: Throwable -> L8
        monitor-exit(r0);     // Catch: Throwable -> L8
    L13:
        monitor-exit(this);
        return;
    L8:
        th = move-exception;
        throw th;     // Catch: Throwable -> L11
    L11:
        th = move-exception;
        e6.r(th, "MultiPointOverlayManagerLayer", "clear");     // Catch: Throwable -> L15
        th.printStackTrace();     // Catch: Throwable -> L15
    L15:
        th = move-exception;
        throw th;
    }

    public void j() {
        IAMapDelegate r0 = this.c;
        if (r0 == null) goto L6;
        r0.setRunLowFrame(false);
        return;
    }
}
