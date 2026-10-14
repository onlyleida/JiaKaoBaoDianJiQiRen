package cn.mucang.jiakaoyi.uilib.api;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.jiakaoyi.uilib.activate.ActivateModel;
import cn.mucang.jiakaoyi.uilib.api.cache.JkyCacheConfig;
import cn.mucang.jiakaoyi.uilib.model.DeviceAgent;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.i.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\u0005\u001a\u00020\u0006¨\u0006\t"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/api/CacheDeviceApi;", "Lcn/mucang/jiakaoyi/uilib/api/JResponseCacheApi;", "()V", "getActivateStatus", "Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;", "needCache", "", "getDeviceAgent", "Lcn/mucang/jiakaoyi/uilib/model/DeviceAgent;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CacheDeviceApi extends JResponseCacheApi {
    public static /* synthetic */ ActivateModel c(CacheDeviceApi cacheDeviceApi, boolean z, int i, Object obj) throws ApiException, InternalException, HttpException {
        if ((i & 1) != 0) {
            z = false;
        }
        return cacheDeviceApi.b(z);
    }

    public final ActivateModel b(boolean z) throws ApiException, InternalException, HttpException {
        Object data = httpGet(JkyCacheConfig.f9340a.a(z), "/api/open/device/query-status.htm").getData((Class<Object>) ActivateModel.class);
        r.d(data, "httpGet(\n            Jky…del::class.java\n        )");
        return (ActivateModel) data;
    }

    public final DeviceAgent d(boolean z) throws ApiException, InternalException, HttpException {
        Object data = httpGet(JkyCacheConfig.f9340a.a(z), "/api/open/device/get-paas-info.htm").getData((Class<Object>) DeviceAgent.class);
        r.d(data, "httpGet(\n            Jky…(DeviceAgent::class.java)");
        return (DeviceAgent) data;
    }
}
