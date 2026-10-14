package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;

/* JADX INFO: loaded from: classes6.dex */
public final class z2 {
    public static final void a(CoroutineContext coroutineContext) {
        t1 t1Var = (t1) coroutineContext.get(t1.R);
        if (t1Var != null && !t1Var.isActive()) {
            throw t1Var.i();
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final Object b(Continuation<? super kotlin.v> continuation) {
        Object objD;
        CoroutineContext context = continuation.getContext();
        a(context);
        Continuation continuationC = IntrinsicsKt__IntrinsicsJvmKt.c(continuation);
        if (!(continuationC instanceof kotlinx.coroutines.internal.g)) {
            continuationC = null;
        }
        kotlinx.coroutines.internal.g gVar = (kotlinx.coroutines.internal.g) continuationC;
        if (gVar != null) {
            if (gVar.f16018g.A(context)) {
                gVar.j(context, kotlin.v.f15822a);
            } else {
                y2 y2Var = new y2();
                CoroutineContext coroutineContextPlus = context.plus(y2Var);
                objD = kotlin.v.f15822a;
                gVar.j(coroutineContextPlus, objD);
                if (!y2Var.f16130a || kotlinx.coroutines.internal.h.d(gVar)) {
                    objD = kotlin.coroutines.intrinsics.b.d();
                }
            }
            objD = kotlin.coroutines.intrinsics.b.d();
        } else {
            objD = kotlin.v.f15822a;
        }
        if (objD == kotlin.coroutines.intrinsics.b.d()) {
            kotlin.coroutines.jvm.internal.f.c(continuation);
        }
        return objD == kotlin.coroutines.intrinsics.b.d() ? objD : kotlin.v.f15822a;
    }
}
