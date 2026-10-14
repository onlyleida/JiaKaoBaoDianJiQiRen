package cn.mucang.jiakaoyi.uilib.api;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.api.upload.FileUploadApi;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.p002e.n;
import cn.mucang.jiakaoyi.uilib.model.ReverseSignalRecord;
import com.alibaba.fastjson.JSON;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.Charsets;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.i.q, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0014J\u0014\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¨\u0006\u000b"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/api/SignalReverseUpApi;", "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;", "()V", "getApiHost", "", "getSignKey", "saveReverseSignals", "", "reverseRecords", "", "Lcn/mucang/jiakaoyi/uilib/model/ReverseSignalRecord;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SignalReverseUpApi extends n {
    @Override // cn.mucang.android.jiakaoyi.framework.p002e.n, cn.mucang.android.core.api.a
    protected String getApiHost() {
        return MucangConfig.v() ? "https://device-administration.ttt.mucang.cn" : "https://device-administration.kakamobi.cn";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.p002e.n, cn.mucang.android.core.api.a
    protected String getSignKey() {
        return "*#06#fEeHh0aIcG1Fd3GIbJJFqESX";
    }

    public final boolean m(List<ReverseSignalRecord> reverseRecords) throws ApiException, InternalException, HttpException {
        r.e(reverseRecords, "reverseRecords");
        String jSONString = JSON.toJSONString(reverseRecords);
        r.d(jSONString, "toJSONString(reverseRecords)");
        byte[] bytes = jSONString.getBytes(Charsets.f15811a);
        r.d(bytes, "(this as java.lang.String).getBytes(charset)");
        return httpPost("/api/open/device-signal/save-car-default-signal.htm", bytes, FileUploadApi.TYPE_APPLICATION_JSON).isSuccess();
    }
}
