package kotlin.reflect.jvm.internal.impl.descriptors.c1.a;

import java.util.List;
import kotlin.collections.u;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.ReflectionTypes;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.r0;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeEnhancementState;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaPackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.load.kotlin.s;

/* JADX INFO: loaded from: classes6.dex */
public final class l {

    public static final class a implements kotlin.reflect.jvm.internal.impl.load.java.lazy.a {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.a
        public List<kotlin.reflect.jvm.internal.impl.load.java.structure.a> a(kotlin.reflect.jvm.internal.impl.name.b classId) {
            r.e(classId, "classId");
            return null;
        }
    }

    public static final kotlin.reflect.jvm.internal.impl.load.kotlin.c a(z module, kotlin.reflect.jvm.internal.impl.storage.m storageManager, NotFoundClasses notFoundClasses, LazyJavaPackageFragmentProvider lazyJavaPackageFragmentProvider, kotlin.reflect.jvm.internal.impl.load.kotlin.k reflectKotlinClassFinder, DeserializedDescriptorResolver deserializedDescriptorResolver) {
        r.e(module, "module");
        r.e(storageManager, "storageManager");
        r.e(notFoundClasses, "notFoundClasses");
        r.e(lazyJavaPackageFragmentProvider, "lazyJavaPackageFragmentProvider");
        r.e(reflectKotlinClassFinder, "reflectKotlinClassFinder");
        r.e(deserializedDescriptorResolver, "deserializedDescriptorResolver");
        return new kotlin.reflect.jvm.internal.impl.load.kotlin.c(storageManager, module, kotlin.reflect.jvm.internal.impl.serialization.deserialization.h.a.f15592a, new kotlin.reflect.jvm.internal.impl.load.kotlin.d(reflectKotlinClassFinder, deserializedDescriptorResolver), new kotlin.reflect.jvm.internal.impl.load.kotlin.a(module, notFoundClasses, storageManager, reflectKotlinClassFinder), lazyJavaPackageFragmentProvider, notFoundClasses, j.b, kotlin.reflect.jvm.internal.impl.incremental.components.c.a.f15003a, kotlin.reflect.jvm.internal.impl.serialization.deserialization.f.f15584a.a(), kotlin.reflect.jvm.internal.impl.types.checker.k.b.a());
    }

    public static final LazyJavaPackageFragmentProvider b(ClassLoader classLoader, z module, kotlin.reflect.jvm.internal.impl.storage.m storageManager, NotFoundClasses notFoundClasses, kotlin.reflect.jvm.internal.impl.load.kotlin.k reflectKotlinClassFinder, DeserializedDescriptorResolver deserializedDescriptorResolver, kotlin.reflect.jvm.internal.impl.load.java.lazy.f singleModuleClassResolver, s packagePartProvider) {
        r.e(classLoader, "classLoader");
        r.e(module, "module");
        r.e(storageManager, "storageManager");
        r.e(notFoundClasses, "notFoundClasses");
        r.e(reflectKotlinClassFinder, "reflectKotlinClassFinder");
        r.e(deserializedDescriptorResolver, "deserializedDescriptorResolver");
        r.e(singleModuleClassResolver, "singleModuleClassResolver");
        r.e(packagePartProvider, "packagePartProvider");
        JavaTypeEnhancementState.a aVar = JavaTypeEnhancementState.f15008d;
        AnnotationTypeQualifierResolver annotationTypeQualifierResolver = new AnnotationTypeQualifierResolver(storageManager, aVar.a());
        JavaTypeEnhancementState javaTypeEnhancementStateA = aVar.a();
        d dVar = new d(classLoader);
        kotlin.reflect.jvm.internal.impl.load.java.components.e DO_NOTHING = kotlin.reflect.jvm.internal.impl.load.java.components.e.f15050a;
        r.d(DO_NOTHING, "DO_NOTHING");
        j jVar = j.b;
        kotlin.reflect.jvm.internal.impl.load.java.components.d EMPTY = kotlin.reflect.jvm.internal.impl.load.java.components.d.f15049a;
        r.d(EMPTY, "EMPTY");
        kotlin.reflect.jvm.internal.impl.load.java.components.c.a aVar2 = kotlin.reflect.jvm.internal.impl.load.java.components.c.a.f15048a;
        kotlin.reflect.jvm.internal.impl.resolve.n.b bVar = new kotlin.reflect.jvm.internal.impl.resolve.n.b(storageManager, u.j());
        m mVar = m.f14884a;
        r0.a aVar3 = r0.a.f14979a;
        kotlin.reflect.jvm.internal.impl.incremental.components.c.a aVar4 = kotlin.reflect.jvm.internal.impl.incremental.components.c.a.f15003a;
        ReflectionTypes reflectionTypes = new ReflectionTypes(module, notFoundClasses);
        JavaTypeEnhancementState javaTypeEnhancementStateA2 = aVar.a();
        kotlin.reflect.jvm.internal.impl.load.java.lazy.c.b bVar2 = kotlin.reflect.jvm.internal.impl.load.java.lazy.c.b.f15077a;
        return new LazyJavaPackageFragmentProvider(new kotlin.reflect.jvm.internal.impl.load.java.lazy.b(storageManager, dVar, reflectKotlinClassFinder, deserializedDescriptorResolver, DO_NOTHING, jVar, EMPTY, aVar2, bVar, mVar, singleModuleClassResolver, packagePartProvider, aVar3, aVar4, module, reflectionTypes, annotationTypeQualifierResolver, new SignatureEnhancement(annotationTypeQualifierResolver, javaTypeEnhancementStateA2, new kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.d(bVar2)), kotlin.reflect.jvm.internal.impl.load.java.j.a.f15059a, bVar2, kotlin.reflect.jvm.internal.impl.types.checker.k.b.a(), javaTypeEnhancementStateA, new a(), null, 8388608, null));
    }
}
