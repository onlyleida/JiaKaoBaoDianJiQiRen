package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.LazyScopeAdapter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: loaded from: classes6.dex */
public class LazyPackageViewDescriptorImpl extends i implements kotlin.reflect.jvm.internal.impl.descriptors.f0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f14891h = {kotlin.jvm.internal.v.i(new PropertyReference1Impl(kotlin.jvm.internal.v.b(LazyPackageViewDescriptorImpl.class), "fragments", "getFragments()Ljava/util/List;")), kotlin.jvm.internal.v.i(new PropertyReference1Impl(kotlin.jvm.internal.v.b(LazyPackageViewDescriptorImpl.class), "empty", "getEmpty()Z"))};
    private final ModuleDescriptorImpl c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.name.c f14892d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.h f14893e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.h f14894f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final MemberScope f14895g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyPackageViewDescriptorImpl(ModuleDescriptorImpl module, kotlin.reflect.jvm.internal.impl.name.c fqName, kotlin.reflect.jvm.internal.impl.storage.m storageManager) {
        super(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b(), fqName.h());
        kotlin.jvm.internal.r.e(module, "module");
        kotlin.jvm.internal.r.e(fqName, "fqName");
        kotlin.jvm.internal.r.e(storageManager, "storageManager");
        this.c = module;
        this.f14892d = fqName;
        this.f14893e = storageManager.c(new Function0<List<? extends kotlin.reflect.jvm.internal.impl.descriptors.b0>>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.LazyPackageViewDescriptorImpl$fragments$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends kotlin.reflect.jvm.internal.impl.descriptors.b0> invoke() {
                return kotlin.reflect.jvm.internal.impl.descriptors.d0.c(this.this$0.getModule().M0(), this.this$0.e());
            }
        });
        this.f14894f = storageManager.c(new Function0<Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.LazyPackageViewDescriptorImpl$empty$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                return Boolean.valueOf(kotlin.reflect.jvm.internal.impl.descriptors.d0.b(this.this$0.getModule().M0(), this.this$0.e()));
            }
        });
        this.f14895g = new LazyScopeAdapter(storageManager, new Function0<MemberScope>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.LazyPackageViewDescriptorImpl$memberScope$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final MemberScope invoke() {
                if (this.this$0.isEmpty()) {
                    return MemberScope.a.b;
                }
                List<kotlin.reflect.jvm.internal.impl.descriptors.b0> listF0 = this.this$0.f0();
                ArrayList arrayList = new ArrayList(kotlin.collections.v.u(listF0, 10));
                Iterator<T> it = listF0.iterator();
                while (it.hasNext()) {
                    arrayList.add(((kotlin.reflect.jvm.internal.impl.descriptors.b0) it.next()).m());
                }
                List listY0 = CollectionsKt___CollectionsKt.y0(arrayList, new e0(this.this$0.getModule(), this.this$0.e()));
                return kotlin.reflect.jvm.internal.impl.resolve.scopes.b.f15523d.a("package view scope for " + this.this$0.e() + " in " + this.this$0.getModule().getName(), listY0);
            }
        });
    }

    protected final boolean B0() {
        return ((Boolean) kotlin.reflect.jvm.internal.impl.storage.l.a(this.f14894f, this, f14891h[1])).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f0
    /* JADX INFO: renamed from: G0, reason: merged with bridge method [inline-methods] */
    public ModuleDescriptorImpl getModule() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f0
    public kotlin.reflect.jvm.internal.impl.name.c e() {
        return this.f14892d;
    }

    public boolean equals(Object obj) {
        kotlin.reflect.jvm.internal.impl.descriptors.f0 f0Var = obj instanceof kotlin.reflect.jvm.internal.impl.descriptors.f0 ? (kotlin.reflect.jvm.internal.impl.descriptors.f0) obj : null;
        return f0Var != null && kotlin.jvm.internal.r.a(e(), f0Var.e()) && kotlin.jvm.internal.r.a(getModule(), f0Var.getModule());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f0
    public List<kotlin.reflect.jvm.internal.impl.descriptors.b0> f0() {
        return (List) kotlin.reflect.jvm.internal.impl.storage.l.a(this.f14893e, this, f14891h[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    /* JADX INFO: renamed from: h0, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.descriptors.f0 b() {
        if (e().d()) {
            return null;
        }
        ModuleDescriptorImpl module = getModule();
        kotlin.reflect.jvm.internal.impl.name.c cVarE = e().e();
        kotlin.jvm.internal.r.d(cVarE, "fqName.parent()");
        return module.j0(cVarE);
    }

    public int hashCode() {
        return (getModule().hashCode() * 31) + e().hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f0
    public boolean isEmpty() {
        return B0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f0
    public MemberScope m() {
        return this.f14895g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public <R, D> R y(kotlin.reflect.jvm.internal.impl.descriptors.m<R, D> visitor, D d2) {
        kotlin.jvm.internal.r.e(visitor, "visitor");
        return visitor.b(this, d2);
    }
}
