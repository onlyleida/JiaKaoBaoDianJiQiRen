package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.KotlinVersion;

/* JADX INFO: loaded from: classes6.dex */
public final class o {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f15132d = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final o f15133e = new o(ReportLevel.STRICT, null, null, 6, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ReportLevel f15134a;
    private final KotlinVersion b;
    private final ReportLevel c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final o a() {
            return o.f15133e;
        }
    }

    public o(ReportLevel reportLevelBefore, KotlinVersion kotlinVersion, ReportLevel reportLevelAfter) {
        kotlin.jvm.internal.r.e(reportLevelBefore, "reportLevelBefore");
        kotlin.jvm.internal.r.e(reportLevelAfter, "reportLevelAfter");
        this.f15134a = reportLevelBefore;
        this.b = kotlinVersion;
        this.c = reportLevelAfter;
    }

    public final ReportLevel b() {
        return this.c;
    }

    public final ReportLevel c() {
        return this.f15134a;
    }

    public final KotlinVersion d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return this.f15134a == oVar.f15134a && kotlin.jvm.internal.r.a(this.b, oVar.b) && this.c == oVar.c;
    }

    public int hashCode() {
        int iHashCode = this.f15134a.hashCode() * 31;
        KotlinVersion kotlinVersion = this.b;
        return ((iHashCode + (kotlinVersion == null ? 0 : kotlinVersion.getF14630a())) * 31) + this.c.hashCode();
    }

    public String toString() {
        return "JavaNullabilityAnnotationsStatus(reportLevelBefore=" + this.f15134a + ", sinceVersion=" + this.b + ", reportLevelAfter=" + this.c + ')';
    }

    public /* synthetic */ o(ReportLevel reportLevel, KotlinVersion kotlinVersion, ReportLevel reportLevel2, int i, kotlin.jvm.internal.o oVar) {
        this(reportLevel, (i & 2) != 0 ? new KotlinVersion(1, 0) : kotlinVersion, (i & 4) != 0 ? reportLevel : reportLevel2);
    }
}
