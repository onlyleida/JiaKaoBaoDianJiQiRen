package kotlin.reflect.jvm.internal;

import androidx.exifinterface.media.ExifInterface;
import java.lang.ref.WeakReference;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\b\u0010\u0005\u001a\u00020\u0006H\u0000\u001a&\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\t0\b\"\b\b\u0000\u0010\t*\u00020\u00042\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\t0\u000bH\u0000\"*\u0010\u0000\u001a\u001e\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00040\u00040\u0001X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"K_CLASS_CACHE", "Lkotlin/reflect/jvm/internal/pcollections/HashPMap;", "", "kotlin.jvm.PlatformType", "", "clearKClassCache", "", "getOrCreateKotlinClass", "Lkotlin/reflect/jvm/internal/KClassImpl;", ExifInterface.GPS_DIRECTION_TRUE, "jClass", "Ljava/lang/Class;", "kotlin-reflection"}, k = 2, mv = {1, 5, 1})
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static kotlin.reflect.jvm.internal.pcollections.b<String, Object> f14769a;

    static {
        kotlin.reflect.jvm.internal.pcollections.b<String, Object> bVarB = kotlin.reflect.jvm.internal.pcollections.b.b();
        kotlin.jvm.internal.r.d(bVarB, "HashPMap.empty<String, Any>()");
        f14769a = bVarB;
    }

    public static final <T> KClassImpl<T> a(Class<T> jClass) {
        kotlin.jvm.internal.r.e(jClass, "jClass");
        String name = jClass.getName();
        Object objC = f14769a.c(name);
        if (objC instanceof WeakReference) {
            KClassImpl<T> kClassImpl = (KClassImpl) ((WeakReference) objC).get();
            if (kotlin.jvm.internal.r.a(kClassImpl != null ? kClassImpl.d() : null, jClass)) {
                return kClassImpl;
            }
        } else if (objC != null) {
            for (WeakReference weakReference : (WeakReference[]) objC) {
                KClassImpl<T> kClassImpl2 = (KClassImpl) weakReference.get();
                if (kotlin.jvm.internal.r.a(kClassImpl2 != null ? kClassImpl2.d() : null, jClass)) {
                    return kClassImpl2;
                }
            }
            int length = ((Object[]) objC).length;
            WeakReference[] weakReferenceArr = new WeakReference[length + 1];
            System.arraycopy(objC, 0, weakReferenceArr, 0, length);
            KClassImpl<T> kClassImpl3 = new KClassImpl<>(jClass);
            weakReferenceArr[length] = new WeakReference(kClassImpl3);
            kotlin.reflect.jvm.internal.pcollections.b<String, Object> bVarF = f14769a.f(name, weakReferenceArr);
            kotlin.jvm.internal.r.d(bVarF, "K_CLASS_CACHE.plus(name, newArray)");
            f14769a = bVarF;
            return kClassImpl3;
        }
        KClassImpl<T> kClassImpl4 = new KClassImpl<>(jClass);
        kotlin.reflect.jvm.internal.pcollections.b<String, Object> bVarF2 = f14769a.f(name, new WeakReference(kClassImpl4));
        kotlin.jvm.internal.r.d(bVarF2, "K_CLASS_CACHE.plus(name, WeakReference(newKClass))");
        f14769a = bVarF2;
        return kClassImpl4;
    }
}
