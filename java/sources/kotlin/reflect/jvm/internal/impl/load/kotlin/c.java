package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaPackageFragmentProvider;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.serialization.deserialization.g f15208a;

    public c(kotlin.reflect.jvm.internal.impl.storage.m storageManager, z moduleDescriptor, kotlin.reflect.jvm.internal.impl.serialization.deserialization.h configuration, d classDataFinder, a annotationAndConstantLoader, LazyJavaPackageFragmentProvider packageFragmentProvider, NotFoundClasses notFoundClasses, kotlin.reflect.jvm.internal.impl.serialization.deserialization.l errorReporter, kotlin.reflect.jvm.internal.impl.incremental.components.c lookupTracker, kotlin.reflect.jvm.internal.impl.serialization.deserialization.f contractDeserializer, kotlin.reflect.jvm.internal.impl.types.checker.k kotlinTypeChecker) {
        kotlin.jvm.internal.r.e(storageManager, "storageManager");
        kotlin.jvm.internal.r.e(moduleDescriptor, "moduleDescriptor");
        kotlin.jvm.internal.r.e(configuration, "configuration");
        kotlin.jvm.internal.r.e(classDataFinder, "classDataFinder");
        kotlin.jvm.internal.r.e(annotationAndConstantLoader, "annotationAndConstantLoader");
        kotlin.jvm.internal.r.e(packageFragmentProvider, "packageFragmentProvider");
        kotlin.jvm.internal.r.e(notFoundClasses, "notFoundClasses");
        kotlin.jvm.internal.r.e(errorReporter, "errorReporter");
        kotlin.jvm.internal.r.e(lookupTracker, "lookupTracker");
        kotlin.jvm.internal.r.e(contractDeserializer, "contractDeserializer");
        kotlin.jvm.internal.r.e(kotlinTypeChecker, "kotlinTypeChecker");
        kotlin.reflect.jvm.internal.impl.builtins.g gVarK = moduleDescriptor.k();
        JvmBuiltIns jvmBuiltIns = gVarK instanceof JvmBuiltIns ? (JvmBuiltIns) gVarK : null;
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.p.a aVar = kotlin.reflect.jvm.internal.impl.serialization.deserialization.p.a.f15605a;
        e eVar = e.f15210a;
        List listJ = kotlin.collections.u.j();
        kotlin.reflect.jvm.internal.impl.descriptors.a1.a aVarG0 = jvmBuiltIns == null ? null : jvmBuiltIns.G0();
        kotlin.reflect.jvm.internal.impl.descriptors.a1.a aVar2 = aVarG0 == null ? kotlin.reflect.jvm.internal.impl.descriptors.a1.a.C0322a.f14860a : aVarG0;
        JvmBuiltInsCustomizer jvmBuiltInsCustomizerG0 = jvmBuiltIns != null ? jvmBuiltIns.G0() : null;
        this.f15208a = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.g(storageManager, moduleDescriptor, configuration, classDataFinder, annotationAndConstantLoader, packageFragmentProvider, aVar, errorReporter, lookupTracker, eVar, listJ, notFoundClasses, contractDeserializer, aVar2, jvmBuiltInsCustomizerG0 == null ? kotlin.reflect.jvm.internal.impl.descriptors.a1.c.b.f14862a : jvmBuiltInsCustomizerG0, kotlin.reflect.jvm.internal.impl.metadata.jvm.a.g.f15380a.a(), kotlinTypeChecker, new kotlin.reflect.jvm.internal.impl.resolve.n.b(storageManager, kotlin.collections.u.j()), null, 262144, null);
    }

    public final kotlin.reflect.jvm.internal.impl.serialization.deserialization.g a() {
        return this.f15208a;
    }
}
