package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.i;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: loaded from: classes6.dex */
public final class BuiltInAnnotationDescriptor implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.builtins.g f14868a;
    private final kotlin.reflect.jvm.internal.impl.name.c b;
    private final Map<kotlin.reflect.jvm.internal.impl.name.f, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f14869d;

    /* JADX WARN: Multi-variable type inference failed */
    public BuiltInAnnotationDescriptor(kotlin.reflect.jvm.internal.impl.builtins.g builtIns, kotlin.reflect.jvm.internal.impl.name.c fqName, Map<kotlin.reflect.jvm.internal.impl.name.f, ? extends kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> allValueArguments) {
        r.e(builtIns, "builtIns");
        r.e(fqName, "fqName");
        r.e(allValueArguments, "allValueArguments");
        this.f14868a = builtIns;
        this.b = fqName;
        this.c = allValueArguments;
        this.f14869d = i.a(LazyThreadSafetyMode.PUBLICATION, new Function0<f0>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.annotations.BuiltInAnnotationDescriptor$type$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final f0 invoke() {
                return this.this$0.f14868a.o(this.this$0.e()).n();
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.c
    public Map<kotlin.reflect.jvm.internal.impl.name.f, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> a() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.c
    public kotlin.reflect.jvm.internal.impl.name.c e() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.c
    public a0 getType() {
        Object value = this.f14869d.getValue();
        r.d(value, "<get-type>(...)");
        return (a0) value;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.c
    public o0 o() {
        o0 NO_SOURCE = o0.f14970a;
        r.d(NO_SOURCE, "NO_SOURCE");
        return NO_SOURCE;
    }
}
