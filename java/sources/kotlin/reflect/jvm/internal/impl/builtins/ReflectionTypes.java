package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.s;
import kotlin.collections.t;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
public final class ReflectionTypes {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final NotFoundClasses f14777a;
    private final Lazy b;
    private final a c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f14776e = {v.i(new PropertyReference1Impl(v.b(ReflectionTypes.class), "kClass", "getKClass()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), v.i(new PropertyReference1Impl(v.b(ReflectionTypes.class), "kProperty", "getKProperty()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), v.i(new PropertyReference1Impl(v.b(ReflectionTypes.class), "kProperty0", "getKProperty0()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), v.i(new PropertyReference1Impl(v.b(ReflectionTypes.class), "kProperty1", "getKProperty1()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), v.i(new PropertyReference1Impl(v.b(ReflectionTypes.class), "kProperty2", "getKProperty2()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), v.i(new PropertyReference1Impl(v.b(ReflectionTypes.class), "kMutableProperty0", "getKMutableProperty0()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), v.i(new PropertyReference1Impl(v.b(ReflectionTypes.class), "kMutableProperty1", "getKMutableProperty1()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), v.i(new PropertyReference1Impl(v.b(ReflectionTypes.class), "kMutableProperty2", "getKMutableProperty2()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"))};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b f14775d = new b(null);

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f14778a;

        public a(int i) {
            this.f14778a = i;
        }

        public final kotlin.reflect.jvm.internal.impl.descriptors.d a(ReflectionTypes types, KProperty<?> property) {
            r.e(types, "types");
            r.e(property, "property");
            return types.b(kotlin.reflect.jvm.internal.impl.util.j.a.a(property.getF14721h()), this.f14778a);
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(o oVar) {
            this();
        }

        public final a0 a(z module) {
            r.e(module, "module");
            kotlin.reflect.jvm.internal.impl.descriptors.d dVarA = FindClassInModuleKt.a(module, h.a.S);
            if (dVarA == null) {
                return null;
            }
            kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVarB = kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b();
            List<t0> parameters = dVarA.i().getParameters();
            r.d(parameters, "kPropertyClass.typeConstructor.parameters");
            Object objC0 = s.C0(parameters);
            r.d(objC0, "kPropertyClass.typeConstructor.parameters.single()");
            return KotlinTypeFactory.g(eVarB, dVarA, t.d(new StarProjectionImpl((t0) objC0)));
        }
    }

    public ReflectionTypes(final z module, NotFoundClasses notFoundClasses) {
        r.e(module, "module");
        r.e(notFoundClasses, "notFoundClasses");
        this.f14777a = notFoundClasses;
        this.b = kotlin.i.a(LazyThreadSafetyMode.PUBLICATION, new Function0<MemberScope>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.ReflectionTypes$kotlinReflectScope$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final MemberScope invoke() {
                return module.j0(h.i).m();
            }
        });
        this.c = new a(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlin.reflect.jvm.internal.impl.descriptors.d b(String str, int i) {
        kotlin.reflect.jvm.internal.impl.name.f fVarG = kotlin.reflect.jvm.internal.impl.name.f.g(str);
        r.d(fVarG, "identifier(className)");
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarF = d().f(fVarG, NoLookupLocation.FROM_REFLECTION);
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = fVarF instanceof kotlin.reflect.jvm.internal.impl.descriptors.d ? (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarF : null;
        return dVar == null ? this.f14777a.d(new kotlin.reflect.jvm.internal.impl.name.b(h.i, fVarG), t.d(Integer.valueOf(i))) : dVar;
    }

    private final MemberScope d() {
        return (MemberScope) this.b.getValue();
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.d c() {
        return this.c.a(this, f14776e[0]);
    }
}
