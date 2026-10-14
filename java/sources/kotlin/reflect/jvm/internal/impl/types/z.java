package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public final class z extends v0 {
    private final kotlin.reflect.jvm.internal.impl.descriptors.t0[] b;
    private final s0[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f15724d;

    public /* synthetic */ z(kotlin.reflect.jvm.internal.impl.descriptors.t0[] t0VarArr, s0[] s0VarArr, boolean z, int i, kotlin.jvm.internal.o oVar) {
        this(t0VarArr, s0VarArr, (i & 4) != 0 ? false : z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v0
    public boolean b() {
        return this.f15724d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v0
    public s0 e(a0 key) {
        kotlin.jvm.internal.r.e(key, "key");
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = key.I0().c();
        kotlin.reflect.jvm.internal.impl.descriptors.t0 t0Var = fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.t0 ? (kotlin.reflect.jvm.internal.impl.descriptors.t0) fVarC : null;
        if (t0Var == null) {
            return null;
        }
        int iH = t0Var.h();
        kotlin.reflect.jvm.internal.impl.descriptors.t0[] t0VarArr = this.b;
        if (iH >= t0VarArr.length || !kotlin.jvm.internal.r.a(t0VarArr[iH].i(), t0Var.i())) {
            return null;
        }
        return this.c[iH];
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v0
    public boolean f() {
        return this.c.length == 0;
    }

    public final s0[] i() {
        return this.c;
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.t0[] j() {
        return this.b;
    }

    public z(kotlin.reflect.jvm.internal.impl.descriptors.t0[] parameters, s0[] arguments, boolean z) {
        kotlin.jvm.internal.r.e(parameters, "parameters");
        kotlin.jvm.internal.r.e(arguments, "arguments");
        this.b = parameters;
        this.c = arguments;
        this.f15724d = z;
        int length = parameters.length;
        int length2 = arguments.length;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public z(List<? extends kotlin.reflect.jvm.internal.impl.descriptors.t0> parameters, List<? extends s0> argumentsList) {
        kotlin.jvm.internal.r.e(parameters, "parameters");
        kotlin.jvm.internal.r.e(argumentsList, "argumentsList");
        Object[] array = parameters.toArray(new kotlin.reflect.jvm.internal.impl.descriptors.t0[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        kotlin.reflect.jvm.internal.impl.descriptors.t0[] t0VarArr = (kotlin.reflect.jvm.internal.impl.descriptors.t0[]) array;
        Object[] array2 = argumentsList.toArray(new s0[0]);
        Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T>");
        this(t0VarArr, (s0[]) array2, false, 4, null);
    }
}
