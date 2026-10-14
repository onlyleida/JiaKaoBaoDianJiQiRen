package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class k extends d {
    HashMap<String, Method> A;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f768g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f769h = null;
    private int i;
    private String j;
    private String k;
    private int l;
    private int m;
    private View n;
    float o;
    private boolean p;
    private boolean q;
    private boolean r;
    private float s;
    private float t;
    private boolean u;
    int v;
    int w;
    int x;
    RectF y;
    RectF z;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static SparseIntArray f770a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f770a = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyTrigger_framePosition, 8);
            f770a.append(R.styleable.KeyTrigger_onCross, 4);
            f770a.append(R.styleable.KeyTrigger_onNegativeCross, 1);
            f770a.append(R.styleable.KeyTrigger_onPositiveCross, 2);
            f770a.append(R.styleable.KeyTrigger_motionTarget, 7);
            f770a.append(R.styleable.KeyTrigger_triggerId, 6);
            f770a.append(R.styleable.KeyTrigger_triggerSlack, 5);
            f770a.append(R.styleable.KeyTrigger_motion_triggerOnCollision, 9);
            f770a.append(R.styleable.KeyTrigger_motion_postLayoutCollision, 10);
            f770a.append(R.styleable.KeyTrigger_triggerReceiver, 11);
            f770a.append(R.styleable.KeyTrigger_viewTransitionOnCross, 12);
            f770a.append(R.styleable.KeyTrigger_viewTransitionOnNegativeCross, 13);
            f770a.append(R.styleable.KeyTrigger_viewTransitionOnPositiveCross, 14);
        }

        public static void a(k kVar, TypedArray typedArray, Context context) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (f770a.get(index)) {
                    case 1:
                        kVar.j = typedArray.getString(index);
                        break;
                    case 2:
                        kVar.k = typedArray.getString(index);
                        break;
                    case 3:
                    default:
                        Log.e("KeyTrigger", "unused attribute 0x" + Integer.toHexString(index) + "   " + f770a.get(index));
                        break;
                    case 4:
                        kVar.f769h = typedArray.getString(index);
                        break;
                    case 5:
                        kVar.o = typedArray.getFloat(index, kVar.o);
                        break;
                    case 6:
                        kVar.l = typedArray.getResourceId(index, kVar.l);
                        break;
                    case 7:
                        if (MotionLayout.y0) {
                            int resourceId = typedArray.getResourceId(index, kVar.b);
                            kVar.b = resourceId;
                            if (resourceId == -1) {
                                kVar.c = typedArray.getString(index);
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            kVar.c = typedArray.getString(index);
                        } else {
                            kVar.b = typedArray.getResourceId(index, kVar.b);
                        }
                        break;
                    case 8:
                        int integer = typedArray.getInteger(index, kVar.f752a);
                        kVar.f752a = integer;
                        kVar.s = (integer + 0.5f) / 100.0f;
                        break;
                    case 9:
                        kVar.m = typedArray.getResourceId(index, kVar.m);
                        break;
                    case 10:
                        kVar.u = typedArray.getBoolean(index, kVar.u);
                        break;
                    case 11:
                        kVar.i = typedArray.getResourceId(index, kVar.i);
                        break;
                    case 12:
                        kVar.x = typedArray.getResourceId(index, kVar.x);
                        break;
                    case 13:
                        kVar.v = typedArray.getResourceId(index, kVar.v);
                        break;
                    case 14:
                        kVar.w = typedArray.getResourceId(index, kVar.w);
                        break;
                }
            }
        }
    }

    public k() {
        int i = d.f751f;
        this.i = i;
        this.j = null;
        this.k = null;
        this.l = i;
        this.m = i;
        this.n = null;
        this.o = 0.1f;
        this.p = true;
        this.q = true;
        this.r = true;
        this.s = Float.NaN;
        this.u = false;
        this.v = i;
        this.w = i;
        this.x = i;
        this.y = new RectF();
        this.z = new RectF();
        this.A = new HashMap<>();
        this.f753d = 5;
        this.f754e = new HashMap<>();
    }

    private void t(String str, View view) {
        Method method;
        if (str == null) {
            return;
        }
        if (str.startsWith(".")) {
            u(str, view);
            return;
        }
        if (this.A.containsKey(str)) {
            method = this.A.get(str);
            if (method == null) {
                return;
            }
        } else {
            method = null;
        }
        if (method == null) {
            try {
                method = view.getClass().getMethod(str, new Class[0]);
                this.A.put(str, method);
            } catch (NoSuchMethodException unused) {
                this.A.put(str, null);
                Log.e("KeyTrigger", "Could not find method \"" + str + "\"on class " + view.getClass().getSimpleName() + " " + androidx.constraintlayout.motion.widget.a.c(view));
                return;
            }
        }
        try {
            method.invoke(view, new Object[0]);
        } catch (Exception unused2) {
            Log.e("KeyTrigger", "Exception in call \"" + this.f769h + "\"on class " + view.getClass().getSimpleName() + " " + androidx.constraintlayout.motion.widget.a.c(view));
        }
    }

    private void u(String str, View view) {
        boolean z = str.length() == 1;
        if (!z) {
            str = str.substring(1).toLowerCase(Locale.ROOT);
        }
        for (String str2 : this.f754e.keySet()) {
            String lowerCase = str2.toLowerCase(Locale.ROOT);
            if (z || lowerCase.matches(str)) {
                ConstraintAttribute constraintAttribute = this.f754e.get(str2);
                if (constraintAttribute != null) {
                    constraintAttribute.a(view);
                }
            }
        }
    }

    private void v(RectF rectF, View view, boolean z) {
        rectF.top = view.getTop();
        rectF.bottom = view.getBottom();
        rectF.left = view.getLeft();
        rectF.right = view.getRight();
        if (z) {
            view.getMatrix().mapRect(rectF);
        }
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void a(HashMap<String, e.a.a.a.c> map) {
    }

    @Override // androidx.constraintlayout.motion.widget.d
    /* JADX INFO: renamed from: b */
    public d clone() {
        k kVar = new k();
        kVar.c(this);
        return kVar;
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public d c(d dVar) {
        super.c(dVar);
        k kVar = (k) dVar;
        this.f768g = kVar.f768g;
        this.f769h = kVar.f769h;
        this.i = kVar.i;
        this.j = kVar.j;
        this.k = kVar.k;
        this.l = kVar.l;
        this.m = kVar.m;
        this.n = kVar.n;
        this.o = kVar.o;
        this.p = kVar.p;
        this.q = kVar.q;
        this.r = kVar.r;
        this.s = kVar.s;
        this.t = kVar.t;
        this.u = kVar.u;
        this.y = kVar.y;
        this.z = kVar.z;
        this.A = kVar.A;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void d(HashSet<String> hashSet) {
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void e(Context context, AttributeSet attributeSet) {
        a.a(this, context.obtainStyledAttributes(attributeSet, R.styleable.KeyTrigger), context);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x008d  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:45:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:49:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:51:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:54:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:56:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:58:0x00df  */
    public void s(float f2, View view) {
        boolean z;
        boolean z2;
        boolean z3;
        float f3;
        float f4;
        boolean z4;
        boolean z5;
        float f5;
        float f6;
        boolean z6;
        if (this.m != d.f751f) {
            if (this.n == null) {
                this.n = ((ViewGroup) view.getParent()).findViewById(this.m);
            }
            v(this.y, this.n, this.u);
            v(this.z, view, this.u);
            if (this.y.intersect(this.z)) {
                if (this.p) {
                    this.p = false;
                    z = true;
                } else {
                    z = false;
                }
                if (this.r) {
                    this.r = false;
                    z6 = true;
                } else {
                    z6 = false;
                }
                this.q = true;
                z5 = z6;
                z3 = false;
            } else {
                if (this.p) {
                    z = false;
                } else {
                    this.p = true;
                    z = true;
                }
                if (this.q) {
                    this.q = false;
                    z3 = true;
                } else {
                    z3 = false;
                }
                this.r = true;
                z5 = false;
            }
        } else {
            if (this.p) {
                float f7 = this.s;
                if ((f2 - f7) * (this.t - f7) < BitmapDescriptorFactory.HUE_RED) {
                    this.p = false;
                    z = true;
                }
                if (this.q) {
                    f5 = this.s;
                    f6 = f2 - f5;
                    if ((this.t - f5) * f6 >= BitmapDescriptorFactory.HUE_RED && f6 < BitmapDescriptorFactory.HUE_RED) {
                        this.q = false;
                        z2 = true;
                    }
                    if (this.r) {
                        f3 = this.s;
                        f4 = f2 - f3;
                        if ((this.t - f3) * f4 < BitmapDescriptorFactory.HUE_RED || f4 <= BitmapDescriptorFactory.HUE_RED) {
                            z4 = false;
                        } else {
                            this.r = false;
                            z4 = true;
                        }
                        boolean z7 = z2;
                        z5 = z4;
                        z3 = z7;
                    } else {
                        if (Math.abs(f2 - this.s) > this.o) {
                            this.r = true;
                        }
                        z3 = z2;
                        z5 = false;
                    }
                } else if (Math.abs(f2 - this.s) > this.o) {
                    this.q = true;
                }
                z2 = false;
                if (this.r) {
                    f3 = this.s;
                    f4 = f2 - f3;
                    if ((this.t - f3) * f4 < BitmapDescriptorFactory.HUE_RED) {
                        z4 = false;
                    } else {
                        z4 = false;
                    }
                    boolean z8 = z2;
                    z5 = z4;
                    z3 = z8;
                } else {
                    if (Math.abs(f2 - this.s) > this.o) {
                        this.r = true;
                    }
                    z3 = z2;
                    z5 = false;
                }
            } else if (Math.abs(f2 - this.s) > this.o) {
                this.p = true;
            }
            z = false;
            if (this.q) {
                f5 = this.s;
                f6 = f2 - f5;
                if ((this.t - f5) * f6 >= BitmapDescriptorFactory.HUE_RED) {
                }
                if (this.r) {
                    f3 = this.s;
                    f4 = f2 - f3;
                    if ((this.t - f3) * f4 < BitmapDescriptorFactory.HUE_RED) {
                        z4 = false;
                    } else {
                        z4 = false;
                    }
                    boolean z9 = z2;
                    z5 = z4;
                    z3 = z9;
                } else {
                    if (Math.abs(f2 - this.s) > this.o) {
                        this.r = true;
                    }
                    z3 = z2;
                    z5 = false;
                }
            } else if (Math.abs(f2 - this.s) > this.o) {
                this.q = true;
            }
            z2 = false;
            if (this.r) {
                f3 = this.s;
                f4 = f2 - f3;
                if ((this.t - f3) * f4 < BitmapDescriptorFactory.HUE_RED) {
                    z4 = false;
                } else {
                    z4 = false;
                }
                boolean z10 = z2;
                z5 = z4;
                z3 = z10;
            } else {
                if (Math.abs(f2 - this.s) > this.o) {
                    this.r = true;
                }
                z3 = z2;
                z5 = false;
            }
        }
        this.t = f2;
        if (z3 || z || z5) {
            ((MotionLayout) view.getParent()).k(this.l, z5, f2);
        }
        View viewFindViewById = this.i == d.f751f ? view : ((MotionLayout) view.getParent()).findViewById(this.i);
        if (z3) {
            String str = this.j;
            if (str != null) {
                t(str, viewFindViewById);
            }
            if (this.v != d.f751f) {
                ((MotionLayout) view.getParent()).F(this.v, viewFindViewById);
            }
        }
        if (z5) {
            String str2 = this.k;
            if (str2 != null) {
                t(str2, viewFindViewById);
            }
            if (this.w != d.f751f) {
                ((MotionLayout) view.getParent()).F(this.w, viewFindViewById);
            }
        }
        if (z) {
            String str3 = this.f769h;
            if (str3 != null) {
                t(str3, viewFindViewById);
            }
            if (this.x != d.f751f) {
                ((MotionLayout) view.getParent()).F(this.x, viewFindViewById);
            }
        }
    }
}
