package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.reflect.jvm.internal.impl.types.Variance;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes6.dex */
public final class v {
    public static final v k;
    public static final v l;
    public static final v m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f15239a;
    private final boolean b;
    private final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f15240d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f15241e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final v f15242f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f15243g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final v f15244h;
    private final v i;
    private final boolean j;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15245a;

        static {
            int[] iArr = new int[Variance.values().length];
            iArr[Variance.IN_VARIANCE.ordinal()] = 1;
            iArr[Variance.INVARIANT.ordinal()] = 2;
            f15245a = iArr;
        }
    }

    static {
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        v vVar = null;
        v vVar2 = null;
        boolean z7 = false;
        kotlin.jvm.internal.o oVar = null;
        v vVar3 = new v(z, z2, z3, z4, z5, null, z6, vVar, vVar2, z7, 1023, oVar);
        k = vVar3;
        l = new v(false, false, false, false, false, null, false, null, null, true, Videoio.CAP_PROP_XI_LENS_MODE, null);
        m = new v(z, z2, z3, z4, z5, vVar3, z6, vVar, vVar2, z7, 988, oVar);
    }

    public v(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, v vVar, boolean z6, v vVar2, v vVar3, boolean z7) {
        this.f15239a = z;
        this.b = z2;
        this.c = z3;
        this.f15240d = z4;
        this.f15241e = z5;
        this.f15242f = vVar;
        this.f15243g = z6;
        this.f15244h = vVar2;
        this.i = vVar3;
        this.j = z7;
    }

    public final boolean a() {
        return this.f15243g;
    }

    public final boolean b() {
        return this.j;
    }

    public final boolean c() {
        return this.b;
    }

    public final boolean d() {
        return this.f15239a;
    }

    public final boolean e() {
        return this.c;
    }

    public final v f(Variance effectiveVariance, boolean z) {
        kotlin.jvm.internal.r.e(effectiveVariance, "effectiveVariance");
        if (!z || !this.c) {
            int i = a.f15245a[effectiveVariance.ordinal()];
            if (i == 1) {
                v vVar = this.f15244h;
                if (vVar != null) {
                    return vVar;
                }
            } else if (i != 2) {
                v vVar2 = this.f15242f;
                if (vVar2 != null) {
                    return vVar2;
                }
            } else {
                v vVar3 = this.i;
                if (vVar3 != null) {
                    return vVar3;
                }
            }
        }
        return this;
    }

    public final v g() {
        return new v(this.f15239a, true, this.c, this.f15240d, this.f15241e, this.f15242f, this.f15243g, this.f15244h, this.i, false, 512, null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ v(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, v vVar, boolean z6, v vVar2, v vVar3, boolean z7, int i, kotlin.jvm.internal.o oVar) {
        boolean z8 = (i & 1) != 0 ? true : z;
        boolean z9 = (i & 2) != 0 ? true : z2;
        boolean z10 = (i & 4) != 0 ? false : z3;
        boolean z11 = (i & 8) != 0 ? false : z4;
        boolean z12 = (i & 16) != 0 ? false : z5;
        v vVar4 = (i & 32) != 0 ? null : vVar;
        this(z8, z9, z10, z11, z12, vVar4, (i & 64) == 0 ? z6 : true, (i & 128) != 0 ? vVar4 : vVar2, (i & 256) != 0 ? vVar4 : vVar3, (i & 512) == 0 ? z7 : false);
    }
}
