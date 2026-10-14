package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import java.io.InputStream;
import kotlin.collections.u;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.load.kotlin.k;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractDeserializedPackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.h;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.j;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.l;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.p;
import kotlin.reflect.jvm.internal.impl.storage.m;

/* JADX INFO: loaded from: classes6.dex */
public final class e extends AbstractDeserializedPackageFragmentProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(m storageManager, k finder, z moduleDescriptor, NotFoundClasses notFoundClasses, kotlin.reflect.jvm.internal.impl.descriptors.a1.a additionalClassPartsProvider, kotlin.reflect.jvm.internal.impl.descriptors.a1.c platformDependentDeclarationFilter, h deserializationConfiguration, kotlin.reflect.jvm.internal.impl.types.checker.k kotlinTypeChecker, kotlin.reflect.jvm.internal.impl.resolve.n.a samConversionResolver) {
        super(storageManager, finder, moduleDescriptor);
        r.e(storageManager, "storageManager");
        r.e(finder, "finder");
        r.e(moduleDescriptor, "moduleDescriptor");
        r.e(notFoundClasses, "notFoundClasses");
        r.e(additionalClassPartsProvider, "additionalClassPartsProvider");
        r.e(platformDependentDeclarationFilter, "platformDependentDeclarationFilter");
        r.e(deserializationConfiguration, "deserializationConfiguration");
        r.e(kotlinTypeChecker, "kotlinTypeChecker");
        r.e(samConversionResolver, "samConversionResolver");
        j jVar = new j(this);
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.a aVar = kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.a.m;
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.b bVar = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.b(moduleDescriptor, notFoundClasses, aVar);
        p.a aVar2 = p.a.f15605a;
        l DO_NOTHING = l.f15601a;
        r.d(DO_NOTHING, "DO_NOTHING");
        i(new kotlin.reflect.jvm.internal.impl.serialization.deserialization.g(storageManager, moduleDescriptor, deserializationConfiguration, jVar, bVar, this, aVar2, DO_NOTHING, kotlin.reflect.jvm.internal.impl.incremental.components.c.a.f15003a, kotlin.reflect.jvm.internal.impl.serialization.deserialization.m.a.f15602a, u.m(new kotlin.reflect.jvm.internal.impl.builtins.functions.a(storageManager, moduleDescriptor), new JvmBuiltInClassDescriptorFactory(storageManager, moduleDescriptor, null, 4, null)), notFoundClasses, kotlin.reflect.jvm.internal.impl.serialization.deserialization.f.f15584a.a(), additionalClassPartsProvider, platformDependentDeclarationFilter, aVar.e(), kotlinTypeChecker, samConversionResolver, null, 262144, null));
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractDeserializedPackageFragmentProvider
    protected kotlin.reflect.jvm.internal.impl.serialization.deserialization.k d(kotlin.reflect.jvm.internal.impl.name.c fqName) {
        r.e(fqName, "fqName");
        InputStream inputStreamB = f().b(fqName);
        if (inputStreamB == null) {
            return null;
        }
        return kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.b.n.a(fqName, h(), g(), inputStreamB, false);
    }
}
