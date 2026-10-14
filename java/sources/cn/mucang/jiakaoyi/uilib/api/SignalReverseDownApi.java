package cn.mucang.jiakaoyi.uilib.api;

import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import cn.mucang.jiakaoyi.uilib.model.ReverseSignalRecord;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.i.p, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¨\u0006\u0006"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/api/SignalReverseDownApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceManagerApi;", "()V", "loadReverseSignals", "", "Lcn/mucang/jiakaoyi/uilib/model/ReverseSignalRecord;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SignalReverseDownApi extends BaseDeviceManagerApi {
    public final List<ReverseSignalRecord> m() throws InternalException {
        List<ReverseSignalRecord> dataArray = httpGet("/api/open/model/get-signal-config-by-model-num.htm").getDataArray(ReverseSignalRecord.class);
        r.d(dataArray, "httpGet(\"/api/open/model…ord::class.java\n        )");
        return dataArray;
    }
}
