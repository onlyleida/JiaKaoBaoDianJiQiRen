package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import kotlin.jvm.internal.o;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;

/* JADX INFO: loaded from: classes6.dex */
final class b extends kotlin.reflect.jvm.internal.impl.builtins.g {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f14837g = new a(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.builtins.g f14838h = new b();

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final kotlin.reflect.jvm.internal.impl.builtins.g a() {
            return b.f14838h;
        }
    }

    private b() {
        super(new LockBasedStorageManager("FallbackBuiltIns"));
        f(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.builtins.g
    /* JADX INFO: renamed from: E0, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.descriptors.a1.c.a M() {
        return kotlin.reflect.jvm.internal.impl.descriptors.a1.c.a.f14861a;
    }
}
