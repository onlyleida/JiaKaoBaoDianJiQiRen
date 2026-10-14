package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.a1;
import kotlin.reflect.jvm.internal.impl.types.c1;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.v;
import kotlin.reflect.jvm.internal.impl.types.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class f extends kotlin.reflect.jvm.internal.impl.types.m implements kotlin.reflect.jvm.internal.impl.types.j {
    private final f0 b;

    public f(f0 delegate) {
        r.e(delegate, "delegate");
        this.b = delegate;
    }

    private final f0 U0(f0 f0Var) {
        f0 f0VarM0 = f0Var.M0(false);
        return !TypeUtilsKt.o(f0Var) ? f0VarM0 : new f(f0VarM0);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m, kotlin.reflect.jvm.internal.impl.types.a0
    public boolean J0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    /* JADX INFO: renamed from: P0 */
    public f0 M0(boolean z) {
        return z ? R0().M0(true) : this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m
    protected f0 R0() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    /* JADX INFO: renamed from: V0, reason: merged with bridge method [inline-methods] */
    public f Q0(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e newAnnotations) {
        r.e(newAnnotations, "newAnnotations");
        return new f(R0().Q0(newAnnotations));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m
    /* JADX INFO: renamed from: W0, reason: merged with bridge method [inline-methods] */
    public f T0(f0 delegate) {
        r.e(delegate, "delegate");
        return new f(delegate);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.j
    public a0 h0(a0 replacement) {
        r.e(replacement, "replacement");
        c1 c1VarL0 = replacement.L0();
        if (!TypeUtilsKt.o(c1VarL0) && !y0.m(c1VarL0)) {
            return c1VarL0;
        }
        if (c1VarL0 instanceof f0) {
            return U0((f0) c1VarL0);
        }
        if (!(c1VarL0 instanceof v)) {
            throw new IllegalStateException(r.m("Incorrect type: ", c1VarL0).toString());
        }
        v vVar = (v) c1VarL0;
        return a1.e(KotlinTypeFactory.d(U0(vVar.Q0()), U0(vVar.R0())), a1.a(c1VarL0));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.j
    public boolean w() {
        return true;
    }
}
