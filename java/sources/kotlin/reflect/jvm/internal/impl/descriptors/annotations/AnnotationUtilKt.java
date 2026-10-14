package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import cn.mucang.android.core.api.verify.ErrorDialogParams;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import kotlin.collections.o0;
import kotlin.collections.u;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.l;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.resolve.constants.i;
import kotlin.reflect.jvm.internal.impl.resolve.constants.t;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: loaded from: classes6.dex */
public final class AnnotationUtilKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.name.f f14865a;
    private static final kotlin.reflect.jvm.internal.impl.name.f b;
    private static final kotlin.reflect.jvm.internal.impl.name.f c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.name.f f14866d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.name.f f14867e;

    static {
        kotlin.reflect.jvm.internal.impl.name.f fVarG = kotlin.reflect.jvm.internal.impl.name.f.g(ErrorDialogParams.EXTRA_MESSAGE);
        r.d(fVarG, "identifier(\"message\")");
        f14865a = fVarG;
        kotlin.reflect.jvm.internal.impl.name.f fVarG2 = kotlin.reflect.jvm.internal.impl.name.f.g("replaceWith");
        r.d(fVarG2, "identifier(\"replaceWith\")");
        b = fVarG2;
        kotlin.reflect.jvm.internal.impl.name.f fVarG3 = kotlin.reflect.jvm.internal.impl.name.f.g(DBHelpTool.RecordEntry.COLUMN_NAME_LEVEL);
        r.d(fVarG3, "identifier(\"level\")");
        c = fVarG3;
        kotlin.reflect.jvm.internal.impl.name.f fVarG4 = kotlin.reflect.jvm.internal.impl.name.f.g("expression");
        r.d(fVarG4, "identifier(\"expression\")");
        f14866d = fVarG4;
        kotlin.reflect.jvm.internal.impl.name.f fVarG5 = kotlin.reflect.jvm.internal.impl.name.f.g("imports");
        r.d(fVarG5, "identifier(\"imports\")");
        f14867e = fVarG5;
    }

    public static final c a(final kotlin.reflect.jvm.internal.impl.builtins.g gVar, String message, String replaceWith, String level) {
        r.e(gVar, "<this>");
        r.e(message, "message");
        r.e(replaceWith, "replaceWith");
        r.e(level, "level");
        BuiltInAnnotationDescriptor builtInAnnotationDescriptor = new BuiltInAnnotationDescriptor(gVar, kotlin.reflect.jvm.internal.impl.builtins.h.a.p, o0.k(l.a(f14866d, new t(replaceWith)), l.a(f14867e, new kotlin.reflect.jvm.internal.impl.resolve.constants.b(u.j(), new Function1<z, a0>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationUtilKt$createDeprecatedAnnotation$replaceWithAnnotation$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final a0 invoke(z module) {
                r.e(module, "module");
                f0 f0VarL = module.k().l(Variance.INVARIANT, gVar.W());
                r.d(f0VarL, "module.builtIns.getArray…ce.INVARIANT, stringType)");
                return f0VarL;
            }
        }))));
        kotlin.reflect.jvm.internal.impl.name.c cVar = kotlin.reflect.jvm.internal.impl.builtins.h.a.n;
        kotlin.reflect.jvm.internal.impl.name.f fVar = c;
        kotlin.reflect.jvm.internal.impl.name.b bVarM = kotlin.reflect.jvm.internal.impl.name.b.m(kotlin.reflect.jvm.internal.impl.builtins.h.a.o);
        r.d(bVarM, "topLevel(StandardNames.FqNames.deprecationLevel)");
        kotlin.reflect.jvm.internal.impl.name.f fVarG = kotlin.reflect.jvm.internal.impl.name.f.g(level);
        r.d(fVarG, "identifier(level)");
        return new BuiltInAnnotationDescriptor(gVar, cVar, o0.k(l.a(f14865a, new t(message)), l.a(b, new kotlin.reflect.jvm.internal.impl.resolve.constants.a(builtInAnnotationDescriptor)), l.a(fVar, new i(bVarM, fVarG))));
    }

    public static /* synthetic */ c b(kotlin.reflect.jvm.internal.impl.builtins.g gVar, String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "";
        }
        if ((i & 4) != 0) {
            str3 = "WARNING";
        }
        return a(gVar, str, str2, str3);
    }
}
