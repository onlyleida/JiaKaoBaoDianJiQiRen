package cn.mucang.jiakaoyi.uilib.api;

import androidx.exifinterface.media.ExifInterface;
import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.cache.c;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.utils.t;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.i.l, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\b\u0016\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0003J+\u0010\u0005\u001a\u0004\u0018\u0001H\t\"\u0004\b\u0000\u0010\t2\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\t0\u000bH\u0007¢\u0006\u0002\u0010\fJ,\u0010\r\u001a\n\u0012\u0004\u0012\u0002H\t\u0018\u00010\u000e\"\u0004\b\u0000\u0010\t2\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\t0\u000bH\u0007¨\u0006\u0010"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/api/RemoteConfigApi;", "Lcn/mucang/jiakaoyi/uilib/api/JBaseCacheApi;", "()V", "getCacheConfig", "Lcn/mucang/android/core/api/cache/CacheConfig;", "getConfig", "Lcn/mucang/android/core/api/ApiResponse;", "key", "", ExifInterface.GPS_DIRECTION_TRUE, "clazz", "Ljava/lang/Class;", "(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;", "getConfigList", "", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public class RemoteConfigApi extends h {
    private final ApiResponse c(String str) throws ApiException, InternalException, HttpException {
        return httpGet(b(), r.m("/api/open/config/get-config.htm?key=", str));
    }

    public c b() {
        c defaultCacheConfig = this.defaultCacheConfig;
        r.d(defaultCacheConfig, "defaultCacheConfig");
        return defaultCacheConfig;
    }

    public final <T> T d(String key, Class<T> clazz) {
        r.e(key, "key");
        r.e(clazz, "clazz");
        try {
            ApiResponse apiResponseC = c(key);
            if (apiResponseC == null) {
                return null;
            }
            return (T) apiResponseC.getData(clazz);
        } catch (Exception e2) {
            t.e("RemoteConfigApi", r.m("获取Misc配置失败:", key), e2);
            return null;
        }
    }
}
