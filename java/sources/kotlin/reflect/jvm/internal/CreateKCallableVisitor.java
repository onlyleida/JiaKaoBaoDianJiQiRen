package kotlin.reflect.jvm.internal;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.v;

/* JADX INFO: renamed from: kotlin.reflect.jvm.internal.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0010\u0018\u00002\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J!\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0003H\u0016¢\u0006\u0002\u0010\u000bJ!\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\b\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0003H\u0016¢\u0006\u0002\u0010\u000eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lkotlin/reflect/jvm/internal/CreateKCallableVisitor;", "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorVisitorEmptyBodies;", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "", TtmlNode.RUBY_CONTAINER, "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;)V", "visitFunctionDescriptor", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "data", "(Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;Lkotlin/Unit;)Lkotlin/reflect/jvm/internal/KCallableImpl;", "visitPropertyDescriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "(Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;Lkotlin/Unit;)Lkotlin/reflect/jvm/internal/KCallableImpl;", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
public class CreateKCallableVisitor extends kotlin.reflect.jvm.internal.impl.descriptors.impl.k<KCallableImpl<?>, v> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final KDeclarationContainerImpl f14734a;

    public CreateKCallableVisitor(KDeclarationContainerImpl container) {
        kotlin.jvm.internal.r.e(container, "container");
        this.f14734a = container;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.k, kotlin.reflect.jvm.internal.impl.descriptors.m
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public KCallableImpl<?> i(u descriptor, v data) {
        kotlin.jvm.internal.r.e(descriptor, "descriptor");
        kotlin.jvm.internal.r.e(data, "data");
        return new KFunctionImpl(this.f14734a, descriptor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.m
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public KCallableImpl<?> c(j0 descriptor, v data) {
        kotlin.jvm.internal.r.e(descriptor, "descriptor");
        kotlin.jvm.internal.r.e(data, "data");
        int i = (descriptor.K() != null ? 1 : 0) + (descriptor.O() != null ? 1 : 0);
        if (descriptor.M()) {
            if (i == 0) {
                return new KMutableProperty0Impl(this.f14734a, descriptor);
            }
            if (i == 1) {
                return new KMutableProperty1Impl(this.f14734a, descriptor);
            }
            if (i == 2) {
                return new KMutableProperty2Impl(this.f14734a, descriptor);
            }
        } else {
            if (i == 0) {
                return new KProperty0Impl(this.f14734a, descriptor);
            }
            if (i == 1) {
                return new KProperty1Impl(this.f14734a, descriptor);
            }
            if (i == 2) {
                return new KProperty2Impl(this.f14734a, descriptor);
            }
        }
        throw new KotlinReflectionInternalError("Unsupported property: " + descriptor);
    }
}
