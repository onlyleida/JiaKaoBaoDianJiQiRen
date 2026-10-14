package cn.mucang.android.core.identity.cache;

import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.core.identity.cache.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/core/identity/cache/ForceInvalidStrategy;", "Lcn/mucang/android/core/identity/cache/CacheInvalidStrategy;", "()V", "isInvalidData", "", "cache", "Lcn/mucang/android/core/identity/cache/CacheItem;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ForceInvalidStrategy implements CacheInvalidStrategy {
    @Override // cn.mucang.android.core.identity.cache.CacheInvalidStrategy
    public boolean a(CacheItem cacheItem) {
        return true;
    }
}
