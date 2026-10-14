package androidx.core.view;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes.dex */
public final class GestureDetectorCompat {
    private final a mImpl;

    interface a {
        void a(GestureDetector.OnDoubleTapListener onDoubleTapListener);

        void b(boolean z);

        boolean c();

        boolean onTouchEvent(MotionEvent motionEvent);
    }

    static class b implements a {
        private static final int v = ViewConfiguration.getTapTimeout();
        private static final int w = ViewConfiguration.getDoubleTapTimeout();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f1153a;
        private int b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f1154d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Handler f1155e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final GestureDetector.OnGestureListener f1156f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        GestureDetector.OnDoubleTapListener f1157g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        boolean f1158h;
        boolean i;
        private boolean j;
        private boolean k;
        private boolean l;
        MotionEvent m;
        private MotionEvent n;
        private boolean o;
        private float p;
        private float q;
        private float r;
        private float s;
        private boolean t;
        private VelocityTracker u;

        b(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            if (handler != null) {
                this.f1155e = new a(handler);
            } else {
                this.f1155e = new a();
            }
            this.f1156f = onGestureListener;
            if (onGestureListener instanceof GestureDetector.OnDoubleTapListener) {
                a((GestureDetector.OnDoubleTapListener) onGestureListener);
            }
            g(context);
        }

        private void d() {
            this.f1155e.removeMessages(1);
            this.f1155e.removeMessages(2);
            this.f1155e.removeMessages(3);
            this.u.recycle();
            this.u = null;
            this.o = false;
            this.f1158h = false;
            this.k = false;
            this.l = false;
            this.i = false;
            if (this.j) {
                this.j = false;
            }
        }

        private void e() {
            this.f1155e.removeMessages(1);
            this.f1155e.removeMessages(2);
            this.f1155e.removeMessages(3);
            this.o = false;
            this.k = false;
            this.l = false;
            this.i = false;
            if (this.j) {
                this.j = false;
            }
        }

        private void g(Context context) {
            if (context == null) {
                throw new IllegalArgumentException("Context must not be null");
            }
            if (this.f1156f == null) {
                throw new IllegalArgumentException("OnGestureListener must not be null");
            }
            this.t = true;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            int scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
            int scaledDoubleTapSlop = viewConfiguration.getScaledDoubleTapSlop();
            this.c = viewConfiguration.getScaledMinimumFlingVelocity();
            this.f1154d = viewConfiguration.getScaledMaximumFlingVelocity();
            this.f1153a = scaledTouchSlop * scaledTouchSlop;
            this.b = scaledDoubleTapSlop * scaledDoubleTapSlop;
        }

        private boolean h(MotionEvent motionEvent, MotionEvent motionEvent2, MotionEvent motionEvent3) {
            if (!this.l || motionEvent3.getEventTime() - motionEvent2.getEventTime() > w) {
                return false;
            }
            int x = ((int) motionEvent.getX()) - ((int) motionEvent3.getX());
            int y = ((int) motionEvent.getY()) - ((int) motionEvent3.getY());
            return (x * x) + (y * y) < this.b;
        }

        @Override // androidx.core.view.GestureDetectorCompat.a
        public void a(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
            this.f1157g = onDoubleTapListener;
        }

        @Override // androidx.core.view.GestureDetectorCompat.a
        public void b(boolean z) {
            this.t = z;
        }

        @Override // androidx.core.view.GestureDetectorCompat.a
        public boolean c() {
            return this.t;
        }

        void f() {
            this.f1155e.removeMessages(3);
            this.i = false;
            this.j = true;
            this.f1156f.onLongPress(this.m);
        }

        @Override // androidx.core.view.GestureDetectorCompat.a
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean zOnDoubleTap;
            MotionEvent motionEvent2;
            boolean zOnFling;
            GestureDetector.OnDoubleTapListener onDoubleTapListener;
            int action = motionEvent.getAction();
            if (this.u == null) {
                this.u = VelocityTracker.obtain();
            }
            this.u.addMovement(motionEvent);
            int i = action & 255;
            boolean z = i == 6;
            int actionIndex = z ? motionEvent.getActionIndex() : -1;
            int pointerCount = motionEvent.getPointerCount();
            float x = BitmapDescriptorFactory.HUE_RED;
            float y = BitmapDescriptorFactory.HUE_RED;
            for (int i2 = 0; i2 < pointerCount; i2++) {
                if (actionIndex != i2) {
                    x += motionEvent.getX(i2);
                    y += motionEvent.getY(i2);
                }
            }
            float f2 = z ? pointerCount - 1 : pointerCount;
            float f3 = x / f2;
            float f4 = y / f2;
            if (i == 0) {
                if (this.f1157g == null) {
                    zOnDoubleTap = false;
                } else {
                    boolean zHasMessages = this.f1155e.hasMessages(3);
                    if (zHasMessages) {
                        this.f1155e.removeMessages(3);
                    }
                    MotionEvent motionEvent3 = this.m;
                    if (motionEvent3 == null || (motionEvent2 = this.n) == null || !zHasMessages || !h(motionEvent3, motionEvent2, motionEvent)) {
                        this.f1155e.sendEmptyMessageDelayed(3, w);
                        zOnDoubleTap = false;
                    } else {
                        this.o = true;
                        zOnDoubleTap = this.f1157g.onDoubleTap(this.m) | false | this.f1157g.onDoubleTapEvent(motionEvent);
                    }
                }
                this.p = f3;
                this.r = f3;
                this.q = f4;
                this.s = f4;
                MotionEvent motionEvent4 = this.m;
                if (motionEvent4 != null) {
                    motionEvent4.recycle();
                }
                this.m = MotionEvent.obtain(motionEvent);
                this.k = true;
                this.l = true;
                this.f1158h = true;
                this.j = false;
                this.i = false;
                if (this.t) {
                    this.f1155e.removeMessages(2);
                    this.f1155e.sendEmptyMessageAtTime(2, this.m.getDownTime() + ((long) v) + ((long) ViewConfiguration.getLongPressTimeout()));
                }
                this.f1155e.sendEmptyMessageAtTime(1, this.m.getDownTime() + ((long) v));
                return zOnDoubleTap | this.f1156f.onDown(motionEvent);
            }
            if (i == 1) {
                this.f1158h = false;
                MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                if (this.o) {
                    zOnFling = this.f1157g.onDoubleTapEvent(motionEvent) | false;
                } else {
                    if (this.j) {
                        this.f1155e.removeMessages(3);
                        this.j = false;
                    } else if (this.k) {
                        boolean zOnSingleTapUp = this.f1156f.onSingleTapUp(motionEvent);
                        if (this.i && (onDoubleTapListener = this.f1157g) != null) {
                            onDoubleTapListener.onSingleTapConfirmed(motionEvent);
                        }
                        zOnFling = zOnSingleTapUp;
                    } else {
                        VelocityTracker velocityTracker = this.u;
                        int pointerId = motionEvent.getPointerId(0);
                        velocityTracker.computeCurrentVelocity(1000, this.f1154d);
                        float yVelocity = velocityTracker.getYVelocity(pointerId);
                        float xVelocity = velocityTracker.getXVelocity(pointerId);
                        if (Math.abs(yVelocity) > this.c || Math.abs(xVelocity) > this.c) {
                            zOnFling = this.f1156f.onFling(this.m, motionEvent, xVelocity, yVelocity);
                        }
                    }
                    zOnFling = false;
                }
                MotionEvent motionEvent5 = this.n;
                if (motionEvent5 != null) {
                    motionEvent5.recycle();
                }
                this.n = motionEventObtain;
                VelocityTracker velocityTracker2 = this.u;
                if (velocityTracker2 != null) {
                    velocityTracker2.recycle();
                    this.u = null;
                }
                this.o = false;
                this.i = false;
                this.f1155e.removeMessages(1);
                this.f1155e.removeMessages(2);
            } else {
                if (i != 2) {
                    if (i == 3) {
                        d();
                        return false;
                    }
                    if (i == 5) {
                        this.p = f3;
                        this.r = f3;
                        this.q = f4;
                        this.s = f4;
                        e();
                        return false;
                    }
                    if (i != 6) {
                        return false;
                    }
                    this.p = f3;
                    this.r = f3;
                    this.q = f4;
                    this.s = f4;
                    this.u.computeCurrentVelocity(1000, this.f1154d);
                    int actionIndex2 = motionEvent.getActionIndex();
                    int pointerId2 = motionEvent.getPointerId(actionIndex2);
                    float xVelocity2 = this.u.getXVelocity(pointerId2);
                    float yVelocity2 = this.u.getYVelocity(pointerId2);
                    for (int i3 = 0; i3 < pointerCount; i3++) {
                        if (i3 != actionIndex2) {
                            int pointerId3 = motionEvent.getPointerId(i3);
                            if ((this.u.getXVelocity(pointerId3) * xVelocity2) + (this.u.getYVelocity(pointerId3) * yVelocity2) < BitmapDescriptorFactory.HUE_RED) {
                                this.u.clear();
                                return false;
                            }
                        }
                    }
                    return false;
                }
                if (this.j) {
                    return false;
                }
                float f5 = this.p - f3;
                float f6 = this.q - f4;
                if (this.o) {
                    return false | this.f1157g.onDoubleTapEvent(motionEvent);
                }
                if (!this.k) {
                    if (Math.abs(f5) < 1.0f && Math.abs(f6) < 1.0f) {
                        return false;
                    }
                    boolean zOnScroll = this.f1156f.onScroll(this.m, motionEvent, f5, f6);
                    this.p = f3;
                    this.q = f4;
                    return zOnScroll;
                }
                int i4 = (int) (f3 - this.r);
                int i5 = (int) (f4 - this.s);
                int i6 = (i4 * i4) + (i5 * i5);
                if (i6 > this.f1153a) {
                    zOnFling = this.f1156f.onScroll(this.m, motionEvent, f5, f6);
                    this.p = f3;
                    this.q = f4;
                    this.k = false;
                    this.f1155e.removeMessages(3);
                    this.f1155e.removeMessages(1);
                    this.f1155e.removeMessages(2);
                } else {
                    zOnFling = false;
                }
                if (i6 > this.f1153a) {
                    this.l = false;
                }
            }
            return zOnFling;
        }

        private class a extends Handler {
            a() {
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i = message.what;
                if (i == 1) {
                    b bVar = b.this;
                    bVar.f1156f.onShowPress(bVar.m);
                    return;
                }
                if (i == 2) {
                    b.this.f();
                    return;
                }
                if (i != 3) {
                    throw new RuntimeException("Unknown message " + message);
                }
                b bVar2 = b.this;
                GestureDetector.OnDoubleTapListener onDoubleTapListener = bVar2.f1157g;
                if (onDoubleTapListener != null) {
                    if (bVar2.f1158h) {
                        bVar2.i = true;
                    } else {
                        onDoubleTapListener.onSingleTapConfirmed(bVar2.m);
                    }
                }
            }

            a(Handler handler) {
                super(handler.getLooper());
            }
        }
    }

    static class c implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final GestureDetector f1160a;

        c(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            this.f1160a = new GestureDetector(context, onGestureListener, handler);
        }

        @Override // androidx.core.view.GestureDetectorCompat.a
        public void a(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
            this.f1160a.setOnDoubleTapListener(onDoubleTapListener);
        }

        @Override // androidx.core.view.GestureDetectorCompat.a
        public void b(boolean z) {
            this.f1160a.setIsLongpressEnabled(z);
        }

        @Override // androidx.core.view.GestureDetectorCompat.a
        public boolean c() {
            return this.f1160a.isLongpressEnabled();
        }

        @Override // androidx.core.view.GestureDetectorCompat.a
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return this.f1160a.onTouchEvent(motionEvent);
        }
    }

    public GestureDetectorCompat(Context context, GestureDetector.OnGestureListener onGestureListener) {
        this(context, onGestureListener, null);
    }

    public boolean isLongpressEnabled() {
        return this.mImpl.c();
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.mImpl.onTouchEvent(motionEvent);
    }

    public void setIsLongpressEnabled(boolean z) {
        this.mImpl.b(z);
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.mImpl.a(onDoubleTapListener);
    }

    public GestureDetectorCompat(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
        if (Build.VERSION.SDK_INT > 17) {
            this.mImpl = new c(context, onGestureListener, handler);
        } else {
            this.mImpl = new b(context, onGestureListener, handler);
        }
    }
}
