package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.Collection;
import java.util.List;
import kotlin.collections.u0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.e0;
import kotlin.reflect.jvm.internal.impl.descriptors.z;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractDeserializedPackageFragmentProvider implements e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.m f15535a;
    private final o b;
    private final z c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected g f15536d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.g<kotlin.reflect.jvm.internal.impl.name.c, b0> f15537e;

    public AbstractDeserializedPackageFragmentProvider(kotlin.reflect.jvm.internal.impl.storage.m storageManager, o finder, z moduleDescriptor) {
        kotlin.jvm.internal.r.e(storageManager, "storageManager");
        kotlin.jvm.internal.r.e(finder, "finder");
        kotlin.jvm.internal.r.e(moduleDescriptor, "moduleDescriptor");
        this.f15535a = storageManager;
        this.b = finder;
        this.c = moduleDescriptor;
        this.f15537e = storageManager.g(new Function1<kotlin.reflect.jvm.internal.impl.name.c, b0>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractDeserializedPackageFragmentProvider$fragments$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final b0 invoke(kotlin.reflect.jvm.internal.impl.name.c fqName) {
                kotlin.jvm.internal.r.e(fqName, "fqName");
                k kVarD = this.this$0.d(fqName);
                if (kVarD == null) {
                    return null;
                }
                kVarD.H0(this.this$0.e());
                return kVarD;
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.c0
    public List<b0> a(kotlin.reflect.jvm.internal.impl.name.c fqName) {
        kotlin.jvm.internal.r.e(fqName, "fqName");
        return kotlin.collections.u.n(this.f15537e.invoke(fqName));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.e0
    public void b(kotlin.reflect.jvm.internal.impl.name.c fqName, Collection<b0> packageFragments) {
        kotlin.jvm.internal.r.e(fqName, "fqName");
        kotlin.jvm.internal.r.e(packageFragments, "packageFragments");
        kotlin.reflect.jvm.internal.impl.utils.a.a(packageFragments, this.f15537e.invoke(fqName));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.e0
    public boolean c(kotlin.reflect.jvm.internal.impl.name.c fqName) {
        kotlin.jvm.internal.r.e(fqName, "fqName");
        return (this.f15537e.n(fqName) ? (b0) this.f15537e.invoke(fqName) : d(fqName)) == null;
    }

    protected abstract k d(kotlin.reflect.jvm.internal.impl.name.c cVar);

    protected final g e() {
        g gVar = this.f15536d;
        if (gVar != null) {
            return gVar;
        }
        kotlin.jvm.internal.r.u("components");
        throw null;
    }

    protected final o f() {
        return this.b;
    }

    protected final z g() {
        return this.c;
    }

    protected final kotlin.reflect.jvm.internal.impl.storage.m h() {
        return this.f15535a;
    }

    protected final void i(g gVar) {
        kotlin.jvm.internal.r.e(gVar, "<set-?>");
        this.f15536d = gVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.c0
    public Collection<kotlin.reflect.jvm.internal.impl.name.c> l(kotlin.reflect.jvm.internal.impl.name.c fqName, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> nameFilter) {
        kotlin.jvm.internal.r.e(fqName, "fqName");
        kotlin.jvm.internal.r.e(nameFilter, "nameFilter");
        return u0.b();
    }
}
