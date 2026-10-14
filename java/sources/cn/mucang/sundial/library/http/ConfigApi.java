package cn.mucang.sundial.library.http;

import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.library.entity.Platform;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.k;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcn/mucang/sundial/library/http/ConfigApi;", "Lcn/mucang/sundial/library/http/SundialNormalApi;", "Lcn/mucang/sundial/library/entity/Platform;", "getPlatform", "()Lcn/mucang/sundial/library/entity/Platform;", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class ConfigApi extends SundialNormalApi {
    public final Platform getPlatform() {
        Object objM139constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl((Platform) httpGetData("/api/open/device/service.htm?imei=" + DeviceUtils.getImei(), Platform.class));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(k.a(th));
        }
        if (Result.m145isFailureimpl(objM139constructorimpl)) {
            objM139constructorimpl = null;
        }
        return (Platform) objM139constructorimpl;
    }
}
