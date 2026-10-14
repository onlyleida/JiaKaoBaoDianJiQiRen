package com.amap.api.mapcore.util;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.amap.api.maps.CoordinateConverter;
import com.amap.api.maps.LocationSource;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.MyLocationStyle;
import com.amap.api.trace.LBSTraceBase;
import com.amap.api.trace.LBSTraceClient;
import com.amap.api.trace.TraceListener;
import com.amap.api.trace.TraceLocation;
import com.amap.api.trace.TraceStatusListener;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class y4 implements LocationSource.OnLocationChangedListener, LBSTraceBase {
    private static final TimeUnit u = TimeUnit.SECONDS;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f11367a;
    private CoordinateConverter b;
    private ExecutorService c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ExecutorService f11368d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TraceStatusListener f11371g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private t f11372h;
    private c m;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f11369e = SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f11370f = 5;
    private List<TraceLocation> i = new ArrayList();
    private int j = 0;
    private int k = 0;
    private long l = 0;
    private TraceLocation n = null;
    private List<LatLng> o = new ArrayList();
    private List<LatLng> p = new ArrayList();
    private List<LatLng> q = new ArrayList();
    int r = Runtime.getRuntime().availableProcessors();
    private BlockingQueue<Runnable> s = new LinkedBlockingQueue();
    private BlockingQueue<Runnable> t = new LinkedBlockingQueue();

    class a implements Runnable {
        private int b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private List<TraceLocation> f11374d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TraceListener f11376f;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private List<TraceLocation> f11373a = new ArrayList();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f11375e = j3.a();

        public a(int i, List<TraceLocation> list, int i2, TraceListener traceListener) {
            this.b = i2;
            this.c = i;
            this.f11374d = list;
            this.f11376f = traceListener;
        }

        private int a() {
            List<TraceLocation> list = this.f11374d;
            int iB = 0;
            if (list != null && list.size() != 0) {
                ArrayList arrayList = new ArrayList();
                for (TraceLocation traceLocation : this.f11374d) {
                    if (traceLocation != null) {
                        if (traceLocation.getSpeed() < 0.01d) {
                            arrayList.add(traceLocation);
                        } else {
                            iB += b(arrayList);
                            arrayList.clear();
                        }
                    }
                }
            }
            return iB;
        }

        private int b(List<TraceLocation> list) {
            int size = list.size();
            if (size <= 1) {
                return 0;
            }
            TraceLocation traceLocation = list.get(0);
            TraceLocation traceLocation2 = list.get(size - 1);
            if (traceLocation == null || traceLocation2 == null || traceLocation == null || traceLocation2 == null) {
                return 0;
            }
            return (int) ((traceLocation2.getTime() - traceLocation.getTime()) / 1000);
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                y4.this.m.a(this.f11376f);
                int iA = a();
                List<TraceLocation> list = this.f11374d;
                if (list != null && list.size() >= 2) {
                    Iterator<TraceLocation> it = this.f11374d.iterator();
                    while (it.hasNext()) {
                        TraceLocation traceLocationCopy = it.next().copy();
                        if (traceLocationCopy != null && traceLocationCopy.getLatitude() > 0.0d && traceLocationCopy.getLongitude() > 0.0d) {
                            this.f11373a.add(traceLocationCopy);
                        }
                    }
                    int size = (this.f11373a.size() - 2) / 500;
                    z4.b().d(this.f11375e, this.c, size, iA);
                    int size2 = 500;
                    int i = 0;
                    while (i <= size) {
                        if (i == size) {
                            size2 = this.f11373a.size();
                        }
                        int i2 = size2;
                        ArrayList arrayList = new ArrayList();
                        for (int i3 = 0; i3 < i2; i3++) {
                            TraceLocation traceLocationRemove = this.f11373a.remove(0);
                            if (traceLocationRemove != null) {
                                int i4 = this.b;
                                if (i4 != 1) {
                                    if (i4 == 3) {
                                        y4.this.b.from(CoordinateConverter.CoordType.BAIDU);
                                    } else if (i4 == 2) {
                                        y4.this.b.from(CoordinateConverter.CoordType.GPS);
                                    }
                                    y4.this.b.coord(new LatLng(traceLocationRemove.getLatitude(), traceLocationRemove.getLongitude()));
                                    LatLng latLngConvert = y4.this.b.convert();
                                    if (latLngConvert != null) {
                                        traceLocationRemove.setLatitude(latLngConvert.latitude);
                                        traceLocationRemove.setLongitude(latLngConvert.longitude);
                                    }
                                }
                                arrayList.add(traceLocationRemove);
                            }
                        }
                        if (arrayList.size() >= 2 && arrayList.size() <= 500) {
                            y4.this.f11368d.execute(new x4(y4.this.f11367a, y4.this.m, arrayList, this.b, this.f11375e, this.c, i));
                            i++;
                            try {
                                Thread.sleep(50L);
                            } catch (InterruptedException e2) {
                                e2.printStackTrace();
                            }
                        }
                        size2 = i2;
                    }
                    return;
                }
                z4.b().c(y4.this.m, this.c, LBSTraceClient.MIN_GRASP_POINT_ERROR);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    class b implements TraceListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<TraceLocation> f11378a;

        public b(List<TraceLocation> list) {
            this.f11378a = list;
        }

        private void a(int i, List<LatLng> list) {
            try {
                synchronized (y4.this.q) {
                    y4.this.q.clear();
                    y4.this.q.addAll(list);
                }
                y4.this.p.clear();
                if (i == 0) {
                    y4.this.p.addAll(y4.this.q);
                } else {
                    y4.this.p.addAll(y4.this.o);
                    y4.this.p.addAll(y4.this.q);
                }
                y4.this.f11371g.onTraceStatus(y4.this.i, y4.this.p, LBSTraceClient.TRACE_SUCCESS);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // com.amap.api.trace.TraceListener
        public void onFinished(int i, List<LatLng> list, int i2, int i3) {
            a(i, list);
        }

        @Override // com.amap.api.trace.TraceListener
        public void onRequestFailed(int i, String str) {
            ArrayList arrayList = new ArrayList();
            if (y4.this.q != null) {
                arrayList.addAll(y4.this.q);
            }
            List<TraceLocation> list = this.f11378a;
            if (list != null) {
                int size = list.size();
                if (this.f11378a.size() > y4.this.f11370f) {
                    for (int i2 = size - y4.this.f11370f; i2 < size; i2++) {
                        TraceLocation traceLocation = this.f11378a.get(i2);
                        if (traceLocation != null) {
                            arrayList.add(new LatLng(traceLocation.getLatitude(), traceLocation.getLongitude()));
                        }
                    }
                }
            }
            a(i, arrayList);
        }

        @Override // com.amap.api.trace.TraceListener
        public void onTraceProcessing(int i, int i2, List<LatLng> list) {
        }
    }

    static class c extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private TraceListener f11379a;

        public c(Looper looper) {
            super(looper);
        }

        public void a(TraceListener traceListener) {
            this.f11379a = traceListener;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Bundle data;
            try {
                if (this.f11379a == null || (data = message.getData()) == null) {
                    return;
                }
                int i = data.getInt("lineID");
                switch (message.what) {
                    case 100:
                        this.f11379a.onTraceProcessing(i, message.arg1, (List) message.obj);
                        break;
                    case 101:
                        this.f11379a.onFinished(i, (List) message.obj, message.arg1, message.arg2);
                        break;
                    case 102:
                        this.f11379a.onRequestFailed(i, (String) message.obj);
                        break;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public y4(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f11367a = applicationContext;
        this.b = new CoordinateConverter(applicationContext);
        this.m = new c(Looper.getMainLooper());
        i5.a().c(this.f11367a);
        int i = this.r * 2;
        TimeUnit timeUnit = u;
        this.c = new ThreadPoolExecutor(1, i, 1L, timeUnit, this.s, new e3("AMapTraceManagerProcess"), new ThreadPoolExecutor.AbortPolicy());
        this.f11368d = new ThreadPoolExecutor(1, this.r * 2, 1L, timeUnit, this.t, new e3("AMapTraceManagerRequest"), new ThreadPoolExecutor.AbortPolicy());
    }

    private double a(double d2, double d3, double d4, double d5) {
        double d6 = d2 > d4 ? d2 - d4 : d4 - d2;
        double d7 = d3 > d5 ? d3 - d5 : d5 - d3;
        return Math.sqrt((d6 * d6) + (d7 * d7));
    }

    private void c() {
        int size = this.i.size();
        if (size < this.f11370f) {
            return;
        }
        if (size <= 50) {
            ArrayList arrayList = new ArrayList(this.i);
            queryProcessedTrace(0, arrayList, 1, new b(arrayList));
            return;
        }
        int i = size - 50;
        if (i < 0) {
            return;
        }
        d(new ArrayList(this.i.subList(i - this.f11370f, i)));
        ArrayList arrayList2 = new ArrayList(this.i.subList(i, size));
        queryProcessedTrace(i, arrayList2, 1, new b(arrayList2));
    }

    private void d(List<TraceLocation> list) {
        synchronized (this.q) {
            if (list != null) {
                if (list.size() >= 1) {
                    if (this.q.size() < 1) {
                        return;
                    }
                    LatLng latLng = null;
                    double dA = 0.0d;
                    TraceLocation traceLocation = null;
                    double d2 = 0.0d;
                    for (TraceLocation traceLocation2 : list) {
                        if (traceLocation2 != null) {
                            if (traceLocation != null) {
                                double dA2 = a(traceLocation.getLatitude(), traceLocation.getLongitude(), traceLocation2.getLatitude(), traceLocation2.getLongitude());
                                if (dA2 <= 100.0d) {
                                    d2 += dA2;
                                }
                            }
                            traceLocation = traceLocation2;
                        }
                    }
                    Iterator<LatLng> it = this.q.iterator();
                    while (it.hasNext()) {
                        LatLng next = it.next();
                        if (next == null) {
                            it.remove();
                        } else {
                            if (latLng != null) {
                                dA += a(latLng.latitude, latLng.longitude, next.latitude, next.longitude);
                                if (dA >= d2) {
                                    break;
                                }
                                this.o.add(next);
                                it.remove();
                            } else {
                                this.o.add(next);
                                it.remove();
                            }
                            latLng = next;
                        }
                    }
                }
            }
        }
    }

    private boolean e(TraceLocation traceLocation, TraceLocation traceLocation2) {
        return traceLocation != null && traceLocation2 != null && traceLocation.getLatitude() == traceLocation2.getLatitude() && traceLocation.getLongitude() == traceLocation2.getLongitude();
    }

    private void g() {
        t tVar = this.f11372h;
        if (tVar != null) {
            tVar.deactivate();
            this.f11372h = null;
        }
    }

    private void i() {
        this.s.clear();
        this.t.clear();
        List<TraceLocation> list = this.i;
        if (list != null) {
            synchronized (list) {
                List<TraceLocation> list2 = this.i;
                if (list2 != null) {
                    list2.clear();
                }
                this.k = 0;
                this.j = 0;
                this.l = 0L;
                this.n = null;
            }
        }
    }

    @Override // com.amap.api.trace.LBSTraceBase
    public void destroy() {
        try {
            stopTrace();
            ExecutorService executorService = this.c;
            if (executorService != null && !executorService.isShutdown()) {
                this.c.shutdownNow();
                this.c = null;
            }
            ExecutorService executorService2 = this.f11368d;
            if (executorService2 != null && !executorService2.isShutdown()) {
                this.f11368d.shutdownNow();
                this.f11368d = null;
            }
            this.i = null;
            this.f11371g = null;
        } catch (Throwable th) {
            th.printStackTrace();
        }
        this.f11367a = null;
        this.b = null;
    }

    @Override // com.amap.api.maps.LocationSource.OnLocationChangedListener
    public void onLocationChanged(Location location) {
        TraceStatusListener traceStatusListener;
        if (this.f11371g != null) {
            try {
                if (System.currentTimeMillis() - this.l >= 30000 && (traceStatusListener = this.f11371g) != null) {
                    traceStatusListener.onTraceStatus(null, null, LBSTraceClient.LOCATE_TIMEOUT_ERROR);
                }
                this.l = System.currentTimeMillis();
                Bundle extras = location.getExtras();
                int i = extras.getInt(MyLocationStyle.ERROR_CODE);
                if (i != 0) {
                    Log.w("LBSTraceClient", "Locate failed [errorCode:\"" + i + "\"  errorInfo:" + extras.getString(MyLocationStyle.ERROR_INFO) + "\"]");
                    return;
                }
                synchronized (this.i) {
                    TraceLocation traceLocation = new TraceLocation(location.getLatitude(), location.getLongitude(), location.getSpeed(), location.getBearing(), location.getTime());
                    if (e(this.n, traceLocation)) {
                        return;
                    }
                    this.i.add(traceLocation);
                    this.n = traceLocation;
                    int i2 = this.j + 1;
                    this.j = i2;
                    if (i2 == this.f11370f) {
                        this.k += i2;
                        c();
                        this.j = 0;
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @Override // com.amap.api.trace.LBSTraceBase
    public void queryProcessedTrace(int i, List<TraceLocation> list, int i2, TraceListener traceListener) {
        try {
            this.c.execute(new a(i, list, i2, traceListener));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.amap.api.trace.LBSTraceBase
    public void setLocationInterval(long j) {
        this.f11369e = j;
    }

    @Override // com.amap.api.trace.LBSTraceBase
    public void setTraceStatusInterval(int i) {
        this.f11370f = Math.max(i, 2);
    }

    @Override // com.amap.api.trace.LBSTraceBase
    public void startTrace(TraceStatusListener traceStatusListener) {
        if (this.f11367a == null) {
            Log.w("LBSTraceClient", "Context need to be initialized");
            return;
        }
        this.l = System.currentTimeMillis();
        this.f11371g = traceStatusListener;
        if (this.f11372h == null) {
            t tVar = new t(this.f11367a);
            this.f11372h = tVar;
            tVar.b(this.f11369e);
            this.f11372h.activate(this);
        }
    }

    @Override // com.amap.api.trace.LBSTraceBase
    public void stopTrace() {
        g();
        i();
    }
}
