package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.collections.o0;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes6.dex */
public final class Jsr305Settings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ReportLevel f15011a;
    private final ReportLevel b;
    private final Map<kotlin.reflect.jvm.internal.impl.name.c, ReportLevel> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f15012d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f15013e;

    /* JADX WARN: Multi-variable type inference failed */
    public Jsr305Settings(ReportLevel globalLevel, ReportLevel reportLevel, Map<kotlin.reflect.jvm.internal.impl.name.c, ? extends ReportLevel> userDefinedLevelForSpecificAnnotation) {
        kotlin.jvm.internal.r.e(globalLevel, "globalLevel");
        kotlin.jvm.internal.r.e(userDefinedLevelForSpecificAnnotation, "userDefinedLevelForSpecificAnnotation");
        this.f15011a = globalLevel;
        this.b = reportLevel;
        this.c = userDefinedLevelForSpecificAnnotation;
        this.f15012d = kotlin.i.b(new Function0<String[]>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.Jsr305Settings$description$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String[] invoke() {
                Jsr305Settings jsr305Settings = this.this$0;
                List listC = kotlin.collections.t.c();
                listC.add(jsr305Settings.a().getDescription());
                ReportLevel reportLevelB = jsr305Settings.b();
                if (reportLevelB != null) {
                    listC.add(kotlin.jvm.internal.r.m("under-migration:", reportLevelB.getDescription()));
                }
                for (Map.Entry<kotlin.reflect.jvm.internal.impl.name.c, ReportLevel> entry : jsr305Settings.c().entrySet()) {
                    listC.add('@' + entry.getKey() + ':' + entry.getValue().getDescription());
                }
                Object[] array = kotlin.collections.t.a(listC).toArray(new String[0]);
                Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                return (String[]) array;
            }
        });
        ReportLevel reportLevel2 = ReportLevel.IGNORE;
        this.f15013e = globalLevel == reportLevel2 && reportLevel == reportLevel2 && userDefinedLevelForSpecificAnnotation.isEmpty();
    }

    public final ReportLevel a() {
        return this.f15011a;
    }

    public final ReportLevel b() {
        return this.b;
    }

    public final Map<kotlin.reflect.jvm.internal.impl.name.c, ReportLevel> c() {
        return this.c;
    }

    public final boolean d() {
        return this.f15013e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Jsr305Settings)) {
            return false;
        }
        Jsr305Settings jsr305Settings = (Jsr305Settings) obj;
        return this.f15011a == jsr305Settings.f15011a && this.b == jsr305Settings.b && kotlin.jvm.internal.r.a(this.c, jsr305Settings.c);
    }

    public int hashCode() {
        int iHashCode = this.f15011a.hashCode() * 31;
        ReportLevel reportLevel = this.b;
        return ((iHashCode + (reportLevel == null ? 0 : reportLevel.hashCode())) * 31) + this.c.hashCode();
    }

    public String toString() {
        return "Jsr305Settings(globalLevel=" + this.f15011a + ", migrationLevel=" + this.b + ", userDefinedLevelForSpecificAnnotation=" + this.c + ')';
    }

    public /* synthetic */ Jsr305Settings(ReportLevel reportLevel, ReportLevel reportLevel2, Map map, int i, kotlin.jvm.internal.o oVar) {
        this(reportLevel, (i & 2) != 0 ? null : reportLevel2, (i & 4) != 0 ? o0.h() : map);
    }
}
