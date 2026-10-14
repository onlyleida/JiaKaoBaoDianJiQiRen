package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;

/* JADX INFO: loaded from: classes6.dex */
public final class NullabilityAnnotationStatesImpl<T> implements t<T> {
    private final Map<kotlin.reflect.jvm.internal.impl.name.c, T> b;
    private final LockBasedStorageManager c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.g<kotlin.reflect.jvm.internal.impl.name.c, T> f15014d;

    /* JADX WARN: Multi-variable type inference failed */
    public NullabilityAnnotationStatesImpl(Map<kotlin.reflect.jvm.internal.impl.name.c, ? extends T> states) {
        kotlin.jvm.internal.r.e(states, "states");
        this.b = states;
        LockBasedStorageManager lockBasedStorageManager = new LockBasedStorageManager("Java nullability annotation states");
        this.c = lockBasedStorageManager;
        kotlin.reflect.jvm.internal.impl.storage.g<kotlin.reflect.jvm.internal.impl.name.c, T> gVarG = lockBasedStorageManager.g(new Function1<kotlin.reflect.jvm.internal.impl.name.c, T>(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.NullabilityAnnotationStatesImpl$cache$1
            final /* synthetic */ NullabilityAnnotationStatesImpl<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final T invoke(kotlin.reflect.jvm.internal.impl.name.c it) {
                kotlin.jvm.internal.r.d(it, "it");
                return (T) kotlin.reflect.jvm.internal.impl.name.e.a(it, this.this$0.b());
            }
        });
        kotlin.jvm.internal.r.d(gVarG, "storageManager.createMem…cificFqname(states)\n    }");
        this.f15014d = gVarG;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.t
    public T a(kotlin.reflect.jvm.internal.impl.name.c fqName) {
        kotlin.jvm.internal.r.e(fqName, "fqName");
        return this.f15014d.invoke(fqName);
    }

    public final Map<kotlin.reflect.jvm.internal.impl.name.c, T> b() {
        return this.b;
    }
}
