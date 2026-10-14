package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes5.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f11014a;
    private final a b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MotionEvent f11015d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private MotionEvent f11016e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f11017f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f11018g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f11019h;
    private float i;
    private float j;
    private float k;
    private float l;
    private float m;
    private float n;
    private float o;
    private float p;
    private long q;
    private final float r;
    private float s;
    private float t;
    private boolean u;
    private boolean v;
    private int w;
    private int x;
    private boolean y;
    private int z = 0;
    private int A = 0;

    public interface a {
        boolean a(n nVar);

        void b(n nVar);

        boolean c(n nVar);
    }

    public n(Context context, a aVar) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f11014a = context;
        this.b = aVar;
        this.r = viewConfiguration.getScaledEdgeSlop();
    }

    private static float a(MotionEvent motionEvent, int i) {
        if (i < 0) {
            return Float.MIN_VALUE;
        }
        if (i == 0) {
            return motionEvent.getRawX();
        }
        return motionEvent.getX(i) + (motionEvent.getRawX() - motionEvent.getX());
    }

    private int b(MotionEvent motionEvent, int i, int i2) {
        int pointerCount = motionEvent.getPointerCount();
        int iFindPointerIndex = motionEvent.findPointerIndex(i);
        for (int i3 = 0; i3 < pointerCount; i3++) {
            if (i3 != i2 && i3 != iFindPointerIndex) {
                float f2 = this.r;
                float f3 = this.s;
                float f4 = this.t;
                float fA = a(motionEvent, i3);
                float fG = g(motionEvent, i3);
                if (fA >= f2 && fG >= f2 && fA <= f3 && fG <= f4) {
                    return i3;
                }
            }
        }
        return -1;
    }

    private static float g(MotionEvent motionEvent, int i) {
        if (i < 0) {
            return Float.MIN_VALUE;
        }
        if (i == 0) {
            return motionEvent.getRawY();
        }
        return motionEvent.getY(i) + (motionEvent.getRawY() - motionEvent.getY());
    }

    private void h(MotionEvent motionEvent) {
        MotionEvent motionEvent2 = this.f11016e;
        if (motionEvent2 != null) {
            motionEvent2.recycle();
        }
        this.f11016e = MotionEvent.obtain(motionEvent);
        this.l = -1.0f;
        this.m = -1.0f;
        this.n = -1.0f;
        MotionEvent motionEvent3 = this.f11015d;
        int iFindPointerIndex = motionEvent3.findPointerIndex(this.w);
        int iFindPointerIndex2 = motionEvent3.findPointerIndex(this.x);
        int iFindPointerIndex3 = motionEvent.findPointerIndex(this.w);
        int iFindPointerIndex4 = motionEvent.findPointerIndex(this.x);
        if (iFindPointerIndex < 0 || iFindPointerIndex2 < 0 || iFindPointerIndex3 < 0 || iFindPointerIndex4 < 0) {
            this.v = true;
            if (this.c) {
                this.b.b(this);
                return;
            }
            return;
        }
        float x = motionEvent3.getX(iFindPointerIndex);
        float y = motionEvent3.getY(iFindPointerIndex);
        float x2 = motionEvent3.getX(iFindPointerIndex2);
        float y2 = motionEvent3.getY(iFindPointerIndex2);
        float x3 = motionEvent.getX(iFindPointerIndex3);
        float y3 = motionEvent.getY(iFindPointerIndex3);
        float x4 = motionEvent.getX(iFindPointerIndex4) - x3;
        float y4 = motionEvent.getY(iFindPointerIndex4) - y3;
        this.f11019h = x2 - x;
        this.i = y2 - y;
        this.j = x4;
        this.k = y4;
        this.f11017f = x3 + (x4 * 0.5f);
        this.f11018g = y3 + (y4 * 0.5f);
        this.q = motionEvent.getEventTime() - motionEvent3.getEventTime();
        this.o = motionEvent.getPressure(iFindPointerIndex3) + motionEvent.getPressure(iFindPointerIndex4);
        this.p = motionEvent3.getPressure(iFindPointerIndex) + motionEvent3.getPressure(iFindPointerIndex2);
    }

    private void r() {
        MotionEvent motionEvent = this.f11015d;
        if (motionEvent != null) {
            motionEvent.recycle();
            this.f11015d = null;
        }
        MotionEvent motionEvent2 = this.f11016e;
        if (motionEvent2 != null) {
            motionEvent2.recycle();
            this.f11016e = null;
        }
        this.u = false;
        this.c = false;
        this.w = -1;
        this.x = -1;
        this.v = false;
    }

    public MotionEvent c() {
        return this.f11016e;
    }

    public void d(int i, int i2) {
        this.z = i;
        this.A = i2;
    }

    /* JADX WARN: Code duplicated, block: B:163:0x02c9  */
    public boolean e(MotionEvent motionEvent) {
        int iB;
        int iB2;
        int iFindPointerIndex;
        int iFindPointerIndex2;
        int i;
        int iB3;
        int i2 = Build.VERSION.SDK_INT;
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            r();
        }
        boolean z = false;
        if (this.v) {
            return false;
        }
        if (this.c) {
            if (action == 1) {
                r();
            } else if (action == 2) {
                h(motionEvent);
                if (this.o / this.p > 0.67f && this.b.a(this)) {
                    this.f11015d.recycle();
                    this.f11015d = MotionEvent.obtain(motionEvent);
                }
            } else if (action == 3) {
                this.b.b(this);
                r();
            } else if (action == 5) {
                this.b.b(this);
                int i3 = this.w;
                int i4 = this.x;
                r();
                this.f11015d = MotionEvent.obtain(motionEvent);
                if (!this.y) {
                    i3 = i4;
                }
                this.w = i3;
                if (i2 >= 8) {
                    this.x = motionEvent.getPointerId(motionEvent.getActionIndex());
                } else {
                    this.x = motionEvent.getPointerId(1);
                }
                this.y = false;
                int iFindPointerIndex3 = motionEvent.findPointerIndex(this.w);
                if (iFindPointerIndex3 < 0 || this.w == this.x) {
                    int i5 = this.w;
                    int i6 = this.x;
                    this.w = motionEvent.getPointerId(b(motionEvent, i5 != i6 ? i6 : -1, iFindPointerIndex3));
                }
                h(motionEvent);
                this.c = this.b.c(this);
            } else if (action == 6) {
                int pointerCount = motionEvent.getPointerCount();
                int actionIndex = i2 >= 8 ? motionEvent.getActionIndex() : 0;
                int pointerId = motionEvent.getPointerId(actionIndex);
                if (pointerCount > 2) {
                    int i7 = this.w;
                    if (pointerId == i7) {
                        int iB4 = b(motionEvent, this.x, actionIndex);
                        if (iB4 >= 0) {
                            this.b.b(this);
                            this.w = motionEvent.getPointerId(iB4);
                            this.y = true;
                            this.f11015d = MotionEvent.obtain(motionEvent);
                            h(motionEvent);
                            this.c = this.b.c(this);
                        } else {
                            z = true;
                        }
                    } else if (pointerId == this.x) {
                        int iB5 = b(motionEvent, i7, actionIndex);
                        if (iB5 >= 0) {
                            this.b.b(this);
                            this.x = motionEvent.getPointerId(iB5);
                            this.y = false;
                            this.f11015d = MotionEvent.obtain(motionEvent);
                            h(motionEvent);
                            this.c = this.b.c(this);
                        } else {
                            z = true;
                        }
                    }
                    this.f11015d.recycle();
                    this.f11015d = MotionEvent.obtain(motionEvent);
                    h(motionEvent);
                } else {
                    z = true;
                }
                if (z) {
                    h(motionEvent);
                    int i8 = this.w;
                    if (pointerId == i8) {
                        i8 = this.x;
                    }
                    int iFindPointerIndex4 = motionEvent.findPointerIndex(i8);
                    this.f11017f = motionEvent.getX(iFindPointerIndex4);
                    this.f11018g = motionEvent.getY(iFindPointerIndex4);
                    this.b.b(this);
                    r();
                    this.w = i8;
                    this.y = true;
                }
            }
        } else if (action == 0) {
            this.w = motionEvent.getPointerId(0);
            this.y = true;
        } else if (action == 1) {
            r();
        } else if (action != 2) {
            if (action == 5) {
                int i9 = this.z;
                if (i9 == 0 || (i = this.A) == 0) {
                    DisplayMetrics displayMetrics = this.f11014a.getResources().getDisplayMetrics();
                    float f2 = displayMetrics.widthPixels;
                    float f3 = this.r;
                    this.s = f2 - f3;
                    this.t = displayMetrics.heightPixels - f3;
                } else {
                    float f4 = this.r;
                    this.s = i9 - f4;
                    this.t = i - f4;
                }
                MotionEvent motionEvent2 = this.f11015d;
                if (motionEvent2 != null) {
                    motionEvent2.recycle();
                }
                this.f11015d = MotionEvent.obtain(motionEvent);
                this.q = 0L;
                if (i2 >= 8) {
                    iFindPointerIndex = motionEvent.getActionIndex();
                    iFindPointerIndex2 = motionEvent.findPointerIndex(this.w);
                    int pointerId2 = motionEvent.getPointerId(iFindPointerIndex);
                    this.x = pointerId2;
                    if (iFindPointerIndex2 < 0 || iFindPointerIndex2 == iFindPointerIndex) {
                        iFindPointerIndex2 = b(motionEvent, iFindPointerIndex2 != iFindPointerIndex ? pointerId2 : -1, iFindPointerIndex2);
                        this.w = motionEvent.getPointerId(iFindPointerIndex2);
                    }
                } else if (motionEvent.getPointerCount() > 0) {
                    iFindPointerIndex = motionEvent.findPointerIndex(1);
                    iFindPointerIndex2 = motionEvent.findPointerIndex(this.w);
                    this.x = motionEvent.getPointerId(iFindPointerIndex);
                } else {
                    iFindPointerIndex = 0;
                    iFindPointerIndex2 = 0;
                }
                this.y = false;
                h(motionEvent);
                float f5 = this.r;
                float f6 = this.s;
                float f7 = this.t;
                float fA = a(motionEvent, iFindPointerIndex2);
                float fG = g(motionEvent, iFindPointerIndex2);
                float fA2 = a(motionEvent, iFindPointerIndex);
                float fG2 = g(motionEvent, iFindPointerIndex);
                boolean z2 = fA < f5 || fG < f5 || fA > f6 || fG > f7;
                boolean z3 = fA2 < f5 || fG2 < f5 || fA2 > f6 || fG2 > f7;
                if (z2 && z3) {
                    this.f11017f = -1.0f;
                    this.f11018g = -1.0f;
                    this.u = true;
                } else if (z2) {
                    this.f11017f = motionEvent.getX(iFindPointerIndex);
                    this.f11018g = motionEvent.getY(iFindPointerIndex);
                    this.u = true;
                } else if (z3) {
                    this.f11017f = motionEvent.getX(iFindPointerIndex2);
                    this.f11018g = motionEvent.getY(iFindPointerIndex2);
                    this.u = true;
                } else {
                    this.u = false;
                    this.c = this.b.c(this);
                }
            } else if (action == 6 && this.u) {
                int pointerCount2 = motionEvent.getPointerCount();
                int actionIndex2 = i2 >= 8 ? motionEvent.getActionIndex() : 0;
                int pointerId3 = motionEvent.getPointerId(actionIndex2);
                if (pointerCount2 > 2) {
                    int i10 = this.w;
                    if (pointerId3 == i10) {
                        int iB6 = b(motionEvent, this.x, actionIndex2);
                        if (iB6 >= 0) {
                            this.w = motionEvent.getPointerId(iB6);
                        }
                    } else if (pointerId3 == this.x && (iB3 = b(motionEvent, i10, actionIndex2)) >= 0) {
                        this.x = motionEvent.getPointerId(iB3);
                    }
                } else {
                    int i11 = this.w;
                    if (pointerId3 == i11) {
                        i11 = this.x;
                    }
                    int iFindPointerIndex5 = motionEvent.findPointerIndex(i11);
                    if (iFindPointerIndex5 < 0) {
                        this.v = true;
                        if (this.c) {
                            this.b.b(this);
                        }
                        return false;
                    }
                    this.w = motionEvent.getPointerId(iFindPointerIndex5);
                    this.y = true;
                    this.x = -1;
                    this.f11017f = motionEvent.getX(iFindPointerIndex5);
                    this.f11018g = motionEvent.getY(iFindPointerIndex5);
                }
            }
        } else if (this.u) {
            float f8 = this.r;
            float f9 = this.s;
            float f10 = this.t;
            int iFindPointerIndex6 = motionEvent.findPointerIndex(this.w);
            int iFindPointerIndex7 = motionEvent.findPointerIndex(this.x);
            float fA3 = a(motionEvent, iFindPointerIndex6);
            float fG3 = g(motionEvent, iFindPointerIndex6);
            float fA4 = a(motionEvent, iFindPointerIndex7);
            float fG4 = g(motionEvent, iFindPointerIndex7);
            boolean z4 = fA3 < f8 || fG3 < f8 || fA3 > f9 || fG3 > f10;
            boolean z5 = fA4 < f8 || fG4 < f8 || fA4 > f9 || fG4 > f10;
            if (z4 && (iB2 = b(motionEvent, this.x, iFindPointerIndex6)) >= 0) {
                this.w = motionEvent.getPointerId(iB2);
                a(motionEvent, iB2);
                g(motionEvent, iB2);
                iFindPointerIndex6 = iB2;
                z4 = false;
            }
            if (z5 && (iB = b(motionEvent, this.w, iFindPointerIndex7)) >= 0) {
                this.x = motionEvent.getPointerId(iB);
                a(motionEvent, iB);
                g(motionEvent, iB);
                iFindPointerIndex7 = iB;
                z5 = false;
            }
            if (z4 && z5) {
                this.f11017f = -1.0f;
                this.f11018g = -1.0f;
            } else if (z4) {
                this.f11017f = motionEvent.getX(iFindPointerIndex7);
                this.f11018g = motionEvent.getY(iFindPointerIndex7);
            } else if (z5) {
                this.f11017f = motionEvent.getX(iFindPointerIndex6);
                this.f11018g = motionEvent.getY(iFindPointerIndex6);
            } else {
                this.u = false;
                this.c = this.b.c(this);
            }
        }
        return true;
    }

    public float f() {
        return this.f11017f;
    }

    public float i() {
        return this.f11018g;
    }

    public float j() {
        if (this.l == -1.0f) {
            float f2 = this.j;
            float f3 = this.k;
            this.l = (float) Math.sqrt((f2 * f2) + (f3 * f3));
        }
        return this.l;
    }

    public float k() {
        return this.j;
    }

    public float l() {
        return this.k;
    }

    public float m() {
        if (this.m == -1.0f) {
            float f2 = this.f11019h;
            float f3 = this.i;
            this.m = (float) Math.sqrt((f2 * f2) + (f3 * f3));
        }
        return this.m;
    }

    public float n() {
        return this.f11019h;
    }

    public float o() {
        return this.i;
    }

    public float p() {
        if (this.n == -1.0f) {
            this.n = j() / m();
        }
        return this.n;
    }

    public long q() {
        return this.q;
    }
}
