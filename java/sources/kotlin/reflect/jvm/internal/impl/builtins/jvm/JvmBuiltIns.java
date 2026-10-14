package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.storage.h;
import kotlin.reflect.jvm.internal.impl.storage.l;
import kotlin.reflect.jvm.internal.impl.storage.m;

/* JADX INFO: loaded from: classes6.dex */
public final class JvmBuiltIns extends kotlin.reflect.jvm.internal.impl.builtins.g {
    static final /* synthetic */ KProperty<Object>[] j = {v.i(new PropertyReference1Impl(v.b(JvmBuiltIns.class), "customizer", "getCustomizer()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsCustomizer;"))};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Kind f14821g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Function0<a> f14822h;
    private final h i;

    public enum Kind {
        FROM_DEPENDENCIES,
        FROM_CLASS_LOADER,
        FALLBACK
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final z f14823a;
        private final boolean b;

        public a(z ownerModuleDescriptor, boolean z) {
            r.e(ownerModuleDescriptor, "ownerModuleDescriptor");
            this.f14823a = ownerModuleDescriptor;
            this.b = z;
        }

        public final z a() {
            return this.f14823a;
        }

        public final boolean b() {
            return this.b;
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f14824a;

        static {
            int[] iArr = new int[Kind.values().length];
            iArr[Kind.FROM_DEPENDENCIES.ordinal()] = 1;
            iArr[Kind.FROM_CLASS_LOADER.ordinal()] = 2;
            iArr[Kind.FALLBACK.ordinal()] = 3;
            f14824a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JvmBuiltIns(final m storageManager, Kind kind) {
        super(storageManager);
        r.e(storageManager, "storageManager");
        r.e(kind, "kind");
        this.f14821g = kind;
        this.i = storageManager.c(new Function0<JvmBuiltInsCustomizer>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltIns$customizer$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final JvmBuiltInsCustomizer invoke() {
                ModuleDescriptorImpl builtInsModule = this.this$0.r();
                r.d(builtInsModule, "builtInsModule");
                m mVar = storageManager;
                final JvmBuiltIns jvmBuiltIns = this.this$0;
                return new JvmBuiltInsCustomizer(builtInsModule, mVar, new Function0<JvmBuiltIns.a>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltIns$customizer$2.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final JvmBuiltIns.a invoke() {
                        Function0 function0 = jvmBuiltIns.f14822h;
                        if (function0 == null) {
                            throw new AssertionError("JvmBuiltins instance has not been initialized properly");
                        }
                        JvmBuiltIns.a aVar = (JvmBuiltIns.a) function0.invoke();
                        jvmBuiltIns.f14822h = null;
                        return aVar;
                    }
                });
            }
        });
        int i = b.f14824a[kind.ordinal()];
        if (i == 2) {
            f(false);
        } else {
            if (i != 3) {
                return;
            }
            f(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.builtins.g
    /* JADX INFO: renamed from: F0, reason: merged with bridge method [inline-methods] */
    public List<kotlin.reflect.jvm.internal.impl.descriptors.a1.b> v() {
        Iterable<kotlin.reflect.jvm.internal.impl.descriptors.a1.b> iterableV = super.v();
        r.d(iterableV, "super.getClassDescriptorFactories()");
        m storageManager = U();
        r.d(storageManager, "storageManager");
        ModuleDescriptorImpl builtInsModule = r();
        r.d(builtInsModule, "builtInsModule");
        return CollectionsKt___CollectionsKt.w0(iterableV, new JvmBuiltInClassDescriptorFactory(storageManager, builtInsModule, null, 4, null));
    }

    public final JvmBuiltInsCustomizer G0() {
        return (JvmBuiltInsCustomizer) l.a(this.i, this, j[0]);
    }

    public final void H0(final z moduleDescriptor, final boolean z) {
        r.e(moduleDescriptor, "moduleDescriptor");
        I0(new Function0<a>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltIns$initialize$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final JvmBuiltIns.a invoke() {
                return new JvmBuiltIns.a(moduleDescriptor, z);
            }
        });
    }

    public final void I0(Function0<a> computation) {
        r.e(computation, "computation");
        Function0<a> function0 = this.f14822h;
        this.f14822h = computation;
    }

    @Override // kotlin.reflect.jvm.internal.impl.builtins.g
    protected kotlin.reflect.jvm.internal.impl.descriptors.a1.c M() {
        return G0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.builtins.g
    protected kotlin.reflect.jvm.internal.impl.descriptors.a1.a g() {
        return G0();
    }
}
