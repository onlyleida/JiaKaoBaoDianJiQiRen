package kotlin.reflect.jvm.internal.impl.load.java.components;

import java.util.Map;
import kotlin.collections.n0;
import kotlin.collections.o0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.l;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.name.f;
import kotlin.reflect.jvm.internal.impl.resolve.constants.g;
import kotlin.reflect.jvm.internal.impl.storage.h;

/* JADX INFO: loaded from: classes6.dex */
public final class JavaRetentionAnnotationDescriptor extends JavaAnnotationDescriptor {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f15038h = {v.i(new PropertyReference1Impl(v.b(JavaRetentionAnnotationDescriptor.class), "allValueArguments", "getAllValueArguments()Ljava/util/Map;"))};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final h f15039g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JavaRetentionAnnotationDescriptor(kotlin.reflect.jvm.internal.impl.load.java.structure.a annotation, kotlin.reflect.jvm.internal.impl.load.java.lazy.e c) {
        super(c, annotation, kotlin.reflect.jvm.internal.impl.builtins.h.a.w);
        r.e(annotation, "annotation");
        r.e(c, "c");
        this.f15039g = c.e().c(new Function0<Map<f, ? extends g<?>>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.components.JavaRetentionAnnotationDescriptor$allValueArguments$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Map<f, ? extends g<?>> invoke() {
                g<?> gVarA = JavaAnnotationTargetMapper.f15035a.a(this.this$0.b());
                Map<f, ? extends g<?>> mapE = gVarA == null ? null : n0.e(l.a(b.f15044a.c(), gVarA));
                return mapE != null ? mapE : o0.h();
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.components.JavaAnnotationDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.annotations.c
    public Map<f, g<?>> a() {
        return (Map) kotlin.reflect.jvm.internal.impl.storage.l.a(this.f15039g, this, f15038h[0]);
    }
}
