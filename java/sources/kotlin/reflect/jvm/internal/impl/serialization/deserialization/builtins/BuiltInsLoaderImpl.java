package kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.u;
import kotlin.collections.v;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.BuiltInsLoader;
import kotlin.reflect.jvm.internal.impl.builtins.h;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.f;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.g;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.j;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.l;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.p;
import kotlin.reflect.jvm.internal.impl.storage.m;

/* JADX INFO: loaded from: classes6.dex */
public final class BuiltInsLoaderImpl implements BuiltInsLoader {
    private final c b = new c();

    @Override // kotlin.reflect.jvm.internal.impl.builtins.BuiltInsLoader
    public c0 a(m storageManager, z builtInsModule, Iterable<? extends kotlin.reflect.jvm.internal.impl.descriptors.a1.b> classDescriptorFactories, kotlin.reflect.jvm.internal.impl.descriptors.a1.c platformDependentDeclarationFilter, kotlin.reflect.jvm.internal.impl.descriptors.a1.a additionalClassPartsProvider, boolean z) {
        r.e(storageManager, "storageManager");
        r.e(builtInsModule, "builtInsModule");
        r.e(classDescriptorFactories, "classDescriptorFactories");
        r.e(platformDependentDeclarationFilter, "platformDependentDeclarationFilter");
        r.e(additionalClassPartsProvider, "additionalClassPartsProvider");
        return b(storageManager, builtInsModule, h.p, classDescriptorFactories, platformDependentDeclarationFilter, additionalClassPartsProvider, z, new BuiltInsLoaderImpl$createPackageFragmentProvider$1(this.b));
    }

    public final c0 b(m storageManager, z module, Set<kotlin.reflect.jvm.internal.impl.name.c> packageFqNames, Iterable<? extends kotlin.reflect.jvm.internal.impl.descriptors.a1.b> classDescriptorFactories, kotlin.reflect.jvm.internal.impl.descriptors.a1.c platformDependentDeclarationFilter, kotlin.reflect.jvm.internal.impl.descriptors.a1.a additionalClassPartsProvider, boolean z, Function1<? super String, ? extends InputStream> loadResource) {
        r.e(storageManager, "storageManager");
        r.e(module, "module");
        r.e(packageFqNames, "packageFqNames");
        r.e(classDescriptorFactories, "classDescriptorFactories");
        r.e(platformDependentDeclarationFilter, "platformDependentDeclarationFilter");
        r.e(additionalClassPartsProvider, "additionalClassPartsProvider");
        r.e(loadResource, "loadResource");
        ArrayList arrayList = new ArrayList(v.u(packageFqNames, 10));
        for (kotlin.reflect.jvm.internal.impl.name.c cVar : packageFqNames) {
            String strN = a.m.n(cVar);
            InputStream inputStreamInvoke = loadResource.invoke(strN);
            if (inputStreamInvoke == null) {
                throw new IllegalStateException(r.m("Resource not found in classpath: ", strN));
            }
            arrayList.add(b.n.a(cVar, storageManager, module, inputStreamInvoke, z));
        }
        PackageFragmentProviderImpl packageFragmentProviderImpl = new PackageFragmentProviderImpl(arrayList);
        NotFoundClasses notFoundClasses = new NotFoundClasses(storageManager, module);
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.h.a aVar = kotlin.reflect.jvm.internal.impl.serialization.deserialization.h.a.f15592a;
        j jVar = new j(packageFragmentProviderImpl);
        a aVar2 = a.m;
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.b bVar = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.b(module, notFoundClasses, aVar2);
        p.a aVar3 = p.a.f15605a;
        l DO_NOTHING = l.f15601a;
        r.d(DO_NOTHING, "DO_NOTHING");
        g gVar = new g(storageManager, module, aVar, jVar, bVar, packageFragmentProviderImpl, aVar3, DO_NOTHING, kotlin.reflect.jvm.internal.impl.incremental.components.c.a.f15003a, kotlin.reflect.jvm.internal.impl.serialization.deserialization.m.a.f15602a, classDescriptorFactories, notFoundClasses, f.f15584a.a(), additionalClassPartsProvider, platformDependentDeclarationFilter, aVar2.e(), null, new kotlin.reflect.jvm.internal.impl.resolve.n.b(storageManager, u.j()), null, 327680, null);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((b) it.next()).H0(gVar);
        }
        return packageFragmentProviderImpl;
    }
}
