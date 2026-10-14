package kotlin.reflect.jvm.internal.impl.load.java.components;

import java.util.Map;
import kotlin.collections.n0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.l;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.name.f;
import kotlin.reflect.jvm.internal.impl.resolve.constants.g;
import kotlin.reflect.jvm.internal.impl.resolve.constants.t;
import kotlin.reflect.jvm.internal.impl.storage.h;

/* JADX INFO: loaded from: classes6.dex */
public final class JavaDeprecatedAnnotationDescriptor extends JavaAnnotationDescriptor {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f15036h = {v.i(new PropertyReference1Impl(v.b(JavaDeprecatedAnnotationDescriptor.class), "allValueArguments", "getAllValueArguments()Ljava/util/Map;"))};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final h f15037g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JavaDeprecatedAnnotationDescriptor(kotlin.reflect.jvm.internal.impl.load.java.structure.a aVar, kotlin.reflect.jvm.internal.impl.load.java.lazy.e c) {
        super(c, aVar, kotlin.reflect.jvm.internal.impl.builtins.h.a.n);
        r.e(c, "c");
        this.f15037g = c.e().c(new Function0<Map<f, ? extends t>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.components.JavaDeprecatedAnnotationDescriptor$allValueArguments$2
            @Override // kotlin.jvm.functions.Function0
            public final Map<f, ? extends t> invoke() {
                return n0.e(l.a(b.f15044a.b(), new t("Deprecated in Java")));
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.components.JavaAnnotationDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.annotations.c
    public Map<f, g<?>> a() {
        return (Map) kotlin.reflect.jvm.internal.impl.storage.l.a(this.f15037g, this, f15036h[0]);
    }
}
