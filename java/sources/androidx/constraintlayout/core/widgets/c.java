package androidx.constraintlayout.core.widgets;

import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected ConstraintWidget f722a;
    protected ConstraintWidget b;
    protected ConstraintWidget c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected ConstraintWidget f723d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected ConstraintWidget f724e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected ConstraintWidget f725f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected ConstraintWidget f726g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected ArrayList<ConstraintWidget> f727h;
    protected int i;
    protected int j;
    protected float k = BitmapDescriptorFactory.HUE_RED;
    int l;
    int m;
    int n;
    private int o;
    private boolean p;
    protected boolean q;
    protected boolean r;
    protected boolean s;
    private boolean t;

    public c(ConstraintWidget constraintWidget, int i, boolean z) {
        this.p = false;
        this.f722a = constraintWidget;
        this.o = i;
        this.p = z;
    }

    private void b() {
        int i = this.o * 2;
        ConstraintWidget constraintWidget = this.f722a;
        boolean z = false;
        ConstraintWidget constraintWidget2 = constraintWidget;
        boolean z2 = false;
        while (!z2) {
            this.i++;
            ConstraintWidget[] constraintWidgetArr = constraintWidget.q0;
            int i2 = this.o;
            ConstraintWidget constraintWidget3 = null;
            constraintWidgetArr[i2] = null;
            constraintWidget.p0[i2] = null;
            if (constraintWidget.Q() != 8) {
                this.l++;
                ConstraintWidget.DimensionBehaviour dimensionBehaviourS = constraintWidget.s(this.o);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviourS != dimensionBehaviour) {
                    this.m += constraintWidget.C(this.o);
                }
                int iE = this.m + constraintWidget.S[i].e();
                this.m = iE;
                int i3 = i + 1;
                this.m = iE + constraintWidget.S[i3].e();
                int iE2 = this.n + constraintWidget.S[i].e();
                this.n = iE2;
                this.n = iE2 + constraintWidget.S[i3].e();
                if (this.b == null) {
                    this.b = constraintWidget;
                }
                this.f723d = constraintWidget;
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.V;
                int i4 = this.o;
                if (dimensionBehaviourArr[i4] == dimensionBehaviour) {
                    int[] iArr = constraintWidget.u;
                    if (iArr[i4] == 0 || iArr[i4] == 3 || iArr[i4] == 2) {
                        this.j++;
                        float[] fArr = constraintWidget.o0;
                        float f2 = fArr[i4];
                        if (f2 > BitmapDescriptorFactory.HUE_RED) {
                            this.k += fArr[i4];
                        }
                        if (c(constraintWidget, i4)) {
                            if (f2 < BitmapDescriptorFactory.HUE_RED) {
                                this.q = true;
                            } else {
                                this.r = true;
                            }
                            if (this.f727h == null) {
                                this.f727h = new ArrayList<>();
                            }
                            this.f727h.add(constraintWidget);
                        }
                        if (this.f725f == null) {
                            this.f725f = constraintWidget;
                        }
                        ConstraintWidget constraintWidget4 = this.f726g;
                        if (constraintWidget4 != null) {
                            constraintWidget4.p0[this.o] = constraintWidget;
                        }
                        this.f726g = constraintWidget;
                    }
                    if (this.o == 0) {
                        if (constraintWidget.s == 0 && constraintWidget.v == 0) {
                            int i5 = constraintWidget.w;
                        }
                    } else if (constraintWidget.t == 0 && constraintWidget.y == 0) {
                        int i6 = constraintWidget.z;
                    }
                    int i7 = (constraintWidget.Z > BitmapDescriptorFactory.HUE_RED ? 1 : (constraintWidget.Z == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
                }
            }
            if (constraintWidget2 != constraintWidget) {
                constraintWidget2.q0[this.o] = constraintWidget;
            }
            ConstraintAnchor constraintAnchor = constraintWidget.S[i + 1].f676f;
            if (constraintAnchor != null) {
                ConstraintWidget constraintWidget5 = constraintAnchor.f674d;
                ConstraintAnchor[] constraintAnchorArr = constraintWidget5.S;
                if (constraintAnchorArr[i].f676f != null && constraintAnchorArr[i].f676f.f674d == constraintWidget) {
                    constraintWidget3 = constraintWidget5;
                }
            }
            if (constraintWidget3 == null) {
                constraintWidget3 = constraintWidget;
                z2 = true;
            }
            constraintWidget2 = constraintWidget;
            constraintWidget = constraintWidget3;
        }
        ConstraintWidget constraintWidget6 = this.b;
        if (constraintWidget6 != null) {
            this.m -= constraintWidget6.S[i].e();
        }
        ConstraintWidget constraintWidget7 = this.f723d;
        if (constraintWidget7 != null) {
            this.m -= constraintWidget7.S[i + 1].e();
        }
        this.c = constraintWidget;
        if (this.o == 0 && this.p) {
            this.f724e = constraintWidget;
        } else {
            this.f724e = this.f722a;
        }
        if (this.r && this.q) {
            z = true;
        }
        this.s = z;
    }

    private static boolean c(ConstraintWidget constraintWidget, int i) {
        if (constraintWidget.Q() != 8 && constraintWidget.V[i] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int[] iArr = constraintWidget.u;
            if (iArr[i] == 0 || iArr[i] == 3) {
                return true;
            }
        }
        return false;
    }

    public void a() {
        if (!this.t) {
            b();
        }
        this.t = true;
    }
}
