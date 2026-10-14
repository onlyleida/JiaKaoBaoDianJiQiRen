package cn.mucang.android.core.identity.cache;

import cn.mucang.android.core.utils.j0;
import com.alibaba.fastjson.JSON;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.text.t;

/* JADX INFO: renamed from: cn.mucang.android.core.identity.cache.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0004H\u0007J0\u0010\t\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u000b2\u0012\b\u0002\u0010\f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\rH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/core/identity/cache/CacheHelper;", "", "()V", "CACHE_HELPER_KEY", "", "cached", "", "key", "value", "getCached", "cacheInvalidStrategy", "Lcn/mucang/android/core/identity/cache/CacheInvalidStrategy;", "provider", "Lkotlin/Function0;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CacheHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CacheHelper f2543a = new CacheHelper();

    private CacheHelper() {
    }

    public static final void a(String key, String str) {
        r.e(key, "key");
        j0.k("_cache_helper_file_key_", key, JSON.toJSONString(new CacheItem(System.currentTimeMillis(), str)));
    }

    public static final String b(String key, CacheInvalidStrategy cacheInvalidStrategy, Function0<String> function0) {
        Object objM139constructorimpl;
        r.e(key, "key");
        r.e(cacheInvalidStrategy, "cacheInvalidStrategy");
        String strF = j0.f("_cache_helper_file_key_", key, null);
        if (strF == null || t.r(strF)) {
            String strInvoke = function0 == null ? null : function0.invoke();
            if (strInvoke == null) {
                return null;
            }
            a(key, strInvoke);
            return strInvoke;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl((CacheItem) JSON.parseObject(strF, CacheItem.class));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(k.a(th));
        }
        if (Result.m145isFailureimpl(objM139constructorimpl)) {
            objM139constructorimpl = null;
        }
        CacheItem cacheItem = (CacheItem) objM139constructorimpl;
        if (!cacheInvalidStrategy.a(cacheItem)) {
            if (cacheItem == null) {
                return null;
            }
            return cacheItem.getCachedValue();
        }
        String strInvoke2 = function0 == null ? null : function0.invoke();
        if (strInvoke2 == null) {
            return null;
        }
        a(key, strInvoke2);
        return strInvoke2;
    }
}
