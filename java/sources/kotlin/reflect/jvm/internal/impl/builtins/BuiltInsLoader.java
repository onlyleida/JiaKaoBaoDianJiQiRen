package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.ServiceLoader;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.s;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.storage.m;

/* JADX INFO: loaded from: classes6.dex */
public interface BuiltInsLoader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f14773a = Companion.f14774a;

    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ Companion f14774a = new Companion();
        private static final Lazy<BuiltInsLoader> b = kotlin.i.a(LazyThreadSafetyMode.PUBLICATION, new Function0<BuiltInsLoader>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.BuiltInsLoader$Companion$Instance$2
            @Override // kotlin.jvm.functions.Function0
            public final BuiltInsLoader invoke() {
                ServiceLoader implementations = ServiceLoader.load(BuiltInsLoader.class, BuiltInsLoader.class.getClassLoader());
                r.d(implementations, "implementations");
                BuiltInsLoader builtInsLoader = (BuiltInsLoader) s.d0(implementations);
                if (builtInsLoader != null) {
                    return builtInsLoader;
                }
                throw new IllegalStateException("No BuiltInsLoader implementation was found. Please ensure that the META-INF/services/ is not stripped from your application and that the Java virtual machine is not running under a security manager");
            }
        });

        private Companion() {
        }

        public final BuiltInsLoader a() {
            return b.getValue();
        }
    }

    c0 a(m mVar, z zVar, Iterable<? extends kotlin.reflect.jvm.internal.impl.descriptors.a1.b> iterable, kotlin.reflect.jvm.internal.impl.descriptors.a1.c cVar, kotlin.reflect.jvm.internal.impl.descriptors.a1.a aVar, boolean z);
}
