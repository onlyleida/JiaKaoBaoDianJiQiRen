package kotlin.reflect.jvm.internal;

import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import kotlin.Metadata;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\b\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010\u0007\u001a\u00020\u0004*\u0006\u0012\u0002\b\u00030\bH\u0000\" \u0010\u0000\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"moduleByClassLoader", "Ljava/util/concurrent/ConcurrentMap;", "Lkotlin/reflect/jvm/internal/WeakClassLoaderBox;", "Ljava/lang/ref/WeakReference;", "Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;", "clearModuleByClassLoaderCache", "", "getOrCreateModule", "Ljava/lang/Class;", "kotlin-reflection"}, k = 2, mv = {1, 5, 1})
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ConcurrentMap<WeakClassLoaderBox, WeakReference<kotlin.reflect.jvm.internal.impl.descriptors.c1.a.k>> f15756a = new ConcurrentHashMap();

    public static final kotlin.reflect.jvm.internal.impl.descriptors.c1.a.k a(Class<?> getOrCreateModule) {
        kotlin.jvm.internal.r.e(getOrCreateModule, "$this$getOrCreateModule");
        ClassLoader classLoaderE = ReflectClassUtilKt.e(getOrCreateModule);
        WeakClassLoaderBox weakClassLoaderBox = new WeakClassLoaderBox(classLoaderE);
        ConcurrentMap<WeakClassLoaderBox, WeakReference<kotlin.reflect.jvm.internal.impl.descriptors.c1.a.k>> concurrentMap = f15756a;
        WeakReference<kotlin.reflect.jvm.internal.impl.descriptors.c1.a.k> weakReference = concurrentMap.get(weakClassLoaderBox);
        if (weakReference != null) {
            kotlin.reflect.jvm.internal.impl.descriptors.c1.a.k it = weakReference.get();
            if (it != null) {
                kotlin.jvm.internal.r.d(it, "it");
                return it;
            }
            concurrentMap.remove(weakClassLoaderBox, weakReference);
        }
        kotlin.reflect.jvm.internal.impl.descriptors.c1.a.k kVarA = kotlin.reflect.jvm.internal.impl.descriptors.c1.a.k.c.a(classLoaderE);
        while (true) {
            try {
                ConcurrentMap<WeakClassLoaderBox, WeakReference<kotlin.reflect.jvm.internal.impl.descriptors.c1.a.k>> concurrentMap2 = f15756a;
                WeakReference<kotlin.reflect.jvm.internal.impl.descriptors.c1.a.k> weakReferencePutIfAbsent = concurrentMap2.putIfAbsent(weakClassLoaderBox, new WeakReference<>(kVarA));
                if (weakReferencePutIfAbsent == null) {
                    weakClassLoaderBox.a(null);
                    return kVarA;
                }
                kotlin.reflect.jvm.internal.impl.descriptors.c1.a.k kVar = weakReferencePutIfAbsent.get();
                if (kVar != null) {
                    weakClassLoaderBox.a(null);
                    return kVar;
                }
                concurrentMap2.remove(weakClassLoaderBox, weakReferencePutIfAbsent);
            } catch (Throwable th) {
                weakClassLoaderBox.a(null);
                throw th;
            }
        }
    }
}
