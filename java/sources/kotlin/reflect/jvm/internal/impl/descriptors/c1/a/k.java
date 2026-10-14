package kotlin.reflect.jvm.internal.impl.descriptors.c1.a;

import kotlin.collections.u;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaPackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.load.kotlin.s;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
public final class k {
    public static final a c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.serialization.deserialization.g f14883a;
    private final kotlin.reflect.jvm.internal.impl.descriptors.c1.a.a b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final k a(ClassLoader classLoader) {
            r.e(classLoader, "classLoader");
            LockBasedStorageManager lockBasedStorageManager = new LockBasedStorageManager("RuntimeModuleData");
            JvmBuiltIns jvmBuiltIns = new JvmBuiltIns(lockBasedStorageManager, JvmBuiltIns.Kind.FROM_DEPENDENCIES);
            kotlin.reflect.jvm.internal.impl.name.f fVarN = kotlin.reflect.jvm.internal.impl.name.f.n("<runtime module for " + classLoader + '>');
            r.d(fVarN, "special(\"<runtime module for $classLoader>\")");
            ModuleDescriptorImpl moduleDescriptorImpl = new ModuleDescriptorImpl(fVarN, lockBasedStorageManager, jvmBuiltIns, null, null, null, 56, null);
            jvmBuiltIns.C0(moduleDescriptorImpl);
            jvmBuiltIns.H0(moduleDescriptorImpl, true);
            g gVar = new g(classLoader);
            DeserializedDescriptorResolver deserializedDescriptorResolver = new DeserializedDescriptorResolver();
            kotlin.reflect.jvm.internal.impl.load.java.lazy.g gVar2 = new kotlin.reflect.jvm.internal.impl.load.java.lazy.g();
            NotFoundClasses notFoundClasses = new NotFoundClasses(lockBasedStorageManager, moduleDescriptorImpl);
            LazyJavaPackageFragmentProvider lazyJavaPackageFragmentProviderB = l.b(classLoader, moduleDescriptorImpl, lockBasedStorageManager, notFoundClasses, gVar, deserializedDescriptorResolver, gVar2, (128 & 128) != 0 ? s.a.f15237a : null);
            kotlin.reflect.jvm.internal.impl.load.kotlin.c cVarA = l.a(moduleDescriptorImpl, lockBasedStorageManager, notFoundClasses, lazyJavaPackageFragmentProviderB, gVar, deserializedDescriptorResolver);
            deserializedDescriptorResolver.m(cVarA);
            kotlin.reflect.jvm.internal.impl.load.java.components.d EMPTY = kotlin.reflect.jvm.internal.impl.load.java.components.d.f15049a;
            r.d(EMPTY, "EMPTY");
            kotlin.reflect.jvm.internal.impl.resolve.jvm.c cVar = new kotlin.reflect.jvm.internal.impl.resolve.jvm.c(lazyJavaPackageFragmentProviderB, EMPTY);
            gVar2.c(cVar);
            ClassLoader stdlibClassLoader = v.class.getClassLoader();
            r.d(stdlibClassLoader, "stdlibClassLoader");
            kotlin.reflect.jvm.internal.impl.builtins.jvm.e eVar = new kotlin.reflect.jvm.internal.impl.builtins.jvm.e(lockBasedStorageManager, new g(stdlibClassLoader), moduleDescriptorImpl, notFoundClasses, jvmBuiltIns.G0(), jvmBuiltIns.G0(), kotlin.reflect.jvm.internal.impl.serialization.deserialization.h.a.f15592a, kotlin.reflect.jvm.internal.impl.types.checker.k.b.a(), new kotlin.reflect.jvm.internal.impl.resolve.n.b(lockBasedStorageManager, u.j()));
            moduleDescriptorImpl.U0(moduleDescriptorImpl);
            moduleDescriptorImpl.O0(new kotlin.reflect.jvm.internal.impl.descriptors.impl.h(u.m(cVar.a(), eVar), r.m("CompositeProvider@RuntimeModuleData for ", moduleDescriptorImpl)));
            return new k(cVarA.a(), new kotlin.reflect.jvm.internal.impl.descriptors.c1.a.a(deserializedDescriptorResolver, gVar), null);
        }
    }

    private k(kotlin.reflect.jvm.internal.impl.serialization.deserialization.g gVar, kotlin.reflect.jvm.internal.impl.descriptors.c1.a.a aVar) {
        this.f14883a = gVar;
        this.b = aVar;
    }

    public /* synthetic */ k(kotlin.reflect.jvm.internal.impl.serialization.deserialization.g gVar, kotlin.reflect.jvm.internal.impl.descriptors.c1.a.a aVar, o oVar) {
        this(gVar, aVar);
    }

    public final kotlin.reflect.jvm.internal.impl.serialization.deserialization.g a() {
        return this.f14883a;
    }

    public final z b() {
        return this.f14883a.p();
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.c1.a.a c() {
        return this.b;
    }
}
