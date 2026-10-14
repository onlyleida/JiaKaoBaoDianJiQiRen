package cn.mucang.jiakaoyi.uilib.activate;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.p002e.n;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.activate.h, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\nJ\n\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0014¨\u0006\r"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/activate/ActivateApi;", "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;", "()V", "activate", "Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;", "activationCode", "", "eggBindDevice", "", "getBindDeviceQr", "Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceInfo;", "getRequestConfig", "Lcn/mucang/android/core/api/request/model/MucangRequestConfig;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ActivateApi extends n {
    @Override // cn.mucang.android.core.api.a
    protected cn.mucang.android.core.api.request.e.c getRequestConfig() {
        return new cn.mucang.android.core.api.request.e.c(10000L, 10000L, 10000L);
    }

    public final boolean m() throws ApiException, InternalException, HttpException {
        return httpGet("/api/open/factory/bind-factory-device.htm").isSuccess();
    }

    public final BindDeviceInfo n() throws Exception {
        Object objHttpGetData = httpGetData("/api/open/device/get-bind-qr-code.htm", BindDeviceInfo.class);
        r.d(objHttpGetData, "httpGetData(\n           …nfo::class.java\n        )");
        return (BindDeviceInfo) objHttpGetData;
    }
}
