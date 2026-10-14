package kotlin.reflect.jvm;

import kotlin.Function;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.r;
import kotlin.reflect.KFunction;
import kotlin.reflect.jvm.internal.EmptyContainerForLocal;
import kotlin.reflect.jvm.internal.KFunctionImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.a.e;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.a.f;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.a.g;
import kotlin.reflect.jvm.internal.q;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u0000\u001a\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0007¨\u0006\u0004"}, d2 = {"reflect", "Lkotlin/reflect/KFunction;", "R", "Lkotlin/Function;", "kotlin-reflection"}, k = 2, mv = {1, 5, 1})
public final class ReflectLambdaKt {
    public static final <R> KFunction<R> a(Function<? extends R> reflect) {
        r.e(reflect, "$this$reflect");
        Metadata metadata = (Metadata) reflect.getClass().getAnnotation(Metadata.class);
        if (metadata != null) {
            String[] strArrD1 = metadata.d1();
            if (strArrD1.length == 0) {
                strArrD1 = null;
            }
            if (strArrD1 != null) {
                Pair<f, ProtoBuf$Function> pairJ = g.j(strArrD1, metadata.d2());
                f fVarComponent1 = pairJ.component1();
                ProtoBuf$Function protoBuf$FunctionComponent2 = pairJ.component2();
                e eVar = new e(metadata.mv(), (metadata.xi() & 8) != 0);
                Class<?> cls = reflect.getClass();
                ProtoBuf$TypeTable typeTable = protoBuf$FunctionComponent2.getTypeTable();
                r.d(typeTable, "proto.typeTable");
                n0 n0Var = (n0) q.h(cls, protoBuf$FunctionComponent2, fVarComponent1, new kotlin.reflect.jvm.internal.impl.metadata.c.g(typeTable), eVar, ReflectLambdaKt$reflect$descriptor$1.INSTANCE);
                if (n0Var != null) {
                    return new KFunctionImpl(EmptyContainerForLocal.f14735d, n0Var);
                }
            }
        }
        return null;
    }
}
