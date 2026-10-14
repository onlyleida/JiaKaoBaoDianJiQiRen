package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.analyzer.n;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintAnchor {
    private int b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ConstraintWidget f674d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Type f675e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ConstraintAnchor f676f;
    SolverVariable i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashSet<ConstraintAnchor> f673a = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f677g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f678h = Integer.MIN_VALUE;

    public enum Type {
        NONE,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        BASELINE,
        CENTER,
        CENTER_X,
        CENTER_Y
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f679a;

        static {
            int[] iArr = new int[Type.values().length];
            f679a = iArr;
            try {
                iArr[Type.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f679a[Type.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f679a[Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f679a[Type.TOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f679a[Type.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f679a[Type.BASELINE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f679a[Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f679a[Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f679a[Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public ConstraintAnchor(ConstraintWidget constraintWidget, Type type) {
        this.f674d = constraintWidget;
        this.f675e = type;
    }

    public boolean a(ConstraintAnchor constraintAnchor, int i, int i2, boolean z) {
        if (constraintAnchor == null) {
            p();
            return true;
        }
        if (!z && !o(constraintAnchor)) {
            return false;
        }
        this.f676f = constraintAnchor;
        if (constraintAnchor.f673a == null) {
            constraintAnchor.f673a = new HashSet<>();
        }
        HashSet<ConstraintAnchor> hashSet = this.f676f.f673a;
        if (hashSet != null) {
            hashSet.add(this);
        }
        this.f677g = i;
        this.f678h = i2;
        return true;
    }

    public void b(int i, ArrayList<n> arrayList, n nVar) {
        HashSet<ConstraintAnchor> hashSet = this.f673a;
        if (hashSet != null) {
            Iterator<ConstraintAnchor> it = hashSet.iterator();
            while (it.hasNext()) {
                androidx.constraintlayout.core.widgets.analyzer.h.a(it.next().f674d, i, arrayList, nVar);
            }
        }
    }

    public HashSet<ConstraintAnchor> c() {
        return this.f673a;
    }

    public int d() {
        if (this.c) {
            return this.b;
        }
        return 0;
    }

    public int e() {
        ConstraintAnchor constraintAnchor;
        if (this.f674d.Q() == 8) {
            return 0;
        }
        return (this.f678h == Integer.MIN_VALUE || (constraintAnchor = this.f676f) == null || constraintAnchor.f674d.Q() != 8) ? this.f677g : this.f678h;
    }

    public final ConstraintAnchor f() {
        switch (a.f679a[this.f675e.ordinal()]) {
            case 1:
            case 6:
            case 7:
            case 8:
            case 9:
                return null;
            case 2:
                return this.f674d.M;
            case 3:
                return this.f674d.K;
            case 4:
                return this.f674d.N;
            case 5:
                return this.f674d.L;
            default:
                throw new AssertionError(this.f675e.name());
        }
    }

    public ConstraintWidget g() {
        return this.f674d;
    }

    public SolverVariable h() {
        return this.i;
    }

    public ConstraintAnchor i() {
        return this.f676f;
    }

    public Type j() {
        return this.f675e;
    }

    public boolean k() {
        HashSet<ConstraintAnchor> hashSet = this.f673a;
        if (hashSet == null) {
            return false;
        }
        Iterator<ConstraintAnchor> it = hashSet.iterator();
        while (it.hasNext()) {
            if (it.next().f().n()) {
                return true;
            }
        }
        return false;
    }

    public boolean l() {
        HashSet<ConstraintAnchor> hashSet = this.f673a;
        return hashSet != null && hashSet.size() > 0;
    }

    public boolean m() {
        return this.c;
    }

    public boolean n() {
        return this.f676f != null;
    }

    public boolean o(ConstraintAnchor constraintAnchor) {
        if (constraintAnchor == null) {
            return false;
        }
        Type typeJ = constraintAnchor.j();
        Type type = this.f675e;
        if (typeJ == type) {
            return type != Type.BASELINE || (constraintAnchor.g().U() && g().U());
        }
        switch (a.f679a[type.ordinal()]) {
            case 1:
                return (typeJ == Type.BASELINE || typeJ == Type.CENTER_X || typeJ == Type.CENTER_Y) ? false : true;
            case 2:
            case 3:
                boolean z = typeJ == Type.LEFT || typeJ == Type.RIGHT;
                if (constraintAnchor.g() instanceof e) {
                    return z || typeJ == Type.CENTER_X;
                }
                return z;
            case 4:
            case 5:
                boolean z2 = typeJ == Type.TOP || typeJ == Type.BOTTOM;
                if (constraintAnchor.g() instanceof e) {
                    return z2 || typeJ == Type.CENTER_Y;
                }
                return z2;
            case 6:
                return (typeJ == Type.LEFT || typeJ == Type.RIGHT) ? false : true;
            case 7:
            case 8:
            case 9:
                return false;
            default:
                throw new AssertionError(this.f675e.name());
        }
    }

    public void p() {
        HashSet<ConstraintAnchor> hashSet;
        ConstraintAnchor constraintAnchor = this.f676f;
        if (constraintAnchor != null && (hashSet = constraintAnchor.f673a) != null) {
            hashSet.remove(this);
            if (this.f676f.f673a.size() == 0) {
                this.f676f.f673a = null;
            }
        }
        this.f673a = null;
        this.f676f = null;
        this.f677g = 0;
        this.f678h = Integer.MIN_VALUE;
        this.c = false;
        this.b = 0;
    }

    public void q() {
        this.c = false;
        this.b = 0;
    }

    public void r(androidx.constraintlayout.core.c cVar) {
        SolverVariable solverVariable = this.i;
        if (solverVariable == null) {
            this.i = new SolverVariable(SolverVariable.Type.UNRESTRICTED, null);
        } else {
            solverVariable.e();
        }
    }

    public void s(int i) {
        this.b = i;
        this.c = true;
    }

    public String toString() {
        return this.f674d.r() + ":" + this.f675e.toString();
    }
}
