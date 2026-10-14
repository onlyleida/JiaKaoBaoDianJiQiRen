package cn.mucang.android.core.identity.cache;

import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.core.identity.cache.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/core/identity/cache/CacheInvalidStrategy;", "", "isInvalidData", "", "cache", "Lcn/mucang/android/core/identity/cache/CacheItem;", "Companion", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public interface CacheInvalidStrategy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f2544a = a.f2545a;

    /* JADX INFO: renamed from: cn.mucang.android.core.identity.cache.b$a */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/core/identity/cache/CacheInvalidStrategy$Companion;", "", "()V", "ForceInvalidStrategy", "Lcn/mucang/android/core/identity/cache/ForceInvalidStrategy;", "getForceInvalidStrategy", "()Lcn/mucang/android/core/identity/cache/ForceInvalidStrategy;", "OneDayInvalidStrategy", "Lcn/mucang/android/core/identity/cache/OneDayInvalidStrategy;", "getOneDayInvalidStrategy", "()Lcn/mucang/android/core/identity/cache/OneDayInvalidStrategy;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f2545a = new a();
        private static final OneDayInvalidStrategy b = new OneDayInvalidStrategy();
        private static final ForceInvalidStrategy c = new ForceInvalidStrategy();

        private a() {
        }

        public final ForceInvalidStrategy a() {
            return c;
        }

        public final OneDayInvalidStrategy b() {
            return b;
        }
    }

    boolean a(CacheItem cacheItem);
}
