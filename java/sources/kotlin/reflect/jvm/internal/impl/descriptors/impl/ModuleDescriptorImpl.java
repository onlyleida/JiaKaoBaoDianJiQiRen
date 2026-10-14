package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.o0;
import kotlin.collections.u0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.InvalidModuleException;

/* JADX INFO: loaded from: classes6.dex */
public final class ModuleDescriptorImpl extends i implements kotlin.reflect.jvm.internal.impl.descriptors.z {
    private final kotlin.reflect.jvm.internal.impl.storage.m c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.builtins.g f14896d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<kotlin.reflect.jvm.internal.impl.descriptors.y<?>, Object> f14897e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final x f14898f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private t f14899g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private kotlin.reflect.jvm.internal.impl.descriptors.c0 f14900h;
    private boolean i;
    private final kotlin.reflect.jvm.internal.impl.storage.f<kotlin.reflect.jvm.internal.impl.name.c, kotlin.reflect.jvm.internal.impl.descriptors.f0> j;
    private final Lazy k;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ModuleDescriptorImpl(kotlin.reflect.jvm.internal.impl.name.f moduleName, kotlin.reflect.jvm.internal.impl.storage.m storageManager, kotlin.reflect.jvm.internal.impl.builtins.g builtIns, kotlin.reflect.jvm.internal.s.c.a aVar) {
        this(moduleName, storageManager, builtIns, aVar, null, null, 48, null);
        kotlin.jvm.internal.r.e(moduleName, "moduleName");
        kotlin.jvm.internal.r.e(storageManager, "storageManager");
        kotlin.jvm.internal.r.e(builtIns, "builtIns");
    }

    public /* synthetic */ ModuleDescriptorImpl(kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.storage.m mVar, kotlin.reflect.jvm.internal.impl.builtins.g gVar, kotlin.reflect.jvm.internal.s.c.a aVar, Map map, kotlin.reflect.jvm.internal.impl.name.f fVar2, int i, kotlin.jvm.internal.o oVar) {
        this(fVar, mVar, gVar, (i & 8) != 0 ? null : aVar, (i & 16) != 0 ? o0.h() : map, (i & 32) != 0 ? null : fVar2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String L0() {
        String string = getName().toString();
        kotlin.jvm.internal.r.d(string, "name.toString()");
        return string;
    }

    private final h N0() {
        return (h) this.k.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean P0() {
        return this.f14900h != null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.z
    public <T> T C0(kotlin.reflect.jvm.internal.impl.descriptors.y<T> capability) {
        kotlin.jvm.internal.r.e(capability, "capability");
        return (T) this.f14897e.get(capability);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.z
    public boolean J(kotlin.reflect.jvm.internal.impl.descriptors.z targetModule) {
        kotlin.jvm.internal.r.e(targetModule, "targetModule");
        if (kotlin.jvm.internal.r.a(this, targetModule)) {
            return true;
        }
        t tVar = this.f14899g;
        kotlin.jvm.internal.r.c(tVar);
        return CollectionsKt___CollectionsKt.S(tVar.c(), targetModule) || w0().contains(targetModule) || targetModule.w0().contains(this);
    }

    public void K0() {
        if (!Q0()) {
            throw new InvalidModuleException(kotlin.jvm.internal.r.m("Accessing invalid module descriptor ", this));
        }
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.c0 M0() {
        K0();
        return N0();
    }

    public final void O0(kotlin.reflect.jvm.internal.impl.descriptors.c0 providerForModuleContent) {
        kotlin.jvm.internal.r.e(providerForModuleContent, "providerForModuleContent");
        P0();
        this.f14900h = providerForModuleContent;
    }

    public boolean Q0() {
        return this.i;
    }

    public final void R0(List<ModuleDescriptorImpl> descriptors) {
        kotlin.jvm.internal.r.e(descriptors, "descriptors");
        S0(descriptors, u0.b());
    }

    public final void S0(List<ModuleDescriptorImpl> descriptors, Set<ModuleDescriptorImpl> friends) {
        kotlin.jvm.internal.r.e(descriptors, "descriptors");
        kotlin.jvm.internal.r.e(friends, "friends");
        T0(new u(descriptors, friends, kotlin.collections.u.j(), u0.b()));
    }

    public final void T0(t dependencies) {
        kotlin.jvm.internal.r.e(dependencies, "dependencies");
        t tVar = this.f14899g;
        this.f14899g = dependencies;
    }

    public final void U0(ModuleDescriptorImpl... descriptors) {
        kotlin.jvm.internal.r.e(descriptors, "descriptors");
        R0(ArraysKt___ArraysKt.h0(descriptors));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public kotlin.reflect.jvm.internal.impl.descriptors.k b() {
        return kotlin.reflect.jvm.internal.impl.descriptors.z.a.b(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.z
    public kotlin.reflect.jvm.internal.impl.descriptors.f0 j0(kotlin.reflect.jvm.internal.impl.name.c fqName) {
        kotlin.jvm.internal.r.e(fqName, "fqName");
        K0();
        return this.j.invoke(fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.z
    public kotlin.reflect.jvm.internal.impl.builtins.g k() {
        return this.f14896d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.z
    public Collection<kotlin.reflect.jvm.internal.impl.name.c> l(kotlin.reflect.jvm.internal.impl.name.c fqName, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> nameFilter) {
        kotlin.jvm.internal.r.e(fqName, "fqName");
        kotlin.jvm.internal.r.e(nameFilter, "nameFilter");
        K0();
        return M0().l(fqName, nameFilter);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.z
    public List<kotlin.reflect.jvm.internal.impl.descriptors.z> w0() {
        t tVar = this.f14899g;
        if (tVar != null) {
            return tVar.b();
        }
        throw new AssertionError("Dependencies of module " + L0() + " were not set");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public <R, D> R y(kotlin.reflect.jvm.internal.impl.descriptors.m<R, D> mVar, D d2) {
        return (R) kotlin.reflect.jvm.internal.impl.descriptors.z.a.a(this, mVar, d2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModuleDescriptorImpl(kotlin.reflect.jvm.internal.impl.name.f moduleName, kotlin.reflect.jvm.internal.impl.storage.m storageManager, kotlin.reflect.jvm.internal.impl.builtins.g builtIns, kotlin.reflect.jvm.internal.s.c.a aVar, Map<kotlin.reflect.jvm.internal.impl.descriptors.y<?>, ? extends Object> capabilities, kotlin.reflect.jvm.internal.impl.name.f fVar) {
        super(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b(), moduleName);
        kotlin.jvm.internal.r.e(moduleName, "moduleName");
        kotlin.jvm.internal.r.e(storageManager, "storageManager");
        kotlin.jvm.internal.r.e(builtIns, "builtIns");
        kotlin.jvm.internal.r.e(capabilities, "capabilities");
        this.c = storageManager;
        this.f14896d = builtIns;
        if (moduleName.h()) {
            Map<kotlin.reflect.jvm.internal.impl.descriptors.y<?>, Object> mapT = o0.t(capabilities);
            this.f14897e = mapT;
            mapT.put(kotlin.reflect.jvm.internal.impl.types.checker.h.a(), new kotlin.reflect.jvm.internal.impl.types.checker.o(null));
            x xVar = (x) C0(x.f14957a.a());
            this.f14898f = xVar == null ? x.b.b : xVar;
            this.i = true;
            this.j = storageManager.i(new Function1<kotlin.reflect.jvm.internal.impl.name.c, kotlin.reflect.jvm.internal.impl.descriptors.f0>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl$packages$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final kotlin.reflect.jvm.internal.impl.descriptors.f0 invoke(kotlin.reflect.jvm.internal.impl.name.c fqName) {
                    kotlin.jvm.internal.r.e(fqName, "fqName");
                    x xVar2 = this.this$0.f14898f;
                    ModuleDescriptorImpl moduleDescriptorImpl = this.this$0;
                    return xVar2.a(moduleDescriptorImpl, fqName, moduleDescriptorImpl.c);
                }
            });
            this.k = kotlin.i.b(new Function0<h>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl$packageFragmentProviderForWholeModuleWithDependencies$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final h invoke() {
                    t tVar = this.this$0.f14899g;
                    ModuleDescriptorImpl moduleDescriptorImpl = this.this$0;
                    if (tVar == null) {
                        throw new AssertionError("Dependencies of module " + moduleDescriptorImpl.L0() + " were not set before querying module content");
                    }
                    List<ModuleDescriptorImpl> listA = tVar.a();
                    listA.contains(this.this$0);
                    Iterator<T> it = listA.iterator();
                    while (it.hasNext()) {
                        ((ModuleDescriptorImpl) it.next()).P0();
                    }
                    ArrayList arrayList = new ArrayList(kotlin.collections.v.u(listA, 10));
                    Iterator<T> it2 = listA.iterator();
                    while (it2.hasNext()) {
                        kotlin.reflect.jvm.internal.impl.descriptors.c0 c0Var = ((ModuleDescriptorImpl) it2.next()).f14900h;
                        kotlin.jvm.internal.r.c(c0Var);
                        arrayList.add(c0Var);
                    }
                    return new h(arrayList, kotlin.jvm.internal.r.m("CompositeProvider@ModuleDescriptor for ", this.this$0.getName()));
                }
            });
            return;
        }
        throw new IllegalArgumentException(kotlin.jvm.internal.r.m("Module name must be special: ", moduleName));
    }
}
