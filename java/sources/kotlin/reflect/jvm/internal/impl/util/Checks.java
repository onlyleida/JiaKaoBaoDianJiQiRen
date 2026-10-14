package kotlin.reflect.jvm.internal.impl.util;

import java.util.Arrays;
import java.util.Collection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes6.dex */
public final class Checks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.name.f f15725a;
    private final Regex b;
    private final Collection<kotlin.reflect.jvm.internal.impl.name.f> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Function1<u, String> f15726d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b[] f15727e;

    /* JADX WARN: Multi-variable type inference failed */
    private Checks(kotlin.reflect.jvm.internal.impl.name.f fVar, Regex regex, Collection<kotlin.reflect.jvm.internal.impl.name.f> collection, Function1<? super u, String> function1, b... bVarArr) {
        this.f15725a = fVar;
        this.b = regex;
        this.c = collection;
        this.f15726d = function1;
        this.f15727e = bVarArr;
    }

    public final c a(u functionDescriptor) {
        r.e(functionDescriptor, "functionDescriptor");
        b[] bVarArr = this.f15727e;
        int length = bVarArr.length;
        int i = 0;
        while (i < length) {
            b bVar = bVarArr[i];
            i++;
            String strB = bVar.b(functionDescriptor);
            if (strB != null) {
                return new c.b(strB);
            }
        }
        String strInvoke = this.f15726d.invoke(functionDescriptor);
        return strInvoke != null ? new c.b(strInvoke) : c.C0360c.b;
    }

    public final boolean b(u functionDescriptor) {
        r.e(functionDescriptor, "functionDescriptor");
        if (this.f15725a != null && !r.a(functionDescriptor.getName(), this.f15725a)) {
            return false;
        }
        if (this.b != null) {
            String strB = functionDescriptor.getName().b();
            r.d(strB, "functionDescriptor.name.asString()");
            if (!this.b.matches(strB)) {
                return false;
            }
        }
        Collection<kotlin.reflect.jvm.internal.impl.name.f> collection = this.c;
        return collection == null || collection.contains(functionDescriptor.getName());
    }

    public /* synthetic */ Checks(kotlin.reflect.jvm.internal.impl.name.f fVar, b[] bVarArr, Function1 function1, int i, o oVar) {
        this(fVar, bVarArr, (Function1<? super u, String>) ((i & 4) != 0 ? new Function1() { // from class: kotlin.reflect.jvm.internal.impl.util.Checks.2
            @Override // kotlin.jvm.functions.Function1
            public final Void invoke(u uVar) {
                r.e(uVar, "$this$null");
                return null;
            }
        } : function1));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Checks(kotlin.reflect.jvm.internal.impl.name.f name, b[] checks, Function1<? super u, String> additionalChecks) {
        this(name, (Regex) null, (Collection<kotlin.reflect.jvm.internal.impl.name.f>) null, additionalChecks, (b[]) Arrays.copyOf(checks, checks.length));
        r.e(name, "name");
        r.e(checks, "checks");
        r.e(additionalChecks, "additionalChecks");
    }

    public /* synthetic */ Checks(Regex regex, b[] bVarArr, Function1 function1, int i, o oVar) {
        this(regex, bVarArr, (Function1<? super u, String>) ((i & 4) != 0 ? new Function1() { // from class: kotlin.reflect.jvm.internal.impl.util.Checks.3
            @Override // kotlin.jvm.functions.Function1
            public final Void invoke(u uVar) {
                r.e(uVar, "$this$null");
                return null;
            }
        } : function1));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Checks(Regex regex, b[] checks, Function1<? super u, String> additionalChecks) {
        this((kotlin.reflect.jvm.internal.impl.name.f) null, regex, (Collection<kotlin.reflect.jvm.internal.impl.name.f>) null, additionalChecks, (b[]) Arrays.copyOf(checks, checks.length));
        r.e(regex, "regex");
        r.e(checks, "checks");
        r.e(additionalChecks, "additionalChecks");
    }

    public /* synthetic */ Checks(Collection collection, b[] bVarArr, Function1 function1, int i, o oVar) {
        this((Collection<kotlin.reflect.jvm.internal.impl.name.f>) collection, bVarArr, (Function1<? super u, String>) ((i & 4) != 0 ? new Function1() { // from class: kotlin.reflect.jvm.internal.impl.util.Checks.4
            @Override // kotlin.jvm.functions.Function1
            public final Void invoke(u uVar) {
                r.e(uVar, "$this$null");
                return null;
            }
        } : function1));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Checks(Collection<kotlin.reflect.jvm.internal.impl.name.f> nameList, b[] checks, Function1<? super u, String> additionalChecks) {
        this((kotlin.reflect.jvm.internal.impl.name.f) null, (Regex) null, nameList, additionalChecks, (b[]) Arrays.copyOf(checks, checks.length));
        r.e(nameList, "nameList");
        r.e(checks, "checks");
        r.e(additionalChecks, "additionalChecks");
    }
}
