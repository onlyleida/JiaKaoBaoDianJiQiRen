package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.R;
import androidx.core.widget.NestedScrollView;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
class r {
    private static final float[][] G = {new float[]{0.5f, BitmapDescriptorFactory.HUE_RED}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.5f}, new float[]{1.0f, 0.5f}, new float[]{0.5f, 1.0f}, new float[]{0.5f, 0.5f}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.5f}, new float[]{1.0f, 0.5f}};
    private static final float[][] H = {new float[]{BitmapDescriptorFactory.HUE_RED, -1.0f}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, new float[]{-1.0f, BitmapDescriptorFactory.HUE_RED}, new float[]{1.0f, BitmapDescriptorFactory.HUE_RED}, new float[]{-1.0f, BitmapDescriptorFactory.HUE_RED}, new float[]{1.0f, BitmapDescriptorFactory.HUE_RED}};
    private float r;
    private float s;
    private final MotionLayout t;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f803a = 0;
    private int b = 0;
    private int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f804d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f805e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f806f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f807g = 0.5f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f808h = 0.5f;
    float i = 0.5f;
    float j = 0.5f;
    private int k = -1;
    boolean l = false;
    private float m = BitmapDescriptorFactory.HUE_RED;
    private float n = 1.0f;
    private boolean o = false;
    private float[] p = new float[2];
    private int[] q = new int[2];
    private float u = 4.0f;
    private float v = 1.2f;
    private boolean w = true;
    private float x = 1.0f;
    private int y = 0;
    private float z = 10.0f;
    private float A = 10.0f;
    private float B = 1.0f;
    private float C = Float.NaN;
    private float D = Float.NaN;
    private int E = 0;
    private int F = 0;

    class a implements View.OnTouchListener {
        a(r rVar) {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return false;
        }
    }

    class b implements NestedScrollView.b {
        b(r rVar) {
        }

        @Override // androidx.core.widget.NestedScrollView.b
        public void a(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
        }
    }

    r(Context context, MotionLayout motionLayout, XmlPullParser xmlPullParser) {
        this.t = motionLayout;
        c(context, Xml.asAttributeSet(xmlPullParser));
    }

    private void b(TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            if (index == R.styleable.OnSwipe_touchAnchorId) {
                this.f804d = typedArray.getResourceId(index, this.f804d);
            } else if (index == R.styleable.OnSwipe_touchAnchorSide) {
                int i2 = typedArray.getInt(index, this.f803a);
                this.f803a = i2;
                float[][] fArr = G;
                this.f808h = fArr[i2][0];
                this.f807g = fArr[i2][1];
            } else if (index == R.styleable.OnSwipe_dragDirection) {
                int i3 = typedArray.getInt(index, this.b);
                this.b = i3;
                float[][] fArr2 = H;
                if (i3 < fArr2.length) {
                    this.m = fArr2[i3][0];
                    this.n = fArr2[i3][1];
                } else {
                    this.n = Float.NaN;
                    this.m = Float.NaN;
                    this.l = true;
                }
            } else if (index == R.styleable.OnSwipe_maxVelocity) {
                this.u = typedArray.getFloat(index, this.u);
            } else if (index == R.styleable.OnSwipe_maxAcceleration) {
                this.v = typedArray.getFloat(index, this.v);
            } else if (index == R.styleable.OnSwipe_moveWhenScrollAtTop) {
                this.w = typedArray.getBoolean(index, this.w);
            } else if (index == R.styleable.OnSwipe_dragScale) {
                this.x = typedArray.getFloat(index, this.x);
            } else if (index == R.styleable.OnSwipe_dragThreshold) {
                this.z = typedArray.getFloat(index, this.z);
            } else if (index == R.styleable.OnSwipe_touchRegionId) {
                this.f805e = typedArray.getResourceId(index, this.f805e);
            } else if (index == R.styleable.OnSwipe_onTouchUp) {
                this.c = typedArray.getInt(index, this.c);
            } else if (index == R.styleable.OnSwipe_nestedScrollFlags) {
                this.y = typedArray.getInteger(index, 0);
            } else if (index == R.styleable.OnSwipe_limitBoundsTo) {
                this.f806f = typedArray.getResourceId(index, 0);
            } else if (index == R.styleable.OnSwipe_rotationCenterId) {
                this.k = typedArray.getResourceId(index, this.k);
            } else if (index == R.styleable.OnSwipe_springDamping) {
                this.A = typedArray.getFloat(index, this.A);
            } else if (index == R.styleable.OnSwipe_springMass) {
                this.B = typedArray.getFloat(index, this.B);
            } else if (index == R.styleable.OnSwipe_springStiffness) {
                this.C = typedArray.getFloat(index, this.C);
            } else if (index == R.styleable.OnSwipe_springStopThreshold) {
                this.D = typedArray.getFloat(index, this.D);
            } else if (index == R.styleable.OnSwipe_springBoundary) {
                this.E = typedArray.getInt(index, this.E);
            } else if (index == R.styleable.OnSwipe_autoCompleteMode) {
                this.F = typedArray.getInt(index, this.F);
            }
        }
    }

    private void c(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OnSwipe);
        b(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
    }

    float a(float f2, float f3) {
        return (f2 * this.m) + (f3 * this.n);
    }

    public int d() {
        return this.F;
    }

    public int e() {
        return this.y;
    }

    RectF f(ViewGroup viewGroup, RectF rectF) {
        View viewFindViewById;
        int i = this.f806f;
        if (i == -1 || (viewFindViewById = viewGroup.findViewById(i)) == null) {
            return null;
        }
        rectF.set(viewFindViewById.getLeft(), viewFindViewById.getTop(), viewFindViewById.getRight(), viewFindViewById.getBottom());
        return rectF;
    }

    float g() {
        return this.v;
    }

    public float h() {
        return this.u;
    }

    boolean i() {
        return this.w;
    }

    float j(float f2, float f3) {
        this.t.l(this.f804d, this.t.getProgress(), this.f808h, this.f807g, this.p);
        float f4 = this.m;
        if (f4 != BitmapDescriptorFactory.HUE_RED) {
            float[] fArr = this.p;
            if (fArr[0] == BitmapDescriptorFactory.HUE_RED) {
                fArr[0] = 1.0E-7f;
            }
            return (f2 * f4) / fArr[0];
        }
        float[] fArr2 = this.p;
        if (fArr2[1] == BitmapDescriptorFactory.HUE_RED) {
            fArr2[1] = 1.0E-7f;
        }
        return (f3 * this.n) / fArr2[1];
    }

    public int k() {
        return this.E;
    }

    public float l() {
        return this.A;
    }

    public float m() {
        return this.B;
    }

    public float n() {
        return this.C;
    }

    public float o() {
        return this.D;
    }

    RectF p(ViewGroup viewGroup, RectF rectF) {
        View viewFindViewById;
        int i = this.f805e;
        if (i == -1 || (viewFindViewById = viewGroup.findViewById(i)) == null) {
            return null;
        }
        rectF.set(viewFindViewById.getLeft(), viewFindViewById.getTop(), viewFindViewById.getRight(), viewFindViewById.getBottom());
        return rectF;
    }

    int q() {
        return this.f805e;
    }

    void r(MotionEvent motionEvent, MotionLayout.h hVar, int i, q qVar) {
        int i2;
        if (this.l) {
            s(motionEvent, hVar, i, qVar);
            return;
        }
        hVar.a(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            this.r = motionEvent.getRawX();
            this.s = motionEvent.getRawY();
            this.o = false;
            return;
        }
        if (action != 1) {
            if (action != 2) {
                return;
            }
            float rawY = motionEvent.getRawY() - this.s;
            float rawX = motionEvent.getRawX() - this.r;
            if (Math.abs((this.m * rawX) + (this.n * rawY)) > this.z || this.o) {
                float progress = this.t.getProgress();
                if (!this.o) {
                    this.o = true;
                    this.t.setProgress(progress);
                }
                int i3 = this.f804d;
                if (i3 != -1) {
                    this.t.l(i3, progress, this.f808h, this.f807g, this.p);
                } else {
                    float fMin = Math.min(this.t.getWidth(), this.t.getHeight());
                    float[] fArr = this.p;
                    fArr[1] = this.n * fMin;
                    fArr[0] = fMin * this.m;
                }
                float f2 = this.m;
                float[] fArr2 = this.p;
                if (Math.abs(((f2 * fArr2[0]) + (this.n * fArr2[1])) * this.x) < 0.01d) {
                    float[] fArr3 = this.p;
                    fArr3[0] = 0.01f;
                    fArr3[1] = 0.01f;
                }
                float fMax = Math.max(Math.min(progress + (this.m != BitmapDescriptorFactory.HUE_RED ? rawX / this.p[0] : rawY / this.p[1]), 1.0f), BitmapDescriptorFactory.HUE_RED);
                if (this.c == 6) {
                    fMax = Math.max(fMax, 0.01f);
                }
                if (this.c == 7) {
                    fMax = Math.min(fMax, 0.99f);
                }
                float progress2 = this.t.getProgress();
                if (fMax != progress2) {
                    if (progress2 == BitmapDescriptorFactory.HUE_RED || progress2 == 1.0f) {
                        this.t.f(progress2 == BitmapDescriptorFactory.HUE_RED);
                    }
                    this.t.setProgress(fMax);
                    hVar.d(1000);
                    this.t.f731d = this.m != BitmapDescriptorFactory.HUE_RED ? hVar.c() / this.p[0] : hVar.b() / this.p[1];
                } else {
                    this.t.f731d = BitmapDescriptorFactory.HUE_RED;
                }
                this.r = motionEvent.getRawX();
                this.s = motionEvent.getRawY();
                return;
            }
            return;
        }
        this.o = false;
        hVar.d(1000);
        float fC = hVar.c();
        float fB = hVar.b();
        float progress3 = this.t.getProgress();
        int i4 = this.f804d;
        if (i4 != -1) {
            this.t.l(i4, progress3, this.f808h, this.f807g, this.p);
        } else {
            float fMin2 = Math.min(this.t.getWidth(), this.t.getHeight());
            float[] fArr4 = this.p;
            fArr4[1] = this.n * fMin2;
            fArr4[0] = fMin2 * this.m;
        }
        float f3 = this.m;
        float[] fArr5 = this.p;
        float f4 = fArr5[0];
        float f5 = fArr5[1];
        float fAbs = f3 != BitmapDescriptorFactory.HUE_RED ? fC / fArr5[0] : fB / fArr5[1];
        float f6 = !Float.isNaN(fAbs) ? (fAbs / 3.0f) + progress3 : progress3;
        if (f6 == BitmapDescriptorFactory.HUE_RED || f6 == 1.0f || (i2 = this.c) == 3) {
            if (BitmapDescriptorFactory.HUE_RED >= f6 || 1.0f <= f6) {
                this.t.setState(MotionLayout.TransitionState.FINISHED);
                return;
            }
            return;
        }
        float f7 = ((double) f6) < 0.5d ? BitmapDescriptorFactory.HUE_RED : 1.0f;
        if (i2 == 6) {
            if (progress3 + fAbs < BitmapDescriptorFactory.HUE_RED) {
                fAbs = Math.abs(fAbs);
            }
            f7 = 1.0f;
        }
        if (this.c == 7) {
            if (progress3 + fAbs > 1.0f) {
                fAbs = -Math.abs(fAbs);
            }
            f7 = BitmapDescriptorFactory.HUE_RED;
        }
        this.t.x(this.c, f7, fAbs);
        if (BitmapDescriptorFactory.HUE_RED >= progress3 || 1.0f <= progress3) {
            this.t.setState(MotionLayout.TransitionState.FINISHED);
        }
    }

    /* JADX WARN: Code duplicated, block: B:57:0x0273  */
    /* JADX WARN: Code duplicated, block: B:58:0x0297  */
    /* JADX WARN: Code duplicated, block: B:61:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:62:0x02c2  */
    void s(MotionEvent motionEvent, MotionLayout.h hVar, int i, q qVar) {
        float left;
        float f2;
        int top;
        int bottom;
        int i2;
        float degrees;
        float f3;
        int i3;
        hVar.a(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            this.r = motionEvent.getRawX();
            this.s = motionEvent.getRawY();
            this.o = false;
            return;
        }
        if (action != 1) {
            if (action != 2) {
                return;
            }
            motionEvent.getRawY();
            motionEvent.getRawX();
            float width = this.t.getWidth() / 2.0f;
            float height = this.t.getHeight() / 2.0f;
            int i4 = this.k;
            if (i4 != -1) {
                View viewFindViewById = this.t.findViewById(i4);
                this.t.getLocationOnScreen(this.q);
                float left2 = this.q[0] + ((viewFindViewById.getLeft() + viewFindViewById.getRight()) / 2.0f);
                height = ((viewFindViewById.getTop() + viewFindViewById.getBottom()) / 2.0f) + this.q[1];
                width = left2;
            } else {
                int i5 = this.f804d;
                if (i5 != -1) {
                    View viewFindViewById2 = this.t.findViewById(this.t.n(i5).g());
                    if (viewFindViewById2 == null) {
                        Log.e("TouchResponse", "could not find view to animate to");
                    } else {
                        this.t.getLocationOnScreen(this.q);
                        width = this.q[0] + ((viewFindViewById2.getLeft() + viewFindViewById2.getRight()) / 2.0f);
                        height = this.q[1] + ((viewFindViewById2.getTop() + viewFindViewById2.getBottom()) / 2.0f);
                    }
                }
            }
            float rawX = motionEvent.getRawX() - width;
            float rawY = motionEvent.getRawY() - height;
            double dAtan2 = Math.atan2(motionEvent.getRawY() - height, motionEvent.getRawX() - width);
            float fAtan2 = (float) (((dAtan2 - Math.atan2(this.s - height, this.r - width)) * 180.0d) / 3.141592653589793d);
            if (fAtan2 > 330.0f) {
                fAtan2 -= 360.0f;
            } else if (fAtan2 < -330.0f) {
                fAtan2 += 360.0f;
            }
            if (Math.abs(fAtan2) > 0.01d || this.o) {
                float progress = this.t.getProgress();
                if (!this.o) {
                    this.o = true;
                    this.t.setProgress(progress);
                }
                int i6 = this.f804d;
                if (i6 != -1) {
                    this.t.l(i6, progress, this.f808h, this.f807g, this.p);
                    float[] fArr = this.p;
                    fArr[1] = (float) Math.toDegrees(fArr[1]);
                } else {
                    this.p[1] = 360.0f;
                }
                float fMax = Math.max(Math.min(progress + ((fAtan2 * this.x) / this.p[1]), 1.0f), BitmapDescriptorFactory.HUE_RED);
                float progress2 = this.t.getProgress();
                if (fMax != progress2) {
                    if (progress2 == BitmapDescriptorFactory.HUE_RED || progress2 == 1.0f) {
                        this.t.f(progress2 == BitmapDescriptorFactory.HUE_RED);
                    }
                    this.t.setProgress(fMax);
                    hVar.d(1000);
                    float fC = hVar.c();
                    double dB = hVar.b();
                    double d2 = fC;
                    this.t.f731d = (float) Math.toDegrees((float) ((Math.hypot(dB, d2) * Math.sin(Math.atan2(dB, d2) - dAtan2)) / Math.hypot(rawX, rawY)));
                } else {
                    this.t.f731d = BitmapDescriptorFactory.HUE_RED;
                }
                this.r = motionEvent.getRawX();
                this.s = motionEvent.getRawY();
                return;
            }
            return;
        }
        this.o = false;
        hVar.d(16);
        float fC2 = hVar.c();
        float fB = hVar.b();
        float progress3 = this.t.getProgress();
        float width2 = this.t.getWidth() / 2.0f;
        float height2 = this.t.getHeight() / 2.0f;
        int i7 = this.k;
        if (i7 == -1) {
            int i8 = this.f804d;
            if (i8 != -1) {
                View viewFindViewById3 = this.t.findViewById(this.t.n(i8).g());
                this.t.getLocationOnScreen(this.q);
                left = this.q[0] + ((viewFindViewById3.getLeft() + viewFindViewById3.getRight()) / 2.0f);
                f2 = this.q[1];
                top = viewFindViewById3.getTop();
                bottom = viewFindViewById3.getBottom();
            }
            float rawX2 = motionEvent.getRawX() - width2;
            float rawY2 = motionEvent.getRawY() - height2;
            double degrees2 = Math.toDegrees(Math.atan2(rawY2, rawX2));
            i2 = this.f804d;
            if (i2 != -1) {
                this.t.l(i2, progress3, this.f808h, this.f807g, this.p);
                float[] fArr2 = this.p;
                fArr2[1] = (float) Math.toDegrees(fArr2[1]);
            } else {
                this.p[1] = 360.0f;
            }
            degrees = ((float) (Math.toDegrees(Math.atan2(fB + rawY2, fC2 + rawX2)) - degrees2)) * 62.5f;
            if (Float.isNaN(degrees)) {
                f3 = progress3;
            } else {
                f3 = (((degrees * 3.0f) * this.x) / this.p[1]) + progress3;
            }
            if (f3 != BitmapDescriptorFactory.HUE_RED || f3 == 1.0f || (i3 = this.c) == 3) {
                if (BitmapDescriptorFactory.HUE_RED < f3 || 1.0f <= f3) {
                    this.t.setState(MotionLayout.TransitionState.FINISHED);
                }
                return;
            }
            float fAbs = (degrees * this.x) / this.p[1];
            float f4 = ((double) f3) < 0.5d ? BitmapDescriptorFactory.HUE_RED : 1.0f;
            if (i3 == 6) {
                if (progress3 + fAbs < BitmapDescriptorFactory.HUE_RED) {
                    fAbs = Math.abs(fAbs);
                }
                f4 = 1.0f;
            }
            if (this.c == 7) {
                if (progress3 + fAbs > 1.0f) {
                    fAbs = -Math.abs(fAbs);
                }
                f4 = BitmapDescriptorFactory.HUE_RED;
            }
            this.t.x(this.c, f4, fAbs * 3.0f);
            if (BitmapDescriptorFactory.HUE_RED >= progress3 || 1.0f <= progress3) {
                this.t.setState(MotionLayout.TransitionState.FINISHED);
                return;
            }
            return;
        }
        View viewFindViewById4 = this.t.findViewById(i7);
        this.t.getLocationOnScreen(this.q);
        left = this.q[0] + ((viewFindViewById4.getLeft() + viewFindViewById4.getRight()) / 2.0f);
        f2 = this.q[1];
        top = viewFindViewById4.getTop();
        bottom = viewFindViewById4.getBottom();
        height2 = f2 + ((top + bottom) / 2.0f);
        width2 = left;
        float rawX3 = motionEvent.getRawX() - width2;
        float rawY3 = motionEvent.getRawY() - height2;
        double degrees3 = Math.toDegrees(Math.atan2(rawY3, rawX3));
        i2 = this.f804d;
        if (i2 != -1) {
            this.t.l(i2, progress3, this.f808h, this.f807g, this.p);
            float[] fArr3 = this.p;
            fArr3[1] = (float) Math.toDegrees(fArr3[1]);
        } else {
            this.p[1] = 360.0f;
        }
        degrees = ((float) (Math.toDegrees(Math.atan2(fB + rawY3, fC2 + rawX3)) - degrees3)) * 62.5f;
        if (Float.isNaN(degrees)) {
            f3 = (((degrees * 3.0f) * this.x) / this.p[1]) + progress3;
        } else {
            f3 = progress3;
        }
        if (f3 != BitmapDescriptorFactory.HUE_RED) {
        }
        if (BitmapDescriptorFactory.HUE_RED < f3) {
        }
        this.t.setState(MotionLayout.TransitionState.FINISHED);
    }

    void t(float f2, float f3) {
        float progress = this.t.getProgress();
        if (!this.o) {
            this.o = true;
            this.t.setProgress(progress);
        }
        this.t.l(this.f804d, progress, this.f808h, this.f807g, this.p);
        float f4 = this.m;
        float[] fArr = this.p;
        if (Math.abs((f4 * fArr[0]) + (this.n * fArr[1])) < 0.01d) {
            float[] fArr2 = this.p;
            fArr2[0] = 0.01f;
            fArr2[1] = 0.01f;
        }
        float f5 = this.m;
        float fMax = Math.max(Math.min(progress + (f5 != BitmapDescriptorFactory.HUE_RED ? (f2 * f5) / this.p[0] : (f3 * this.n) / this.p[1]), 1.0f), BitmapDescriptorFactory.HUE_RED);
        if (fMax != this.t.getProgress()) {
            this.t.setProgress(fMax);
        }
    }

    public String toString() {
        if (Float.isNaN(this.m)) {
            return "rotation";
        }
        return this.m + " , " + this.n;
    }

    void u(float f2, float f3) {
        this.o = false;
        float progress = this.t.getProgress();
        this.t.l(this.f804d, progress, this.f808h, this.f807g, this.p);
        float f4 = this.m;
        float[] fArr = this.p;
        float f5 = fArr[0];
        float f6 = this.n;
        float f7 = fArr[1];
        float f8 = BitmapDescriptorFactory.HUE_RED;
        float f9 = f4 != BitmapDescriptorFactory.HUE_RED ? (f2 * f4) / fArr[0] : (f3 * f6) / fArr[1];
        if (!Float.isNaN(f9)) {
            progress += f9 / 3.0f;
        }
        if (progress != BitmapDescriptorFactory.HUE_RED) {
            boolean z = progress != 1.0f;
            int i = this.c;
            if ((i != 3) && z) {
                MotionLayout motionLayout = this.t;
                if (progress >= 0.5d) {
                    f8 = 1.0f;
                }
                motionLayout.x(i, f8, f9);
            }
        }
    }

    void v(float f2, float f3) {
        this.r = f2;
        this.s = f3;
    }

    public void w(boolean z) {
        if (z) {
            float[][] fArr = H;
            fArr[4] = fArr[3];
            fArr[5] = fArr[2];
            float[][] fArr2 = G;
            fArr2[5] = fArr2[2];
            fArr2[6] = fArr2[1];
        } else {
            float[][] fArr3 = H;
            fArr3[4] = fArr3[2];
            fArr3[5] = fArr3[3];
            float[][] fArr4 = G;
            fArr4[5] = fArr4[1];
            fArr4[6] = fArr4[2];
        }
        float[][] fArr5 = G;
        int i = this.f803a;
        this.f808h = fArr5[i][0];
        this.f807g = fArr5[i][1];
        int i2 = this.b;
        float[][] fArr6 = H;
        if (i2 >= fArr6.length) {
            return;
        }
        this.m = fArr6[i2][0];
        this.n = fArr6[i2][1];
    }

    void x(float f2, float f3) {
        this.r = f2;
        this.s = f3;
        this.o = false;
    }

    void y() {
        View viewFindViewById;
        int i = this.f804d;
        if (i != -1) {
            viewFindViewById = this.t.findViewById(i);
            if (viewFindViewById == null) {
                Log.e("TouchResponse", "cannot find TouchAnchorId @id/" + androidx.constraintlayout.motion.widget.a.b(this.t.getContext(), this.f804d));
            }
        } else {
            viewFindViewById = null;
        }
        if (viewFindViewById instanceof NestedScrollView) {
            NestedScrollView nestedScrollView = (NestedScrollView) viewFindViewById;
            nestedScrollView.setOnTouchListener(new a(this));
            nestedScrollView.setOnScrollChangeListener(new b(this));
        }
    }
}
