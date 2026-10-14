package cn.mucang.sundial.library.http;

import cn.mucang.sundial.library.entity.DeviceSupport;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.r;
import kotlin.k;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcn/mucang/sundial/library/http/OtherApi;", "Lcn/mucang/sundial/library/http/SundialNormalApi;", "", "getApiHost", "()Ljava/lang/String;", "tenantId", "Lcn/mucang/sundial/library/entity/DeviceSupport;", "deviceSupport", "(Ljava/lang/String;)Lcn/mucang/sundial/library/entity/DeviceSupport;", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class OtherApi extends SundialNormalApi {
    public final DeviceSupport deviceSupport(String tenantId) {
        Object objM139constructorimpl;
        r.e(tenantId, "tenantId");
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl((DeviceSupport) httpGetData("/api/open/device/support.htm?tenantId=" + tenantId, DeviceSupport.class));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(k.a(th));
        }
        if (Result.m145isFailureimpl(objM139constructorimpl)) {
            objM139constructorimpl = null;
        }
        return (DeviceSupport) objM139constructorimpl;
    }

    @Override // cn.mucang.sundial.library.http.SundialNormalApi, cn.mucang.android.core.api.a
    protected String getApiHost() {
        return SundialApi.INSTANCE.getHost();
    }
}
