package kotlin.jvm.internal;

import kotlin.reflect.KClass;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty0;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KMutableProperty2;
import kotlin.reflect.KProperty0;
import kotlin.reflect.KProperty1;
import kotlin.reflect.KProperty2;

/* JADX INFO: loaded from: classes6.dex */
public class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final w f14669a;
    private static final KClass[] b;

    static {
        w wVar = null;
        try {
            wVar = (w) Class.forName("kotlin.reflect.jvm.internal.l").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (wVar == null) {
            wVar = new w();
        }
        f14669a = wVar;
        b = new KClass[0];
    }

    public static KFunction a(FunctionReference functionReference) {
        return f14669a.a(functionReference);
    }

    public static KClass b(Class cls) {
        return f14669a.b(cls);
    }

    public static KDeclarationContainer c(Class cls) {
        return f14669a.c(cls, "");
    }

    public static KDeclarationContainer d(Class cls, String str) {
        return f14669a.c(cls, str);
    }

    public static KMutableProperty0 e(MutablePropertyReference0 mutablePropertyReference0) {
        return f14669a.d(mutablePropertyReference0);
    }

    public static KMutableProperty1 f(MutablePropertyReference1 mutablePropertyReference1) {
        return f14669a.e(mutablePropertyReference1);
    }

    public static KMutableProperty2 g(MutablePropertyReference2 mutablePropertyReference2) {
        return f14669a.f(mutablePropertyReference2);
    }

    public static KProperty0 h(PropertyReference0 propertyReference0) {
        return f14669a.g(propertyReference0);
    }

    public static KProperty1 i(PropertyReference1 propertyReference1) {
        return f14669a.h(propertyReference1);
    }

    public static KProperty2 j(PropertyReference2 propertyReference2) {
        return f14669a.i(propertyReference2);
    }

    public static String k(FunctionBase functionBase) {
        return f14669a.j(functionBase);
    }

    public static String l(Lambda lambda) {
        return f14669a.k(lambda);
    }
}
