package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: loaded from: classes6.dex */
public abstract class v extends c1 implements kotlin.reflect.jvm.internal.impl.types.model.e {
    private final f0 b;
    private final f0 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(f0 lowerBound, f0 upperBound) {
        super(null);
        kotlin.jvm.internal.r.e(lowerBound, "lowerBound");
        kotlin.jvm.internal.r.e(upperBound, "upperBound");
        this.b = lowerBound;
        this.c = upperBound;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public List<s0> H0() {
        return P0().H0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public q0 I0() {
        return P0().I0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public boolean J0() {
        return P0().J0();
    }

    public abstract f0 P0();

    public final f0 Q0() {
        return this.b;
    }

    public final f0 R0() {
        return this.c;
    }

    public abstract String S0(DescriptorRenderer descriptorRenderer, kotlin.reflect.jvm.internal.impl.renderer.b bVar);

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public kotlin.reflect.jvm.internal.impl.descriptors.annotations.e getAnnotations() {
        return P0().getAnnotations();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public MemberScope m() {
        return P0().m();
    }

    public String toString() {
        return DescriptorRenderer.c.w(this);
    }
}
