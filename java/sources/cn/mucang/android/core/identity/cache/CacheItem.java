package cn.mucang.android.core.identity.cache;

import cn.mucang.android.core.webview.MenuOptions;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcn/mucang/android/core/identity/cache/CacheItem;", "Ljava/io/Serializable;", "cachedTime", "", "cachedValue", "", "(JLjava/lang/String;)V", "getCachedTime", "()J", "setCachedTime", "(J)V", "getCachedValue", "()Ljava/lang/String;", "setCachedValue", "(Ljava/lang/String;)V", "component1", "component2", MenuOptions.COPY, "equals", "", "other", "", "hashCode", "", "toString", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final /* data */ class CacheItem implements Serializable {
    private long cachedTime;
    private String cachedValue;

    public CacheItem() {
        this(0L, null, 3, null);
    }

    public CacheItem(long j, String str) {
        this.cachedTime = j;
        this.cachedValue = str;
    }

    public static /* synthetic */ CacheItem copy$default(CacheItem cacheItem, long j, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            j = cacheItem.cachedTime;
        }
        if ((i & 2) != 0) {
            str = cacheItem.cachedValue;
        }
        return cacheItem.copy(j, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getCachedTime() {
        return this.cachedTime;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCachedValue() {
        return this.cachedValue;
    }

    public final CacheItem copy(long cachedTime, String cachedValue) {
        return new CacheItem(cachedTime, cachedValue);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CacheItem)) {
            return false;
        }
        CacheItem cacheItem = (CacheItem) other;
        return this.cachedTime == cacheItem.cachedTime && r.a(this.cachedValue, cacheItem.cachedValue);
    }

    public final long getCachedTime() {
        return this.cachedTime;
    }

    public final String getCachedValue() {
        return this.cachedValue;
    }

    public int hashCode() {
        int iA = defpackage.c.a(this.cachedTime) * 31;
        String str = this.cachedValue;
        return iA + (str == null ? 0 : str.hashCode());
    }

    public final void setCachedTime(long j) {
        this.cachedTime = j;
    }

    public final void setCachedValue(String str) {
        this.cachedValue = str;
    }

    public String toString() {
        return "CacheItem(cachedTime=" + this.cachedTime + ", cachedValue=" + ((Object) this.cachedValue) + ')';
    }

    public /* synthetic */ CacheItem(long j, String str, int i, o oVar) {
        this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? null : str);
    }
}
