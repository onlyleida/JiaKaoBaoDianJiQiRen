package kotlin.reflect.jvm.internal.impl.resolve.calls.inference;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.v;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.storage.m;
import kotlin.reflect.jvm.internal.impl.types.LazyWrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.l;
import kotlin.reflect.jvm.internal.impl.types.s0;
import kotlin.reflect.jvm.internal.impl.types.u0;
import kotlin.reflect.jvm.internal.impl.types.v0;
import kotlin.reflect.jvm.internal.impl.types.z;

/* JADX INFO: loaded from: classes6.dex */
public final class CapturedTypeConstructorKt {

    public static final class a extends l {
        final /* synthetic */ boolean c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(boolean z, v0 v0Var) {
            super(v0Var);
            this.c = z;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.v0
        public boolean b() {
            return this.c;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.l, kotlin.reflect.jvm.internal.impl.types.v0
        public s0 e(a0 key) {
            r.e(key, "key");
            s0 s0VarE = super.e(key);
            if (s0VarE == null) {
                return null;
            }
            f fVarC = key.I0().u();
            return CapturedTypeConstructorKt.b(s0VarE, fVarC instanceof t0 ? (t0) fVarC : null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final s0 b(final s0 s0Var, t0 t0Var) {
        if (t0Var == null || s0Var.c() == Variance.INVARIANT) {
            return s0Var;
        }
        if (t0Var.getVariance() != s0Var.c()) {
            return new u0(c(s0Var));
        }
        if (!s0Var.a()) {
            return new u0(s0Var.getType());
        }
        m NO_LOCKS = LockBasedStorageManager.f15621e;
        r.d(NO_LOCKS, "NO_LOCKS");
        return new u0(new LazyWrappedType(NO_LOCKS, new Function0<a0>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructorKt$createCapturedIfNeeded$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final a0 invoke() {
                a0 type = s0Var.getType();
                r.d(type, "this@createCapturedIfNeeded.type");
                return type;
            }
        }));
    }

    public static final a0 c(s0 typeProjection) {
        r.e(typeProjection, "typeProjection");
        return new kotlin.reflect.jvm.internal.impl.resolve.calls.inference.a(typeProjection, null, false, null, 14, null);
    }

    public static final boolean d(a0 a0Var) {
        r.e(a0Var, "<this>");
        return a0Var.I0() instanceof b;
    }

    public static final v0 e(v0 v0Var, boolean z) {
        r.e(v0Var, "<this>");
        if (!(v0Var instanceof z)) {
            return new a(z, v0Var);
        }
        z zVar = (z) v0Var;
        t0[] t0VarArrJ = zVar.j();
        List<Pair> listV0 = ArraysKt___ArraysKt.v0(zVar.i(), zVar.j());
        ArrayList arrayList = new ArrayList(v.u(listV0, 10));
        for (Pair pair : listV0) {
            arrayList.add(b((s0) pair.getFirst(), (t0) pair.getSecond()));
        }
        Object[] array = arrayList.toArray(new s0[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        return new z(t0VarArrJ, (s0[]) array, z);
    }

    public static /* synthetic */ v0 f(v0 v0Var, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return e(v0Var, z);
    }
}
