package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.List;
import kotlin.collections.u;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.storage.l;
import kotlin.reflect.jvm.internal.impl.storage.m;

/* JADX INFO: loaded from: classes6.dex */
public final class StaticScopeForKotlinEnum extends f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f15520d = {v.i(new PropertyReference1Impl(v.b(StaticScopeForKotlinEnum.class), "functions", "getFunctions()Ljava/util/List;"))};
    private final kotlin.reflect.jvm.internal.impl.descriptors.d b;
    private final kotlin.reflect.jvm.internal.impl.storage.h c;

    public StaticScopeForKotlinEnum(m storageManager, kotlin.reflect.jvm.internal.impl.descriptors.d containingClass) {
        r.e(storageManager, "storageManager");
        r.e(containingClass, "containingClass");
        this.b = containingClass;
        containingClass.g();
        ClassKind classKind = ClassKind.ENUM_CLASS;
        this.c = storageManager.c(new Function0<List<? extends n0>>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.scopes.StaticScopeForKotlinEnum$functions$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends n0> invoke() {
                return u.m(kotlin.reflect.jvm.internal.impl.resolve.b.d(this.this$0.b), kotlin.reflect.jvm.internal.impl.resolve.b.e(this.this$0.b));
            }
        });
    }

    private final List<n0> l() {
        return (List) l.a(this.c, this, f15520d[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.h
    public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.f f(kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar) {
        return (kotlin.reflect.jvm.internal.impl.descriptors.f) i(fVar, bVar);
    }

    public Void i(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.h
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public List<n0> g(d kindFilter, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> nameFilter) {
        r.e(kindFilter, "kindFilter");
        r.e(nameFilter, "nameFilter");
        return l();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.utils.d<n0> b(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        List<n0> listL = l();
        kotlin.reflect.jvm.internal.impl.utils.d<n0> dVar = new kotlin.reflect.jvm.internal.impl.utils.d<>();
        for (Object obj : listL) {
            if (r.a(((n0) obj).getName(), name)) {
                dVar.add(obj);
            }
        }
        return dVar;
    }
}
