package com.amap.api.maps.utils.overlay;

import android.graphics.Point;
import com.amap.api.maps.AMap;
import com.amap.api.maps.AMapUtils;
import com.amap.api.maps.model.BitmapDescriptor;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.CameraPosition;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.Marker;
import com.amap.api.maps.model.MarkerOptions;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.MapProjection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes5.dex */
public class SmoothMoveMarker {
    public static final float MIN_OFFSET_DISTANCE = 5.0f;
    private BitmapDescriptor descriptor;
    private long duration;
    private LinkedList<Double> eachDistance;
    AtomicBoolean exitFlag;
    private int index;
    private AMap mAMap;
    private long mAnimationBeginTime;
    private Object mLock;
    private long mStepDuration;
    private ExecutorService mThreadPools;
    private Marker marker;
    private MoveListener moveListener;
    private a moveStatus;
    private long pauseMillis;
    private LinkedList<LatLng> points;
    private double remainDistance;
    private double totalDistance;
    private boolean useDefaultDescriptor;

    /* JADX INFO: renamed from: com.amap.api.maps.utils.overlay.SmoothMoveMarker$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
    }

    public interface MoveListener {
        void move(double r1);
    }

    private static final enum a extends Enum<a> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f11578a = null;
        public static final a b = null;
        public static final a c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final a f11579d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final a f11580e = null;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final /* synthetic */ a[] f11581f = null;

        static {
            a r0 = new a("ACTION_UNKNOWN", 0);
            f11578a = r0;
            a r1 = new a("ACTION_START", 1);
            b = r1;
            a r3 = new a("ACTION_RUNNING", 2);
            c = r3;
            a r5 = new a("ACTION_PAUSE", 3);
            f11579d = r5;
            a r7 = new a("ACTION_STOP", 4);
            f11580e = r7;
            f11581f = new a[]{r0, r1, r3, r5, r7};
        }

        private a(String r1, int r2) {
            super(r1, r2);
        }

        public static a valueOf(String r1) {
            return (a) Enum.valueOf(a.class, r1);
        }

        public static a[] values() {
            return (a[]) f11581f.clone();
        }
    }

    private static class b implements ThreadFactory {
        private b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable r3) {
            return new Thread(r3, "MoveSmoothThread");
        }

        /* synthetic */ b(AnonymousClass1 r1) {
            this();
        }
    }

    private class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ SmoothMoveMarker f11582a;

        private c(SmoothMoveMarker r1) {
            this.f11582a = r1;
        }

        @Override // java.lang.Runnable
        public void run() {
            SmoothMoveMarker.access$202(this.f11582a, System.currentTimeMillis());     // Catch: Throwable -> L27
            SmoothMoveMarker.access$302(this.f11582a, a.b);     // Catch: Throwable -> L27
            this.f11582a.exitFlag.set(false);     // Catch: Throwable -> L27
        L4:
            if (this.f11582a.exitFlag.get() == true) goto L25;
            if (SmoothMoveMarker.access$400(this.f11582a) > (SmoothMoveMarker.access$500(this.f11582a).size() - 1)) goto L25;
            Object r0 = SmoothMoveMarker.access$600(this.f11582a);     // Catch: Throwable -> L27
            monitor-enter(r0);     // Catch: Throwable -> L27
        L22:
            th = move-exception;
            throw th;     // Catch: Throwable -> L27
        L10:
            if (this.f11582a.exitFlag.get() == true) goto L11;
            if (SmoothMoveMarker.access$300(this.f11582a) == a.f11579d) goto L19;
            IPoint r1 = SmoothMoveMarker.access$700(this.f11582a, System.currentTimeMillis() - SmoothMoveMarker.access$200(this.f11582a));     // Catch: Throwable -> L22
            if (SmoothMoveMarker.access$800(this.f11582a) == null) goto L18;
            SmoothMoveMarker.access$800(this.f11582a).setGeoPoint(r1);     // Catch: Throwable -> L22
        L18:
            SmoothMoveMarker.access$302(this.f11582a, a.c);     // Catch: Throwable -> L22
        L19:
            monitor-exit(r0);     // Catch: Throwable -> L22
            Thread.sleep(SmoothMoveMarker.access$900(this.f11582a));     // Catch: Throwable -> L27
            goto L4
        L11:
            monitor-exit(r0);     // Catch: Throwable -> L22
            return;
        L25:
            SmoothMoveMarker.access$302(this.f11582a, a.f11580e);     // Catch: Throwable -> L27
            return;
        L27:
            th = move-exception;
            th.printStackTrace();
        }

        /* synthetic */ c(SmoothMoveMarker r1, AnonymousClass1 r2) {
            this(r1);
        }
    }

    public SmoothMoveMarker(AMap r12) {
        this.duration = 10000;
        this.mStepDuration = 20;
        this.points = new LinkedList();
        this.eachDistance = new LinkedList();
        this.totalDistance = 0.0d;
        this.remainDistance = 0.0d;
        this.mLock = new Object();
        this.marker = null;
        this.index = 0;
        this.useDefaultDescriptor = false;
        this.exitFlag = new AtomicBoolean(false);
        this.moveStatus = a.f11578a;
        this.mAnimationBeginTime = System.currentTimeMillis();
        this.mAMap = r12;
        this.mThreadPools = new ThreadPoolExecutor(1, 2, 5, TimeUnit.SECONDS, new SynchronousQueue(), new b(null));
    }

    static /* synthetic */ long access$200(SmoothMoveMarker r2) {
        return r2.mAnimationBeginTime;
    }

    static /* synthetic */ long access$202(SmoothMoveMarker r0, long r1) {
        r0.mAnimationBeginTime = r1;
        return r1;
    }

    static /* synthetic */ a access$300(SmoothMoveMarker r0) {
        return r0.moveStatus;
    }

    static /* synthetic */ a access$302(SmoothMoveMarker r0, a r1) {
        r0.moveStatus = r1;
        return r1;
    }

    static /* synthetic */ int access$400(SmoothMoveMarker r0) {
        return r0.index;
    }

    static /* synthetic */ LinkedList access$500(SmoothMoveMarker r0) {
        return r0.points;
    }

    static /* synthetic */ Object access$600(SmoothMoveMarker r0) {
        return r0.mLock;
    }

    static /* synthetic */ IPoint access$700(SmoothMoveMarker r0, long r1) {
        return r0.getCurPosition(r1);
    }

    static /* synthetic */ Marker access$800(SmoothMoveMarker r0) {
        return r0.marker;
    }

    static /* synthetic */ long access$900(SmoothMoveMarker r2) {
        return r2.mStepDuration;
    }

    private void checkMarkerIcon() {
        if (this.useDefaultDescriptor == false) goto L9;
        BitmapDescriptor r0 = this.descriptor;
        if (r0 != null) goto L7;
        this.useDefaultDescriptor = true;
        return;
    L7:
        this.marker.setIcon(r0);
        this.useDefaultDescriptor = false;
        return;
    }

    private IPoint getCurPosition(long r11) {
        long r0 = this.duration;
        int r4 = 0;
        if (r11 <= r0) goto L8;
        this.exitFlag.set(true);
        IPoint r12 = new IPoint();
        int r13 = this.points.size() - 1;
        this.index = r13;
        LatLng r14 = this.points.get(r13);
        int r1 = this.index - 1;
        this.index = r1;
        this.index = Math.max(r1, 0);
        this.remainDistance = 0.0d;
        MapProjection.lonlat2Geo(r14.longitude, r14.latitude, r12);
        MoveListener r15 = this.moveListener;
        if (r15 == null) goto L7;
        r15.move(this.remainDistance);
    L7:
        return r12;
    L8:
        double r6 = this.totalDistance;
        double r16 = (r11 * r6) / r0;
        this.remainDistance = r6 - r16;
        double r2 = 1.0d;
        int r7 = 0;
    L10:
        if (r7 >= this.eachDistance.size()) goto L19;
        double r8 = this.eachDistance.get(r7).doubleValue();
        if (r16 <= r8) goto L15;
        r16 = r16 - r8;
        r7 = r7 + 1;
        goto L10
    L15:
        if (r8 <= 0.0d) goto L17;
        r2 = r16 / r8;
    L17:
        r4 = r7;
    L19:
        if (r4 == this.index) goto L23;
        MoveListener r17 = this.moveListener;
        if (r17 == null) goto L23;
        r17.move(this.remainDistance);
    L23:
        this.index = r4;
        LatLng r18 = this.points.get(r4);
        LatLng r19 = this.points.get(r4 + 1);
        IPoint r3 = new IPoint();
        MapProjection.lonlat2Geo(r18.longitude, r18.latitude, r3);
        IPoint r5 = new IPoint();
        MapProjection.lonlat2Geo(r19.longitude, r19.latitude, r5);
        int r9 = ((Point) r5).x - ((Point) r3).x;
        int r10 = ((Point) r5).y - ((Point) r3).y;
        if (AMapUtils.calculateLineDistance(r18, r19) <= 5.0f) goto L31;
        float r110 = getRotate(r3, r5);
        AMap r111 = this.mAMap;
        if (r111 == null) goto L31;
        CameraPosition r112 = r111.getCameraPosition();
        if (r112 == null) goto L31;
        this.marker.setRotateAngle((360.0f - r110) + r112.bearing);
    L31:
        return new IPoint((int) (((double) ((Point) r3).x) + (((double) r9) * r2)), (int) (((double) ((Point) r3).y) + (((double) r10) * r2)));
    }

    private float getRotate(IPoint r7, IPoint r8) {
        if (r7 == null) goto L7;
        if (r8 == null) goto L9;
        double r0 = ((Point) r8).y;
        double r2 = ((Point) r7).y;
        return (float) ((Math.atan2(((double) ((Point) r8).x) - ((Point) r7).x, r2 - r0) / 3.141592653589793d) * 180.0d);
    L9:
        return BitmapDescriptorFactory.HUE_RED;
    L7:
        return BitmapDescriptorFactory.HUE_RED;
    }

    private void reset() {
        a r0 = this.moveStatus;     // Catch: InterruptedException -> L11
        if (r0 != a.c) goto L5;
    L6:
        this.exitFlag.set(true);     // Catch: InterruptedException -> L11
        this.mThreadPools.awaitTermination(this.mStepDuration + 20, TimeUnit.MILLISECONDS);     // Catch: InterruptedException -> L11
        Marker r1 = this.marker;     // Catch: InterruptedException -> L11
        if (r1 == null) goto L9;
        r1.setAnimation(null);     // Catch: InterruptedException -> L11
    L9:
        this.moveStatus = a.f11578a;     // Catch: InterruptedException -> L11
        return;
    L5:
        if (r0 == a.f11579d) goto L6;
        return;
    L11:
        e = move-exception;
        e.printStackTrace();
    }

    public void destroy() {
        reset();     // Catch: Throwable -> L16
        this.mThreadPools.shutdownNow();     // Catch: Throwable -> L16
        BitmapDescriptor r0 = this.descriptor;     // Catch: Throwable -> L16
        if (r0 == null) goto L5;
        r0.recycle();     // Catch: Throwable -> L16
    L5:
        Marker r1 = this.marker;     // Catch: Throwable -> L16
        if (r1 == null) goto L8;
        r1.destroy();     // Catch: Throwable -> L16
        this.marker = null;     // Catch: Throwable -> L16
    L8:
        Object r2 = this.mLock;     // Catch: Throwable -> L16
        monitor-enter(r2);     // Catch: Throwable -> L16
        this.points.clear();     // Catch: Throwable -> L13
        this.eachDistance.clear();     // Catch: Throwable -> L13
        monitor-exit(r2);     // Catch: Throwable -> L13
    L23:
        return;
    L13:
        th = move-exception;
        throw th;     // Catch: Throwable -> L16
    L16:
        th = move-exception;
        th.printStackTrace();
    }

    public int getIndex() {
        return this.index;
    }

    public Marker getMarker() {
        return this.marker;
    }

    public LatLng getPosition() {
        Marker r0 = this.marker;
        if (r0 != null) goto L7;
        return null;
    L7:
        return r0.getPosition();
    }

    public void removeMarker() {
        Marker r0 = this.marker;
        if (r0 == null) goto L5;
        r0.remove();
        this.marker = null;
    L5:
        this.points.clear();
        this.eachDistance.clear();
    }

    public void resetIndex() {
        this.index = 0;
    }

    public void setDescriptor(BitmapDescriptor r2) {
        BitmapDescriptor r0 = this.descriptor;
        if (r0 == null) goto L5;
        r0.recycle();
    L5:
        this.descriptor = r2;
        Marker r1 = this.marker;
        if (r1 == null) goto L9;
        r1.setIcon(r2);
        return;
    }

    public void setMoveListener(MoveListener r1) {
        this.moveListener = r1;
    }

    public void setPoints(List<LatLng> r7) {
        Object r0 = this.mLock;
        monitor-enter(r0);
        if (r7 != null) goto L36;
    L31:
        monitor-exit(r0);     // Catch: Throwable -> L33
        return;
    L36:
    L27:
        th = move-exception;
        th.printStackTrace();     // Catch: Throwable -> L33
    L29:
        monitor-exit(r0);     // Catch: Throwable -> L33
        return;
    L33:
        th = move-exception;
        throw th;
    L6:
        if (r7.size() < 2) goto L31;
        stopMove();     // Catch: Throwable -> L27
        this.points.clear();     // Catch: Throwable -> L27
        Iterator<LatLng> r8 = r7.iterator();     // Catch: Throwable -> L27
    L10:
        if (r8.hasNext() == false) goto L14;
        LatLng r1 = r8.next();     // Catch: Throwable -> L27
        if (r1 == null) goto L10;
        this.points.add(r1);     // Catch: Throwable -> L27
        goto L10
    L14:
        this.eachDistance.clear();     // Catch: Throwable -> L27
        this.totalDistance = 0.0d;     // Catch: Throwable -> L27
        int r2 = 0;
    L16:
        if (r2 >= (this.points.size() - 1)) goto L18;
        LatLng r3 = this.points.get(r2);     // Catch: Throwable -> L27
        r2 = r2 + 1;     // Catch: Throwable -> L27
        double r4 = AMapUtils.calculateLineDistance(r3, this.points.get(r2));     // Catch: Throwable -> L27
        this.eachDistance.add(Double.valueOf(r4));     // Catch: Throwable -> L27
        this.totalDistance += r4;     // Catch: Throwable -> L27
        goto L16
    L18:
        this.remainDistance = this.totalDistance;     // Catch: Throwable -> L27
        LatLng r9 = this.points.get(0);     // Catch: Throwable -> L27
        Marker r5 = this.marker;     // Catch: Throwable -> L27
        if (r5 == null) goto L22;
        r5.setPosition(r9);     // Catch: Throwable -> L27
        checkMarkerIcon();     // Catch: Throwable -> L27
    L25:
        reset();     // Catch: Throwable -> L27
    L22:
        if (this.descriptor != null) goto L24;
        this.useDefaultDescriptor = true;     // Catch: Throwable -> L27
    L24:
        this.marker = this.mAMap.addMarker(new MarkerOptions().belowMaskLayer(true).position(r9).icon(this.descriptor).title("").anchor(0.5f, 0.5f));     // Catch: Throwable -> L27
        goto L25
    }

    public void setPosition(LatLng r4) {
        Marker r0 = this.marker;
        if (r0 == null) goto L6;
        r0.setPosition(r4);
        checkMarkerIcon();
        return;
    L6:
        if (this.descriptor != null) goto L8;
        this.useDefaultDescriptor = true;
    L8:
        this.marker = this.mAMap.addMarker(new MarkerOptions().belowMaskLayer(true).position(r4).icon(this.descriptor).title("").anchor(0.5f, 0.5f));
    }

    public void setRotate(float r4) {
        if (this.marker == null) goto L11;
        AMap r0 = this.mAMap;
        if (r0 == null) goto L12;
        if (r0 == null) goto L13;
        CameraPosition r1 = r0.getCameraPosition();
        if (r1 == null) goto L14;
        this.marker.setRotateAngle((360.0f - r4) + r1.bearing);
        return;
    L14:
        return;
    L13:
        return;
    L12:
        return;
    }

    public void setTotalDuration(int r3) {
        this.duration = r3 * 1000;
    }

    public void setVisible(boolean r2) {
        Marker r0 = this.marker;
        if (r0 == null) goto L6;
        r0.setVisible(r2);
        return;
    }

    public void startSmoothMove() {
        a r0 = this.moveStatus;
        if (r0 != a.f11579d) goto L7;
        this.moveStatus = a.c;
        this.mAnimationBeginTime += System.currentTimeMillis() - this.pauseMillis;
        return;
    L7:
        if (r0 == a.f11578a) goto L11;
        if (r0 == a.f11580e) goto L11;
        return;
    L11:
        if (this.points.size() >= 1) goto L13;
        return;
    L13:
        this.index = 0;
        this.mThreadPools.execute(new c(this, null));     // Catch: Throwable -> L16
        return;
    L16:
        th = move-exception;
        th.printStackTrace();
    }

    public void stopMove() {
        if (this.moveStatus != a.c) goto L6;
        this.moveStatus = a.f11579d;
        this.pauseMillis = System.currentTimeMillis();
        return;
    }
}
