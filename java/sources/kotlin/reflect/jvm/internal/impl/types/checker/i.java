package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.c1;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.s0;

/* JADX INFO: loaded from: classes6.dex */
public final class i extends f0 implements kotlin.reflect.jvm.internal.impl.types.model.b {
    private final CaptureStatus b;
    private final NewCapturedTypeConstructor c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c1 f15667d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.descriptors.annotations.e f15668e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f15669f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f15670g;

    public /* synthetic */ i(CaptureStatus captureStatus, NewCapturedTypeConstructor newCapturedTypeConstructor, c1 c1Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, boolean z, boolean z2, int i, kotlin.jvm.internal.o oVar) {
        this(captureStatus, newCapturedTypeConstructor, c1Var, (i & 8) != 0 ? kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b() : eVar, (i & 16) != 0 ? false : z, (i & 32) != 0 ? false : z2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public List<s0> H0() {
        return kotlin.collections.u.j();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public boolean J0() {
        return this.f15669f;
    }

    public final CaptureStatus R0() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    /* JADX INFO: renamed from: S0, reason: merged with bridge method [inline-methods] */
    public NewCapturedTypeConstructor I0() {
        return this.c;
    }

    public final c1 T0() {
        return this.f15667d;
    }

    public final boolean U0() {
        return this.f15670g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    /* JADX INFO: renamed from: V0, reason: merged with bridge method [inline-methods] */
    public i M0(boolean z) {
        return new i(this.b, I0(), this.f15667d, getAnnotations(), z, false, 32, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.c1
    /* JADX INFO: renamed from: W0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public i S0(g kotlinTypeRefiner) {
        kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        CaptureStatus captureStatus = this.b;
        NewCapturedTypeConstructor newCapturedTypeConstructorB = I0().b(kotlinTypeRefiner);
        c1 c1Var = this.f15667d;
        return new i(captureStatus, newCapturedTypeConstructorB, c1Var == null ? null : kotlinTypeRefiner.g(c1Var).L0(), getAnnotations(), J0(), false, 32, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    /* JADX INFO: renamed from: X0, reason: merged with bridge method [inline-methods] */
    public i Q0(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e newAnnotations) {
        kotlin.jvm.internal.r.e(newAnnotations, "newAnnotations");
        return new i(this.b, I0(), this.f15667d, newAnnotations, J0(), false, 32, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public kotlin.reflect.jvm.internal.impl.descriptors.annotations.e getAnnotations() {
        return this.f15668e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public MemberScope m() {
        MemberScope memberScopeI = kotlin.reflect.jvm.internal.impl.types.t.i("No member resolution should be done on captured type!", true);
        kotlin.jvm.internal.r.d(memberScopeI, "createErrorScope(\"No mem…on captured type!\", true)");
        return memberScopeI;
    }

    public i(CaptureStatus captureStatus, NewCapturedTypeConstructor constructor, c1 c1Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations, boolean z, boolean z2) {
        kotlin.jvm.internal.r.e(captureStatus, "captureStatus");
        kotlin.jvm.internal.r.e(constructor, "constructor");
        kotlin.jvm.internal.r.e(annotations, "annotations");
        this.b = captureStatus;
        this.c = constructor;
        this.f15667d = c1Var;
        this.f15668e = annotations;
        this.f15669f = z;
        this.f15670g = z2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public i(CaptureStatus captureStatus, c1 c1Var, s0 projection, t0 typeParameter) {
        this(captureStatus, new NewCapturedTypeConstructor(projection, null, null, typeParameter, 6, null), c1Var, null, false, false, 56, null);
        kotlin.jvm.internal.r.e(captureStatus, "captureStatus");
        kotlin.jvm.internal.r.e(projection, "projection");
        kotlin.jvm.internal.r.e(typeParameter, "typeParameter");
    }
}
