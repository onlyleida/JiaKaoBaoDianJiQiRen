package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f14983a = new a();
    private static C0327a b;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.a$a, reason: collision with other inner class name */
    public static final class C0327a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Method f14984a;
        private final Method b;

        public C0327a(Method method, Method method2) {
            this.f14984a = method;
            this.b = method2;
        }

        public final Method a() {
            return this.b;
        }

        public final Method b() {
            return this.f14984a;
        }
    }

    private a() {
    }

    public final C0327a a(Member member) {
        kotlin.jvm.internal.r.e(member, "member");
        Class<?> cls = member.getClass();
        try {
            return new C0327a(cls.getMethod("getParameters", new Class[0]), ReflectClassUtilKt.e(cls).loadClass("java.lang.reflect.Parameter").getMethod("getName", new Class[0]));
        } catch (NoSuchMethodException unused) {
            return new C0327a(null, null);
        }
    }

    public final List<String> b(Member member) throws IllegalAccessException, InvocationTargetException {
        Method methodA;
        kotlin.jvm.internal.r.e(member, "member");
        C0327a c0327aA = b;
        if (c0327aA == null) {
            c0327aA = a(member);
            b = c0327aA;
        }
        Method methodB = c0327aA.b();
        if (methodB == null || (methodA = c0327aA.a()) == null) {
            return null;
        }
        Object objInvoke = methodB.invoke(member, new Object[0]);
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Array<*>");
        Object[] objArr = (Object[]) objInvoke;
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            Object objInvoke2 = methodA.invoke(obj, new Object[0]);
            Objects.requireNonNull(objInvoke2, "null cannot be cast to non-null type kotlin.String");
            arrayList.add((String) objInvoke2);
        }
        return arrayList;
    }
}
