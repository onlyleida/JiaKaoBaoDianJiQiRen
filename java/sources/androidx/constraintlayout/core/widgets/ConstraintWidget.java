package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.core.widgets.analyzer.WidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.k;
import androidx.constraintlayout.core.widgets.analyzer.m;
import androidx.exifinterface.media.ExifInterface;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintWidget {
    public static float t0 = 0.5f;
    public float A;
    int B;
    float C;
    private int[] D;
    private float E;
    private boolean F;
    private boolean G;
    private boolean H;
    private int I;
    private int J;
    public ConstraintAnchor K;
    public ConstraintAnchor L;
    public ConstraintAnchor M;
    public ConstraintAnchor N;
    public ConstraintAnchor O;
    ConstraintAnchor P;
    ConstraintAnchor Q;
    public ConstraintAnchor R;
    public ConstraintAnchor[] S;
    protected ArrayList<ConstraintAnchor> T;
    private boolean[] U;
    public DimensionBehaviour[] V;
    public ConstraintWidget W;
    int X;
    int Y;
    public float Z;
    protected int a0;
    public androidx.constraintlayout.core.widgets.analyzer.c b;
    protected int b0;
    public androidx.constraintlayout.core.widgets.analyzer.c c;
    protected int c0;
    int d0;
    protected int e0;
    protected int f0;
    float g0;
    float h0;
    private Object i0;
    private int j0;
    private String k0;
    private boolean l;
    private String l0;
    private boolean m;
    int m0;
    private boolean n;
    int n0;
    private boolean o;
    public float[] o0;
    public int p;
    protected ConstraintWidget[] p0;
    public int q;
    protected ConstraintWidget[] q0;
    private int r;
    public int r0;
    public int s;
    public int s0;
    public int t;
    public int[] u;
    public int v;
    public int w;
    public float x;
    public int y;
    public int z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f680a = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public k f681d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public m f682e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean[] f683f = {true, true};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f684g = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f685h = false;
    private boolean i = true;
    private int j = -1;
    private int k = -1;

    public enum DimensionBehaviour {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f686a;
        static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[DimensionBehaviour.values().length];
            b = iArr;
            try {
                iArr[DimensionBehaviour.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[DimensionBehaviour.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[DimensionBehaviour.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[DimensionBehaviour.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ConstraintAnchor.Type.values().length];
            f686a = iArr2;
            try {
                iArr2[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f686a[ConstraintAnchor.Type.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f686a[ConstraintAnchor.Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f686a[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f686a[ConstraintAnchor.Type.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f686a[ConstraintAnchor.Type.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f686a[ConstraintAnchor.Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f686a[ConstraintAnchor.Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f686a[ConstraintAnchor.Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    public ConstraintWidget() {
        new androidx.constraintlayout.core.state.a(this);
        this.l = false;
        this.m = false;
        this.n = false;
        this.o = false;
        this.p = -1;
        this.q = -1;
        this.r = 0;
        this.s = 0;
        this.t = 0;
        this.u = new int[2];
        this.v = 0;
        this.w = 0;
        this.x = 1.0f;
        this.y = 0;
        this.z = 0;
        this.A = 1.0f;
        this.B = -1;
        this.C = 1.0f;
        this.D = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.E = BitmapDescriptorFactory.HUE_RED;
        this.F = false;
        this.H = false;
        this.I = 0;
        this.J = 0;
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.K = constraintAnchor;
        ConstraintAnchor constraintAnchor2 = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.L = constraintAnchor2;
        ConstraintAnchor constraintAnchor3 = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.M = constraintAnchor3;
        ConstraintAnchor constraintAnchor4 = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.N = constraintAnchor4;
        ConstraintAnchor constraintAnchor5 = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.O = constraintAnchor5;
        this.P = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.Q = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        ConstraintAnchor constraintAnchor6 = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.R = constraintAnchor6;
        this.S = new ConstraintAnchor[]{constraintAnchor, constraintAnchor3, constraintAnchor2, constraintAnchor4, constraintAnchor5, constraintAnchor6};
        this.T = new ArrayList<>();
        this.U = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.V = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.W = null;
        this.X = 0;
        this.Y = 0;
        this.Z = BitmapDescriptorFactory.HUE_RED;
        this.a0 = -1;
        this.b0 = 0;
        this.c0 = 0;
        this.d0 = 0;
        float f2 = t0;
        this.g0 = f2;
        this.h0 = f2;
        this.j0 = 0;
        this.k0 = null;
        this.l0 = null;
        this.m0 = 0;
        this.n0 = 0;
        this.o0 = new float[]{-1.0f, -1.0f};
        this.p0 = new ConstraintWidget[]{null, null};
        this.q0 = new ConstraintWidget[]{null, null};
        this.r0 = -1;
        this.s0 = -1;
        d();
    }

    private boolean a0(int i) {
        int i2 = i * 2;
        ConstraintAnchor[] constraintAnchorArr = this.S;
        if (constraintAnchorArr[i2].f676f != null && constraintAnchorArr[i2].f676f.f676f != constraintAnchorArr[i2]) {
            int i3 = i2 + 1;
            if (constraintAnchorArr[i3].f676f != null && constraintAnchorArr[i3].f676f.f676f == constraintAnchorArr[i3]) {
                return true;
            }
        }
        return false;
    }

    private void d() {
        this.T.add(this.K);
        this.T.add(this.L);
        this.T.add(this.M);
        this.T.add(this.N);
        this.T.add(this.P);
        this.T.add(this.Q);
        this.T.add(this.R);
        this.T.add(this.O);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x016c  */
    /* JADX WARN: Code duplicated, block: B:102:0x0170  */
    /* JADX WARN: Code duplicated, block: B:108:0x019a  */
    /* JADX WARN: Code duplicated, block: B:111:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:113:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:115:0x01eb A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:244:0x03c1  */
    /* JADX WARN: Code duplicated, block: B:246:0x03c5  */
    /* JADX WARN: Code duplicated, block: B:252:0x03d8  */
    /* JADX WARN: Code duplicated, block: B:254:0x0409  */
    /* JADX WARN: Code duplicated, block: B:261:0x0422  */
    /* JADX WARN: Code duplicated, block: B:270:0x0443  */
    /* JADX WARN: Code duplicated, block: B:280:0x045a  */
    /* JADX WARN: Code duplicated, block: B:283:0x0460  */
    /* JADX WARN: Code duplicated, block: B:284:0x0462 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:287:0x0468 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:290:0x046d  */
    /* JADX WARN: Code duplicated, block: B:293:0x0472  */
    /* JADX WARN: Code duplicated, block: B:295:0x0476  */
    /* JADX WARN: Code duplicated, block: B:298:0x047b  */
    /* JADX WARN: Code duplicated, block: B:300:0x047f  */
    /* JADX WARN: Code duplicated, block: B:302:0x0482  */
    /* JADX WARN: Code duplicated, block: B:305:0x0489  */
    /* JADX WARN: Code duplicated, block: B:307:0x048f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:313:0x04a7  */
    /* JADX WARN: Code duplicated, block: B:315:0x04ab  */
    /* JADX WARN: Code duplicated, block: B:316:0x04b0  */
    /* JADX WARN: Code duplicated, block: B:318:0x04b3  */
    /* JADX WARN: Code duplicated, block: B:319:0x04b8  */
    /* JADX WARN: Code duplicated, block: B:31:0x008c  */
    /* JADX WARN: Code duplicated, block: B:321:0x04bb A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:330:0x04d5  */
    /* JADX WARN: Code duplicated, block: B:354:0x0512 A[ADDED_TO_REGION, REMOVE] */
    /* JADX WARN: Code duplicated, block: B:356:0x0520 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:375:0x0555  */
    /* JADX WARN: Code duplicated, block: B:387:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x00b4 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:48:0x00bf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:51:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:54:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:58:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:70:0x0110  */
    /* JADX WARN: Code duplicated, block: B:71:0x0112  */
    /* JADX WARN: Code duplicated, block: B:73:0x0115  */
    /* JADX WARN: Code duplicated, block: B:74:0x0117  */
    /* JADX WARN: Code duplicated, block: B:80:0x0120  */
    /* JADX WARN: Code duplicated, block: B:82:0x012b  */
    /* JADX WARN: Code duplicated, block: B:86:0x0132  */
    /* JADX WARN: Code duplicated, block: B:88:0x0135  */
    /* JADX WARN: Code duplicated, block: B:89:0x013b  */
    /* JADX WARN: Code duplicated, block: B:91:0x0142  */
    /* JADX WARN: Code duplicated, block: B:94:0x0147 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:95:0x0149  */
    /* JADX WARN: Code duplicated, block: B:96:0x014e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:97:0x0150  */
    /* JADX WARN: Code duplicated, block: B:98:0x0158  */
    /* JADX WARN: Multi-variable type inference failed */
    private void i(androidx.constraintlayout.core.d dVar, boolean z, boolean z2, boolean z3, boolean z4, SolverVariable solverVariable, SolverVariable solverVariable2, DimensionBehaviour dimensionBehaviour, boolean z5, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i, int i2, int i3, int i4, float f2, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, int i5, int i6, int i7, int i8, float f3, boolean z11) {
        int i9;
        boolean z12;
        int iMin;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        ConstraintAnchor.Type typeJ;
        ConstraintAnchor.Type type;
        SolverVariable solverVariableQ;
        SolverVariable solverVariableQ2;
        boolean z13;
        int i15;
        char c;
        boolean z14;
        ConstraintAnchor constraintAnchor3;
        int i16;
        int i17;
        int i18;
        boolean z15;
        boolean z16;
        boolean z17;
        boolean z18;
        SolverVariable solverVariable3;
        ConstraintWidget constraintWidget;
        boolean z19;
        SolverVariable solverVariable4;
        ConstraintWidget constraintWidget2;
        int iMin2;
        int iE;
        int i19;
        int i20;
        boolean z20;
        int i21;
        int i22;
        int i23;
        int i24;
        boolean z21;
        boolean z22;
        ConstraintWidget constraintWidget3;
        int i25;
        ConstraintWidget constraintWidget4;
        int i26 = i8;
        SolverVariable solverVariableQ3 = dVar.q(constraintAnchor);
        SolverVariable solverVariableQ4 = dVar.q(constraintAnchor2);
        SolverVariable solverVariableQ5 = dVar.q(constraintAnchor.i());
        SolverVariable solverVariableQ6 = dVar.q(constraintAnchor2.i());
        if (androidx.constraintlayout.core.d.x() != null) {
            androidx.constraintlayout.core.d.x().w++;
        }
        boolean zN = constraintAnchor.n();
        boolean zN2 = constraintAnchor2.n();
        boolean zN3 = this.R.n();
        int i27 = zN2 ? (zN ? 1 : 0) + 1 : zN ? 1 : 0;
        if (zN3) {
            i27++;
        }
        int i28 = z6 ? 3 : i5;
        int i29 = a.b[dimensionBehaviour.ordinal()];
        if (i29 != 1 && i29 != 2 && i29 != 3 && i29 == 4) {
            i9 = i28;
            z12 = i9 != 4;
            iMin = this.j;
            if (iMin == -1 && z) {
                this.j = -1;
                z12 = false;
            } else {
                iMin = i2;
            }
            i10 = this.k;
            if (i10 != -1 && !z) {
                this.k = -1;
                iMin = i10;
                z12 = false;
            }
            if (this.j0 == 8) {
                iMin = 0;
                z12 = false;
            }
            if (z11) {
                if (zN && !zN2 && !zN3) {
                    dVar.f(solverVariableQ3, i);
                } else if (zN && !zN2) {
                    dVar.e(solverVariableQ3, solverVariableQ5, constraintAnchor.e(), 8);
                }
            }
            if (!z12) {
                if (i27 == 2 && !z6 && (i9 == 1 || i9 == 0)) {
                    int iMax = Math.max(i7, iMin);
                    if (i26 > 0) {
                        iMax = Math.min(i26, iMax);
                    }
                    dVar.e(solverVariableQ4, solverVariableQ3, iMax, 8);
                    z12 = false;
                } else {
                    if (i7 == -2) {
                        i11 = iMin;
                    } else {
                        i11 = i7;
                    }
                    if (i26 == -2) {
                        i12 = iMin;
                    } else {
                        i12 = i26;
                    }
                    if (iMin > 0 && i9 != 1) {
                        iMin = 0;
                    }
                    if (i11 > 0) {
                        dVar.h(solverVariableQ4, solverVariableQ3, i11, 8);
                        iMin = Math.max(iMin, i11);
                    }
                    if (i12 > 0) {
                        if (z2 || i9 != 1) {
                            z13 = true;
                        } else {
                            z13 = false;
                        }
                        if (z13) {
                            i13 = 8;
                            dVar.j(solverVariableQ4, solverVariableQ3, i12, 8);
                        } else {
                            i13 = 8;
                        }
                        iMin = Math.min(iMin, i12);
                    } else {
                        i13 = 8;
                    }
                    if (i9 == 1) {
                        if (z2) {
                            dVar.e(solverVariableQ4, solverVariableQ3, iMin, i13);
                        } else if (z8) {
                            dVar.e(solverVariableQ4, solverVariableQ3, iMin, 5);
                            dVar.j(solverVariableQ4, solverVariableQ3, iMin, i13);
                        } else {
                            dVar.e(solverVariableQ4, solverVariableQ3, iMin, 5);
                            dVar.j(solverVariableQ4, solverVariableQ3, iMin, i13);
                        }
                        z4 = z4;
                        i26 = i12;
                        i27 = i27 == true ? 1 : 0;
                        solverVariableQ5 = solverVariableQ5;
                        solverVariableQ4 = solverVariableQ4;
                        solverVariableQ6 = solverVariableQ6;
                        i14 = i11;
                    } else if (i9 == 2) {
                        typeJ = constraintAnchor.j();
                        type = ConstraintAnchor.Type.TOP;
                        if (typeJ != type || constraintAnchor.j() == ConstraintAnchor.Type.BOTTOM) {
                            solverVariableQ = dVar.q(this.W.m(type));
                            solverVariableQ2 = dVar.q(this.W.m(ConstraintAnchor.Type.BOTTOM));
                        } else {
                            solverVariableQ = dVar.q(this.W.m(ConstraintAnchor.Type.LEFT));
                            solverVariableQ2 = dVar.q(this.W.m(ConstraintAnchor.Type.RIGHT));
                        }
                        SolverVariable solverVariable5 = solverVariableQ2;
                        androidx.constraintlayout.core.b bVarR = dVar.r();
                        int i30 = i12;
                        solverVariableQ6 = solverVariableQ6;
                        i14 = i11;
                        solverVariableQ5 = solverVariableQ5;
                        i27 = (i27 == true ? 1 : 0) == true ? 1 : 0;
                        solverVariableQ4 = solverVariableQ4;
                        bVarR.k(solverVariableQ4, solverVariableQ3, solverVariable5, solverVariableQ, f3);
                        dVar.d(bVarR);
                        if (z2) {
                            z12 = false;
                        }
                        z4 = z4;
                        i26 = i30;
                    } else {
                        int i31 = i12;
                        i27 = i27 == true ? 1 : 0;
                        solverVariableQ5 = solverVariableQ5;
                        solverVariableQ4 = solverVariableQ4;
                        solverVariableQ6 = solverVariableQ6;
                        i14 = i11;
                        i26 = i31;
                        z4 = true;
                    }
                }
                if (z11 || z8) {
                    i15 = 0;
                    c = 2;
                    if (i27 >= c && z2 && z4) {
                        dVar.h(solverVariableQ3, solverVariable, i15, 8);
                        boolean z23 = z || this.O.f676f == null;
                        if (z || (constraintAnchor3 = this.O.f676f) == null) {
                            z14 = z23;
                        } else {
                            ConstraintWidget constraintWidget5 = constraintAnchor3.f674d;
                            if (constraintWidget5.Z != BitmapDescriptorFactory.HUE_RED) {
                                DimensionBehaviour[] dimensionBehaviourArr = constraintWidget5.V;
                                DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[i15];
                                DimensionBehaviour dimensionBehaviour3 = DimensionBehaviour.MATCH_CONSTRAINT;
                                if (dimensionBehaviour2 == dimensionBehaviour3 && dimensionBehaviourArr[1] == dimensionBehaviour3) {
                                    z14 = true;
                                } else {
                                    z14 = false;
                                }
                            } else {
                                z14 = false;
                            }
                        }
                        if (z14) {
                            dVar.h(solverVariable2, solverVariableQ4, i15, 8);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (!zN && !zN2 && !zN3) {
                    solverVariable4 = solverVariableQ4;
                    z4 = z4;
                    z19 = z2;
                    i25 = 5;
                } else if (!zN || zN2) {
                    if (zN || !zN2) {
                        if (zN && zN2) {
                            ConstraintWidget constraintWidget6 = constraintAnchor.f676f.f674d;
                            ConstraintWidget constraintWidget7 = constraintAnchor2.f676f.f674d;
                            ConstraintWidget constraintWidgetI = I();
                            if (z12) {
                                if (i9 == 0) {
                                    if (i26 != 0 || i14 != 0) {
                                        i16 = 5;
                                        i24 = 5;
                                        z21 = true;
                                        z22 = false;
                                        z15 = true;
                                    } else if (solverVariableQ5.f587g && solverVariableQ6.f587g) {
                                        dVar.e(solverVariableQ3, solverVariableQ5, constraintAnchor.e(), 8);
                                        dVar.e(solverVariableQ4, solverVariableQ6, -constraintAnchor2.e(), 8);
                                        return;
                                    } else {
                                        i16 = 8;
                                        i24 = 8;
                                        z21 = false;
                                        z22 = true;
                                        z15 = false;
                                    }
                                    if ((constraintWidget6 instanceof androidx.constraintlayout.core.widgets.a) || (constraintWidget7 instanceof androidx.constraintlayout.core.widgets.a)) {
                                        solverVariable2 = solverVariable2;
                                        i9 = i9;
                                        z17 = z22;
                                        i17 = 6;
                                        z16 = z21;
                                        i18 = 4;
                                    } else {
                                        z17 = z22;
                                        z16 = z21;
                                        i18 = i24;
                                        i9 = i9;
                                        i17 = 6;
                                    }
                                } else if (i9 == 2) {
                                    if (!(constraintWidget6 instanceof androidx.constraintlayout.core.widgets.a) && !(constraintWidget7 instanceof androidx.constraintlayout.core.widgets.a)) {
                                        solverVariable2 = solverVariable2;
                                        i9 = i9;
                                        i17 = 6;
                                        i16 = 5;
                                        i18 = 5;
                                    }
                                    z16 = true;
                                    z15 = true;
                                    z17 = false;
                                } else if (i9 == 1) {
                                    solverVariable2 = solverVariable2;
                                    i9 = i9;
                                    i17 = 6;
                                    i16 = 8;
                                    i18 = 4;
                                    z16 = true;
                                    z15 = true;
                                    z17 = false;
                                } else if (i9 == 3) {
                                    i9 = i9;
                                    if (this.B == -1) {
                                        if (z9) {
                                            solverVariable2 = solverVariable2;
                                            i17 = z2 ? 5 : 4;
                                        } else {
                                            solverVariable2 = solverVariable2;
                                            i17 = 8;
                                        }
                                        i16 = 8;
                                    } else if (z6) {
                                        if (i6 == 2 || i6 == 1) {
                                            i22 = 5;
                                            i23 = 4;
                                        } else {
                                            i22 = 8;
                                            i23 = 5;
                                        }
                                        i18 = i23;
                                        z16 = true;
                                        z15 = true;
                                        z17 = true;
                                        i16 = i22;
                                        i17 = 6;
                                    } else {
                                        if (i26 > 0) {
                                            solverVariable2 = solverVariable2;
                                            i17 = 6;
                                            i16 = 5;
                                        } else {
                                            if (i26 != 0 || i14 != 0) {
                                                i17 = 6;
                                                i16 = 5;
                                            } else if (z9) {
                                                i16 = (constraintWidget6 == constraintWidgetI || constraintWidget7 == constraintWidgetI) ? 5 : 4;
                                                i17 = 6;
                                            } else {
                                                solverVariable2 = solverVariable2;
                                                i17 = 6;
                                                i16 = 5;
                                                i18 = 8;
                                            }
                                            i18 = 4;
                                        }
                                        z16 = true;
                                        z15 = true;
                                        z17 = true;
                                    }
                                    i18 = 5;
                                    z16 = true;
                                    z15 = true;
                                    z17 = true;
                                } else {
                                    i9 = i9;
                                    solverVariable2 = solverVariable2;
                                    i17 = 6;
                                    i16 = 5;
                                    i18 = 4;
                                    z16 = false;
                                    z15 = false;
                                    z17 = false;
                                }
                                if (z15 || solverVariableQ5 != solverVariableQ6 || constraintWidget6 == constraintWidgetI) {
                                    z18 = true;
                                } else {
                                    z15 = false;
                                    z18 = false;
                                }
                                if (z16) {
                                    if (z12 && !z7 && !z9 && solverVariableQ5 == solverVariable && solverVariableQ6 == solverVariable2) {
                                        z19 = false;
                                        i21 = 8;
                                        i20 = 8;
                                        z20 = false;
                                    } else {
                                        z19 = z2;
                                        i20 = i17;
                                        z20 = z18;
                                        i21 = i16;
                                    }
                                    solverVariable3 = solverVariableQ4;
                                    constraintWidget = constraintWidgetI;
                                    dVar.c(solverVariableQ3, solverVariableQ5, constraintAnchor.e(), f2, solverVariableQ6, solverVariable3, constraintAnchor2.e(), i20);
                                    i16 = i21;
                                    z18 = z20;
                                } else {
                                    solverVariable3 = solverVariableQ4;
                                    constraintWidget = constraintWidgetI;
                                    z19 = z2;
                                }
                                if (this.j0 != 8 && !constraintAnchor2.l()) {
                                    return;
                                }
                                if (z15) {
                                    if (z19 && solverVariableQ5 != solverVariableQ6 && !z12 && ((constraintWidget6 instanceof androidx.constraintlayout.core.widgets.a) || (constraintWidget7 instanceof androidx.constraintlayout.core.widgets.a))) {
                                        i16 = 6;
                                    }
                                    dVar.h(solverVariableQ3, solverVariableQ5, constraintAnchor.e(), i16);
                                    solverVariable4 = solverVariable3;
                                    dVar.j(solverVariable4, solverVariableQ6, -constraintAnchor2.e(), i16);
                                } else {
                                    solverVariable4 = solverVariable3;
                                }
                                if (z19 || !z10 || (constraintWidget6 instanceof androidx.constraintlayout.core.widgets.a) || (constraintWidget7 instanceof androidx.constraintlayout.core.widgets.a)) {
                                    constraintWidget2 = constraintWidget;
                                } else {
                                    constraintWidget2 = constraintWidget;
                                    if (constraintWidget7 != constraintWidget2) {
                                        iMin2 = 6;
                                        i16 = 6;
                                        z18 = true;
                                    }
                                    if (z18) {
                                        if (z17 && (!z9 || z3)) {
                                            if (constraintWidget6 != constraintWidget2 || constraintWidget7 == constraintWidget2) {
                                                i19 = 6;
                                            } else {
                                                i19 = iMin2;
                                            }
                                            if ((constraintWidget6 instanceof e) || (constraintWidget7 instanceof e)) {
                                                i19 = 5;
                                            }
                                            if ((constraintWidget6 instanceof androidx.constraintlayout.core.widgets.a) || (constraintWidget7 instanceof androidx.constraintlayout.core.widgets.a)) {
                                                i19 = 5;
                                            }
                                            if (z9) {
                                                i19 = 5;
                                            }
                                            iMin2 = Math.max(i19, iMin2);
                                        }
                                        if (z19) {
                                            iMin2 = Math.min(i16, iMin2);
                                            if (z6 && !z9 && (constraintWidget6 == constraintWidget2 || constraintWidget7 == constraintWidget2)) {
                                                iMin2 = 4;
                                            }
                                        }
                                        dVar.e(solverVariableQ3, solverVariableQ5, constraintAnchor.e(), iMin2);
                                        dVar.e(solverVariable4, solverVariableQ6, -constraintAnchor2.e(), iMin2);
                                    }
                                    if (z19) {
                                        if (solverVariable == solverVariableQ5) {
                                            iE = constraintAnchor.e();
                                        } else {
                                            iE = 0;
                                        }
                                        if (solverVariableQ5 != solverVariable) {
                                            dVar.h(solverVariableQ3, solverVariable, iE, 5);
                                        }
                                    }
                                    if (!z19 && z12) {
                                        if (i3 == 0 && i14 == 0) {
                                            if (z12 && i9 == 3) {
                                                dVar.h(solverVariable4, solverVariableQ3, 0, 8);
                                            } else {
                                                dVar.h(solverVariable4, solverVariableQ3, 0, 5);
                                            }
                                        }
                                    }
                                }
                                iMin2 = i18;
                                if (z18) {
                                    if (z17) {
                                        if (constraintWidget6 != constraintWidget2) {
                                            i19 = 6;
                                        } else {
                                            i19 = 6;
                                        }
                                        if (constraintWidget6 instanceof e) {
                                            i19 = 5;
                                        } else {
                                            i19 = 5;
                                        }
                                        if (constraintWidget6 instanceof androidx.constraintlayout.core.widgets.a) {
                                            i19 = 5;
                                        } else {
                                            i19 = 5;
                                        }
                                        if (z9) {
                                            i19 = 5;
                                        }
                                        iMin2 = Math.max(i19, iMin2);
                                    }
                                    if (z19) {
                                        iMin2 = Math.min(i16, iMin2);
                                        if (z6) {
                                            iMin2 = 4;
                                        }
                                    }
                                    dVar.e(solverVariableQ3, solverVariableQ5, constraintAnchor.e(), iMin2);
                                    dVar.e(solverVariable4, solverVariableQ6, -constraintAnchor2.e(), iMin2);
                                }
                                if (z19) {
                                    if (solverVariable == solverVariableQ5) {
                                        iE = constraintAnchor.e();
                                    } else {
                                        iE = 0;
                                    }
                                    if (solverVariableQ5 != solverVariable) {
                                        dVar.h(solverVariableQ3, solverVariable, iE, 5);
                                    }
                                }
                                if (!z19) {
                                }
                            } else if (solverVariableQ5.f587g && solverVariableQ6.f587g) {
                                dVar.c(solverVariableQ3, solverVariableQ5, constraintAnchor.e(), f2, solverVariableQ6, solverVariableQ4, constraintAnchor2.e(), 8);
                                if (z2 && z4) {
                                    int iE2 = constraintAnchor2.f676f != null ? constraintAnchor2.e() : 0;
                                    if (solverVariableQ6 != solverVariable2) {
                                        dVar.h(solverVariable2, solverVariableQ4, iE2, 5);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            i17 = 6;
                            i16 = 5;
                            i18 = 4;
                            z16 = true;
                            z15 = true;
                            z17 = false;
                            if (z15) {
                                z18 = true;
                            } else {
                                z18 = true;
                            }
                            if (z16) {
                                if (z12) {
                                    z19 = z2;
                                    i20 = i17;
                                    z20 = z18;
                                    i21 = i16;
                                } else {
                                    z19 = z2;
                                    i20 = i17;
                                    z20 = z18;
                                    i21 = i16;
                                }
                                solverVariable3 = solverVariableQ4;
                                constraintWidget = constraintWidgetI;
                                dVar.c(solverVariableQ3, solverVariableQ5, constraintAnchor.e(), f2, solverVariableQ6, solverVariable3, constraintAnchor2.e(), i20);
                                i16 = i21;
                                z18 = z20;
                            } else {
                                solverVariable3 = solverVariableQ4;
                                constraintWidget = constraintWidgetI;
                                z19 = z2;
                            }
                            if (this.j0 != 8) {
                            }
                            if (z15) {
                                if (z19) {
                                    i16 = 6;
                                }
                                dVar.h(solverVariableQ3, solverVariableQ5, constraintAnchor.e(), i16);
                                solverVariable4 = solverVariable3;
                                dVar.j(solverVariable4, solverVariableQ6, -constraintAnchor2.e(), i16);
                            } else {
                                solverVariable4 = solverVariable3;
                            }
                            if (z19) {
                                constraintWidget2 = constraintWidget;
                                iMin2 = i18;
                            } else {
                                constraintWidget2 = constraintWidget;
                                iMin2 = i18;
                            }
                            if (z18) {
                                if (z17) {
                                    if (constraintWidget6 != constraintWidget2) {
                                        i19 = 6;
                                    } else {
                                        i19 = 6;
                                    }
                                    if (constraintWidget6 instanceof e) {
                                        i19 = 5;
                                    } else {
                                        i19 = 5;
                                    }
                                    if (constraintWidget6 instanceof androidx.constraintlayout.core.widgets.a) {
                                        i19 = 5;
                                    } else {
                                        i19 = 5;
                                    }
                                    if (z9) {
                                        i19 = 5;
                                    }
                                    iMin2 = Math.max(i19, iMin2);
                                }
                                if (z19) {
                                    iMin2 = Math.min(i16, iMin2);
                                    if (z6) {
                                        iMin2 = 4;
                                    }
                                }
                                dVar.e(solverVariableQ3, solverVariableQ5, constraintAnchor.e(), iMin2);
                                dVar.e(solverVariable4, solverVariableQ6, -constraintAnchor2.e(), iMin2);
                            }
                            if (z19) {
                                if (solverVariable == solverVariableQ5) {
                                    iE = constraintAnchor.e();
                                } else {
                                    iE = 0;
                                }
                                if (solverVariableQ5 != solverVariable) {
                                    dVar.h(solverVariableQ3, solverVariable, iE, 5);
                                }
                            }
                            if (!z19) {
                            }
                        }
                        i25 = 5;
                    } else {
                        dVar.e(solverVariableQ4, solverVariableQ6, -constraintAnchor2.e(), 8);
                        if (z2) {
                            if (this.f685h && solverVariableQ3.f587g && (constraintWidget3 = this.W) != null) {
                                d dVar2 = (d) constraintWidget3;
                                if (z) {
                                    dVar2.q1(constraintAnchor);
                                } else {
                                    dVar2.v1(constraintAnchor);
                                }
                            } else {
                                dVar.h(solverVariableQ3, solverVariable, 0, 5);
                            }
                        }
                    }
                    solverVariable4 = solverVariableQ4;
                    z4 = z4;
                    z19 = z2;
                    i25 = 5;
                } else {
                    z19 = z2;
                    solverVariable4 = solverVariableQ4;
                    i25 = (z2 && (constraintAnchor.f676f.f674d instanceof androidx.constraintlayout.core.widgets.a)) ? 8 : 5;
                    z4 = z4;
                }
                if (z19 && z4) {
                    int iE3 = constraintAnchor2.f676f != null ? constraintAnchor2.e() : 0;
                    if (solverVariableQ6 != solverVariable2) {
                        if (!this.f685h || !solverVariable4.f587g || (constraintWidget4 = this.W) == null) {
                            dVar.h(solverVariable2, solverVariable4, iE3, i25);
                            return;
                        }
                        d dVar3 = (d) constraintWidget4;
                        if (z) {
                            dVar3.p1(constraintAnchor2);
                            return;
                        } else {
                            dVar3.u1(constraintAnchor2);
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            if (z5) {
                dVar.e(solverVariableQ4, solverVariableQ3, 0, 3);
                if (i3 > 0) {
                    dVar.h(solverVariableQ4, solverVariableQ3, i3, 8);
                }
                if (i4 < Integer.MAX_VALUE) {
                    dVar.j(solverVariableQ4, solverVariableQ3, i4, 8);
                }
            } else {
                dVar.e(solverVariableQ4, solverVariableQ3, iMin, 8);
            }
            i14 = i7;
            if (z11) {
                i15 = 0;
                c = 2;
            } else {
                i15 = 0;
                c = 2;
            }
            if (i27 >= c) {
            }
        }
        i9 = i28;
        iMin = this.j;
        if (iMin == -1) {
            iMin = i2;
        } else {
            iMin = i2;
        }
        i10 = this.k;
        if (i10 != -1) {
            this.k = -1;
            iMin = i10;
            z12 = false;
        }
        if (this.j0 == 8) {
            iMin = 0;
            z12 = false;
        }
        if (z11) {
            if (zN) {
                if (zN) {
                    dVar.e(solverVariableQ3, solverVariableQ5, constraintAnchor.e(), 8);
                }
            } else if (zN) {
                dVar.e(solverVariableQ3, solverVariableQ5, constraintAnchor.e(), 8);
            }
        }
        if (!z12) {
            if (i27 == 2) {
            }
            if (i7 == -2) {
                i11 = iMin;
            } else {
                i11 = i7;
            }
            if (i26 == -2) {
                i12 = iMin;
            } else {
                i12 = i26;
            }
            if (iMin > 0) {
                iMin = 0;
            }
            if (i11 > 0) {
                dVar.h(solverVariableQ4, solverVariableQ3, i11, 8);
                iMin = Math.max(iMin, i11);
            }
            if (i12 > 0) {
                if (z2) {
                    z13 = true;
                } else {
                    z13 = true;
                }
                if (z13) {
                    i13 = 8;
                    dVar.j(solverVariableQ4, solverVariableQ3, i12, 8);
                } else {
                    i13 = 8;
                }
                iMin = Math.min(iMin, i12);
            } else {
                i13 = 8;
            }
            if (i9 == 1) {
                if (z2) {
                    dVar.e(solverVariableQ4, solverVariableQ3, iMin, i13);
                } else if (z8) {
                    dVar.e(solverVariableQ4, solverVariableQ3, iMin, 5);
                    dVar.j(solverVariableQ4, solverVariableQ3, iMin, i13);
                } else {
                    dVar.e(solverVariableQ4, solverVariableQ3, iMin, 5);
                    dVar.j(solverVariableQ4, solverVariableQ3, iMin, i13);
                }
                z4 = z4;
                i26 = i12;
                i27 = i27 == true ? 1 : 0;
                solverVariableQ5 = solverVariableQ5;
                solverVariableQ4 = solverVariableQ4;
                solverVariableQ6 = solverVariableQ6;
                i14 = i11;
            } else if (i9 == 2) {
                typeJ = constraintAnchor.j();
                type = ConstraintAnchor.Type.TOP;
                if (typeJ != type) {
                    solverVariableQ = dVar.q(this.W.m(type));
                    solverVariableQ2 = dVar.q(this.W.m(ConstraintAnchor.Type.BOTTOM));
                } else {
                    solverVariableQ = dVar.q(this.W.m(type));
                    solverVariableQ2 = dVar.q(this.W.m(ConstraintAnchor.Type.BOTTOM));
                }
                SolverVariable solverVariable6 = solverVariableQ2;
                androidx.constraintlayout.core.b bVarR2 = dVar.r();
                int i32 = i12;
                solverVariableQ6 = solverVariableQ6;
                i14 = i11;
                solverVariableQ5 = solverVariableQ5;
                i27 = (i27 == true ? 1 : 0) == true ? 1 : 0;
                solverVariableQ4 = solverVariableQ4;
                bVarR2.k(solverVariableQ4, solverVariableQ3, solverVariable6, solverVariableQ, f3);
                dVar.d(bVarR2);
                if (z2) {
                    z12 = false;
                }
                z4 = z4;
                i26 = i32;
            } else {
                int i33 = i12;
                i27 = i27 == true ? 1 : 0;
                solverVariableQ5 = solverVariableQ5;
                solverVariableQ4 = solverVariableQ4;
                solverVariableQ6 = solverVariableQ6;
                i14 = i11;
                i26 = i33;
                z4 = true;
            }
            if (z11) {
                i15 = 0;
                c = 2;
            } else {
                i15 = 0;
                c = 2;
            }
            if (i27 >= c) {
            }
        }
        if (z5) {
            dVar.e(solverVariableQ4, solverVariableQ3, 0, 3);
            if (i3 > 0) {
                dVar.h(solverVariableQ4, solverVariableQ3, i3, 8);
            }
            if (i4 < Integer.MAX_VALUE) {
                dVar.j(solverVariableQ4, solverVariableQ3, i4, 8);
            }
        } else {
            dVar.e(solverVariableQ4, solverVariableQ3, iMin, 8);
        }
        i14 = i7;
        if (z11) {
            i15 = 0;
            c = 2;
        } else {
            i15 = 0;
            c = 2;
        }
        if (i27 >= c) {
        }
    }

    public int A() {
        return this.I;
    }

    public void A0(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7 = i3 - i;
        int i8 = i4 - i2;
        this.b0 = i;
        this.c0 = i2;
        if (this.j0 == 8) {
            this.X = 0;
            this.Y = 0;
            return;
        }
        DimensionBehaviour[] dimensionBehaviourArr = this.V;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.FIXED;
        if (dimensionBehaviour == dimensionBehaviour2 && i7 < (i6 = this.X)) {
            i7 = i6;
        }
        if (dimensionBehaviourArr[1] == dimensionBehaviour2 && i8 < (i5 = this.Y)) {
            i8 = i5;
        }
        this.X = i7;
        this.Y = i8;
        int i9 = this.f0;
        if (i8 < i9) {
            this.Y = i9;
        }
        int i10 = this.e0;
        if (i7 < i10) {
            this.X = i10;
        }
        int i11 = this.w;
        if (i11 > 0 && dimensionBehaviourArr[0] == DimensionBehaviour.MATCH_CONSTRAINT) {
            this.X = Math.min(this.X, i11);
        }
        int i12 = this.z;
        if (i12 > 0 && this.V[1] == DimensionBehaviour.MATCH_CONSTRAINT) {
            this.Y = Math.min(this.Y, i12);
        }
        int i13 = this.X;
        if (i7 != i13) {
            this.j = i13;
        }
        int i14 = this.Y;
        if (i8 != i14) {
            this.k = i14;
        }
    }

    public int B() {
        return this.J;
    }

    public void B0(boolean z) {
        this.F = z;
    }

    public int C(int i) {
        if (i == 0) {
            return R();
        }
        if (i == 1) {
            return v();
        }
        return 0;
    }

    public void C0(int i) {
        this.Y = i;
        int i2 = this.f0;
        if (i < i2) {
            this.Y = i2;
        }
    }

    public int D() {
        return this.D[1];
    }

    public void D0(float f2) {
        this.g0 = f2;
    }

    public int E() {
        return this.D[0];
    }

    public void E0(int i) {
        this.m0 = i;
    }

    public int F() {
        return this.f0;
    }

    public void F0(int i, int i2) {
        this.b0 = i;
        int i3 = i2 - i;
        this.X = i3;
        int i4 = this.e0;
        if (i3 < i4) {
            this.X = i4;
        }
    }

    public int G() {
        return this.e0;
    }

    public void G0(DimensionBehaviour dimensionBehaviour) {
        this.V[0] = dimensionBehaviour;
    }

    public ConstraintWidget H(int i) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i != 0) {
            if (i == 1 && (constraintAnchor2 = (constraintAnchor = this.N).f676f) != null && constraintAnchor2.f676f == constraintAnchor) {
                return constraintAnchor2.f674d;
            }
            return null;
        }
        ConstraintAnchor constraintAnchor3 = this.M;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f676f;
        if (constraintAnchor4 == null || constraintAnchor4.f676f != constraintAnchor3) {
            return null;
        }
        return constraintAnchor4.f674d;
    }

    public void H0(int i, int i2, int i3, float f2) {
        this.s = i;
        this.v = i2;
        if (i3 == Integer.MAX_VALUE) {
            i3 = 0;
        }
        this.w = i3;
        this.x = f2;
        if (f2 <= BitmapDescriptorFactory.HUE_RED || f2 >= 1.0f || i != 0) {
            return;
        }
        this.s = 2;
    }

    public ConstraintWidget I() {
        return this.W;
    }

    public void I0(float f2) {
        this.o0[0] = f2;
    }

    public ConstraintWidget J(int i) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i != 0) {
            if (i == 1 && (constraintAnchor2 = (constraintAnchor = this.L).f676f) != null && constraintAnchor2.f676f == constraintAnchor) {
                return constraintAnchor2.f674d;
            }
            return null;
        }
        ConstraintAnchor constraintAnchor3 = this.K;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f676f;
        if (constraintAnchor4 == null || constraintAnchor4.f676f != constraintAnchor3) {
            return null;
        }
        return constraintAnchor4.f674d;
    }

    protected void J0(int i, boolean z) {
        this.U[i] = z;
    }

    public int K() {
        return S() + this.X;
    }

    public void K0(boolean z) {
        this.G = z;
    }

    public WidgetRun L(int i) {
        if (i == 0) {
            return this.f681d;
        }
        if (i == 1) {
            return this.f682e;
        }
        return null;
    }

    public void L0(boolean z) {
        this.H = z;
    }

    public float M() {
        return this.h0;
    }

    public void M0(int i, int i2) {
        this.I = i;
        this.J = i2;
        P0(false);
    }

    public int N() {
        return this.n0;
    }

    public void N0(int i) {
        this.D[1] = i;
    }

    public DimensionBehaviour O() {
        return this.V[1];
    }

    public void O0(int i) {
        this.D[0] = i;
    }

    public int P() {
        int i = this.K != null ? 0 + this.L.f677g : 0;
        return this.M != null ? i + this.N.f677g : i;
    }

    public void P0(boolean z) {
        this.f684g = z;
    }

    public int Q() {
        return this.j0;
    }

    public void Q0(int i) {
        if (i < 0) {
            this.f0 = 0;
        } else {
            this.f0 = i;
        }
    }

    public int R() {
        if (this.j0 == 8) {
            return 0;
        }
        return this.X;
    }

    public void R0(int i) {
        if (i < 0) {
            this.e0 = 0;
        } else {
            this.e0 = i;
        }
    }

    public int S() {
        ConstraintWidget constraintWidget = this.W;
        return (constraintWidget == null || !(constraintWidget instanceof d)) ? this.b0 : ((d) constraintWidget).C0 + this.b0;
    }

    public void S0(int i, int i2) {
        this.b0 = i;
        this.c0 = i2;
    }

    public int T() {
        ConstraintWidget constraintWidget = this.W;
        return (constraintWidget == null || !(constraintWidget instanceof d)) ? this.c0 : ((d) constraintWidget).D0 + this.c0;
    }

    public void T0(ConstraintWidget constraintWidget) {
        this.W = constraintWidget;
    }

    public boolean U() {
        return this.F;
    }

    public void U0(float f2) {
        this.h0 = f2;
    }

    public boolean V(int i) {
        if (i == 0) {
            return (this.K.f676f != null ? 1 : 0) + (this.M.f676f != null ? 1 : 0) < 2;
        }
        return ((this.L.f676f != null ? 1 : 0) + (this.N.f676f != null ? 1 : 0)) + (this.O.f676f != null ? 1 : 0) < 2;
    }

    public void V0(int i) {
        this.n0 = i;
    }

    public boolean W() {
        int size = this.T.size();
        for (int i = 0; i < size; i++) {
            if (this.T.get(i).l()) {
                return true;
            }
        }
        return false;
    }

    public void W0(int i, int i2) {
        this.c0 = i;
        int i3 = i2 - i;
        this.Y = i3;
        int i4 = this.f0;
        if (i3 < i4) {
            this.Y = i4;
        }
    }

    public boolean X() {
        return (this.j == -1 && this.k == -1) ? false : true;
    }

    public void X0(DimensionBehaviour dimensionBehaviour) {
        this.V[1] = dimensionBehaviour;
    }

    public boolean Y(int i, int i2) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i == 0) {
            ConstraintAnchor constraintAnchor3 = this.K.f676f;
            return constraintAnchor3 != null && constraintAnchor3.m() && (constraintAnchor2 = this.M.f676f) != null && constraintAnchor2.m() && (this.M.f676f.d() - this.M.e()) - (this.K.f676f.d() + this.K.e()) >= i2;
        }
        ConstraintAnchor constraintAnchor4 = this.L.f676f;
        return constraintAnchor4 != null && constraintAnchor4.m() && (constraintAnchor = this.N.f676f) != null && constraintAnchor.m() && (this.N.f676f.d() - this.N.e()) - (this.L.f676f.d() + this.L.e()) >= i2;
        return false;
    }

    public void Y0(int i, int i2, int i3, float f2) {
        this.t = i;
        this.y = i2;
        if (i3 == Integer.MAX_VALUE) {
            i3 = 0;
        }
        this.z = i3;
        this.A = f2;
        if (f2 <= BitmapDescriptorFactory.HUE_RED || f2 >= 1.0f || i != 0) {
            return;
        }
        this.t = 2;
    }

    public void Z(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i, int i2) {
        m(type).a(constraintWidget.m(type2), i, i2, true);
    }

    public void Z0(float f2) {
        this.o0[1] = f2;
    }

    public void a1(int i) {
        this.j0 = i;
    }

    public boolean b0() {
        return this.n;
    }

    public void b1(int i) {
        this.X = i;
        int i2 = this.e0;
        if (i < i2) {
            this.X = i2;
        }
    }

    public boolean c0(int i) {
        return this.U[i];
    }

    public void c1(int i) {
        if (i < 0 || i > 3) {
            return;
        }
        this.r = i;
    }

    public boolean d0() {
        ConstraintAnchor constraintAnchor = this.K;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f676f;
        if (constraintAnchor2 != null && constraintAnchor2.f676f == constraintAnchor) {
            return true;
        }
        ConstraintAnchor constraintAnchor3 = this.M;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f676f;
        return constraintAnchor4 != null && constraintAnchor4.f676f == constraintAnchor3;
    }

    public void d1(int i) {
        this.b0 = i;
    }

    public void e(d dVar, androidx.constraintlayout.core.d dVar2, HashSet<ConstraintWidget> hashSet, int i, boolean z) {
        if (z) {
            if (!hashSet.contains(this)) {
                return;
            }
            h.a(dVar, dVar2, this);
            hashSet.remove(this);
            g(dVar2, dVar.K1(64));
        }
        if (i == 0) {
            HashSet<ConstraintAnchor> hashSetC = this.K.c();
            if (hashSetC != null) {
                Iterator<ConstraintAnchor> it = hashSetC.iterator();
                while (it.hasNext()) {
                    it.next().f674d.e(dVar, dVar2, hashSet, i, true);
                }
            }
            HashSet<ConstraintAnchor> hashSetC2 = this.M.c();
            if (hashSetC2 != null) {
                Iterator<ConstraintAnchor> it2 = hashSetC2.iterator();
                while (it2.hasNext()) {
                    it2.next().f674d.e(dVar, dVar2, hashSet, i, true);
                }
                return;
            }
            return;
        }
        HashSet<ConstraintAnchor> hashSetC3 = this.L.c();
        if (hashSetC3 != null) {
            Iterator<ConstraintAnchor> it3 = hashSetC3.iterator();
            while (it3.hasNext()) {
                it3.next().f674d.e(dVar, dVar2, hashSet, i, true);
            }
        }
        HashSet<ConstraintAnchor> hashSetC4 = this.N.c();
        if (hashSetC4 != null) {
            Iterator<ConstraintAnchor> it4 = hashSetC4.iterator();
            while (it4.hasNext()) {
                it4.next().f674d.e(dVar, dVar2, hashSet, i, true);
            }
        }
        HashSet<ConstraintAnchor> hashSetC5 = this.O.c();
        if (hashSetC5 != null) {
            Iterator<ConstraintAnchor> it5 = hashSetC5.iterator();
            while (it5.hasNext()) {
                it5.next().f674d.e(dVar, dVar2, hashSet, i, true);
            }
        }
    }

    public boolean e0() {
        return this.G;
    }

    public void e1(int i) {
        this.c0 = i;
    }

    boolean f() {
        return (this instanceof i) || (this instanceof e);
    }

    public boolean f0() {
        ConstraintAnchor constraintAnchor = this.L;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f676f;
        if (constraintAnchor2 != null && constraintAnchor2.f676f == constraintAnchor) {
            return true;
        }
        ConstraintAnchor constraintAnchor3 = this.N;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f676f;
        return constraintAnchor4 != null && constraintAnchor4.f676f == constraintAnchor3;
    }

    public void f1(boolean z, boolean z2, boolean z3, boolean z4) {
        if (this.B == -1) {
            if (z3 && !z4) {
                this.B = 0;
            } else if (!z3 && z4) {
                this.B = 1;
                if (this.a0 == -1) {
                    this.C = 1.0f / this.C;
                }
            }
        }
        if (this.B == 0 && (!this.L.n() || !this.N.n())) {
            this.B = 1;
        } else if (this.B == 1 && (!this.K.n() || !this.M.n())) {
            this.B = 0;
        }
        if (this.B == -1 && (!this.L.n() || !this.N.n() || !this.K.n() || !this.M.n())) {
            if (this.L.n() && this.N.n()) {
                this.B = 0;
            } else if (this.K.n() && this.M.n()) {
                this.C = 1.0f / this.C;
                this.B = 1;
            }
        }
        if (this.B == -1) {
            int i = this.v;
            if (i > 0 && this.y == 0) {
                this.B = 0;
            } else {
                if (i != 0 || this.y <= 0) {
                    return;
                }
                this.C = 1.0f / this.C;
                this.B = 1;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:192:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:196:0x02fc  */
    /* JADX WARN: Code duplicated, block: B:199:0x0301  */
    /* JADX WARN: Code duplicated, block: B:203:0x030b  */
    /* JADX WARN: Code duplicated, block: B:206:0x0316  */
    /* JADX WARN: Code duplicated, block: B:209:0x031c  */
    /* JADX WARN: Code duplicated, block: B:211:0x031f  */
    /* JADX WARN: Code duplicated, block: B:212:0x0321  */
    /* JADX WARN: Code duplicated, block: B:215:0x0339  */
    /* JADX WARN: Code duplicated, block: B:21:0x0054  */
    /* JADX WARN: Code duplicated, block: B:236:0x039e  */
    /* JADX WARN: Code duplicated, block: B:238:0x03aa  */
    /* JADX WARN: Code duplicated, block: B:239:0x03b2  */
    /* JADX WARN: Code duplicated, block: B:242:0x03b8  */
    /* JADX WARN: Code duplicated, block: B:243:0x03c1  */
    /* JADX WARN: Code duplicated, block: B:246:0x03e5  */
    /* JADX WARN: Code duplicated, block: B:247:0x03e8  */
    /* JADX WARN: Code duplicated, block: B:249:0x0443  */
    /* JADX WARN: Code duplicated, block: B:251:0x0457  */
    /* JADX WARN: Code duplicated, block: B:253:0x045d  */
    /* JADX WARN: Code duplicated, block: B:255:0x0463  */
    /* JADX WARN: Code duplicated, block: B:268:0x04bb  */
    /* JADX WARN: Code duplicated, block: B:272:0x04cf  */
    /* JADX WARN: Code duplicated, block: B:273:0x04d1  */
    /* JADX WARN: Code duplicated, block: B:275:0x04d4  */
    /* JADX WARN: Code duplicated, block: B:313:0x05b2  */
    /* JADX WARN: Code duplicated, block: B:315:0x05b8  */
    /* JADX WARN: Code duplicated, block: B:317:0x05c1  */
    /* JADX WARN: Code duplicated, block: B:318:0x05d1  */
    /* JADX WARN: Code duplicated, block: B:319:0x05e3  */
    /* JADX WARN: Code duplicated, block: B:322:0x05ed  */
    public void g(androidx.constraintlayout.core.d dVar, boolean z) {
        boolean z2;
        boolean z3;
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2;
        boolean z4;
        boolean z5;
        SolverVariable solverVariable;
        char c;
        int i;
        int i2;
        int i3;
        boolean z6;
        int i4;
        boolean z7;
        DimensionBehaviour dimensionBehaviour;
        DimensionBehaviour dimensionBehaviour2;
        boolean z8;
        int i5;
        SolverVariable solverVariable2;
        SolverVariable solverVariable3;
        int i6;
        int i7;
        char c2;
        ConstraintWidget constraintWidget3;
        boolean z9;
        boolean z10;
        ConstraintWidget constraintWidget4;
        boolean z11;
        m mVar;
        DependencyNode dependencyNode;
        ConstraintWidget constraintWidget5;
        SolverVariable solverVariableQ;
        ConstraintWidget constraintWidget6;
        SolverVariable solverVariableQ2;
        DimensionBehaviour[] dimensionBehaviourArr;
        boolean z12;
        k kVar;
        int i8;
        int i9;
        boolean zD0;
        boolean zF0;
        k kVar2;
        m mVar2;
        SolverVariable solverVariableQ3 = dVar.q(this.K);
        SolverVariable solverVariableQ4 = dVar.q(this.M);
        SolverVariable solverVariableQ5 = dVar.q(this.L);
        SolverVariable solverVariableQ6 = dVar.q(this.N);
        SolverVariable solverVariableQ7 = dVar.q(this.O);
        ConstraintWidget constraintWidget7 = this.W;
        if (constraintWidget7 == null) {
            z2 = false;
            z3 = false;
        } else {
            boolean z13 = constraintWidget7 != null && constraintWidget7.V[0] == DimensionBehaviour.WRAP_CONTENT;
            boolean z14 = constraintWidget7 != null && constraintWidget7.V[1] == DimensionBehaviour.WRAP_CONTENT;
            int i10 = this.r;
            if (i10 == 1) {
                z2 = z13;
                z3 = false;
            } else if (i10 == 2) {
                z3 = z14;
                z2 = false;
            } else if (i10 != 3) {
                z3 = z14;
                z2 = z13;
            } else {
                z2 = false;
                z3 = false;
            }
        }
        if (this.j0 == 8 && !W()) {
            boolean[] zArr = this.U;
            if (!zArr[0] && !zArr[1]) {
                return;
            }
        }
        boolean z15 = this.l;
        if (z15 || this.m) {
            if (z15) {
                dVar.f(solverVariableQ3, this.b0);
                dVar.f(solverVariableQ4, this.b0 + this.X);
                if (z2 && (constraintWidget2 = this.W) != null) {
                    if (this.i) {
                        d dVar2 = (d) constraintWidget2;
                        dVar2.q1(this.K);
                        dVar2.p1(this.M);
                    } else {
                        dVar.h(dVar.q(constraintWidget2.M), solverVariableQ4, 0, 5);
                    }
                }
            }
            if (this.m) {
                dVar.f(solverVariableQ5, this.c0);
                dVar.f(solverVariableQ6, this.c0 + this.Y);
                if (this.O.l()) {
                    dVar.f(solverVariableQ7, this.c0 + this.d0);
                }
                if (z3 && (constraintWidget = this.W) != null) {
                    if (this.i) {
                        d dVar3 = (d) constraintWidget;
                        dVar3.v1(this.L);
                        dVar3.u1(this.N);
                    } else {
                        dVar.h(dVar.q(constraintWidget.N), solverVariableQ6, 0, 5);
                    }
                }
            }
            if (this.l && this.m) {
                this.l = false;
                this.m = false;
                return;
            }
        }
        androidx.constraintlayout.core.e eVar = androidx.constraintlayout.core.d.x;
        if (eVar != null) {
            eVar.y++;
        }
        if (z && (kVar2 = this.f681d) != null && (mVar2 = this.f682e) != null) {
            DependencyNode dependencyNode2 = kVar2.f698h;
            if (dependencyNode2.j && kVar2.i.j && mVar2.f698h.j && mVar2.i.j) {
                if (eVar != null) {
                    eVar.r++;
                }
                dVar.f(solverVariableQ3, dependencyNode2.f691g);
                dVar.f(solverVariableQ4, this.f681d.i.f691g);
                dVar.f(solverVariableQ5, this.f682e.f698h.f691g);
                dVar.f(solverVariableQ6, this.f682e.i.f691g);
                dVar.f(solverVariableQ7, this.f682e.k.f691g);
                if (this.W != null) {
                    if (z2 && this.f683f[0] && !d0()) {
                        dVar.h(dVar.q(this.W.M), solverVariableQ4, 0, 8);
                    }
                    if (z3 && this.f683f[1] && !f0()) {
                        dVar.h(dVar.q(this.W.N), solverVariableQ6, 0, 8);
                    }
                }
                this.l = false;
                this.m = false;
                return;
            }
        }
        if (eVar != null) {
            eVar.s++;
        }
        if (this.W != null) {
            if (a0(0)) {
                ((d) this.W).m1(this, 0);
                zD0 = true;
            } else {
                zD0 = d0();
            }
            if (a0(1)) {
                ((d) this.W).m1(this, 1);
                zF0 = true;
            } else {
                zF0 = f0();
            }
            if (!zD0 && z2 && this.j0 != 8 && this.K.f676f == null && this.M.f676f == null) {
                dVar.h(dVar.q(this.W.M), solverVariableQ4, 0, 1);
            }
            if (!zF0 && z3 && this.j0 != 8 && this.L.f676f == null && this.N.f676f == null && this.O == null) {
                dVar.h(dVar.q(this.W.N), solverVariableQ6, 0, 1);
            }
            z5 = zD0;
            z4 = zF0;
        } else {
            z4 = false;
            z5 = false;
        }
        int i11 = this.X;
        int i12 = this.e0;
        if (i11 >= i12) {
            i12 = i11;
        }
        int i13 = this.Y;
        int i14 = this.f0;
        if (i13 >= i14) {
            i14 = i13;
        }
        DimensionBehaviour[] dimensionBehaviourArr2 = this.V;
        DimensionBehaviour dimensionBehaviour3 = dimensionBehaviourArr2[0];
        DimensionBehaviour dimensionBehaviour4 = DimensionBehaviour.MATCH_CONSTRAINT;
        int i15 = i12;
        boolean z16 = dimensionBehaviour3 != dimensionBehaviour4;
        int i16 = i14;
        boolean z17 = dimensionBehaviourArr2[1] != dimensionBehaviour4;
        int i17 = this.a0;
        this.B = i17;
        SolverVariable solverVariable4 = solverVariableQ7;
        float f2 = this.Z;
        this.C = f2;
        SolverVariable solverVariable5 = solverVariableQ6;
        int i18 = this.s;
        SolverVariable solverVariable6 = solverVariableQ5;
        int i19 = this.t;
        if (f2 > BitmapDescriptorFactory.HUE_RED) {
            solverVariable = solverVariableQ3;
            if (this.j0 != 8) {
                if (dimensionBehaviourArr2[0] == dimensionBehaviour4 && i18 == 0) {
                    i18 = 3;
                }
                if (dimensionBehaviourArr2[1] == dimensionBehaviour4 && i19 == 0) {
                    i19 = 3;
                }
                if (dimensionBehaviourArr2[0] == dimensionBehaviour4 && dimensionBehaviourArr2[1] == dimensionBehaviour4) {
                    i9 = 3;
                    if (i18 == 3 && i19 == 3) {
                        f1(z2, z3, z16, z17);
                    }
                    c = 0;
                    i = i18;
                    i2 = i15;
                    i3 = i16;
                    z6 = true;
                } else {
                    i9 = 3;
                }
                if (dimensionBehaviourArr2[0] == dimensionBehaviour4 && i18 == i9) {
                    this.B = 0;
                    i2 = (int) (f2 * i13);
                    if (dimensionBehaviourArr2[1] != dimensionBehaviour4) {
                        i19 = i19;
                        i3 = i16;
                        c = 0;
                        z6 = false;
                        i = 4;
                    } else {
                        i = i18;
                        i3 = i16;
                        c = 0;
                        z6 = true;
                    }
                } else {
                    if (dimensionBehaviourArr2[1] == dimensionBehaviour4 && i19 == 3) {
                        this.B = 1;
                        if (i17 == -1) {
                            this.C = 1.0f / f2;
                        }
                        int i20 = (int) (this.C * i11);
                        c = 0;
                        i3 = i20;
                        i = i18;
                        if (dimensionBehaviourArr2[0] != dimensionBehaviour4) {
                            i2 = i15;
                            z6 = false;
                            i19 = 4;
                        } else {
                            i2 = i15;
                        }
                    } else {
                        c = 0;
                        i = i18;
                        i2 = i15;
                        i3 = i16;
                    }
                    z6 = true;
                }
            }
            int[] iArr = this.u;
            iArr[c] = i;
            iArr[1] = i19;
            if (z6) {
                int i21 = this.B;
                i4 = -1;
                boolean z18 = i21 != 0 || i21 == -1;
                if (z6 || !((i8 = this.B) == 1 || i8 == i4)) {
                    z7 = false;
                } else {
                    z7 = true;
                }
                dimensionBehaviour = this.V[0];
                dimensionBehaviour2 = DimensionBehaviour.WRAP_CONTENT;
                if (dimensionBehaviour == dimensionBehaviour2 || !(this instanceof d)) {
                    z8 = false;
                } else {
                    z8 = true;
                }
                if (z8) {
                    i5 = 0;
                } else {
                    i5 = i2;
                }
                boolean z19 = !this.R.n();
                boolean[] zArr2 = this.U;
                boolean z20 = zArr2[0];
                boolean z21 = zArr2[1];
                if (this.p != 2 || this.l) {
                    solverVariable2 = solverVariableQ4;
                    solverVariable3 = solverVariable;
                } else if (!z || (kVar = this.f681d) == null) {
                    SolverVariable solverVariable7 = solverVariable;
                    constraintWidget5 = this.W;
                    if (constraintWidget5 != null) {
                        solverVariableQ = dVar.q(constraintWidget5.M);
                    } else {
                        solverVariableQ = null;
                    }
                    constraintWidget6 = this.W;
                    if (constraintWidget6 != null) {
                        solverVariableQ2 = dVar.q(constraintWidget6.K);
                    } else {
                        solverVariableQ2 = null;
                    }
                    boolean z22 = this.f683f[0];
                    dimensionBehaviourArr = this.V;
                    DimensionBehaviour dimensionBehaviour5 = dimensionBehaviourArr[0];
                    ConstraintAnchor constraintAnchor = this.K;
                    ConstraintAnchor constraintAnchor2 = this.M;
                    int i22 = this.b0;
                    int i23 = this.e0;
                    int i24 = this.D[0];
                    float f3 = this.g0;
                    if (dimensionBehaviourArr[1] == dimensionBehaviour4) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    solverVariable2 = solverVariableQ4;
                    solverVariable3 = solverVariable7;
                    i(dVar, true, z2, z3, z22, solverVariableQ2, solverVariableQ, dimensionBehaviour5, z8, constraintAnchor, constraintAnchor2, i22, i5, i23, i24, f3, z18, z12, z5, z4, z20, i, i19, this.v, this.w, this.x, z19);
                } else {
                    DependencyNode dependencyNode3 = kVar.f698h;
                    if (!dependencyNode3.j || !kVar.i.j) {
                        SolverVariable solverVariable8 = solverVariable;
                        constraintWidget5 = this.W;
                        if (constraintWidget5 != null) {
                            solverVariableQ = dVar.q(constraintWidget5.M);
                        } else {
                            solverVariableQ = null;
                        }
                        constraintWidget6 = this.W;
                        if (constraintWidget6 != null) {
                            solverVariableQ2 = dVar.q(constraintWidget6.K);
                        } else {
                            solverVariableQ2 = null;
                        }
                        boolean z23 = this.f683f[0];
                        dimensionBehaviourArr = this.V;
                        DimensionBehaviour dimensionBehaviour6 = dimensionBehaviourArr[0];
                        ConstraintAnchor constraintAnchor3 = this.K;
                        ConstraintAnchor constraintAnchor4 = this.M;
                        int i25 = this.b0;
                        int i26 = this.e0;
                        int i27 = this.D[0];
                        float f4 = this.g0;
                        if (dimensionBehaviourArr[1] == dimensionBehaviour4) {
                            z12 = true;
                        } else {
                            z12 = false;
                        }
                        solverVariable2 = solverVariableQ4;
                        solverVariable3 = solverVariable8;
                        i(dVar, true, z2, z3, z23, solverVariableQ2, solverVariableQ, dimensionBehaviour6, z8, constraintAnchor3, constraintAnchor4, i25, i5, i26, i27, f4, z18, z12, z5, z4, z20, i, i19, this.v, this.w, this.x, z19);
                    } else if (z) {
                        SolverVariable solverVariable9 = solverVariable;
                        dVar.f(solverVariable9, dependencyNode3.f691g);
                        dVar.f(solverVariableQ4, this.f681d.i.f691g);
                        if (this.W != null && z2 && this.f683f[0] && !d0()) {
                            dVar.h(dVar.q(this.W.M), solverVariableQ4, 0, 8);
                        }
                        solverVariable2 = solverVariableQ4;
                        solverVariable3 = solverVariable9;
                    } else {
                        solverVariable2 = solverVariableQ4;
                        solverVariable3 = solverVariable;
                    }
                }
                if (z) {
                    constraintWidget3 = this;
                    mVar = constraintWidget3.f682e;
                    if (mVar != null) {
                        dependencyNode = mVar.f698h;
                        if (!dependencyNode.j && mVar.i.j) {
                            dVar = dVar;
                            solverVariable6 = solverVariable6;
                            dVar.f(solverVariable6, dependencyNode.f691g);
                            solverVariable5 = solverVariable5;
                            dVar.f(solverVariable5, constraintWidget3.f682e.i.f691g);
                            solverVariable4 = solverVariable4;
                            dVar.f(solverVariable4, constraintWidget3.f682e.k.f691g);
                            ConstraintWidget constraintWidget8 = constraintWidget3.W;
                            if (constraintWidget8 == null || z4 || !z3) {
                                i6 = 8;
                                i7 = 0;
                                c2 = 1;
                            } else {
                                c2 = 1;
                                if (constraintWidget3.f683f[1]) {
                                    i6 = 8;
                                    i7 = 0;
                                    dVar.h(dVar.q(constraintWidget8.N), solverVariable5, 0, 8);
                                } else {
                                    i6 = 8;
                                    i7 = 0;
                                }
                            }
                            z9 = false;
                        }
                        if (constraintWidget3.q == 2) {
                            z10 = false;
                        } else {
                            z10 = z9;
                        }
                        if (!z10 && !constraintWidget3.m) {
                            boolean z24 = constraintWidget3.V[c2] == dimensionBehaviour2 && (constraintWidget3 instanceof d);
                            if (z24) {
                                i3 = 0;
                            }
                            ConstraintWidget constraintWidget9 = constraintWidget3.W;
                            SolverVariable solverVariableQ8 = constraintWidget9 != null ? dVar.q(constraintWidget9.N) : null;
                            ConstraintWidget constraintWidget10 = constraintWidget3.W;
                            SolverVariable solverVariableQ9 = constraintWidget10 != null ? dVar.q(constraintWidget10.L) : null;
                            if (constraintWidget3.d0 > 0 || constraintWidget3.j0 == i6) {
                                ConstraintAnchor constraintAnchor5 = constraintWidget3.O;
                                if (constraintAnchor5.f676f != null) {
                                    dVar.e(solverVariable4, solverVariable6, n(), i6);
                                    dVar.e(solverVariable4, dVar.q(constraintWidget3.O.f676f), constraintWidget3.O.e(), i6);
                                    if (z3 != 0) {
                                        dVar.h(solverVariableQ8, dVar.q(constraintWidget3.N), i7, 5);
                                    }
                                    z11 = false;
                                } else {
                                    if (constraintWidget3.j0 == i6) {
                                        dVar.e(solverVariable4, solverVariable6, constraintAnchor5.e(), i6);
                                    } else {
                                        dVar.e(solverVariable4, solverVariable6, n(), i6);
                                    }
                                    z11 = z19;
                                }
                            } else {
                                z11 = z19;
                            }
                            boolean z25 = constraintWidget3.f683f[c2];
                            DimensionBehaviour[] dimensionBehaviourArr3 = constraintWidget3.V;
                            i(dVar, false, z3, z2, z25, solverVariableQ9, solverVariableQ8, dimensionBehaviourArr3[c2], z24, constraintWidget3.L, constraintWidget3.N, constraintWidget3.c0, i3, constraintWidget3.f0, constraintWidget3.D[c2], constraintWidget3.h0, z7, dimensionBehaviourArr3[0] == dimensionBehaviour4, z4, z5, z21, i19, i, constraintWidget3.y, constraintWidget3.z, constraintWidget3.A, z11);
                        }
                        if (z6) {
                            constraintWidget4 = this;
                            if (constraintWidget4.B == 1) {
                                dVar.k(solverVariable5, solverVariable6, solverVariable2, solverVariable3, constraintWidget4.C, 8);
                            } else {
                                dVar.k(solverVariable2, solverVariable3, solverVariable5, solverVariable6, constraintWidget4.C, 8);
                            }
                        } else {
                            constraintWidget4 = this;
                        }
                        if (constraintWidget4.R.n()) {
                            dVar.b(constraintWidget4, constraintWidget4.R.i().g(), (float) Math.toRadians(constraintWidget4.E + 90.0f), constraintWidget4.R.e());
                        }
                        constraintWidget4.l = false;
                        constraintWidget4.m = false;
                    }
                    i6 = 8;
                    i7 = 0;
                    c2 = 1;
                } else {
                    i6 = 8;
                    i7 = 0;
                    c2 = 1;
                    constraintWidget3 = this;
                }
                z9 = true;
                if (constraintWidget3.q == 2) {
                    z10 = false;
                } else {
                    z10 = z9;
                }
                if (!z10) {
                }
                if (z6) {
                    constraintWidget4 = this;
                    if (constraintWidget4.B == 1) {
                        dVar.k(solverVariable5, solverVariable6, solverVariable2, solverVariable3, constraintWidget4.C, 8);
                    } else {
                        dVar.k(solverVariable2, solverVariable3, solverVariable5, solverVariable6, constraintWidget4.C, 8);
                    }
                } else {
                    constraintWidget4 = this;
                }
                if (constraintWidget4.R.n()) {
                    dVar.b(constraintWidget4, constraintWidget4.R.i().g(), (float) Math.toRadians(constraintWidget4.E + 90.0f), constraintWidget4.R.e());
                }
                constraintWidget4.l = false;
                constraintWidget4.m = false;
            }
            i4 = -1;
            if (z6) {
                z7 = false;
            } else {
                z7 = false;
            }
            dimensionBehaviour = this.V[0];
            dimensionBehaviour2 = DimensionBehaviour.WRAP_CONTENT;
            if (dimensionBehaviour == dimensionBehaviour2) {
                z8 = false;
            } else {
                z8 = false;
            }
            if (z8) {
                i5 = 0;
            } else {
                i5 = i2;
            }
            boolean z110 = !this.R.n();
            boolean[] zArr3 = this.U;
            boolean z26 = zArr3[0];
            boolean z27 = zArr3[1];
            if (this.p != 2) {
                solverVariable2 = solverVariableQ4;
                solverVariable3 = solverVariable;
            } else {
                solverVariable2 = solverVariableQ4;
                solverVariable3 = solverVariable;
            }
            if (z) {
                constraintWidget3 = this;
                mVar = constraintWidget3.f682e;
                if (mVar != null) {
                    dependencyNode = mVar.f698h;
                    if (!dependencyNode.j) {
                    }
                }
                i6 = 8;
                i7 = 0;
                c2 = 1;
            } else {
                i6 = 8;
                i7 = 0;
                c2 = 1;
                constraintWidget3 = this;
            }
            z9 = true;
            if (constraintWidget3.q == 2) {
                z10 = false;
            } else {
                z10 = z9;
            }
            if (!z10) {
            }
            if (z6) {
                constraintWidget4 = this;
                if (constraintWidget4.B == 1) {
                    dVar.k(solverVariable5, solverVariable6, solverVariable2, solverVariable3, constraintWidget4.C, 8);
                } else {
                    dVar.k(solverVariable2, solverVariable3, solverVariable5, solverVariable6, constraintWidget4.C, 8);
                }
            } else {
                constraintWidget4 = this;
            }
            if (constraintWidget4.R.n()) {
                dVar.b(constraintWidget4, constraintWidget4.R.i().g(), (float) Math.toRadians(constraintWidget4.E + 90.0f), constraintWidget4.R.e());
            }
            constraintWidget4.l = false;
            constraintWidget4.m = false;
        }
        solverVariable = solverVariableQ3;
        c = 0;
        i = i18;
        i19 = i19;
        i2 = i15;
        i3 = i16;
        z6 = false;
        int[] iArr2 = this.u;
        iArr2[c] = i;
        iArr2[1] = i19;
        if (z6) {
            int i28 = this.B;
            i4 = -1;
            if (i28 != 0) {
            }
            if (z6) {
                z7 = false;
            } else {
                z7 = false;
            }
            dimensionBehaviour = this.V[0];
            dimensionBehaviour2 = DimensionBehaviour.WRAP_CONTENT;
            if (dimensionBehaviour == dimensionBehaviour2) {
                z8 = false;
            } else {
                z8 = false;
            }
            if (z8) {
                i5 = 0;
            } else {
                i5 = i2;
            }
            boolean z111 = !this.R.n();
            boolean[] zArr4 = this.U;
            boolean z28 = zArr4[0];
            boolean z29 = zArr4[1];
            if (this.p != 2) {
                solverVariable2 = solverVariableQ4;
                solverVariable3 = solverVariable;
            } else {
                solverVariable2 = solverVariableQ4;
                solverVariable3 = solverVariable;
            }
            if (z) {
                constraintWidget3 = this;
                mVar = constraintWidget3.f682e;
                if (mVar != null) {
                    dependencyNode = mVar.f698h;
                    if (!dependencyNode.j) {
                    }
                }
                i6 = 8;
                i7 = 0;
                c2 = 1;
            } else {
                i6 = 8;
                i7 = 0;
                c2 = 1;
                constraintWidget3 = this;
            }
            z9 = true;
            if (constraintWidget3.q == 2) {
                z10 = false;
            } else {
                z10 = z9;
            }
            if (!z10) {
            }
            if (z6) {
                constraintWidget4 = this;
                if (constraintWidget4.B == 1) {
                    dVar.k(solverVariable5, solverVariable6, solverVariable2, solverVariable3, constraintWidget4.C, 8);
                } else {
                    dVar.k(solverVariable2, solverVariable3, solverVariable5, solverVariable6, constraintWidget4.C, 8);
                }
            } else {
                constraintWidget4 = this;
            }
            if (constraintWidget4.R.n()) {
                dVar.b(constraintWidget4, constraintWidget4.R.i().g(), (float) Math.toRadians(constraintWidget4.E + 90.0f), constraintWidget4.R.e());
            }
            constraintWidget4.l = false;
            constraintWidget4.m = false;
        }
        i4 = -1;
        if (z6) {
            z7 = false;
        } else {
            z7 = false;
        }
        dimensionBehaviour = this.V[0];
        dimensionBehaviour2 = DimensionBehaviour.WRAP_CONTENT;
        if (dimensionBehaviour == dimensionBehaviour2) {
            z8 = false;
        } else {
            z8 = false;
        }
        if (z8) {
            i5 = 0;
        } else {
            i5 = i2;
        }
        boolean z112 = !this.R.n();
        boolean[] zArr5 = this.U;
        boolean z210 = zArr5[0];
        boolean z211 = zArr5[1];
        if (this.p != 2) {
            solverVariable2 = solverVariableQ4;
            solverVariable3 = solverVariable;
        } else {
            solverVariable2 = solverVariableQ4;
            solverVariable3 = solverVariable;
        }
        if (z) {
            constraintWidget3 = this;
            mVar = constraintWidget3.f682e;
            if (mVar != null) {
                dependencyNode = mVar.f698h;
                if (!dependencyNode.j) {
                }
            }
            i6 = 8;
            i7 = 0;
            c2 = 1;
        } else {
            i6 = 8;
            i7 = 0;
            c2 = 1;
            constraintWidget3 = this;
        }
        z9 = true;
        if (constraintWidget3.q == 2) {
            z10 = false;
        } else {
            z10 = z9;
        }
        if (!z10) {
        }
        if (z6) {
            constraintWidget4 = this;
            if (constraintWidget4.B == 1) {
                dVar.k(solverVariable5, solverVariable6, solverVariable2, solverVariable3, constraintWidget4.C, 8);
            } else {
                dVar.k(solverVariable2, solverVariable3, solverVariable5, solverVariable6, constraintWidget4.C, 8);
            }
        } else {
            constraintWidget4 = this;
        }
        if (constraintWidget4.R.n()) {
            dVar.b(constraintWidget4, constraintWidget4.R.i().g(), (float) Math.toRadians(constraintWidget4.E + 90.0f), constraintWidget4.R.e());
        }
        constraintWidget4.l = false;
        constraintWidget4.m = false;
    }

    public boolean g0() {
        return this.H;
    }

    public void g1(boolean z, boolean z2) {
        int i;
        int i2;
        boolean zK = z & this.f681d.k();
        boolean zK2 = z2 & this.f682e.k();
        k kVar = this.f681d;
        int i3 = kVar.f698h.f691g;
        m mVar = this.f682e;
        int i4 = mVar.f698h.f691g;
        int i5 = kVar.i.f691g;
        int i6 = mVar.i.f691g;
        int i7 = i6 - i4;
        if (i5 - i3 < 0 || i7 < 0 || i3 == Integer.MIN_VALUE || i3 == Integer.MAX_VALUE || i4 == Integer.MIN_VALUE || i4 == Integer.MAX_VALUE || i5 == Integer.MIN_VALUE || i5 == Integer.MAX_VALUE || i6 == Integer.MIN_VALUE || i6 == Integer.MAX_VALUE) {
            i5 = 0;
            i3 = 0;
            i6 = 0;
            i4 = 0;
        }
        int i8 = i5 - i3;
        int i9 = i6 - i4;
        if (zK) {
            this.b0 = i3;
        }
        if (zK2) {
            this.c0 = i4;
        }
        if (this.j0 == 8) {
            this.X = 0;
            this.Y = 0;
            return;
        }
        if (zK) {
            if (this.V[0] == DimensionBehaviour.FIXED && i8 < (i2 = this.X)) {
                i8 = i2;
            }
            this.X = i8;
            int i10 = this.e0;
            if (i8 < i10) {
                this.X = i10;
            }
        }
        if (zK2) {
            if (this.V[1] == DimensionBehaviour.FIXED && i9 < (i = this.Y)) {
                i9 = i;
            }
            this.Y = i9;
            int i11 = this.f0;
            if (i9 < i11) {
                this.Y = i11;
            }
        }
    }

    public boolean h() {
        return this.j0 != 8;
    }

    public boolean h0() {
        return this.f684g && this.j0 != 8;
    }

    public void h1(androidx.constraintlayout.core.d dVar, boolean z) {
        m mVar;
        k kVar;
        int iY = dVar.y(this.K);
        int iY2 = dVar.y(this.L);
        int iY3 = dVar.y(this.M);
        int iY4 = dVar.y(this.N);
        if (z && (kVar = this.f681d) != null) {
            DependencyNode dependencyNode = kVar.f698h;
            if (dependencyNode.j) {
                DependencyNode dependencyNode2 = kVar.i;
                if (dependencyNode2.j) {
                    iY = dependencyNode.f691g;
                    iY3 = dependencyNode2.f691g;
                }
            }
        }
        if (z && (mVar = this.f682e) != null) {
            DependencyNode dependencyNode3 = mVar.f698h;
            if (dependencyNode3.j) {
                DependencyNode dependencyNode4 = mVar.i;
                if (dependencyNode4.j) {
                    iY2 = dependencyNode3.f691g;
                    iY4 = dependencyNode4.f691g;
                }
            }
        }
        int i = iY4 - iY2;
        if (iY3 - iY < 0 || i < 0 || iY == Integer.MIN_VALUE || iY == Integer.MAX_VALUE || iY2 == Integer.MIN_VALUE || iY2 == Integer.MAX_VALUE || iY3 == Integer.MIN_VALUE || iY3 == Integer.MAX_VALUE || iY4 == Integer.MIN_VALUE || iY4 == Integer.MAX_VALUE) {
            iY4 = 0;
            iY = 0;
            iY2 = 0;
            iY3 = 0;
        }
        A0(iY, iY2, iY3, iY4);
    }

    public boolean i0() {
        return this.l || (this.K.m() && this.M.m());
    }

    public void j(ConstraintWidget constraintWidget, float f2, int i) {
        ConstraintAnchor.Type type = ConstraintAnchor.Type.CENTER;
        Z(type, constraintWidget, type, i, 0);
        this.E = f2;
    }

    public boolean j0() {
        return this.m || (this.L.m() && this.N.m());
    }

    public void k(androidx.constraintlayout.core.d dVar) {
        dVar.q(this.K);
        dVar.q(this.L);
        dVar.q(this.M);
        dVar.q(this.N);
        if (this.d0 > 0) {
            dVar.q(this.O);
        }
    }

    public boolean k0() {
        return this.o;
    }

    public void l() {
        if (this.f681d == null) {
            this.f681d = new k(this);
        }
        if (this.f682e == null) {
            this.f682e = new m(this);
        }
    }

    public void l0() {
        this.n = true;
    }

    public ConstraintAnchor m(ConstraintAnchor.Type type) {
        switch (a.f686a[type.ordinal()]) {
            case 1:
                return this.K;
            case 2:
                return this.L;
            case 3:
                return this.M;
            case 4:
                return this.N;
            case 5:
                return this.O;
            case 6:
                return this.R;
            case 7:
                return this.P;
            case 8:
                return this.Q;
            case 9:
                return null;
            default:
                throw new AssertionError(type.name());
        }
    }

    public void m0() {
        this.o = true;
    }

    public int n() {
        return this.d0;
    }

    public boolean n0() {
        DimensionBehaviour[] dimensionBehaviourArr = this.V;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.MATCH_CONSTRAINT;
        return dimensionBehaviour == dimensionBehaviour2 && dimensionBehaviourArr[1] == dimensionBehaviour2;
    }

    public float o(int i) {
        if (i == 0) {
            return this.g0;
        }
        if (i == 1) {
            return this.h0;
        }
        return -1.0f;
    }

    public void o0() {
        this.K.p();
        this.L.p();
        this.M.p();
        this.N.p();
        this.O.p();
        this.P.p();
        this.Q.p();
        this.R.p();
        this.W = null;
        this.E = BitmapDescriptorFactory.HUE_RED;
        this.X = 0;
        this.Y = 0;
        this.Z = BitmapDescriptorFactory.HUE_RED;
        this.a0 = -1;
        this.b0 = 0;
        this.c0 = 0;
        this.d0 = 0;
        this.e0 = 0;
        this.f0 = 0;
        float f2 = t0;
        this.g0 = f2;
        this.h0 = f2;
        DimensionBehaviour[] dimensionBehaviourArr = this.V;
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        dimensionBehaviourArr[0] = dimensionBehaviour;
        dimensionBehaviourArr[1] = dimensionBehaviour;
        this.i0 = null;
        this.j0 = 0;
        this.l0 = null;
        this.m0 = 0;
        this.n0 = 0;
        float[] fArr = this.o0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.p = -1;
        this.q = -1;
        int[] iArr = this.D;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.s = 0;
        this.t = 0;
        this.x = 1.0f;
        this.A = 1.0f;
        this.w = Integer.MAX_VALUE;
        this.z = Integer.MAX_VALUE;
        this.v = 0;
        this.y = 0;
        this.B = -1;
        this.C = 1.0f;
        boolean[] zArr = this.f683f;
        zArr[0] = true;
        zArr[1] = true;
        this.H = false;
        boolean[] zArr2 = this.U;
        zArr2[0] = false;
        zArr2[1] = false;
        this.f684g = true;
        int[] iArr2 = this.u;
        iArr2[0] = 0;
        iArr2[1] = 0;
        this.j = -1;
        this.k = -1;
    }

    public int p() {
        return T() + this.Y;
    }

    public void p0() {
        this.l = false;
        this.m = false;
        this.n = false;
        this.o = false;
        int size = this.T.size();
        for (int i = 0; i < size; i++) {
            this.T.get(i).q();
        }
    }

    public Object q() {
        return this.i0;
    }

    public void q0(androidx.constraintlayout.core.c cVar) {
        this.K.r(cVar);
        this.L.r(cVar);
        this.M.r(cVar);
        this.N.r(cVar);
        this.O.r(cVar);
        this.R.r(cVar);
        this.P.r(cVar);
        this.Q.r(cVar);
    }

    public String r() {
        return this.k0;
    }

    public void r0(int i) {
        this.d0 = i;
        this.F = i > 0;
    }

    public DimensionBehaviour s(int i) {
        if (i == 0) {
            return y();
        }
        if (i == 1) {
            return O();
        }
        return null;
    }

    public void s0(Object obj) {
        this.i0 = obj;
    }

    public float t() {
        return this.Z;
    }

    public void t0(String str) {
        this.k0 = str;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (this.l0 != null) {
            str = "type: " + this.l0 + " ";
        } else {
            str = "";
        }
        sb.append(str);
        if (this.k0 != null) {
            str2 = "id: " + this.k0 + " ";
        }
        sb.append(str2);
        sb.append("(");
        sb.append(this.b0);
        sb.append(", ");
        sb.append(this.c0);
        sb.append(") - (");
        sb.append(this.X);
        sb.append(" x ");
        sb.append(this.Y);
        sb.append(")");
        return sb.toString();
    }

    public int u() {
        return this.a0;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0084 A[PHI: r0
      0x0084: PHI (r0v2 int) = (r0v1 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int) binds: [B:45:0x0084, B:35:0x007d, B:23:0x004f, B:25:0x0055, B:27:0x0061, B:29:0x0065] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0084 -> B:39:0x0085). Please report as a decompilation issue!!! */
    public void u0(String str) {
        float fAbs;
        int i = 0;
        if (str == null || str.length() == 0) {
            this.Z = BitmapDescriptorFactory.HUE_RED;
            return;
        }
        int i2 = -1;
        int length = str.length();
        int iIndexOf = str.indexOf(44);
        int i3 = 0;
        if (iIndexOf > 0 && iIndexOf < length - 1) {
            String strSubstring = str.substring(0, iIndexOf);
            if (strSubstring.equalsIgnoreCase(ExifInterface.LONGITUDE_WEST)) {
                i2 = 0;
            } else if (strSubstring.equalsIgnoreCase("H")) {
                i2 = 1;
            }
            i3 = iIndexOf + 1;
        }
        int iIndexOf2 = str.indexOf(58);
        try {
            if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                String strSubstring2 = str.substring(i3);
                if (strSubstring2.length() > 0) {
                    fAbs = Float.parseFloat(strSubstring2);
                } else {
                    fAbs = BitmapDescriptorFactory.HUE_RED;
                }
            } else {
                String strSubstring3 = str.substring(i3, iIndexOf2);
                String strSubstring4 = str.substring(iIndexOf2 + 1);
                if (strSubstring3.length() <= 0 || strSubstring4.length() <= 0) {
                    fAbs = BitmapDescriptorFactory.HUE_RED;
                } else {
                    float f2 = Float.parseFloat(strSubstring3);
                    float f3 = Float.parseFloat(strSubstring4);
                    if (f2 <= BitmapDescriptorFactory.HUE_RED || f3 <= BitmapDescriptorFactory.HUE_RED) {
                        fAbs = BitmapDescriptorFactory.HUE_RED;
                    } else {
                        fAbs = i2 == 1 ? Math.abs(f3 / f2) : Math.abs(f2 / f3);
                    }
                }
            }
        } catch (NumberFormatException unused) {
        }
        i = (fAbs > i ? 1 : (fAbs == i ? 0 : -1));
        if (i > 0) {
            this.Z = fAbs;
            this.a0 = i2;
        }
    }

    public int v() {
        if (this.j0 == 8) {
            return 0;
        }
        return this.Y;
    }

    public void v0(int i) {
        if (this.F) {
            int i2 = i - this.d0;
            int i3 = this.Y + i2;
            this.c0 = i2;
            this.L.s(i2);
            this.N.s(i3);
            this.O.s(i);
            this.m = true;
        }
    }

    public float w() {
        return this.g0;
    }

    public void w0(int i, int i2) {
        if (this.l) {
            return;
        }
        this.K.s(i);
        this.M.s(i2);
        this.b0 = i;
        this.X = i2 - i;
        this.l = true;
    }

    public int x() {
        return this.m0;
    }

    public void x0(int i) {
        this.K.s(i);
        this.b0 = i;
    }

    public DimensionBehaviour y() {
        return this.V[0];
    }

    public void y0(int i) {
        this.L.s(i);
        this.c0 = i;
    }

    public int z() {
        ConstraintAnchor constraintAnchor = this.K;
        int i = constraintAnchor != null ? 0 + constraintAnchor.f677g : 0;
        ConstraintAnchor constraintAnchor2 = this.M;
        return constraintAnchor2 != null ? i + constraintAnchor2.f677g : i;
    }

    public void z0(int i, int i2) {
        if (this.m) {
            return;
        }
        this.L.s(i);
        this.N.s(i2);
        this.c0 = i;
        this.Y = i2 - i;
        if (this.F) {
            this.O.s(i + this.d0);
        }
        this.m = true;
    }
}
