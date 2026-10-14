package kotlin.reflect.jvm.internal.impl.types;

/* JADX INFO: loaded from: classes6.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f15679a = new d();

    private d() {
    }

    private final boolean a(kotlin.reflect.jvm.internal.impl.types.model.m mVar, kotlin.reflect.jvm.internal.impl.types.model.h hVar, kotlin.reflect.jvm.internal.impl.types.model.h hVar2) {
        int i;
        if (mVar.i(hVar) == mVar.i(hVar2) && mVar.x(hVar) == mVar.x(hVar2)) {
            if ((mVar.s0(hVar) == null) == (mVar.s0(hVar2) == null) && mVar.w0(mVar.d(hVar), mVar.d(hVar2))) {
                if (!mVar.I(hVar, hVar2) && (i = mVar.i(hVar)) > 0) {
                    int i2 = 0;
                    while (true) {
                        int i3 = i2 + 1;
                        kotlin.reflect.jvm.internal.impl.types.model.j jVarC = mVar.C(hVar, i2);
                        kotlin.reflect.jvm.internal.impl.types.model.j jVarC2 = mVar.C(hVar2, i2);
                        if (mVar.t(jVarC) != mVar.t(jVarC2)) {
                            return false;
                        }
                        if (!mVar.t(jVarC) && (mVar.n0(jVarC) != mVar.n0(jVarC2) || !c(mVar, mVar.u0(jVarC), mVar.u0(jVarC2)))) {
                            return false;
                        }
                        if (i3 < i) {
                            i2 = i3;
                        }
                    }
                }
                return true;
            }
        }
        return false;
    }

    private final boolean c(kotlin.reflect.jvm.internal.impl.types.model.m mVar, kotlin.reflect.jvm.internal.impl.types.model.g gVar, kotlin.reflect.jvm.internal.impl.types.model.g gVar2) {
        if (gVar == gVar2) {
            return true;
        }
        kotlin.reflect.jvm.internal.impl.types.model.h hVarC = mVar.c(gVar);
        kotlin.reflect.jvm.internal.impl.types.model.h hVarC2 = mVar.c(gVar2);
        if (hVarC != null && hVarC2 != null) {
            return a(mVar, hVarC, hVarC2);
        }
        kotlin.reflect.jvm.internal.impl.types.model.e eVarC0 = mVar.c0(gVar);
        kotlin.reflect.jvm.internal.impl.types.model.e eVarC1 = mVar.c0(gVar2);
        return eVarC0 != null && eVarC1 != null && a(mVar, mVar.b(eVarC0), mVar.b(eVarC1)) && a(mVar, mVar.f(eVarC0), mVar.f(eVarC1));
    }

    public final boolean b(kotlin.reflect.jvm.internal.impl.types.model.m context, kotlin.reflect.jvm.internal.impl.types.model.g a2, kotlin.reflect.jvm.internal.impl.types.model.g b) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(a2, "a");
        kotlin.jvm.internal.r.e(b, "b");
        return c(context, a2, b);
    }
}
