package com.amap.api.mapcore.util;

import android.os.RemoteException;
import com.amap.api.maps.AMap;
import com.amap.api.maps.model.MultiPointItem;
import com.amap.api.maps.model.MultiPointOverlayOptions;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.interfaces.IMultiPointOverlay;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<x> f11416a = new ArrayList();
    private AMap.OnMultiPointClickListener b;
    private IAMapDelegate c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    h2 f11417d;

    public z(IAMapDelegate iAMapDelegate) {
        this.c = iAMapDelegate;
    }

    private void c(x xVar) throws RemoteException {
        synchronized (this.f11416a) {
            this.f11416a.add(xVar);
        }
    }

    public h2 a() {
        h2 gLShaderManager = this.c.getGLShaderManager();
        this.f11417d = gLShaderManager;
        return gLShaderManager;
    }

    public synchronized IMultiPointOverlay b(MultiPointOverlayOptions multiPointOverlayOptions) throws RemoteException {
        if (multiPointOverlayOptions == null) {
            return null;
        }
        y yVar = new y(multiPointOverlayOptions, this);
        c(yVar);
        return yVar;
    }

    public void d(y yVar) {
        this.f11416a.remove(yVar);
    }

    public void e(AMap.OnMultiPointClickListener onMultiPointClickListener) {
        this.b = onMultiPointClickListener;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x001e */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0029, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void f(com.autonavi.base.amap.mapcore.MapConfig r4, float[] r5, float[] r6) {
        /*
            r3 = this;
            java.util.List<com.amap.api.mapcore.util.x> r0 = r3.f11416a     // Catch: java.lang.Throwable -> L1e
            monitor-enter(r0)     // Catch: java.lang.Throwable -> L1e
            java.util.List<com.amap.api.mapcore.util.x> r1 = r3.f11416a     // Catch: java.lang.Throwable -> L1b
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L1b
        L9:
            boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> L1b
            if (r2 == 0) goto L19
            java.lang.Object r2 = r1.next()     // Catch: java.lang.Throwable -> L1b
            com.amap.api.mapcore.util.x r2 = (com.amap.api.mapcore.util.x) r2     // Catch: java.lang.Throwable -> L1b
            r2.a(r4, r5, r6)     // Catch: java.lang.Throwable -> L1b
            goto L9
        L19:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L1b
            goto L29
        L1b:
            r4 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L1b
            throw r4     // Catch: java.lang.Throwable -> L1e
        L1e:
            r4 = move-exception
            java.lang.String r5 = "MultiPointOverlayManagerLayer"
            java.lang.String r6 = "draw"
            com.amap.api.mapcore.util.e6.r(r4, r5, r6)
            r4.printStackTrace()
        L29:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.z.f(com.autonavi.base.amap.mapcore.MapConfig, float[], float[]):void");
    }

    public boolean g(IPoint iPoint) {
        MultiPointItem multiPointItemOnClick;
        if (this.b == null) {
            return false;
        }
        synchronized (this.f11416a) {
            for (x xVar : this.f11416a) {
                if (xVar != null && (multiPointItemOnClick = xVar.onClick(iPoint)) != null) {
                    AMap.OnMultiPointClickListener onMultiPointClickListener = this.b;
                    return onMultiPointClickListener != null ? onMultiPointClickListener.onPointClick(multiPointItemOnClick) : false;
                }
            }
            return false;
        }
    }

    public synchronized void h() {
        this.b = null;
        try {
            synchronized (this.f11416a) {
                Iterator<x> it = this.f11416a.iterator();
                while (it.hasNext()) {
                    it.next().destroy(false);
                }
                this.f11416a.clear();
            }
        } catch (Throwable th) {
            e6.r(th, "MultiPointOverlayManagerLayer", "destory");
            th.printStackTrace();
        }
    }

    public synchronized void i() {
        try {
            synchronized (this.f11416a) {
                this.f11416a.clear();
            }
        } catch (Throwable th) {
            e6.r(th, "MultiPointOverlayManagerLayer", "clear");
            th.printStackTrace();
        }
    }

    public void j() {
        IAMapDelegate iAMapDelegate = this.c;
        if (iAMapDelegate != null) {
            iAMapDelegate.setRunLowFrame(false);
        }
    }
}
