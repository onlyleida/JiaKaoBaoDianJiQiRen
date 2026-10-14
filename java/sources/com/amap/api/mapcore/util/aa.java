package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Point;
import android.graphics.PointF;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.GestureDetector;
import android.view.MotionEvent;
import com.amap.api.maps.model.AMapGestureListener;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.autonavi.base.ae.gmap.gesture.EAMapPlatformGestureInfo;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import com.autonavi.base.amap.mapcore.message.HoverGestureMapMessage;
import com.autonavi.base.amap.mapcore.message.MoveGestureMapMessage;
import com.autonavi.base.amap.mapcore.message.RotateGestureMapMessage;
import com.autonavi.base.amap.mapcore.message.ScaleGestureMapMessage;

/* JADX INFO: loaded from: classes5.dex */
public class aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    IAMapDelegate f10447a;
    Context b;
    GestureDetector c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private o f10448d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private m f10449e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private l f10450f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private p f10451g;
    private int q;
    private int r;
    public AMapGestureListener s;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f10452h = false;
    private int i = 0;
    private int j = 0;
    private int k = 0;
    private int l = 0;
    private int m = 0;
    private boolean n = false;
    private boolean o = false;
    private boolean p = true;
    private Handler t = new Handler(Looper.getMainLooper());

    private class b implements GestureDetector.OnDoubleTapListener, GestureDetector.OnGestureListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f10453a;
        float b;
        private EAMapPlatformGestureInfo c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        long f10454d;

        private b() {
            this.f10453a = 0;
            this.b = BitmapDescriptorFactory.HUE_RED;
            this.c = new EAMapPlatformGestureInfo();
            this.f10454d = 0L;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            aa.this.c.setIsLongpressEnabled(false);
            this.f10453a = motionEvent.getPointerCount();
            AMapGestureListener aMapGestureListener = aa.this.s;
            if (aMapGestureListener != null) {
                aMapGestureListener.onDoubleTap(motionEvent.getX(), motionEvent.getY());
            }
            return false;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            if (this.f10453a < motionEvent.getPointerCount()) {
                this.f10453a = motionEvent.getPointerCount();
            }
            int action = motionEvent.getAction() & 255;
            if (this.f10453a != 1) {
                return false;
            }
            try {
                if (!aa.this.f10447a.getUiSettings().isZoomGesturesEnabled()) {
                    return false;
                }
            } catch (Throwable th) {
                e6.r(th, "GLMapGestrureDetector", "onDoubleTapEvent");
                th.printStackTrace();
            }
            if (action == 0) {
                EAMapPlatformGestureInfo eAMapPlatformGestureInfo = this.c;
                eAMapPlatformGestureInfo.mGestureState = 1;
                eAMapPlatformGestureInfo.mGestureType = 9;
                eAMapPlatformGestureInfo.mLocation = new float[]{motionEvent.getX(), motionEvent.getY()};
                int engineIDWithGestureInfo = aa.this.f10447a.getEngineIDWithGestureInfo(this.c);
                this.b = motionEvent.getY();
                aa.this.f10447a.addGestureMapMessage(engineIDWithGestureInfo, ScaleGestureMapMessage.obtain(100, 1.0f, 0, 0));
                this.f10454d = SystemClock.uptimeMillis();
                return true;
            }
            if (action == 2) {
                aa.this.n = true;
                float y = this.b - motionEvent.getY();
                if (Math.abs(y) < 20) {
                    return true;
                }
                EAMapPlatformGestureInfo eAMapPlatformGestureInfo2 = this.c;
                eAMapPlatformGestureInfo2.mGestureState = 2;
                eAMapPlatformGestureInfo2.mGestureType = 9;
                eAMapPlatformGestureInfo2.mLocation = new float[]{motionEvent.getX(), motionEvent.getY()};
                int engineIDWithGestureInfo2 = aa.this.f10447a.getEngineIDWithGestureInfo(this.c);
                float mapHeight = (4.0f * y) / aa.this.f10447a.getMapHeight();
                if (y > BitmapDescriptorFactory.HUE_RED) {
                    aa.this.f10447a.addGestureMapMessage(engineIDWithGestureInfo2, ScaleGestureMapMessage.obtain(101, mapHeight, 0, 0));
                } else {
                    aa.this.f10447a.addGestureMapMessage(engineIDWithGestureInfo2, ScaleGestureMapMessage.obtain(101, mapHeight, 0, 0));
                }
                this.b = motionEvent.getY();
                return true;
            }
            EAMapPlatformGestureInfo eAMapPlatformGestureInfo3 = this.c;
            eAMapPlatformGestureInfo3.mGestureState = 3;
            eAMapPlatformGestureInfo3.mGestureType = 9;
            eAMapPlatformGestureInfo3.mLocation = new float[]{motionEvent.getX(), motionEvent.getY()};
            int engineIDWithGestureInfo3 = aa.this.f10447a.getEngineIDWithGestureInfo(this.c);
            aa.this.c.setIsLongpressEnabled(true);
            aa.this.f10447a.addGestureMapMessage(engineIDWithGestureInfo3, ScaleGestureMapMessage.obtain(102, 1.0f, 0, 0));
            if (action != 1) {
                aa.this.n = false;
                return true;
            }
            aa.this.f10447a.setGestureStatus(engineIDWithGestureInfo3, 3);
            long jUptimeMillis = SystemClock.uptimeMillis() - this.f10454d;
            if (!aa.this.n || jUptimeMillis < 200) {
                return aa.this.f10447a.onDoubleTap(engineIDWithGestureInfo3, motionEvent);
            }
            aa.this.n = false;
            return true;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            aa.this.n = false;
            return true;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
            AMapGestureListener aMapGestureListener = aa.this.s;
            if (aMapGestureListener != null) {
                aMapGestureListener.onFling(f2, f3);
            }
            try {
                if (aa.this.f10447a.getUiSettings().isScrollGesturesEnabled() && aa.this.l <= 0 && aa.this.j <= 0 && aa.this.k == 0 && !aa.this.p) {
                    EAMapPlatformGestureInfo eAMapPlatformGestureInfo = this.c;
                    eAMapPlatformGestureInfo.mGestureState = 3;
                    eAMapPlatformGestureInfo.mGestureType = 3;
                    eAMapPlatformGestureInfo.mLocation = new float[]{motionEvent2.getX(), motionEvent2.getY()};
                    int engineIDWithGestureInfo = aa.this.f10447a.getEngineIDWithGestureInfo(this.c);
                    aa.this.f10447a.onFling();
                    aa.this.f10447a.getGLMapEngine().startMapSlidAnim(engineIDWithGestureInfo, new Point((int) motionEvent2.getX(), (int) motionEvent2.getY()), f2, f3);
                }
                return true;
            } catch (Throwable th) {
                e6.r(th, "GLMapGestrureDetector", "onFling");
                th.printStackTrace();
                return true;
            }
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            if (aa.this.m == 1) {
                EAMapPlatformGestureInfo eAMapPlatformGestureInfo = this.c;
                eAMapPlatformGestureInfo.mGestureState = 3;
                eAMapPlatformGestureInfo.mGestureType = 7;
                eAMapPlatformGestureInfo.mLocation = new float[]{motionEvent.getX(), motionEvent.getY()};
                aa.this.f10447a.onLongPress(aa.this.f10447a.getEngineIDWithGestureInfo(this.c), motionEvent);
                AMapGestureListener aMapGestureListener = aa.this.s;
                if (aMapGestureListener != null) {
                    aMapGestureListener.onLongPress(motionEvent.getX(), motionEvent.getY());
                }
            }
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
            AMapGestureListener aMapGestureListener = aa.this.s;
            if (aMapGestureListener == null) {
                return false;
            }
            aMapGestureListener.onScroll(f2, f3);
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onShowPress(MotionEvent motionEvent) {
            try {
                EAMapPlatformGestureInfo eAMapPlatformGestureInfo = this.c;
                eAMapPlatformGestureInfo.mGestureState = 3;
                eAMapPlatformGestureInfo.mGestureType = 7;
                eAMapPlatformGestureInfo.mLocation = new float[]{motionEvent.getX(), motionEvent.getY()};
                aa.this.f10447a.getGLMapEngine().clearAnimations(aa.this.f10447a.getEngineIDWithGestureInfo(this.c), false);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            if (aa.this.m != 1) {
                return false;
            }
            EAMapPlatformGestureInfo eAMapPlatformGestureInfo = this.c;
            eAMapPlatformGestureInfo.mGestureState = 3;
            eAMapPlatformGestureInfo.mGestureType = 8;
            eAMapPlatformGestureInfo.mLocation = new float[]{motionEvent.getX(), motionEvent.getY()};
            int engineIDWithGestureInfo = aa.this.f10447a.getEngineIDWithGestureInfo(this.c);
            AMapGestureListener aMapGestureListener = aa.this.s;
            if (aMapGestureListener != null) {
                try {
                    aMapGestureListener.onSingleTap(motionEvent.getX(), motionEvent.getY());
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            return aa.this.f10447a.onSingleTapConfirmed(engineIDWithGestureInfo, motionEvent);
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return false;
        }
    }

    private class c implements l.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private EAMapPlatformGestureInfo f10456a;

        private c() {
            this.f10456a = new EAMapPlatformGestureInfo();
        }

        @Override // com.amap.api.mapcore.util.l.a
        public void a(l lVar) {
            EAMapPlatformGestureInfo eAMapPlatformGestureInfo = this.f10456a;
            eAMapPlatformGestureInfo.mGestureState = 3;
            eAMapPlatformGestureInfo.mGestureType = 6;
            eAMapPlatformGestureInfo.mLocation = new float[]{lVar.h().getX(), lVar.h().getY()};
            try {
                if (aa.this.f10447a.getUiSettings().isTiltGesturesEnabled()) {
                    int engineIDWithGestureInfo = aa.this.f10447a.getEngineIDWithGestureInfo(this.f10456a);
                    if (aa.this.f10447a.isLockMapCameraDegree(engineIDWithGestureInfo)) {
                        return;
                    }
                    if (aa.this.f10447a.getCameraDegree(engineIDWithGestureInfo) >= BitmapDescriptorFactory.HUE_RED && aa.this.l > 0) {
                        aa.this.f10447a.setGestureStatus(engineIDWithGestureInfo, 7);
                    }
                    aa.this.f10452h = false;
                    IAMapDelegate iAMapDelegate = aa.this.f10447a;
                    iAMapDelegate.addGestureMapMessage(engineIDWithGestureInfo, HoverGestureMapMessage.obtain(102, iAMapDelegate.getCameraDegree(engineIDWithGestureInfo)));
                }
            } catch (Throwable th) {
                e6.r(th, "GLMapGestrureDetector", "onHoveEnd");
                th.printStackTrace();
            }
        }

        @Override // com.amap.api.mapcore.util.l.a
        public boolean b(l lVar) {
            EAMapPlatformGestureInfo eAMapPlatformGestureInfo = this.f10456a;
            eAMapPlatformGestureInfo.mGestureState = 2;
            eAMapPlatformGestureInfo.mGestureType = 6;
            boolean z = false;
            eAMapPlatformGestureInfo.mLocation = new float[]{lVar.h().getX(), lVar.h().getY()};
            try {
                if (!aa.this.f10447a.getUiSettings().isTiltGesturesEnabled()) {
                    return true;
                }
                int engineIDWithGestureInfo = aa.this.f10447a.getEngineIDWithGestureInfo(this.f10456a);
                if (aa.this.f10447a.isLockMapCameraDegree(engineIDWithGestureInfo) || aa.this.k > 3) {
                    return false;
                }
                float f2 = lVar.n().x;
                float f3 = lVar.n().y;
                if (!aa.this.f10452h) {
                    PointF pointFK = lVar.k(0);
                    PointF pointFK2 = lVar.k(1);
                    float f4 = pointFK.y;
                    if ((f4 > 10.0f && pointFK2.y > 10.0f) || (f4 < -10.0f && pointFK2.y < -10.0f)) {
                        z = true;
                    }
                    if (z) {
                        float f5 = 10;
                        if (Math.abs(f3) > f5 && Math.abs(f2) < f5) {
                            aa.this.f10452h = true;
                        }
                    }
                }
                if (aa.this.f10452h) {
                    aa.this.f10452h = true;
                    float f6 = f3 / 6.0f;
                    if (Math.abs(f6) > 1.0f) {
                        aa.this.f10447a.addGestureMapMessage(engineIDWithGestureInfo, HoverGestureMapMessage.obtain(101, f6));
                        aa.w(aa.this);
                    }
                }
                return true;
            } catch (Throwable th) {
                e6.r(th, "GLMapGestrureDetector", "onHove");
                th.printStackTrace();
                return true;
            }
        }

        @Override // com.amap.api.mapcore.util.l.a
        public boolean c(l lVar) {
            EAMapPlatformGestureInfo eAMapPlatformGestureInfo = this.f10456a;
            eAMapPlatformGestureInfo.mGestureState = 1;
            eAMapPlatformGestureInfo.mGestureType = 6;
            eAMapPlatformGestureInfo.mLocation = new float[]{lVar.h().getX(), lVar.h().getY()};
            try {
                if (!aa.this.f10447a.getUiSettings().isTiltGesturesEnabled()) {
                    return true;
                }
                int engineIDWithGestureInfo = aa.this.f10447a.getEngineIDWithGestureInfo(this.f10456a);
                if (aa.this.f10447a.isLockMapCameraDegree(engineIDWithGestureInfo)) {
                    return false;
                }
                IAMapDelegate iAMapDelegate = aa.this.f10447a;
                iAMapDelegate.addGestureMapMessage(engineIDWithGestureInfo, HoverGestureMapMessage.obtain(100, iAMapDelegate.getCameraDegree(engineIDWithGestureInfo)));
                return true;
            } catch (Throwable th) {
                e6.r(th, "GLMapGestrureDetector", "onHoveBegin");
                th.printStackTrace();
                return true;
            }
        }
    }

    private class d implements m.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private EAMapPlatformGestureInfo f10457a;

        private d() {
            this.f10457a = new EAMapPlatformGestureInfo();
        }

        @Override // com.amap.api.mapcore.util.m.a
        public boolean a(m mVar) {
            try {
                if (!aa.this.f10447a.getUiSettings().isScrollGesturesEnabled()) {
                    return true;
                }
                EAMapPlatformGestureInfo eAMapPlatformGestureInfo = this.f10457a;
                eAMapPlatformGestureInfo.mGestureState = 1;
                eAMapPlatformGestureInfo.mGestureType = 3;
                eAMapPlatformGestureInfo.mLocation = new float[]{mVar.h().getX(), mVar.h().getY()};
                aa.this.f10447a.addGestureMapMessage(aa.this.f10447a.getEngineIDWithGestureInfo(this.f10457a), MoveGestureMapMessage.obtain(100, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
                return true;
            } catch (Throwable th) {
                e6.r(th, "GLMapGestrureDetector", "onMoveBegin");
                th.printStackTrace();
                return true;
            }
        }

        @Override // com.amap.api.mapcore.util.m.a
        public void b(m mVar) {
            try {
                if (aa.this.f10447a.getUiSettings().isScrollGesturesEnabled()) {
                    EAMapPlatformGestureInfo eAMapPlatformGestureInfo = this.f10457a;
                    eAMapPlatformGestureInfo.mGestureState = 3;
                    eAMapPlatformGestureInfo.mGestureType = 3;
                    eAMapPlatformGestureInfo.mLocation = new float[]{mVar.h().getX(), mVar.h().getY()};
                    int engineIDWithGestureInfo = aa.this.f10447a.getEngineIDWithGestureInfo(this.f10457a);
                    if (aa.this.i > 0) {
                        aa.this.f10447a.setGestureStatus(engineIDWithGestureInfo, 5);
                    }
                    aa.this.f10447a.addGestureMapMessage(engineIDWithGestureInfo, MoveGestureMapMessage.obtain(102, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
                }
            } catch (Throwable th) {
                e6.r(th, "GLMapGestrureDetector", "onMoveEnd");
                th.printStackTrace();
            }
        }

        @Override // com.amap.api.mapcore.util.m.a
        public boolean c(m mVar) {
            if (aa.this.f10452h) {
                return true;
            }
            try {
                if (aa.this.f10447a.getUiSettings().isScrollGesturesEnabled() && !aa.this.o) {
                    EAMapPlatformGestureInfo eAMapPlatformGestureInfo = this.f10457a;
                    eAMapPlatformGestureInfo.mGestureState = 2;
                    eAMapPlatformGestureInfo.mGestureType = 3;
                    eAMapPlatformGestureInfo.mLocation = new float[]{mVar.h().getX(), mVar.h().getY()};
                    int engineIDWithGestureInfo = aa.this.f10447a.getEngineIDWithGestureInfo(this.f10457a);
                    PointF pointFJ = mVar.j();
                    float f2 = aa.this.i == 0 ? 4.0f : 1.0f;
                    if (Math.abs(pointFJ.x) <= f2 && Math.abs(pointFJ.y) <= f2) {
                        return false;
                    }
                    if (aa.this.i == 0) {
                        aa.this.f10447a.getGLMapEngine().clearAnimations(engineIDWithGestureInfo, false);
                    }
                    aa.this.f10447a.addGestureMapMessage(engineIDWithGestureInfo, MoveGestureMapMessage.obtain(101, pointFJ.x, pointFJ.y));
                    aa.v(aa.this);
                }
                return true;
            } catch (Throwable th) {
                e6.r(th, "GLMapGestrureDetector", "onMove");
                th.printStackTrace();
                return true;
            }
        }
    }

    private class e extends o.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f10458a;
        private boolean b;
        private boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Point f10459d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private float[] f10460e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private float f10461f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private float[] f10462g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private float f10463h;
        private EAMapPlatformGestureInfo i;

        private e() {
            this.f10458a = false;
            this.b = false;
            this.c = false;
            this.f10459d = new Point();
            this.f10460e = new float[10];
            this.f10461f = BitmapDescriptorFactory.HUE_RED;
            this.f10462g = new float[10];
            this.f10463h = BitmapDescriptorFactory.HUE_RED;
            this.i = new EAMapPlatformGestureInfo();
        }

        /* JADX WARN: Code duplicated, block: B:27:0x00c3  */
        /* JADX WARN: Code duplicated, block: B:39:0x010a  */
        @Override // com.amap.api.mapcore.util.o.a
        public boolean d(o oVar) {
            Throwable th;
            boolean z;
            boolean z2;
            EAMapPlatformGestureInfo eAMapPlatformGestureInfo = this.i;
            eAMapPlatformGestureInfo.mGestureState = 2;
            eAMapPlatformGestureInfo.mGestureType = 4;
            boolean z3 = true;
            eAMapPlatformGestureInfo.mLocation = new float[]{oVar.c().getX(), oVar.c().getY()};
            int engineIDWithGestureInfo = aa.this.f10447a.getEngineIDWithGestureInfo(this.i);
            float fP = oVar.p();
            float fQ = oVar.q();
            int iF = (int) oVar.f();
            int i = (int) oVar.i();
            float fAbs = Math.abs(iF - this.f10459d.x);
            float fAbs2 = Math.abs(i - this.f10459d.y);
            Point point = this.f10459d;
            point.x = iF;
            point.y = i;
            float fLog = (float) Math.log(fP);
            if (aa.this.j <= 0 && Math.abs(fLog) > 0.2f) {
                this.c = true;
            }
            try {
                if (aa.this.f10447a.getUiSettings().isZoomGesturesEnabled()) {
                    if (!this.f10458a && 0.06f < Math.abs(fLog)) {
                        this.f10458a = true;
                    }
                    if (!this.f10458a || 0.01f >= Math.abs(fLog)) {
                        z = false;
                    } else {
                        if (fAbs > 2.0f || fAbs2 > 2.0f) {
                            try {
                                if (Math.abs(fLog) < 0.02f) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                z = true;
                                e6.r(th, "GLMapGestrureDetector", "onScaleRotate");
                                th.printStackTrace();
                            }
                        } else {
                            z2 = false;
                        }
                        if (!z2 && fQ > BitmapDescriptorFactory.HUE_RED) {
                            float f2 = fLog / fQ;
                            this.f10461f = f2;
                            this.f10460e[aa.this.j % 10] = Math.abs(f2);
                            aa.q(aa.this);
                            aa.this.f10447a.addGestureMapMessage(engineIDWithGestureInfo, ScaleGestureMapMessage.obtain(101, fLog, iF, i));
                            if (fLog > BitmapDescriptorFactory.HUE_RED) {
                                aa.this.f10447a.setGestureStatus(engineIDWithGestureInfo, 1);
                            } else {
                                aa.this.f10447a.setGestureStatus(engineIDWithGestureInfo, 2);
                            }
                        }
                        z = true;
                    }
                } else {
                    z = false;
                }
            } catch (Throwable th3) {
                th = th3;
                z = false;
            }
            boolean z4 = z;
            try {
                if (aa.this.f10447a.getUiSettings().isRotateGesturesEnabled() && !aa.this.f10447a.isLockMapAngle(engineIDWithGestureInfo) && !this.c) {
                    float fS = oVar.s();
                    if (!this.b && Math.abs(fS) >= 4.0f) {
                        this.b = true;
                    }
                    if (this.b && 1.0f < Math.abs(fS)) {
                        if (!((fAbs > 4.0f || fAbs2 > 4.0f) && Math.abs(fS) < 2.0f)) {
                            float f3 = fS / fQ;
                            this.f10463h = f3;
                            this.f10462g[aa.this.k % 10] = Math.abs(f3);
                            aa.r(aa.this);
                            aa.this.f10447a.addGestureMapMessage(engineIDWithGestureInfo, RotateGestureMapMessage.obtain(101, fS, iF, i));
                            try {
                                aa.this.f10447a.setGestureStatus(engineIDWithGestureInfo, 6);
                                return true;
                            } catch (Throwable th4) {
                                th = th4;
                            }
                        }
                        e6.r(th, "GLMapGestrureDetector", "onScaleRotate");
                        th.printStackTrace();
                        return z3;
                    }
                }
                return z4;
            } catch (Throwable th5) {
                th = th5;
                z3 = z4;
            }
        }

        @Override // com.amap.api.mapcore.util.o.a
        public boolean e(o oVar) {
            EAMapPlatformGestureInfo eAMapPlatformGestureInfo = this.i;
            eAMapPlatformGestureInfo.mGestureState = 1;
            eAMapPlatformGestureInfo.mGestureType = 4;
            eAMapPlatformGestureInfo.mLocation = new float[]{oVar.c().getX(), oVar.c().getY()};
            int engineIDWithGestureInfo = aa.this.f10447a.getEngineIDWithGestureInfo(this.i);
            int iF = (int) oVar.f();
            int i = (int) oVar.i();
            this.c = false;
            Point point = this.f10459d;
            point.x = iF;
            point.y = i;
            this.f10458a = false;
            this.b = false;
            aa.this.f10447a.addGestureMapMessage(engineIDWithGestureInfo, ScaleGestureMapMessage.obtain(100, 1.0f, iF, i));
            try {
                if (aa.this.f10447a.getUiSettings().isRotateGesturesEnabled() && !aa.this.f10447a.isLockMapAngle(engineIDWithGestureInfo)) {
                    IAMapDelegate iAMapDelegate = aa.this.f10447a;
                    iAMapDelegate.addGestureMapMessage(engineIDWithGestureInfo, RotateGestureMapMessage.obtain(100, iAMapDelegate.getMapAngle(engineIDWithGestureInfo), iF, i));
                }
            } catch (Throwable th) {
                e6.r(th, "GLMapGestrureDetector", "onScaleRotateBegin");
                th.printStackTrace();
            }
            return true;
        }

        /* JADX WARN: Code duplicated, block: B:49:0x012b  */
        @Override // com.amap.api.mapcore.util.o.a
        public void f(o oVar) {
            float f2;
            float f3;
            float preciseLevel;
            EAMapPlatformGestureInfo eAMapPlatformGestureInfo = this.i;
            eAMapPlatformGestureInfo.mGestureState = 3;
            eAMapPlatformGestureInfo.mGestureType = 4;
            eAMapPlatformGestureInfo.mLocation = new float[]{oVar.c().getX(), oVar.c().getY()};
            int engineIDWithGestureInfo = aa.this.f10447a.getEngineIDWithGestureInfo(this.i);
            this.c = false;
            aa.this.f10447a.addGestureMapMessage(engineIDWithGestureInfo, ScaleGestureMapMessage.obtain(102, 1.0f, 0, 0));
            if (aa.this.j > 0) {
                int i = aa.this.j > 10 ? 10 : aa.this.j;
                float f4 = BitmapDescriptorFactory.HUE_RED;
                for (int i2 = 0; i2 < 10; i2++) {
                    float[] fArr = this.f10460e;
                    f4 += fArr[i2];
                    fArr[i2] = 0.0f;
                }
                float f5 = f4 / i;
                if (0.004f <= f5) {
                    float f6 = f5 * 300.0f;
                    if (f6 >= 1.5f) {
                        f6 = 1.5f;
                    }
                    if (this.f10461f < BitmapDescriptorFactory.HUE_RED) {
                        f6 = -f6;
                    }
                    preciseLevel = aa.this.f10447a.getPreciseLevel(engineIDWithGestureInfo) + f6;
                } else {
                    preciseLevel = -9999.0f;
                }
                this.f10461f = BitmapDescriptorFactory.HUE_RED;
                f2 = preciseLevel;
            } else {
                f2 = -9999.0f;
            }
            if (aa.this.f10447a.isLockMapAngle(engineIDWithGestureInfo)) {
                f3 = -9999.0f;
            } else {
                try {
                    if (aa.this.f10447a.getUiSettings().isRotateGesturesEnabled()) {
                        IAMapDelegate iAMapDelegate = aa.this.f10447a;
                        iAMapDelegate.addGestureMapMessage(engineIDWithGestureInfo, RotateGestureMapMessage.obtain(102, iAMapDelegate.getMapAngle(engineIDWithGestureInfo), 0, 0));
                    }
                } catch (Throwable th) {
                    e6.r(th, "GLMapGestrureDetector", "onScaleRotateEnd");
                    th.printStackTrace();
                }
                if (aa.this.k > 0) {
                    aa.this.f10447a.setGestureStatus(engineIDWithGestureInfo, 6);
                    int i3 = aa.this.k > 10 ? 10 : aa.this.k;
                    float f7 = BitmapDescriptorFactory.HUE_RED;
                    for (int i4 = 0; i4 < 10; i4++) {
                        float[] fArr2 = this.f10462g;
                        f7 += fArr2[i4];
                        fArr2[i4] = 0.0f;
                    }
                    float f8 = f7 / i3;
                    if (0.1f <= f8) {
                        float f9 = f8 * 200.0f;
                        int mapAngle = ((int) aa.this.f10447a.getMapAngle(engineIDWithGestureInfo)) % 360;
                        if (f9 >= 60.0f) {
                            f9 = 60.0f;
                        }
                        if (this.f10463h < BitmapDescriptorFactory.HUE_RED) {
                            f9 = -f9;
                        }
                        f3 = ((int) (mapAngle + f9)) % 360;
                    } else {
                        f3 = -9999.0f;
                    }
                } else {
                    f3 = -9999.0f;
                }
                this.f10461f = BitmapDescriptorFactory.HUE_RED;
            }
            if ((f2 == -9999.0f && f3 == -9999.0f) ? false : true) {
                aa.this.f10447a.getGLMapEngine().startPivotZoomRotateAnim(engineIDWithGestureInfo, this.f10459d, f2, (int) f3, 500);
            }
        }
    }

    private class f extends p.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        EAMapPlatformGestureInfo f10464a;

        private f() {
            this.f10464a = new EAMapPlatformGestureInfo();
        }

        @Override // com.amap.api.mapcore.util.p.a
        public void a(p pVar) {
            try {
                if (aa.this.f10447a.getUiSettings().isZoomGesturesEnabled()) {
                    float f2 = 10;
                    if (Math.abs(pVar.n()) > f2 || Math.abs(pVar.o()) > f2 || pVar.f() >= 200) {
                        return;
                    }
                    aa.this.p = true;
                    EAMapPlatformGestureInfo eAMapPlatformGestureInfo = this.f10464a;
                    eAMapPlatformGestureInfo.mGestureState = 2;
                    eAMapPlatformGestureInfo.mGestureType = 2;
                    eAMapPlatformGestureInfo.mLocation = new float[]{pVar.h().getX(), pVar.h().getY()};
                    int engineIDWithGestureInfo = aa.this.f10447a.getEngineIDWithGestureInfo(this.f10464a);
                    aa.this.f10447a.setGestureStatus(engineIDWithGestureInfo, 4);
                    aa.this.f10447a.zoomOut(engineIDWithGestureInfo);
                }
            } catch (Throwable th) {
                e6.r(th, "GLMapGestrureDetector", "onZoomOut");
                th.printStackTrace();
            }
        }
    }

    public aa(IAMapDelegate iAMapDelegate) {
        this.b = iAMapDelegate.getContext();
        this.f10447a = iAMapDelegate;
        b bVar = new b();
        GestureDetector gestureDetector = new GestureDetector(this.b, bVar, this.t);
        this.c = gestureDetector;
        gestureDetector.setOnDoubleTapListener(bVar);
        this.f10448d = new o(this.b, new e());
        this.f10449e = new m(this.b, new d());
        this.f10450f = new l(this.b, new c());
        this.f10451g = new p(this.b, new f());
    }

    static /* synthetic */ int q(aa aaVar) {
        int i = aaVar.j;
        aaVar.j = i + 1;
        return i;
    }

    static /* synthetic */ int r(aa aaVar) {
        int i = aaVar.k;
        aaVar.k = i + 1;
        return i;
    }

    static /* synthetic */ int v(aa aaVar) {
        int i = aaVar.i;
        aaVar.i = i + 1;
        return i;
    }

    static /* synthetic */ int w(aa aaVar) {
        int i = aaVar.l;
        aaVar.l = i + 1;
        return i;
    }

    public void b() {
        this.i = 0;
        this.k = 0;
        this.j = 0;
        this.l = 0;
        this.m = 0;
    }

    public void c(int i, int i2) {
        this.q = i;
        this.r = i2;
        o oVar = this.f10448d;
        if (oVar != null) {
            oVar.d(i, i2);
        }
        m mVar = this.f10449e;
        if (mVar != null) {
            mVar.b(i, i2);
        }
        l lVar = this.f10450f;
        if (lVar != null) {
            lVar.b(i, i2);
        }
        p pVar = this.f10451g;
        if (pVar != null) {
            pVar.b(i, i2);
        }
    }

    public void d(AMapGestureListener aMapGestureListener) {
        this.s = aMapGestureListener;
    }

    public boolean e(MotionEvent motionEvent) {
        if (this.m < motionEvent.getPointerCount()) {
            this.m = motionEvent.getPointerCount();
        }
        if ((motionEvent.getAction() & 255) == 0) {
            this.o = false;
            this.p = false;
        }
        if (motionEvent.getAction() == 6 && motionEvent.getPointerCount() > 0) {
            this.o = true;
        }
        if (this.n && this.m >= 2) {
            this.n = false;
        }
        try {
            int[] iArr = {0, 0};
            IAMapDelegate iAMapDelegate = this.f10447a;
            if (iAMapDelegate != null && iAMapDelegate.getGLMapView() != null) {
                this.f10447a.getGLMapView().getLocationOnScreen(iArr);
            }
            if (this.s != null) {
                if (motionEvent.getAction() == 0) {
                    this.s.onDown(motionEvent.getX(), motionEvent.getY());
                } else if (motionEvent.getAction() == 1) {
                    this.s.onUp(motionEvent.getX(), motionEvent.getY());
                }
            }
            this.c.onTouchEvent(motionEvent);
            boolean zI = this.f10450f.i(motionEvent, iArr[0], iArr[1]);
            if (this.f10452h && this.l > 0) {
                return zI;
            }
            this.f10451g.i(motionEvent, iArr[0], iArr[1]);
            if (this.n) {
                return zI;
            }
            this.f10448d.e(motionEvent);
            return this.f10449e.i(motionEvent, iArr[0], iArr[1]);
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public int g() {
        return this.q;
    }

    public int j() {
        return this.r;
    }

    public void m() {
        Handler handler = this.t;
        if (handler != null) {
            handler.removeCallbacks(null);
            this.t = null;
        }
    }
}
