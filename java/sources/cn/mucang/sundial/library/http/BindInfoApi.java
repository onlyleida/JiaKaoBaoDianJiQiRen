package cn.mucang.sundial.library.http;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.r;
import kotlin.k;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcn/mucang/sundial/library/http/BindInfoApi;", "Lcn/mucang/sundial/library/http/SundialNormalApi;", "", "getApiHost", "()Ljava/lang/String;", "imei", "deviceNum", "", "bind", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class BindInfoApi extends SundialNormalApi {
    public final Boolean bind(String imei, String deviceNum) {
        Object objM139constructorimpl;
        r.e(imei, "imei");
        r.e(deviceNum, "deviceNum");
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(Boolean.valueOf(httpGet("/api/open/device/sync-imei.htm?imei=" + imei + "&deviceNum=" + deviceNum).getData(false)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(k.a(th));
        }
        if (Result.m145isFailureimpl(objM139constructorimpl)) {
            objM139constructorimpl = null;
        }
        return (Boolean) objM139constructorimpl;
    }

    @Override // cn.mucang.sundial.library.http.SundialNormalApi, cn.mucang.android.core.api.a
    protected String getApiHost() {
        return SundialApi.INSTANCE.getHost();
    }
}
