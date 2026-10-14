package cn.mucang.android.jiakaoyi.teachingk2.ui.car;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.ui.car.b0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0004¨\u0006\b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindApi;", "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;", "()V", "bindCar", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;", "plateNum", "", "getBindInfo", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarBindApi extends cn.mucang.android.jiakaoyi.framework.p002e.n {
    public final CarBindInfo m(String plateNum) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(plateNum, "plateNum");
        Object data = httpPost("/api/open/device/bind-car.htm", kotlin.collections.u.p(new MucangNameValuePair("plateNum", plateNum))).getData((Class<Object>) CarBindInfo.class);
        kotlin.jvm.internal.r.d(data, "httpPost(\n            \"/…(CarBindInfo::class.java)");
        return (CarBindInfo) data;
    }

    public final CarBindInfo n() throws ApiException, InternalException, HttpException {
        Object data = httpGet("/api/open/device/query-device-info.htm").getData((Class<Object>) CarBindInfo.class);
        kotlin.jvm.internal.r.d(data, "httpGet(\"/api/open/devic…(CarBindInfo::class.java)");
        return (CarBindInfo) data;
    }
}
