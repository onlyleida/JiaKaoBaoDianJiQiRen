package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.Log;
import android.util.Xml;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class s {
    private static String v = "ViewTransition";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f809a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f811e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    g f812f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    androidx.constraintlayout.widget.c.a f813g;
    private int j;
    private String k;
    Context o;
    private int b = -1;
    private boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f810d = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f814h = -1;
    private int i = -1;
    private int l = 0;
    private String m = null;
    private int n = -1;
    private int p = -1;
    private int q = -1;
    private int r = -1;
    private int s = -1;
    private int t = -1;
    private int u = -1;

    class a implements Interpolator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ androidx.constraintlayout.core.motion.a.c f815a;

        a(s sVar, androidx.constraintlayout.core.motion.a.c cVar) {
            this.f815a = cVar;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            return (float) this.f815a.a(f2);
        }
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f816a;
        private final int b;
        long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        m f817d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f818e;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        t f820g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        Interpolator f821h;
        float j;
        float k;
        long l;
        boolean n;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        androidx.constraintlayout.core.motion.a.d f819f = new androidx.constraintlayout.core.motion.a.d();
        boolean i = false;
        Rect m = new Rect();

        b(t tVar, m mVar, int i, int i2, int i3, Interpolator interpolator, int i4, int i5) {
            this.n = false;
            this.f820g = tVar;
            this.f817d = mVar;
            this.f818e = i2;
            long jNanoTime = System.nanoTime();
            this.c = jNanoTime;
            this.l = jNanoTime;
            this.f820g.b(this);
            this.f821h = interpolator;
            this.f816a = i4;
            this.b = i5;
            if (i3 == 3) {
                this.n = true;
            }
            this.k = i == 0 ? Float.MAX_VALUE : 1.0f / i;
            a();
        }

        void a() {
            if (this.i) {
                c();
            } else {
                b();
            }
        }

        void b() {
            long jNanoTime = System.nanoTime();
            long j = jNanoTime - this.l;
            this.l = jNanoTime;
            float f2 = this.j + (((float) (j * 1.0E-6d)) * this.k);
            this.j = f2;
            if (f2 >= 1.0f) {
                this.j = 1.0f;
            }
            Interpolator interpolator = this.f821h;
            float interpolation = interpolator == null ? this.j : interpolator.getInterpolation(this.j);
            m mVar = this.f817d;
            boolean zQ = mVar.q(mVar.f777a, interpolation, jNanoTime, this.f819f);
            if (this.j >= 1.0f) {
                if (this.f816a != -1) {
                    this.f817d.o().setTag(this.f816a, Long.valueOf(System.nanoTime()));
                }
                if (this.b != -1) {
                    this.f817d.o().setTag(this.b, null);
                }
                if (!this.n) {
                    this.f820g.f(this);
                }
            }
            if (this.j < 1.0f || zQ) {
                this.f820g.d();
            }
        }

        void c() {
            long jNanoTime = System.nanoTime();
            long j = jNanoTime - this.l;
            this.l = jNanoTime;
            float f2 = this.j - (((float) (j * 1.0E-6d)) * this.k);
            this.j = f2;
            if (f2 < BitmapDescriptorFactory.HUE_RED) {
                this.j = BitmapDescriptorFactory.HUE_RED;
            }
            Interpolator interpolator = this.f821h;
            float interpolation = interpolator == null ? this.j : interpolator.getInterpolation(this.j);
            m mVar = this.f817d;
            boolean zQ = mVar.q(mVar.f777a, interpolation, jNanoTime, this.f819f);
            if (this.j <= BitmapDescriptorFactory.HUE_RED) {
                if (this.f816a != -1) {
                    this.f817d.o().setTag(this.f816a, Long.valueOf(System.nanoTime()));
                }
                if (this.b != -1) {
                    this.f817d.o().setTag(this.b, null);
                }
                this.f820g.f(this);
            }
            if (this.j > BitmapDescriptorFactory.HUE_RED || zQ) {
                this.f820g.d();
            }
        }

        public void d(int i, float f2, float f3) {
            if (i == 1) {
                if (this.i) {
                    return;
                }
                e(true);
            } else {
                if (i != 2) {
                    return;
                }
                this.f817d.o().getHitRect(this.m);
                if (this.m.contains((int) f2, (int) f3) || this.i) {
                    return;
                }
                e(true);
            }
        }

        void e(boolean z) {
            int i;
            this.i = z;
            if (z && (i = this.f818e) != -1) {
                this.k = i == 0 ? Float.MAX_VALUE : 1.0f / i;
            }
            this.f820g.d();
            this.l = System.nanoTime();
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x007d  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    s(Context context, XmlPullParser xmlPullParser) {
        byte b2;
        this.o = context;
        try {
            int eventType = xmlPullParser.getEventType();
            while (eventType != 1) {
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    switch (name.hashCode()) {
                        case -1962203927:
                            if (!name.equals("ConstraintOverride")) {
                                b2 = -1;
                            } else {
                                b2 = 2;
                            }
                            break;
                        case -1239391468:
                            if (!name.equals("KeyFrameSet")) {
                                b2 = -1;
                            } else {
                                b2 = 1;
                            }
                            break;
                        case 61998586:
                            if (!name.equals("ViewTransition")) {
                                b2 = -1;
                            } else {
                                b2 = 0;
                            }
                            break;
                        case 366511058:
                            if (!name.equals("CustomMethod")) {
                                b2 = -1;
                            } else {
                                b2 = 4;
                            }
                            break;
                        case 1791837707:
                            if (!name.equals("CustomAttribute")) {
                                b2 = -1;
                            } else {
                                b2 = 3;
                            }
                            break;
                        default:
                            b2 = -1;
                            break;
                    }
                    if (b2 == 0) {
                        j(context, xmlPullParser);
                    } else if (b2 == 1) {
                        this.f812f = new g(context, xmlPullParser);
                    } else if (b2 == 2) {
                        this.f813g = androidx.constraintlayout.widget.c.k(context, xmlPullParser);
                    } else if (b2 == 3 || b2 == 4) {
                        ConstraintAttribute.h(context, xmlPullParser, this.f813g.f874g);
                    } else {
                        Log.e(v, androidx.constraintlayout.motion.widget.a.a() + " unknown tag " + name);
                        Log.e(v, ".xml:" + xmlPullParser.getLineNumber());
                    }
                } else if (eventType == 3 && "ViewTransition".equals(xmlPullParser.getName())) {
                    return;
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (XmlPullParserException e3) {
            e3.printStackTrace();
        }
    }

    private void j(Context context, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.ViewTransition);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i);
            if (index == R.styleable.ViewTransition_android_id) {
                this.f809a = typedArrayObtainStyledAttributes.getResourceId(index, this.f809a);
            } else if (index == R.styleable.ViewTransition_motionTarget) {
                if (MotionLayout.y0) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.j);
                    this.j = resourceId;
                    if (resourceId == -1) {
                        this.k = typedArrayObtainStyledAttributes.getString(index);
                    }
                } else if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                    this.k = typedArrayObtainStyledAttributes.getString(index);
                } else {
                    this.j = typedArrayObtainStyledAttributes.getResourceId(index, this.j);
                }
            } else if (index == R.styleable.ViewTransition_onStateTransition) {
                this.b = typedArrayObtainStyledAttributes.getInt(index, this.b);
            } else if (index == R.styleable.ViewTransition_transitionDisable) {
                this.c = typedArrayObtainStyledAttributes.getBoolean(index, this.c);
            } else if (index == R.styleable.ViewTransition_pathMotionArc) {
                this.f810d = typedArrayObtainStyledAttributes.getInt(index, this.f810d);
            } else if (index == R.styleable.ViewTransition_duration) {
                this.f814h = typedArrayObtainStyledAttributes.getInt(index, this.f814h);
            } else if (index == R.styleable.ViewTransition_upDuration) {
                this.i = typedArrayObtainStyledAttributes.getInt(index, this.i);
            } else if (index == R.styleable.ViewTransition_viewTransitionMode) {
                this.f811e = typedArrayObtainStyledAttributes.getInt(index, this.f811e);
            } else if (index == R.styleable.ViewTransition_motionInterpolator) {
                int i2 = typedArrayObtainStyledAttributes.peekValue(index).type;
                if (i2 == 1) {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    this.n = resourceId2;
                    if (resourceId2 != -1) {
                        this.l = -2;
                    }
                } else if (i2 == 3) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.m = string;
                    if (string == null || string.indexOf("/") <= 0) {
                        this.l = -1;
                    } else {
                        this.n = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                        this.l = -2;
                    }
                } else {
                    this.l = typedArrayObtainStyledAttributes.getInteger(index, this.l);
                }
            } else if (index == R.styleable.ViewTransition_setsTag) {
                this.p = typedArrayObtainStyledAttributes.getResourceId(index, this.p);
            } else if (index == R.styleable.ViewTransition_clearsTag) {
                this.q = typedArrayObtainStyledAttributes.getResourceId(index, this.q);
            } else if (index == R.styleable.ViewTransition_ifTagSet) {
                this.r = typedArrayObtainStyledAttributes.getResourceId(index, this.r);
            } else if (index == R.styleable.ViewTransition_ifTagNotSet) {
                this.s = typedArrayObtainStyledAttributes.getResourceId(index, this.s);
            } else if (index == R.styleable.ViewTransition_SharedValueId) {
                this.u = typedArrayObtainStyledAttributes.getResourceId(index, this.u);
            } else if (index == R.styleable.ViewTransition_SharedValue) {
                this.t = typedArrayObtainStyledAttributes.getInteger(index, this.t);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    void a(t tVar, MotionLayout motionLayout, View view) {
        m mVar = new m(view);
        mVar.r(view);
        this.f812f.a(mVar);
        mVar.t(motionLayout.getWidth(), motionLayout.getHeight(), this.f814h, System.nanoTime());
        new b(tVar, mVar, this.f814h, this.i, this.b, e(motionLayout.getContext()), this.p, this.q);
    }

    void b(t tVar, MotionLayout motionLayout, int i, androidx.constraintlayout.widget.c cVar, View... viewArr) {
        if (this.c) {
            return;
        }
        int i2 = this.f811e;
        if (i2 == 2) {
            a(tVar, motionLayout, viewArr[0]);
            return;
        }
        if (i2 == 1) {
            for (int i3 : motionLayout.getConstraintSetIds()) {
                if (i3 != i) {
                    androidx.constraintlayout.widget.c cVarM = motionLayout.m(i3);
                    for (View view : viewArr) {
                        androidx.constraintlayout.widget.c.a aVarS = cVarM.s(view.getId());
                        androidx.constraintlayout.widget.c.a aVar = this.f813g;
                        if (aVar != null) {
                            aVar.d(aVarS);
                            aVarS.f874g.putAll(this.f813g.f874g);
                        }
                    }
                }
            }
        }
        androidx.constraintlayout.widget.c cVar2 = new androidx.constraintlayout.widget.c();
        cVar2.n(cVar);
        for (View view2 : viewArr) {
            androidx.constraintlayout.widget.c.a aVarS2 = cVar2.s(view2.getId());
            androidx.constraintlayout.widget.c.a aVar2 = this.f813g;
            if (aVar2 != null) {
                aVar2.d(aVarS2);
                aVarS2.f874g.putAll(this.f813g.f874g);
            }
        }
        motionLayout.E(i, cVar2);
        throw null;
    }

    boolean c(View view) {
        int i = this.r;
        boolean z = i == -1 || view.getTag(i) != null;
        int i2 = this.s;
        return z && (i2 == -1 || view.getTag(i2) == null);
    }

    int d() {
        return this.f809a;
    }

    Interpolator e(Context context) {
        int i = this.l;
        if (i == -2) {
            return AnimationUtils.loadInterpolator(context, this.n);
        }
        if (i == -1) {
            return new a(this, androidx.constraintlayout.core.motion.a.c.c(this.m));
        }
        if (i == 0) {
            return new AccelerateDecelerateInterpolator();
        }
        if (i == 1) {
            return new AccelerateInterpolator();
        }
        if (i == 2) {
            return new DecelerateInterpolator();
        }
        if (i == 4) {
            return new BounceInterpolator();
        }
        if (i == 5) {
            return new OvershootInterpolator();
        }
        if (i != 6) {
            return null;
        }
        return new AnticipateInterpolator();
    }

    public int f() {
        return this.t;
    }

    public int g() {
        return this.u;
    }

    public int h() {
        return this.b;
    }

    boolean i(View view) {
        String str;
        if (view == null) {
            return false;
        }
        if ((this.j == -1 && this.k == null) || !c(view)) {
            return false;
        }
        if (view.getId() == this.j) {
            return true;
        }
        return this.k != null && (view.getLayoutParams() instanceof ConstraintLayout.b) && (str = ((ConstraintLayout.b) view.getLayoutParams()).Z) != null && str.matches(this.k);
    }

    boolean k(int i) {
        int i2 = this.b;
        if (i2 == 1) {
            return i == 0;
        }
        if (i2 == 2) {
            return i == 1;
        }
        return i2 == 3 && i == 0;
    }

    public String toString() {
        return "ViewTransition(" + androidx.constraintlayout.motion.widget.a.b(this.o, this.f809a) + ")";
    }
}
