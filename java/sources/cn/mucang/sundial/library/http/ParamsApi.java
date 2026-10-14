package cn.mucang.sundial.library.http;

import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.library.entity.DefaultConfig;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.k;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcn/mucang/sundial/library/http/ParamsApi;", "Lcn/mucang/sundial/library/http/SundialNormalApi;", "", "getApiHost", "()Ljava/lang/String;", "Lcn/mucang/sundial/library/entity/DefaultConfig;", "getDefaultConfig", "()Lcn/mucang/sundial/library/entity/DefaultConfig;", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class ParamsApi extends SundialNormalApi {
    @Override // cn.mucang.sundial.library.http.SundialNormalApi, cn.mucang.android.core.api.a
    protected String getApiHost() {
        return SundialApi.INSTANCE.getHost();
    }

    public final DefaultConfig getDefaultConfig() {
        Object objM139constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl((DefaultConfig) httpGetData("/api/open/device/params.htm?imei=" + DeviceUtils.getImei(), DefaultConfig.class));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(k.a(th));
        }
        if (Result.m145isFailureimpl(objM139constructorimpl)) {
            objM139constructorimpl = null;
        }
        return (DefaultConfig) objM139constructorimpl;
    }
}
