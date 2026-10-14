package kotlin.reflect.jvm.internal.impl.util;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ReturnsCheck implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f15729a;
    private final Function1<kotlin.reflect.jvm.internal.impl.builtins.g, a0> b;
    private final String c;

    public static final class ReturnsBoolean extends ReturnsCheck {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final ReturnsBoolean f15730d = new ReturnsBoolean();

        private ReturnsBoolean() {
            super("Boolean", new Function1<kotlin.reflect.jvm.internal.impl.builtins.g, a0>() { // from class: kotlin.reflect.jvm.internal.impl.util.ReturnsCheck.ReturnsBoolean.1
                @Override // kotlin.jvm.functions.Function1
                public final a0 invoke(kotlin.reflect.jvm.internal.impl.builtins.g gVar) {
                    r.e(gVar, "$this$null");
                    f0 booleanType = gVar.n();
                    r.d(booleanType, "booleanType");
                    return booleanType;
                }
            }, null);
        }
    }

    public static final class ReturnsInt extends ReturnsCheck {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final ReturnsInt f15731d = new ReturnsInt();

        private ReturnsInt() {
            super("Int", new Function1<kotlin.reflect.jvm.internal.impl.builtins.g, a0>() { // from class: kotlin.reflect.jvm.internal.impl.util.ReturnsCheck.ReturnsInt.1
                @Override // kotlin.jvm.functions.Function1
                public final a0 invoke(kotlin.reflect.jvm.internal.impl.builtins.g gVar) {
                    r.e(gVar, "$this$null");
                    f0 intType = gVar.D();
                    r.d(intType, "intType");
                    return intType;
                }
            }, null);
        }
    }

    public static final class ReturnsUnit extends ReturnsCheck {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final ReturnsUnit f15732d = new ReturnsUnit();

        private ReturnsUnit() {
            super("Unit", new Function1<kotlin.reflect.jvm.internal.impl.builtins.g, a0>() { // from class: kotlin.reflect.jvm.internal.impl.util.ReturnsCheck.ReturnsUnit.1
                @Override // kotlin.jvm.functions.Function1
                public final a0 invoke(kotlin.reflect.jvm.internal.impl.builtins.g gVar) {
                    r.e(gVar, "$this$null");
                    f0 unitType = gVar.Z();
                    r.d(unitType, "unitType");
                    return unitType;
                }
            }, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ReturnsCheck(String str, Function1<? super kotlin.reflect.jvm.internal.impl.builtins.g, ? extends a0> function1) {
        this.f15729a = str;
        this.b = function1;
        this.c = r.m("must return ", str);
    }

    public /* synthetic */ ReturnsCheck(String str, Function1 function1, o oVar) {
        this(str, function1);
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.b
    public String a() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.b
    public String b(u uVar) {
        return b.a.a(this, uVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.b
    public boolean c(u functionDescriptor) {
        r.e(functionDescriptor, "functionDescriptor");
        return r.a(functionDescriptor.getReturnType(), this.b.invoke(DescriptorUtilsKt.g(functionDescriptor)));
    }
}
