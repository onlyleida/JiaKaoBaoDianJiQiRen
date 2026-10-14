package cn.mucang.jiakaoyi.uilib.diff;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import com.alibaba.fastjson.JSONObject;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.diff.k, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceManagerApi;", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V", "getKeMu", "()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "getDiffData", "Lcom/alibaba/fastjson/JSONObject;", "examSiteId", "", "dataType", "", "isBackUp", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RuleDeductDiffApi extends BaseDeviceManagerApi {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final KeMu f9308e;

    public RuleDeductDiffApi(KeMu keMu) {
        r.e(keMu, "keMu");
        this.f9308e = keMu;
        k(keMu.serverKeMu);
    }

    public final JSONObject m(long j, String dataType, boolean z) throws ApiException, InternalException, HttpException {
        r.e(dataType, "dataType");
        JSONObject data = httpGet("/api/open/owner/exam-site/check-diff-data.htm?examSiteId=" + j + "&dataType=" + dataType + "&type=" + (z ? 1 : 0)).getData();
        r.d(data, "httpGet(\"/api/open/owner…ype}&type=${value}\").data");
        return data;
    }
}
