package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class u implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<ModuleDescriptorImpl> f14954a;
    private final Set<ModuleDescriptorImpl> b;
    private final List<ModuleDescriptorImpl> c;

    public u(List<ModuleDescriptorImpl> allDependencies, Set<ModuleDescriptorImpl> modulesWhoseInternalsAreVisible, List<ModuleDescriptorImpl> directExpectedByDependencies, Set<ModuleDescriptorImpl> allExpectedByDependencies) {
        kotlin.jvm.internal.r.e(allDependencies, "allDependencies");
        kotlin.jvm.internal.r.e(modulesWhoseInternalsAreVisible, "modulesWhoseInternalsAreVisible");
        kotlin.jvm.internal.r.e(directExpectedByDependencies, "directExpectedByDependencies");
        kotlin.jvm.internal.r.e(allExpectedByDependencies, "allExpectedByDependencies");
        this.f14954a = allDependencies;
        this.b = modulesWhoseInternalsAreVisible;
        this.c = directExpectedByDependencies;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.t
    public List<ModuleDescriptorImpl> a() {
        return this.f14954a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.t
    public List<ModuleDescriptorImpl> b() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.t
    public Set<ModuleDescriptorImpl> c() {
        return this.b;
    }
}
