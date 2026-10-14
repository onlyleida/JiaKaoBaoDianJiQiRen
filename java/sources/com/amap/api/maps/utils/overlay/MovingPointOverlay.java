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
    private BasePointOverlay baseOverlay;
    private AMap mAMap;
    private ExecutorService mThreadPools;
    private MoveListener moveListener;
    private long pauseMillis;
    private long duration = 10000;
    private long mStepDuration = 20;
    private LinkedList<LatLng> points = new LinkedList<>();
    private LinkedList<Double> eachDistance = new LinkedList<>();
    private double totalDistance = 0.0d;
    private double remainDistance = 0.0d;
    private Object mLock = new Object();
    private int index = 0;
    private boolean useDefaultDescriptor = false;
    AtomicBoolean exitFlag = new AtomicBoolean(false);
    private a STATUS = a.ACTION_UNKNOWN;
    private long mAnimationBeginTime = System.currentTimeMillis();

    public interface MoveListener {
        void move(double d2);
    }

    private enum a {
        ACTION_UNKNOWN,
        ACTION_START,
        ACTION_RUNNING,
        ACTION_PAUSE,
        ACTION_STOP
    }

    private class b implements ThreadFactory {
        private b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "MoveSmoothThread");
        }
    }

    private class c implements Runnable {
        private c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                MovingPointOverlay.this.mAnimationBeginTime = System.currentTimeMillis();
                MovingPointOverlay.this.STATUS = a.ACTION_START;
                MovingPointOverlay.this.exitFlag.set(false);
                while (!MovingPointOverlay.this.exitFlag.get() && MovingPointOverlay.this.index <= MovingPointOverlay.this.points.size() - 1) {
                    synchronized (MovingPointOverlay.this.mLock) {
                        if (MovingPointOverlay.this.exitFlag.get()) {
                            return;
                        }
                        if (MovingPointOverlay.this.STATUS != a.ACTION_PAUSE) {
                            MovingPointOverlay.this.baseOverlay.setGeoPoint(MovingPointOverlay.this.getCurPosition(System.currentTimeMillis() - MovingPointOverlay.this.mAnimationBeginTime));
                            MovingPointOverlay.this.STATUS = a.ACTION_RUNNING;
                        }
                    }
                    Thread.sleep(MovingPointOverlay.this.mStepDuration);
                }
                MovingPointOverlay.this.STATUS = a.ACTION_STOP;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public MovingPointOverlay(AMap aMap, BasePointOverlay basePointOverlay) {
        this.baseOverlay = null;
        if (aMap == null || basePointOverlay == null) {
            return;
        }
        this.mAMap = aMap;
        this.mThreadPools = new ThreadPoolExecutor(1, 2, 5L, TimeUnit.SECONDS, new SynchronousQueue(), new b());
        this.baseOverlay = basePointOverlay;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IPoint getCurPosition(long j) {
        CameraPosition cameraPosition;
        MoveListener moveListener;
        long j2 = this.duration;
        int i = 0;
        if (j > j2) {
            this.exitFlag.set(true);
            IPoint iPoint = new IPoint();
            int size = this.points.size() - 1;
            this.index = size;
            LatLng latLng = this.points.get(size);
            int i2 = this.index - 1;
            this.index = i2;
            this.index = Math.max(i2, 0);
            this.remainDistance = 0.0d;
            MapProjection.lonlat2Geo(latLng.longitude, latLng.latitude, iPoint);
            MoveListener moveListener2 = this.moveListener;
            if (moveListener2 != null) {
                moveListener2.move(this.remainDistance);
            }
            return iPoint;
        }
        double d2 = this.totalDistance;
        double d3 = (j * d2) / j2;
        this.remainDistance = d2 - d3;
        double d4 = 1.0d;
        for (int i3 = 0; i3 < this.eachDistance.size(); i3++) {
            double dDoubleValue = this.eachDistance.get(i3).doubleValue();
            if (d3 <= dDoubleValue) {
                d4 = dDoubleValue > 0.0d ? d3 / dDoubleValue : 1.0d;
                i = i3;
                break;
            }
            d3 -= dDoubleValue;
        }
        if (i != this.index && (moveListener = this.moveListener) != null) {
            moveListener.move(this.remainDistance);
        }
        this.index = i;
        LatLng latLng2 = this.points.get(i);
        LatLng latLng3 = this.points.get(i + 1);
        IPoint iPoint2 = new IPoint();
        MapProjection.lonlat2Geo(latLng2.longitude, latLng2.latitude, iPoint2);
        IPoint iPoint3 = new IPoint();
        MapProjection.lonlat2Geo(latLng3.longitude, latLng3.latitude, iPoint3);
        int i4 = ((Point) iPoint3).x - ((Point) iPoint2).x;
        int i5 = ((Point) iPoint3).y - ((Point) iPoint2).y;
        if (AMapUtils.calculateLineDistance(latLng2, latLng3) > 1.0f) {
            float rotate = getRotate(iPoint2, iPoint3);
            AMap aMap = this.mAMap;
            if (aMap != null && (cameraPosition = aMap.getCameraPosition()) != null) {
                this.baseOverlay.setRotateAngle((360.0f - rotate) + cameraPosition.bearing);
            }
        }
        return new IPoint((int) (((double) ((Point) iPoint2).x) + (((double) i4) * d4)), (int) (((double) ((Point) iPoint2).y) + (((double) i5) * d4)));
    }

    private float getRotate(IPoint iPoint, IPoint iPoint2) {
        if (iPoint == null || iPoint2 == null) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        double d2 = ((Point) iPoint2).y;
        return (float) ((Math.atan2(((double) ((Point) iPoint2).x) - ((double) ((Point) iPoint).x), ((Point) iPoint).y - d2) / 3.141592653589793d) * 180.0d);
    }

    private void reset() {
        try {
            a aVar = this.STATUS;
            if (aVar == a.ACTION_RUNNING || aVar == a.ACTION_PAUSE) {
                this.exitFlag.set(true);
                this.mThreadPools.awaitTermination(this.mStepDuration + 20, TimeUnit.MILLISECONDS);
                this.baseOverlay.setAnimation(null);
                this.STATUS = a.ACTION_UNKNOWN;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x001a */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001e, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void destroy() {
        /*
            r2 = this;
            r2.removeMarker()     // Catch: java.lang.Throwable -> L1a
            java.util.concurrent.ExecutorService r0 = r2.mThreadPools     // Catch: java.lang.Throwable -> L1a
            r0.shutdownNow()     // Catch: java.lang.Throwable -> L1a
            java.lang.Object r0 = r2.mLock     // Catch: java.lang.Throwable -> L1a
            monitor-enter(r0)     // Catch: java.lang.Throwable -> L1a
            java.util.LinkedList<com.amap.api.maps.model.LatLng> r1 = r2.points     // Catch: java.lang.Throwable -> L17
            r1.clear()     // Catch: java.lang.Throwable -> L17
            java.util.LinkedList<java.lang.Double> r1 = r2.eachDistance     // Catch: java.lang.Throwable -> L17
            r1.clear()     // Catch: java.lang.Throwable -> L17
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L17
            goto L1e
        L17:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L17
            throw r1     // Catch: java.lang.Throwable -> L1a
        L1a:
            r0 = move-exception
            r0.printStackTrace()
        L1e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.maps.utils.overlay.MovingPointOverlay.destroy():void");
    }

    public int getIndex() {
        return this.index;
    }

    public BasePointOverlay getObject() {
        return this.baseOverlay;
    }

    public LatLng getPosition() {
        BasePointOverlay basePointOverlay = this.baseOverlay;
        if (basePointOverlay != null) {
            return basePointOverlay.getPosition();
        }
        return null;
    }

    public void removeMarker() {
        try {
            reset();
            BasePointOverlay basePointOverlay = this.baseOverlay;
            if (basePointOverlay != null) {
                basePointOverlay.remove();
                this.baseOverlay = null;
            }
            this.points.clear();
            this.eachDistance.clear();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void resetIndex() {
        this.index = 0;
    }

    public void setMoveListener(MoveListener moveListener) {
        this.moveListener = moveListener;
    }

    public void setPoints(List<LatLng> list) {
        synchronized (this.mLock) {
            if (list != null) {
                try {
                    if (list.size() >= 2) {
                        stopMove();
                        this.points.clear();
                        for (LatLng latLng : list) {
                            if (latLng != null) {
                                this.points.add(latLng);
                            }
                        }
                        this.eachDistance.clear();
                        this.totalDistance = 0.0d;
                        int i = 0;
                        while (i < this.points.size() - 1) {
                            LatLng latLng2 = this.points.get(i);
                            i++;
                            double dCalculateLineDistance = AMapUtils.calculateLineDistance(latLng2, this.points.get(i));
                            this.eachDistance.add(Double.valueOf(dCalculateLineDistance));
                            this.totalDistance += dCalculateLineDistance;
                        }
                        this.remainDistance = this.totalDistance;
                        this.baseOverlay.setPosition(this.points.get(0));
                        reset();
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    public void setPosition(LatLng latLng) {
        try {
            BasePointOverlay basePointOverlay = this.baseOverlay;
            if (basePointOverlay != null) {
                basePointOverlay.setPosition(latLng);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setRotate(float f2) {
        AMap aMap;
        CameraPosition cameraPosition;
        try {
            if (this.baseOverlay == null || (aMap = this.mAMap) == null || (cameraPosition = aMap.getCameraPosition()) == null) {
                return;
            }
            this.baseOverlay.setRotateAngle((360.0f - f2) + cameraPosition.bearing);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setTotalDuration(int i) {
        this.duration = i * 1000;
    }

    public void setVisible(boolean z) {
        try {
            BasePointOverlay basePointOverlay = this.baseOverlay;
            if (basePointOverlay != null) {
                basePointOverlay.setVisible(z);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void startSmoothMove() {
        a aVar = this.STATUS;
        if (aVar == a.ACTION_PAUSE) {
            this.STATUS = a.ACTION_RUNNING;
            this.mAnimationBeginTime += System.currentTimeMillis() - this.pauseMillis;
        } else if ((aVar == a.ACTION_UNKNOWN || aVar == a.ACTION_STOP) && this.points.size() >= 1) {
            this.index = 0;
            try {
                this.mThreadPools.execute(new c());
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public void stopMove() {
        if (this.STATUS == a.ACTION_RUNNING) {
            this.STATUS = a.ACTION_PAUSE;
            this.pauseMillis = System.currentTimeMillis();
        }
    }
}
