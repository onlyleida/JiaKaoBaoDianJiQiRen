package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.KotlinVersion;
import kotlin.collections.o0;

/* JADX INFO: loaded from: classes6.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.name.c f15130a;
    private static final kotlin.reflect.jvm.internal.impl.name.c b;
    private static final t<o> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final o f15131d;

    static {
        kotlin.reflect.jvm.internal.impl.name.c cVar = new kotlin.reflect.jvm.internal.impl.name.c("org.jspecify.nullness");
        f15130a = cVar;
        kotlin.reflect.jvm.internal.impl.name.c cVar2 = new kotlin.reflect.jvm.internal.impl.name.c("org.checkerframework.checker.nullness.compatqual");
        b = cVar2;
        kotlin.reflect.jvm.internal.impl.name.c cVar3 = new kotlin.reflect.jvm.internal.impl.name.c("org.jetbrains.annotations");
        o.a aVar = o.f15132d;
        kotlin.reflect.jvm.internal.impl.name.c cVar4 = new kotlin.reflect.jvm.internal.impl.name.c("androidx.annotation.RecentlyNullable");
        ReportLevel reportLevel = ReportLevel.WARN;
        KotlinVersion kotlinVersion = new KotlinVersion(1, 6);
        ReportLevel reportLevel2 = ReportLevel.STRICT;
        c = new NullabilityAnnotationStatesImpl(o0.k(kotlin.l.a(cVar3, aVar.a()), kotlin.l.a(new kotlin.reflect.jvm.internal.impl.name.c("androidx.annotation"), aVar.a()), kotlin.l.a(new kotlin.reflect.jvm.internal.impl.name.c("android.support.annotation"), aVar.a()), kotlin.l.a(new kotlin.reflect.jvm.internal.impl.name.c("android.annotation"), aVar.a()), kotlin.l.a(new kotlin.reflect.jvm.internal.impl.name.c("com.android.annotations"), aVar.a()), kotlin.l.a(new kotlin.reflect.jvm.internal.impl.name.c("org.eclipse.jdt.annotation"), aVar.a()), kotlin.l.a(new kotlin.reflect.jvm.internal.impl.name.c("org.checkerframework.checker.nullness.qual"), aVar.a()), kotlin.l.a(cVar2, aVar.a()), kotlin.l.a(new kotlin.reflect.jvm.internal.impl.name.c("javax.annotation"), aVar.a()), kotlin.l.a(new kotlin.reflect.jvm.internal.impl.name.c("edu.umd.cs.findbugs.annotations"), aVar.a()), kotlin.l.a(new kotlin.reflect.jvm.internal.impl.name.c("io.reactivex.annotations"), aVar.a()), kotlin.l.a(cVar4, new o(reportLevel, null, null, 4, null)), kotlin.l.a(new kotlin.reflect.jvm.internal.impl.name.c("androidx.annotation.RecentlyNonNull"), new o(reportLevel, null, null, 4, null)), kotlin.l.a(new kotlin.reflect.jvm.internal.impl.name.c("lombok"), aVar.a()), kotlin.l.a(cVar, new o(reportLevel, kotlinVersion, reportLevel2)), kotlin.l.a(new kotlin.reflect.jvm.internal.impl.name.c("io.reactivex.rxjava3.annotations"), new o(reportLevel, new KotlinVersion(1, 7), reportLevel2))));
        f15131d = new o(reportLevel, null, null, 4, null);
    }

    public static final Jsr305Settings a(KotlinVersion configuredKotlinVersion) {
        kotlin.jvm.internal.r.e(configuredKotlinVersion, "configuredKotlinVersion");
        o oVar = f15131d;
        ReportLevel reportLevelC = (oVar.d() == null || oVar.d().compareTo(configuredKotlinVersion) > 0) ? oVar.c() : oVar.b();
        return new Jsr305Settings(reportLevelC, c(reportLevelC), null, 4, null);
    }

    public static /* synthetic */ Jsr305Settings b(KotlinVersion kotlinVersion, int i, Object obj) {
        if ((i & 1) != 0) {
            kotlinVersion = KotlinVersion.f14629e;
        }
        return a(kotlinVersion);
    }

    public static final ReportLevel c(ReportLevel globalReportLevel) {
        kotlin.jvm.internal.r.e(globalReportLevel, "globalReportLevel");
        if (globalReportLevel == ReportLevel.WARN) {
            return null;
        }
        return globalReportLevel;
    }

    public static final ReportLevel d(kotlin.reflect.jvm.internal.impl.name.c annotationFqName) {
        kotlin.jvm.internal.r.e(annotationFqName, "annotationFqName");
        return g(annotationFqName, t.f15149a.a(), null, 4, null);
    }

    public static final kotlin.reflect.jvm.internal.impl.name.c e() {
        return f15130a;
    }

    public static final ReportLevel f(kotlin.reflect.jvm.internal.impl.name.c annotation, t<? extends ReportLevel> configuredReportLevels, KotlinVersion configuredKotlinVersion) {
        kotlin.jvm.internal.r.e(annotation, "annotation");
        kotlin.jvm.internal.r.e(configuredReportLevels, "configuredReportLevels");
        kotlin.jvm.internal.r.e(configuredKotlinVersion, "configuredKotlinVersion");
        ReportLevel reportLevelA = configuredReportLevels.a(annotation);
        if (reportLevelA != null) {
            return reportLevelA;
        }
        o oVarA = c.a(annotation);
        if (oVarA == null) {
            return ReportLevel.IGNORE;
        }
        return (oVarA.d() == null || oVarA.d().compareTo(configuredKotlinVersion) > 0) ? oVarA.c() : oVarA.b();
    }

    public static /* synthetic */ ReportLevel g(kotlin.reflect.jvm.internal.impl.name.c cVar, t tVar, KotlinVersion kotlinVersion, int i, Object obj) {
        if ((i & 4) != 0) {
            kotlinVersion = KotlinVersion.f14629e;
        }
        return f(cVar, tVar, kotlinVersion);
    }
}
