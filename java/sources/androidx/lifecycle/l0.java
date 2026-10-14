package androidx.lifecycle;

import androidx.lifecycle.j0;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
public final class l0<VM extends j0> implements Lazy<VM> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private VM f1515a;
    private final KClass<VM> b;
    private final Function0<n0> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Function0<m0.b> f1516d;

    /* JADX WARN: Multi-variable type inference failed */
    public l0(KClass<VM> viewModelClass, Function0<? extends n0> storeProducer, Function0<? extends m0.b> factoryProducer) {
        kotlin.jvm.internal.r.e(viewModelClass, "viewModelClass");
        kotlin.jvm.internal.r.e(storeProducer, "storeProducer");
        kotlin.jvm.internal.r.e(factoryProducer, "factoryProducer");
        this.b = viewModelClass;
        this.c = storeProducer;
        this.f1516d = factoryProducer;
    }

    @Override // kotlin.Lazy
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public VM getValue() {
        VM vm = this.f1515a;
        if (vm != null) {
            return vm;
        }
        VM vm2 = (VM) new m0(this.c.invoke(), this.f1516d.invoke()).a(kotlin.jvm.a.b(this.b));
        this.f1515a = vm2;
        kotlin.jvm.internal.r.d(vm2, "ViewModelProvider(store,…ed = it\n                }");
        return vm2;
    }
}
