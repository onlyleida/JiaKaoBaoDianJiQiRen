package kotlin.reflect.jvm.internal.impl.load.java.components;

import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.o0;
import kotlin.collections.u0;
import kotlin.collections.v;
import kotlin.collections.z;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.l;
import kotlin.reflect.jvm.internal.impl.builtins.h;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.KotlinRetention;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.KotlinTarget;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.load.java.structure.m;
import kotlin.reflect.jvm.internal.impl.name.f;
import kotlin.reflect.jvm.internal.impl.resolve.constants.g;
import kotlin.reflect.jvm.internal.impl.resolve.constants.i;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.t;

/* JADX INFO: loaded from: classes6.dex */
public final class JavaAnnotationTargetMapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final JavaAnnotationTargetMapper f15035a = new JavaAnnotationTargetMapper();
    private static final Map<String, EnumSet<KotlinTarget>> b = o0.k(l.a("PACKAGE", EnumSet.noneOf(KotlinTarget.class)), l.a("TYPE", EnumSet.of(KotlinTarget.CLASS, KotlinTarget.FILE)), l.a("ANNOTATION_TYPE", EnumSet.of(KotlinTarget.ANNOTATION_CLASS)), l.a("TYPE_PARAMETER", EnumSet.of(KotlinTarget.TYPE_PARAMETER)), l.a("FIELD", EnumSet.of(KotlinTarget.FIELD)), l.a("LOCAL_VARIABLE", EnumSet.of(KotlinTarget.LOCAL_VARIABLE)), l.a("PARAMETER", EnumSet.of(KotlinTarget.VALUE_PARAMETER)), l.a("CONSTRUCTOR", EnumSet.of(KotlinTarget.CONSTRUCTOR)), l.a("METHOD", EnumSet.of(KotlinTarget.FUNCTION, KotlinTarget.PROPERTY_GETTER, KotlinTarget.PROPERTY_SETTER)), l.a("TYPE_USE", EnumSet.of(KotlinTarget.TYPE)));
    private static final Map<String, KotlinRetention> c = o0.k(l.a("RUNTIME", KotlinRetention.RUNTIME), l.a("CLASS", KotlinRetention.BINARY), l.a("SOURCE", KotlinRetention.SOURCE));

    private JavaAnnotationTargetMapper() {
    }

    public final g<?> a(kotlin.reflect.jvm.internal.impl.load.java.structure.b bVar) {
        m mVar = bVar instanceof m ? (m) bVar : null;
        if (mVar == null) {
            return null;
        }
        Map<String, KotlinRetention> map = c;
        f fVarD = mVar.d();
        KotlinRetention kotlinRetention = map.get(fVarD == null ? null : fVarD.b());
        if (kotlinRetention == null) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.name.b bVarM = kotlin.reflect.jvm.internal.impl.name.b.m(h.a.v);
        r.d(bVarM, "topLevel(StandardNames.F…ames.annotationRetention)");
        f fVarG = f.g(kotlinRetention.name());
        r.d(fVarG, "identifier(retention.name)");
        return new i(bVarM, fVarG);
    }

    public final Set<KotlinTarget> b(String str) {
        EnumSet<KotlinTarget> enumSet = b.get(str);
        return enumSet == null ? u0.b() : enumSet;
    }

    public final g<?> c(List<? extends kotlin.reflect.jvm.internal.impl.load.java.structure.b> arguments) {
        r.e(arguments, "arguments");
        ArrayList<m> arrayList = new ArrayList();
        for (Object obj : arguments) {
            if (obj instanceof m) {
                arrayList.add(obj);
            }
        }
        ArrayList<KotlinTarget> arrayList2 = new ArrayList();
        for (m mVar : arrayList) {
            JavaAnnotationTargetMapper javaAnnotationTargetMapper = f15035a;
            f fVarD = mVar.d();
            z.B(arrayList2, javaAnnotationTargetMapper.b(fVarD == null ? null : fVarD.b()));
        }
        ArrayList arrayList3 = new ArrayList(v.u(arrayList2, 10));
        for (KotlinTarget kotlinTarget : arrayList2) {
            kotlin.reflect.jvm.internal.impl.name.b bVarM = kotlin.reflect.jvm.internal.impl.name.b.m(h.a.u);
            r.d(bVarM, "topLevel(StandardNames.FqNames.annotationTarget)");
            f fVarG = f.g(kotlinTarget.name());
            r.d(fVarG, "identifier(kotlinTarget.name)");
            arrayList3.add(new i(bVarM, fVarG));
        }
        return new kotlin.reflect.jvm.internal.impl.resolve.constants.b(arrayList3, new Function1<kotlin.reflect.jvm.internal.impl.descriptors.z, a0>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.components.JavaAnnotationTargetMapper$mapJavaTargetArguments$1
            @Override // kotlin.jvm.functions.Function1
            public final a0 invoke(kotlin.reflect.jvm.internal.impl.descriptors.z module) {
                r.e(module, "module");
                v0 v0VarB = a.b(b.f15044a.d(), module.k().o(h.a.t));
                a0 type = v0VarB == null ? null : v0VarB.getType();
                if (type != null) {
                    return type;
                }
                f0 f0VarJ = t.j("Error: AnnotationTarget[]");
                r.d(f0VarJ, "createErrorType(\"Error: AnnotationTarget[]\")");
                return f0VarJ;
            }
        });
    }
}
