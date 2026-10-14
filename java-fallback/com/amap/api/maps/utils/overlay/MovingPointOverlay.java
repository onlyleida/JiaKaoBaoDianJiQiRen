package com.amap.api.maps.utils.overlay;

import android.graphics.Point;
import com.amap.api.maps.AMap;
import com.amap.api.maps.AMapUtils;
import com.amap.api.maps.model.BasePointOverlay;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.CameraPosition;
import com.amap.api.maps.model.LatLng;
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
public class MovingPointOverlay {
    private a STATUS;
    private BasePointOverlay baseOverlay;
    private long duration;
    private LinkedList<Double> eachDistance;
    AtomicBoolean exitFlag;
    private int index;
    private AMap mAMap;
    private long mAnimationBeginTime;
    private Object mLock;
    private long mStepDuration;
    private ExecutorService mThreadPools;
    private MoveListener moveListener;
    private long pauseMillis;
    private LinkedList<LatLng> points;
    private double remainDistance;
    private double totalDistance;
    private boolean useDefaultDescriptor;

    /* JADX INFO: renamed from: com.amap.api.maps.utils.overlay.MovingPointOverlay$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
    }

    public interface MoveListener {
        void move(double r1);
    }

    private static final enum a extends Enum<a> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f11572a = null;
        public static final a b = null;
        public static final a c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final a f11573d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final a f11574e = null;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final /* synthetic */ a[] f11575f = null;

        static {
            a r0 = new a("ACTION_UNKNOWN", 0);
            f11572a = r0;
            a r1 = new a("ACTION_START", 1);
            b = r1;
            a r3 = new a("ACTION_RUNNING", 2);
            c = r3;
            a r5 = new a("ACTION_PAUSE", 3);
            f11573d = r5;
            a r7 = new a("ACTION_STOP", 4);
            f11574e = r7;
            f11575f = new a[]{r0, r1, r3, r5, r7};
        }

        private a(String r1, int r2) {
            super(r1, r2);
        }

        public static a valueOf(String r1) {
            return (a) Enum.valueOf(a.class, r1);
        }

        public static a[] values() {
            return (a[]) f11575f.clone();
        }
    }

    private class b implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ MovingPointOverlay f11576a;

        private b(MovingPointOverlay r1) {
            this.f11576a = r1;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable r3) {
            return new Thread(r3, "MoveSmoothThread");
        }

        /* synthetic */ b(MovingPointOverlay r1, AnonymousClass1 r2) {
            this(r1);
        }
    }

    private class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ MovingPointOverlay f11577a;

        private c(MovingPointOverlay r1) {
            this.f11577a = r1;
        }

        @Override // java.lang.Runnable
        public void run() {
            MovingPointOverlay.access$202(this.f11577a, System.currentTimeMillis());     // Catch: Throwable -> L24
            MovingPointOverlay.access$302(this.f11577a, a.b);     // Catch: Throwable -> L24
            this.f11577a.exitFlag.set(false);     // Catch: Throwable -> L24
        L4:
            if (this.f11577a.exitFlag.get() == true) goto L22;
            if (MovingPointOverlay.access$400(this.f11577a) > (MovingPointOverlay.access$500(this.f11577a).size() - 1)) goto L22;
            Object r0 = MovingPointOverlay.access$600(this.f11577a);     // Catch: Throwable -> L24
            monitor-enter(r0);     // Catch: Throwable -> L24
        L19:
            th = move-exception;
            throw th;     // Catch: Throwable -> L24
        L10:
            if (this.f11577a.exitFlag.get() == true) goto L11;
            if (MovingPointOverlay.access$300(this.f11577a) == a.f11573d) goto L16;
            MovingPointOverlay.access$800(this.f11577a).setGeoPoint(MovingPointOverlay.access$700(this.f11577a, System.currentTimeMillis() - MovingPointOverlay.access$200(this.f11577a)));     // Catch: Throwable -> L19
            MovingPointOverlay.access$302(this.f11577a, a.c);     // Catch: Throwable -> L19
        L16:
            monitor-exit(r0);     // Catch: Throwable -> L19
            Thread.sleep(MovingPointOverlay.access$900(this.f11577a));     // Catch: Throwable -> L24
            goto L4
        L11:
            monitor-exit(r0);     // Catch: Throwable -> L19
            return;
        L22:
            MovingPointOverlay.access$302(this.f11577a, a.f11574e);     // Catch: Throwable -> L24
            return;
        L24:
            th = move-exception;
            th.printStackTrace();
        }

        /* synthetic */ c(MovingPointOverlay r1, AnonymousClass1 r2) {
            this(r1);
        }
    }

    public MovingPointOverlay(AMap r12, BasePointOverlay r13) {
        this.duration = 10000;
        this.mStepDuration = 20;
        this.points = new LinkedList();
        this.eachDistance = new LinkedList();
        this.totalDistance = 0.0d;
        this.remainDistance = 0.0d;
        this.mLock = new Object();
        AnonymousClass1 r0 = null;
        this.baseOverlay = null;
        this.index = 0;
        this.useDefaultDescriptor = false;
        this.exitFlag = new AtomicBoolean(false);
        this.STATUS = a.f11572a;
        this.mAnimationBeginTime = System.currentTimeMillis();
        if (r12 == null) goto L8;
        if (r13 == null) goto L9;
        this.mAMap = r12;
        this.mThreadPools = new ThreadPoolExecutor(1, 2, 5, TimeUnit.SECONDS, new SynchronousQueue(), new b(this, r0));
        this.baseOverlay = r13;
        return;
    L9:
        return;
    }

    static /* synthetic */ long access$200(MovingPointOverlay r2) {
        return r2.mAnimationBeginTime;
    }

    static /* synthetic */ long access$202(MovingPointOverlay r0, long r1) {
        r0.mAnimationBeginTime = r1;
        return r1;
    }

    static /* synthetic */ a access$300(MovingPointOverlay r0) {
        return r0.STATUS;
    }

    static /* synthetic */ a access$302(MovingPointOverlay r0, a r1) {
        r0.STATUS = r1;
        return r1;
    }

    static /* synthetic */ int access$400(MovingPointOverlay r0) {
        return r0.index;
    }

    static /* synthetic */ LinkedList access$500(MovingPointOverlay r0) {
        return r0.points;
    }

    static /* synthetic */ Object access$600(MovingPointOverlay r0) {
        return r0.mLock;
    }

    static /* synthetic */ IPoint access$700(MovingPointOverlay r0, long r1) {
        return r0.getCurPosition(r1);
    }

    static /* synthetic */ BasePointOverlay access$800(MovingPointOverlay r0) {
        return r0.baseOverlay;
    }

    static /* synthetic */ long access$900(MovingPointOverlay r2) {
        return r2.mStepDuration;
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
        if (AMapUtils.calculateLineDistance(r18, r19) <= 1.0f) goto L31;
        float r110 = getRotate(r3, r5);
        AMap r111 = this.mAMap;
        if (r111 == null) goto L31;
        CameraPosition r112 = r111.getCameraPosition();
        if (r112 == null) goto L31;
        this.baseOverlay.setRotateAngle((360.0f - r110) + r112.bearing);
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
        a r0 = this.STATUS;     // Catch: Exception -> L8
        if (r0 != a.c) goto L5;
    L6:
        this.exitFlag.set(true);     // Catch: Exception -> L8
        this.mThreadPools.awaitTermination(this.mStepDuration + 20, TimeUnit.MILLISECONDS);     // Catch: Exception -> L8
        this.baseOverlay.setAnimation(null);     // Catch: Exception -> L8
        this.STATUS = a.f11572a;     // Catch: Exception -> L8
        return;
    L5:
        if (r0 == a.f11573d) goto L6;
        return;
    L8:
        e = move-exception;
        e.printStackTrace();
    }

    public void destroy() {
        removeMarker();     // Catch: Throwable -> L10
        this.mThreadPools.shutdownNow();     // Catch: Throwable -> L10
        Object r0 = this.mLock;     // Catch: Throwable -> L10
        monitor-enter(r0);     // Catch: Throwable -> L10
        this.points.clear();     // Catch: Throwable -> L7
        this.eachDistance.clear();     // Catch: Throwable -> L7
        monitor-exit(r0);     // Catch: Throwable -> L7
    L17:
        return;
    L7:
        th = move-exception;
        throw th;     // Catch: Throwable -> L10
    L10:
        th = move-exception;
        th.printStackTrace();
    }

    public int getIndex() {
        return this.index;
    }

    public BasePointOverlay getObject() {
        return this.baseOverlay;
    }

    public LatLng getPosition() {
        BasePointOverlay r0 = this.baseOverlay;
        if (r0 != null) goto L5;
        return null;
    L5:
        return r0.getPosition();
    }

    public void removeMarker() {
        reset();     // Catch: Throwable -> L7
        BasePointOverlay r0 = this.baseOverlay;     // Catch: Throwable -> L7
        if (r0 == null) goto L5;
        r0.remove();     // Catch: Throwable -> L7
        this.baseOverlay = null;     // Catch: Throwable -> L7
    L5:
        this.points.clear();     // Catch: Throwable -> L7
        this.eachDistance.clear();     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        th.printStackTrace();
    }

    public void resetIndex() {
        this.index = 0;
    }

    public void setMoveListener(MoveListener r1) {
        this.moveListener = r1;
    }

    public void setPoints(List<LatLng> r7) {
        Object r0 = this.mLock;
        monitor-enter(r0);
        if (r7 != null) goto L30;
    L24:
        monitor-exit(r0);     // Catch: Throwable -> L26
        return;
    L30:
    L20:
        th = move-exception;
        th.printStackTrace();     // Catch: Throwable -> L26
    L22:
        monitor-exit(r0);     // Catch: Throwable -> L26
        return;
    L6:
        if (r7.size() < 2) goto L24;
        stopMove();     // Catch: Throwable -> L20
        this.points.clear();     // Catch: Throwable -> L20
        Iterator<LatLng> r8 = r7.iterator();     // Catch: Throwable -> L20
    L10:
        if (r8.hasNext() == false) goto L14;
        LatLng r1 = r8.next();     // Catch: Throwable -> L20
        if (r1 == null) goto L10;
        this.points.add(r1);     // Catch: Throwable -> L20
        goto L10
    L14:
        this.eachDistance.clear();     // Catch: Throwable -> L20
        this.totalDistance = 0.0d;     // Catch: Throwable -> L20
        int r2 = 0;
    L16:
        if (r2 >= (this.points.size() - 1)) goto L18;
        LatLng r3 = this.points.get(r2);     // Catch: Throwable -> L20
        r2 = r2 + 1;     // Catch: Throwable -> L20
        double r4 = AMapUtils.calculateLineDistance(r3, this.points.get(r2));     // Catch: Throwable -> L20
        this.eachDistance.add(Double.valueOf(r4));     // Catch: Throwable -> L20
        this.totalDistance += r4;     // Catch: Throwable -> L20
        goto L16
    L18:
        this.remainDistance = this.totalDistance;     // Catch: Throwable -> L20
        this.baseOverlay.setPosition(this.points.get(0));     // Catch: Throwable -> L20
        reset();     // Catch: Throwable -> L20
    L26:
        th = move-exception;
        throw th;
    }

    public void setPosition(LatLng r2) {
        BasePointOverlay r0 = this.baseOverlay;     // Catch: Exception -> L6
        if (r0 == null) goto L11;
        r0.setPosition(r2);     // Catch: Exception -> L6
        return;
    L11:
        return;
    L6:
        e = move-exception;
        e.printStackTrace();
    }

    public void setRotate(float r4) {
    L10:
        e = move-exception;
        e.printStackTrace();
        return;
    L3:
        if (this.baseOverlay == null) goto L15;
        AMap r0 = this.mAMap;     // Catch: Exception -> L10
        if (r0 == null) goto L16;
        CameraPosition r1 = r0.getCameraPosition();     // Catch: Exception -> L10
        if (r1 == null) goto L17;
        this.baseOverlay.setRotateAngle((360.0f - r4) + r1.bearing);     // Catch: Exception -> L10
        return;
    L17:
        return;
    L16:
        return;
    }

    public void setTotalDuration(int r3) {
        this.duration = r3 * 1000;
    }

    public void setVisible(boolean r2) {
        BasePointOverlay r0 = this.baseOverlay;     // Catch: Exception -> L6
        if (r0 == null) goto L11;
        r0.setVisible(r2);     // Catch: Exception -> L6
        return;
    L11:
        return;
    L6:
        e = move-exception;
        e.printStackTrace();
    }

    public void startSmoothMove() {
        a r0 = this.STATUS;
        if (r0 != a.f11573d) goto L7;
        this.STATUS = a.c;
        this.mAnimationBeginTime += System.currentTimeMillis() - this.pauseMillis;
        return;
    L7:
        if (r0 == a.f11572a) goto L11;
        if (r0 == a.f11574e) goto L11;
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
        if (this.STATUS != a.c) goto L6;
        this.STATUS = a.f11573d;
        this.pauseMillis = System.currentTimeMillis();
        return;
    }
}
