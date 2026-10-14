package kotlin.reflect.jvm.internal.impl.descriptors.impl;

/* JADX INFO: loaded from: classes6.dex */
public interface x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f14957a = a.f14958a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f14958a = new a();
        private static final kotlin.reflect.jvm.internal.impl.descriptors.y<x> b = new kotlin.reflect.jvm.internal.impl.descriptors.y<>("PackageViewDescriptorFactory");

        private a() {
        }

        public final kotlin.reflect.jvm.internal.impl.descriptors.y<x> a() {
            return b;
        }
    }

    public static final class b implements x {
        public static final b b = new b();

        private b() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.x
        public kotlin.reflect.jvm.internal.impl.descriptors.f0 a(ModuleDescriptorImpl module, kotlin.reflect.jvm.internal.impl.name.c fqName, kotlin.reflect.jvm.internal.impl.storage.m storageManager) {
            kotlin.jvm.internal.r.e(module, "module");
            kotlin.jvm.internal.r.e(fqName, "fqName");
            kotlin.jvm.internal.r.e(storageManager, "storageManager");
            return new LazyPackageViewDescriptorImpl(module, fqName, storageManager);
        }
    }

    kotlin.reflect.jvm.internal.impl.descriptors.f0 a(ModuleDescriptorImpl moduleDescriptorImpl, kotlin.reflect.jvm.internal.impl.name.c cVar, kotlin.reflect.jvm.internal.impl.storage.m mVar);
}
