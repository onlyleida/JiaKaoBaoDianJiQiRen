package kotlin.reflect.jvm.internal.impl.load.java.components;

import cn.mucang.android.core.api.verify.ErrorDialogParams;
import java.util.Map;
import kotlin.collections.o0;
import kotlin.jvm.internal.r;
import kotlin.l;
import kotlin.reflect.jvm.internal.impl.builtins.h;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.name.f;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f15044a = new b();
    private static final f b;
    private static final f c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final f f15045d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Map<kotlin.reflect.jvm.internal.impl.name.c, kotlin.reflect.jvm.internal.impl.name.c> f15046e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Map<kotlin.reflect.jvm.internal.impl.name.c, kotlin.reflect.jvm.internal.impl.name.c> f15047f;

    static {
        f fVarG = f.g(ErrorDialogParams.EXTRA_MESSAGE);
        r.d(fVarG, "identifier(\"message\")");
        b = fVarG;
        f fVarG2 = f.g("allowedTargets");
        r.d(fVarG2, "identifier(\"allowedTargets\")");
        c = fVarG2;
        f fVarG3 = f.g("value");
        r.d(fVarG3, "identifier(\"value\")");
        f15045d = fVarG3;
        kotlin.reflect.jvm.internal.impl.name.c cVar = h.a.t;
        kotlin.reflect.jvm.internal.impl.name.c cVar2 = kotlin.reflect.jvm.internal.impl.load.java.r.c;
        kotlin.reflect.jvm.internal.impl.name.c cVar3 = h.a.w;
        kotlin.reflect.jvm.internal.impl.name.c cVar4 = kotlin.reflect.jvm.internal.impl.load.java.r.f15138d;
        kotlin.reflect.jvm.internal.impl.name.c cVar5 = h.a.x;
        kotlin.reflect.jvm.internal.impl.name.c cVar6 = kotlin.reflect.jvm.internal.impl.load.java.r.f15141g;
        kotlin.reflect.jvm.internal.impl.name.c cVar7 = h.a.y;
        kotlin.reflect.jvm.internal.impl.name.c cVar8 = kotlin.reflect.jvm.internal.impl.load.java.r.f15140f;
        f15046e = o0.k(l.a(cVar, cVar2), l.a(cVar3, cVar4), l.a(cVar5, cVar6), l.a(cVar7, cVar8));
        f15047f = o0.k(l.a(cVar2, cVar), l.a(cVar4, cVar3), l.a(kotlin.reflect.jvm.internal.impl.load.java.r.f15139e, h.a.n), l.a(cVar6, cVar5), l.a(cVar8, cVar7));
    }

    private b() {
    }

    public static /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.annotations.c f(b bVar, kotlin.reflect.jvm.internal.impl.load.java.structure.a aVar, kotlin.reflect.jvm.internal.impl.load.java.lazy.e eVar, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return bVar.e(aVar, eVar, z);
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.annotations.c a(kotlin.reflect.jvm.internal.impl.name.c kotlinName, kotlin.reflect.jvm.internal.impl.load.java.structure.d annotationOwner, kotlin.reflect.jvm.internal.impl.load.java.lazy.e c2) {
        kotlin.reflect.jvm.internal.impl.load.java.structure.a aVarD;
        r.e(kotlinName, "kotlinName");
        r.e(annotationOwner, "annotationOwner");
        r.e(c2, "c");
        if (r.a(kotlinName, h.a.n)) {
            kotlin.reflect.jvm.internal.impl.name.c DEPRECATED_ANNOTATION = kotlin.reflect.jvm.internal.impl.load.java.r.f15139e;
            r.d(DEPRECATED_ANNOTATION, "DEPRECATED_ANNOTATION");
            kotlin.reflect.jvm.internal.impl.load.java.structure.a aVarD2 = annotationOwner.d(DEPRECATED_ANNOTATION);
            if (aVarD2 != null || annotationOwner.C()) {
                return new JavaDeprecatedAnnotationDescriptor(aVarD2, c2);
            }
        }
        kotlin.reflect.jvm.internal.impl.name.c cVar = f15046e.get(kotlinName);
        if (cVar == null || (aVarD = annotationOwner.d(cVar)) == null) {
            return null;
        }
        return f(f15044a, aVarD, c2, false, 4, null);
    }

    public final f b() {
        return b;
    }

    public final f c() {
        return f15045d;
    }

    public final f d() {
        return c;
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.annotations.c e(kotlin.reflect.jvm.internal.impl.load.java.structure.a annotation, kotlin.reflect.jvm.internal.impl.load.java.lazy.e c2, boolean z) {
        r.e(annotation, "annotation");
        r.e(c2, "c");
        kotlin.reflect.jvm.internal.impl.name.b bVarG = annotation.g();
        if (r.a(bVarG, kotlin.reflect.jvm.internal.impl.name.b.m(kotlin.reflect.jvm.internal.impl.load.java.r.c))) {
            return new JavaTargetAnnotationDescriptor(annotation, c2);
        }
        if (r.a(bVarG, kotlin.reflect.jvm.internal.impl.name.b.m(kotlin.reflect.jvm.internal.impl.load.java.r.f15138d))) {
            return new JavaRetentionAnnotationDescriptor(annotation, c2);
        }
        if (r.a(bVarG, kotlin.reflect.jvm.internal.impl.name.b.m(kotlin.reflect.jvm.internal.impl.load.java.r.f15141g))) {
            return new JavaAnnotationDescriptor(c2, annotation, h.a.x);
        }
        if (r.a(bVarG, kotlin.reflect.jvm.internal.impl.name.b.m(kotlin.reflect.jvm.internal.impl.load.java.r.f15140f))) {
            return new JavaAnnotationDescriptor(c2, annotation, h.a.y);
        }
        if (r.a(bVarG, kotlin.reflect.jvm.internal.impl.name.b.m(kotlin.reflect.jvm.internal.impl.load.java.r.f15139e))) {
            return null;
        }
        return new LazyJavaAnnotationDescriptor(c2, annotation, z);
    }
}
