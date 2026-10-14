package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.Collection;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.q0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class g {

    public static final class a extends g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f15665a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.g
        public kotlin.reflect.jvm.internal.impl.descriptors.d a(kotlin.reflect.jvm.internal.impl.name.b classId) {
            kotlin.jvm.internal.r.e(classId, "classId");
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.g
        public <S extends MemberScope> S b(kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor, Function0<? extends S> compute) {
            kotlin.jvm.internal.r.e(classDescriptor, "classDescriptor");
            kotlin.jvm.internal.r.e(compute, "compute");
            return compute.invoke();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.g
        public boolean c(z moduleDescriptor) {
            kotlin.jvm.internal.r.e(moduleDescriptor, "moduleDescriptor");
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.g
        public boolean d(q0 typeConstructor) {
            kotlin.jvm.internal.r.e(typeConstructor, "typeConstructor");
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.g
        public Collection<a0> f(kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor) {
            kotlin.jvm.internal.r.e(classDescriptor, "classDescriptor");
            Collection<a0> collectionA = classDescriptor.i().a();
            kotlin.jvm.internal.r.d(collectionA, "classDescriptor.typeConstructor.supertypes");
            return collectionA;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.g
        public a0 g(a0 type) {
            kotlin.jvm.internal.r.e(type, "type");
            return type;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.g
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public kotlin.reflect.jvm.internal.impl.descriptors.d e(kotlin.reflect.jvm.internal.impl.descriptors.k descriptor) {
            kotlin.jvm.internal.r.e(descriptor, "descriptor");
            return null;
        }
    }

    public abstract kotlin.reflect.jvm.internal.impl.descriptors.d a(kotlin.reflect.jvm.internal.impl.name.b bVar);

    public abstract <S extends MemberScope> S b(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, Function0<? extends S> function0);

    public abstract boolean c(z zVar);

    public abstract boolean d(q0 q0Var);

    public abstract kotlin.reflect.jvm.internal.impl.descriptors.f e(kotlin.reflect.jvm.internal.impl.descriptors.k kVar);

    public abstract Collection<a0> f(kotlin.reflect.jvm.internal.impl.descriptors.d dVar);

    public abstract a0 g(a0 a0Var);
}
