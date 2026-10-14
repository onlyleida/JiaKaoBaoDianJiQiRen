package cn.mucang.jiakaoyi.uilib.api;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.p002e.n;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.i.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004J\u0016\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tJ\u0016\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004J\u0012\u0010\f\u001a\u00020\r2\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0012\u0010\u000e\u001a\u00020\u000f2\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004¨\u0006\u0010"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/api/ChargeApi;", "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;", "()V", "getBaseTrainTimeQRCode", "", "learnerId", "uuid", "getChargeQRCode", "chargeMode", "", "getOweQRCode", "coachId", "getRemainStudyHour", "Lcn/mucang/jiakaoyi/uilib/cost/db/CostModel;", "queryReceiveStatus", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ChargeApi extends n {
    public final boolean m(String str) throws ApiException, InternalException, HttpException {
        return httpGet(r.m("/api/open/base-study-hour/query-receive-status.htm?uuid=", str)).getData(false);
    }
}
