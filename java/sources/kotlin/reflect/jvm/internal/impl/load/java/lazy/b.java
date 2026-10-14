package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.ReflectionTypes;
import kotlin.reflect.jvm.internal.impl.descriptors.r0;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeEnhancementState;
import kotlin.reflect.jvm.internal.impl.load.java.i;
import kotlin.reflect.jvm.internal.impl.load.java.j;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.load.kotlin.k;
import kotlin.reflect.jvm.internal.impl.load.kotlin.s;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.l;
import kotlin.reflect.jvm.internal.impl.storage.m;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m f15070a;
    private final i b;
    private final k c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final DeserializedDescriptorResolver f15071d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.load.java.components.e f15072e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final l f15073f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.load.java.components.d f15074g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.load.java.components.c f15075h;
    private final kotlin.reflect.jvm.internal.impl.resolve.n.a i;
    private final kotlin.reflect.jvm.internal.impl.load.java.w.b j;
    private final f k;
    private final s l;
    private final r0 m;
    private final kotlin.reflect.jvm.internal.impl.incremental.components.c n;
    private final z o;
    private final ReflectionTypes p;
    private final AnnotationTypeQualifierResolver q;
    private final SignatureEnhancement r;
    private final j s;
    private final c t;
    private final kotlin.reflect.jvm.internal.impl.types.checker.k u;
    private final JavaTypeEnhancementState v;
    private final a w;
    private final kotlin.reflect.jvm.internal.impl.resolve.jvm.e x;

    public b(m storageManager, i finder, k kotlinClassFinder, DeserializedDescriptorResolver deserializedDescriptorResolver, kotlin.reflect.jvm.internal.impl.load.java.components.e signaturePropagator, l errorReporter, kotlin.reflect.jvm.internal.impl.load.java.components.d javaResolverCache, kotlin.reflect.jvm.internal.impl.load.java.components.c javaPropertyInitializerEvaluator, kotlin.reflect.jvm.internal.impl.resolve.n.a samConversionResolver, kotlin.reflect.jvm.internal.impl.load.java.w.b sourceElementFactory, f moduleClassResolver, s packagePartProvider, r0 supertypeLoopChecker, kotlin.reflect.jvm.internal.impl.incremental.components.c lookupTracker, z module, ReflectionTypes reflectionTypes, AnnotationTypeQualifierResolver annotationTypeQualifierResolver, SignatureEnhancement signatureEnhancement, j javaClassesTracker, c settings, kotlin.reflect.jvm.internal.impl.types.checker.k kotlinTypeChecker, JavaTypeEnhancementState javaTypeEnhancementState, a javaModuleResolver, kotlin.reflect.jvm.internal.impl.resolve.jvm.e syntheticPartsProvider) {
        r.e(storageManager, "storageManager");
        r.e(finder, "finder");
        r.e(kotlinClassFinder, "kotlinClassFinder");
        r.e(deserializedDescriptorResolver, "deserializedDescriptorResolver");
        r.e(signaturePropagator, "signaturePropagator");
        r.e(errorReporter, "errorReporter");
        r.e(javaResolverCache, "javaResolverCache");
        r.e(javaPropertyInitializerEvaluator, "javaPropertyInitializerEvaluator");
        r.e(samConversionResolver, "samConversionResolver");
        r.e(sourceElementFactory, "sourceElementFactory");
        r.e(moduleClassResolver, "moduleClassResolver");
        r.e(packagePartProvider, "packagePartProvider");
        r.e(supertypeLoopChecker, "supertypeLoopChecker");
        r.e(lookupTracker, "lookupTracker");
        r.e(module, "module");
        r.e(reflectionTypes, "reflectionTypes");
        r.e(annotationTypeQualifierResolver, "annotationTypeQualifierResolver");
        r.e(signatureEnhancement, "signatureEnhancement");
        r.e(javaClassesTracker, "javaClassesTracker");
        r.e(settings, "settings");
        r.e(kotlinTypeChecker, "kotlinTypeChecker");
        r.e(javaTypeEnhancementState, "javaTypeEnhancementState");
        r.e(javaModuleResolver, "javaModuleResolver");
        r.e(syntheticPartsProvider, "syntheticPartsProvider");
        this.f15070a = storageManager;
        this.b = finder;
        this.c = kotlinClassFinder;
        this.f15071d = deserializedDescriptorResolver;
        this.f15072e = signaturePropagator;
        this.f15073f = errorReporter;
        this.f15074g = javaResolverCache;
        this.f15075h = javaPropertyInitializerEvaluator;
        this.i = samConversionResolver;
        this.j = sourceElementFactory;
        this.k = moduleClassResolver;
        this.l = packagePartProvider;
        this.m = supertypeLoopChecker;
        this.n = lookupTracker;
        this.o = module;
        this.p = reflectionTypes;
        this.q = annotationTypeQualifierResolver;
        this.r = signatureEnhancement;
        this.s = javaClassesTracker;
        this.t = settings;
        this.u = kotlinTypeChecker;
        this.v = javaTypeEnhancementState;
        this.w = javaModuleResolver;
        this.x = syntheticPartsProvider;
    }

    public final AnnotationTypeQualifierResolver a() {
        return this.q;
    }

    public final DeserializedDescriptorResolver b() {
        return this.f15071d;
    }

    public final l c() {
        return this.f15073f;
    }

    public final i d() {
        return this.b;
    }

    public final j e() {
        return this.s;
    }

    public final a f() {
        return this.w;
    }

    public final kotlin.reflect.jvm.internal.impl.load.java.components.c g() {
        return this.f15075h;
    }

    public final kotlin.reflect.jvm.internal.impl.load.java.components.d h() {
        return this.f15074g;
    }

    public final JavaTypeEnhancementState i() {
        return this.v;
    }

    public final k j() {
        return this.c;
    }

    public final kotlin.reflect.jvm.internal.impl.types.checker.k k() {
        return this.u;
    }

    public final kotlin.reflect.jvm.internal.impl.incremental.components.c l() {
        return this.n;
    }

    public final z m() {
        return this.o;
    }

    public final f n() {
        return this.k;
    }

    public final s o() {
        return this.l;
    }

    public final ReflectionTypes p() {
        return this.p;
    }

    public final c q() {
        return this.t;
    }

    public final SignatureEnhancement r() {
        return this.r;
    }

    public final kotlin.reflect.jvm.internal.impl.load.java.components.e s() {
        return this.f15072e;
    }

    public final kotlin.reflect.jvm.internal.impl.load.java.w.b t() {
        return this.j;
    }

    public final m u() {
        return this.f15070a;
    }

    public final r0 v() {
        return this.m;
    }

    public final kotlin.reflect.jvm.internal.impl.resolve.jvm.e w() {
        return this.x;
    }

    public final b x(kotlin.reflect.jvm.internal.impl.load.java.components.d javaResolverCache) {
        r.e(javaResolverCache, "javaResolverCache");
        return new b(this.f15070a, this.b, this.c, this.f15071d, this.f15072e, this.f15073f, javaResolverCache, this.f15075h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, this.v, this.w, null, 8388608, null);
    }

    public /* synthetic */ b(m mVar, i iVar, k kVar, DeserializedDescriptorResolver deserializedDescriptorResolver, kotlin.reflect.jvm.internal.impl.load.java.components.e eVar, l lVar, kotlin.reflect.jvm.internal.impl.load.java.components.d dVar, kotlin.reflect.jvm.internal.impl.load.java.components.c cVar, kotlin.reflect.jvm.internal.impl.resolve.n.a aVar, kotlin.reflect.jvm.internal.impl.load.java.w.b bVar, f fVar, s sVar, r0 r0Var, kotlin.reflect.jvm.internal.impl.incremental.components.c cVar2, z zVar, ReflectionTypes reflectionTypes, AnnotationTypeQualifierResolver annotationTypeQualifierResolver, SignatureEnhancement signatureEnhancement, j jVar, c cVar3, kotlin.reflect.jvm.internal.impl.types.checker.k kVar2, JavaTypeEnhancementState javaTypeEnhancementState, a aVar2, kotlin.reflect.jvm.internal.impl.resolve.jvm.e eVar2, int i, o oVar) {
        this(mVar, iVar, kVar, deserializedDescriptorResolver, eVar, lVar, dVar, cVar, aVar, bVar, fVar, sVar, r0Var, cVar2, zVar, reflectionTypes, annotationTypeQualifierResolver, signatureEnhancement, jVar, cVar3, kVar2, javaTypeEnhancementState, aVar2, (i & 8388608) != 0 ? kotlin.reflect.jvm.internal.impl.resolve.jvm.e.f15512a.a() : eVar2);
    }
}
