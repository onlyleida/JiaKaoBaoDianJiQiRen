package cn.mucang.jiakaoyi.uilib.siterule;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import java.util.ArrayList;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.siterule.g0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u000e"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/siterule/RobotSiteInstructApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceManagerApi;", "()V", "getRobotInstructChange", "Lcn/mucang/jiakaoyi/uilib/siterule/InstructResult;", "examSiteId", "", "deviceConfig", "", "saveRobotInstructChange", "", "data", "", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RobotSiteInstructApi extends BaseDeviceManagerApi {
    public final InstructResult m(long j, int i) throws ApiException, InternalException, HttpException {
        return (InstructResult) httpGetData("/api/open/worker/device-config/get-config.htm?examSiteId=" + j + "&deviceConfig=" + i, InstructResult.class);
    }

    public final boolean n(String data, long j, int i) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(data, "data");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("examSiteId", String.valueOf(j)));
        arrayList.add(new MucangNameValuePair("data", data));
        arrayList.add(new MucangNameValuePair("deviceConfig", String.valueOf(i)));
        return httpPost("/api/open/worker/device-config/save.htm", arrayList).isSuccess();
    }
}
