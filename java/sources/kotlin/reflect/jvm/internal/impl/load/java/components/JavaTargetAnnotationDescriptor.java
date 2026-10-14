package kotlin.reflect.jvm.internal.impl.load.java.components;

import java.util.Map;
import kotlin.collections.n0;
import kotlin.collections.o0;
import kotlin.collections.t;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.l;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.load.java.structure.m;
import kotlin.reflect.jvm.internal.impl.name.f;
import kotlin.reflect.jvm.internal.impl.resolve.constants.g;
import kotlin.reflect.jvm.internal.impl.storage.h;

/* JADX INFO: loaded from: classes6.dex */
public final class JavaTargetAnnotationDescriptor extends JavaAnnotationDescriptor {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f15040h = {v.i(new PropertyReference1Impl(v.b(JavaTargetAnnotationDescriptor.class), "allValueArguments", "getAllValueArguments()Ljava/util/Map;"))};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final h f15041g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JavaTargetAnnotationDescriptor(kotlin.reflect.jvm.internal.impl.load.java.structure.a annotation, kotlin.reflect.jvm.internal.impl.load.java.lazy.e c) {
        super(c, annotation, kotlin.reflect.jvm.internal.impl.builtins.h.a.t);
        r.e(annotation, "annotation");
        r.e(c, "c");
        this.f15041g = c.e().c(new Function0<Map<f, ? extends g<? extends Object>>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.components.JavaTargetAnnotationDescriptor$allValueArguments$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Map<f, ? extends g<? extends Object>> invoke() {
                g<?> gVarC;
                kotlin.reflect.jvm.internal.impl.load.java.structure.b bVarB = this.this$0.b();
                if (bVarB instanceof kotlin.reflect.jvm.internal.impl.load.java.structure.e) {
                    gVarC = JavaAnnotationTargetMapper.f15035a.c(((kotlin.reflect.jvm.internal.impl.load.java.structure.e) this.this$0.b()).getElements());
                } else {
                    gVarC = bVarB instanceof m ? JavaAnnotationTargetMapper.f15035a.c(t.d(this.this$0.b())) : null;
                }
                Map<f, ? extends g<? extends Object>> mapE = gVarC != null ? n0.e(l.a(b.f15044a.d(), gVarC)) : null;
                return mapE != null ? mapE : o0.h();
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.components.JavaAnnotationDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.annotations.c
    public Map<f, g<Object>> a() {
        return (Map) kotlin.reflect.jvm.internal.impl.storage.l.a(this.f15041g, this, f15040h[0]);
    }
}
