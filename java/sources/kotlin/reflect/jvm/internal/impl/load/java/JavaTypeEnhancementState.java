package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public final class JavaTypeEnhancementState {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f15008d = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final JavaTypeEnhancementState f15009e = new JavaTypeEnhancementState(n.b(null, 1, null), JavaTypeEnhancementState$Companion$DEFAULT$1.INSTANCE);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Jsr305Settings f15010a;
    private final Function1<kotlin.reflect.jvm.internal.impl.name.c, ReportLevel> b;
    private final boolean c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final JavaTypeEnhancementState a() {
            return JavaTypeEnhancementState.f15009e;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public JavaTypeEnhancementState(Jsr305Settings jsr305, Function1<? super kotlin.reflect.jvm.internal.impl.name.c, ? extends ReportLevel> getReportLevelForAnnotation) {
        kotlin.jvm.internal.r.e(jsr305, "jsr305");
        kotlin.jvm.internal.r.e(getReportLevelForAnnotation, "getReportLevelForAnnotation");
        this.f15010a = jsr305;
        this.b = getReportLevelForAnnotation;
        this.c = jsr305.d() || getReportLevelForAnnotation.invoke(n.e()) == ReportLevel.IGNORE;
    }

    public final boolean b() {
        return this.c;
    }

    public final Function1<kotlin.reflect.jvm.internal.impl.name.c, ReportLevel> c() {
        return this.b;
    }

    public final Jsr305Settings d() {
        return this.f15010a;
    }
}
