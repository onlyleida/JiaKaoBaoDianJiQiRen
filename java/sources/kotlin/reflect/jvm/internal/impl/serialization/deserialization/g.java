package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.z;

/* JADX INFO: loaded from: classes6.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.m f15586a;
    private final z b;
    private final h c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e f15587d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> f15588e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final c0 f15589f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final p f15590g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final l f15591h;
    private final kotlin.reflect.jvm.internal.impl.incremental.components.c i;
    private final m j;
    private final Iterable<kotlin.reflect.jvm.internal.impl.descriptors.a1.b> k;
    private final NotFoundClasses l;
    private final f m;
    private final kotlin.reflect.jvm.internal.impl.descriptors.a1.a n;
    private final kotlin.reflect.jvm.internal.impl.descriptors.a1.c o;
    private final kotlin.reflect.jvm.internal.impl.protobuf.f p;
    private final kotlin.reflect.jvm.internal.impl.types.checker.k q;
    private final kotlin.reflect.jvm.internal.impl.resolve.n.a r;
    private final kotlin.reflect.jvm.internal.impl.descriptors.a1.e s;
    private final ClassDeserializer t;

    /* JADX WARN: Multi-variable type inference failed */
    public g(kotlin.reflect.jvm.internal.impl.storage.m storageManager, z moduleDescriptor, h configuration, e classDataFinder, a<? extends kotlin.reflect.jvm.internal.impl.descriptors.annotations.c, ? extends kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> annotationAndConstantLoader, c0 packageFragmentProvider, p localClassifierTypeSettings, l errorReporter, kotlin.reflect.jvm.internal.impl.incremental.components.c lookupTracker, m flexibleTypeDeserializer, Iterable<? extends kotlin.reflect.jvm.internal.impl.descriptors.a1.b> fictitiousClassDescriptorFactories, NotFoundClasses notFoundClasses, f contractDeserializer, kotlin.reflect.jvm.internal.impl.descriptors.a1.a additionalClassPartsProvider, kotlin.reflect.jvm.internal.impl.descriptors.a1.c platformDependentDeclarationFilter, kotlin.reflect.jvm.internal.impl.protobuf.f extensionRegistryLite, kotlin.reflect.jvm.internal.impl.types.checker.k kotlinTypeChecker, kotlin.reflect.jvm.internal.impl.resolve.n.a samConversionResolver, kotlin.reflect.jvm.internal.impl.descriptors.a1.e platformDependentTypeTransformer) {
        kotlin.jvm.internal.r.e(storageManager, "storageManager");
        kotlin.jvm.internal.r.e(moduleDescriptor, "moduleDescriptor");
        kotlin.jvm.internal.r.e(configuration, "configuration");
        kotlin.jvm.internal.r.e(classDataFinder, "classDataFinder");
        kotlin.jvm.internal.r.e(annotationAndConstantLoader, "annotationAndConstantLoader");
        kotlin.jvm.internal.r.e(packageFragmentProvider, "packageFragmentProvider");
        kotlin.jvm.internal.r.e(localClassifierTypeSettings, "localClassifierTypeSettings");
        kotlin.jvm.internal.r.e(errorReporter, "errorReporter");
        kotlin.jvm.internal.r.e(lookupTracker, "lookupTracker");
        kotlin.jvm.internal.r.e(flexibleTypeDeserializer, "flexibleTypeDeserializer");
        kotlin.jvm.internal.r.e(fictitiousClassDescriptorFactories, "fictitiousClassDescriptorFactories");
        kotlin.jvm.internal.r.e(notFoundClasses, "notFoundClasses");
        kotlin.jvm.internal.r.e(contractDeserializer, "contractDeserializer");
        kotlin.jvm.internal.r.e(additionalClassPartsProvider, "additionalClassPartsProvider");
        kotlin.jvm.internal.r.e(platformDependentDeclarationFilter, "platformDependentDeclarationFilter");
        kotlin.jvm.internal.r.e(extensionRegistryLite, "extensionRegistryLite");
        kotlin.jvm.internal.r.e(kotlinTypeChecker, "kotlinTypeChecker");
        kotlin.jvm.internal.r.e(samConversionResolver, "samConversionResolver");
        kotlin.jvm.internal.r.e(platformDependentTypeTransformer, "platformDependentTypeTransformer");
        this.f15586a = storageManager;
        this.b = moduleDescriptor;
        this.c = configuration;
        this.f15587d = classDataFinder;
        this.f15588e = annotationAndConstantLoader;
        this.f15589f = packageFragmentProvider;
        this.f15590g = localClassifierTypeSettings;
        this.f15591h = errorReporter;
        this.i = lookupTracker;
        this.j = flexibleTypeDeserializer;
        this.k = fictitiousClassDescriptorFactories;
        this.l = notFoundClasses;
        this.m = contractDeserializer;
        this.n = additionalClassPartsProvider;
        this.o = platformDependentDeclarationFilter;
        this.p = extensionRegistryLite;
        this.q = kotlinTypeChecker;
        this.r = samConversionResolver;
        this.s = platformDependentTypeTransformer;
        this.t = new ClassDeserializer(this);
    }

    public final i a(b0 descriptor, kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver, kotlin.reflect.jvm.internal.impl.metadata.c.g typeTable, kotlin.reflect.jvm.internal.impl.metadata.c.i versionRequirementTable, kotlin.reflect.jvm.internal.impl.metadata.c.a metadataVersion, kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.d dVar) {
        kotlin.jvm.internal.r.e(descriptor, "descriptor");
        kotlin.jvm.internal.r.e(nameResolver, "nameResolver");
        kotlin.jvm.internal.r.e(typeTable, "typeTable");
        kotlin.jvm.internal.r.e(versionRequirementTable, "versionRequirementTable");
        kotlin.jvm.internal.r.e(metadataVersion, "metadataVersion");
        return new i(this, nameResolver, descriptor, typeTable, versionRequirementTable, metadataVersion, dVar, null, kotlin.collections.u.j());
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.d b(kotlin.reflect.jvm.internal.impl.name.b classId) {
        kotlin.jvm.internal.r.e(classId, "classId");
        return ClassDeserializer.e(this.t, classId, null, 2, null);
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.a1.a c() {
        return this.n;
    }

    public final a<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> d() {
        return this.f15588e;
    }

    public final e e() {
        return this.f15587d;
    }

    public final ClassDeserializer f() {
        return this.t;
    }

    public final h g() {
        return this.c;
    }

    public final f h() {
        return this.m;
    }

    public final l i() {
        return this.f15591h;
    }

    public final kotlin.reflect.jvm.internal.impl.protobuf.f j() {
        return this.p;
    }

    public final Iterable<kotlin.reflect.jvm.internal.impl.descriptors.a1.b> k() {
        return this.k;
    }

    public final m l() {
        return this.j;
    }

    public final kotlin.reflect.jvm.internal.impl.types.checker.k m() {
        return this.q;
    }

    public final p n() {
        return this.f15590g;
    }

    public final kotlin.reflect.jvm.internal.impl.incremental.components.c o() {
        return this.i;
    }

    public final z p() {
        return this.b;
    }

    public final NotFoundClasses q() {
        return this.l;
    }

    public final c0 r() {
        return this.f15589f;
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.a1.c s() {
        return this.o;
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.a1.e t() {
        return this.s;
    }

    public final kotlin.reflect.jvm.internal.impl.storage.m u() {
        return this.f15586a;
    }

    public /* synthetic */ g(kotlin.reflect.jvm.internal.impl.storage.m mVar, z zVar, h hVar, e eVar, a aVar, c0 c0Var, p pVar, l lVar, kotlin.reflect.jvm.internal.impl.incremental.components.c cVar, m mVar2, Iterable iterable, NotFoundClasses notFoundClasses, f fVar, kotlin.reflect.jvm.internal.impl.descriptors.a1.a aVar2, kotlin.reflect.jvm.internal.impl.descriptors.a1.c cVar2, kotlin.reflect.jvm.internal.impl.protobuf.f fVar2, kotlin.reflect.jvm.internal.impl.types.checker.k kVar, kotlin.reflect.jvm.internal.impl.resolve.n.a aVar3, kotlin.reflect.jvm.internal.impl.descriptors.a1.e eVar2, int i, kotlin.jvm.internal.o oVar) {
        this(mVar, zVar, hVar, eVar, aVar, c0Var, pVar, lVar, cVar, mVar2, iterable, notFoundClasses, fVar, (i & 8192) != 0 ? kotlin.reflect.jvm.internal.impl.descriptors.a1.a.C0322a.f14860a : aVar2, (i & 16384) != 0 ? kotlin.reflect.jvm.internal.impl.descriptors.a1.c.a.f14861a : cVar2, fVar2, (65536 & i) != 0 ? kotlin.reflect.jvm.internal.impl.types.checker.k.b.a() : kVar, aVar3, (i & 262144) != 0 ? kotlin.reflect.jvm.internal.impl.descriptors.a1.e.a.f14864a : eVar2);
    }
}
