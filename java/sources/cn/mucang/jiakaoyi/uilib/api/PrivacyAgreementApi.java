package cn.mucang.jiakaoyi.uilib.api;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.framework.p002e.BasePrivacyAgreementApi;
import cn.mucang.jiakaoyi.uilib.model.PrivacyAgreementModel;
import java.util.ArrayList;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.i.k, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u0006\u0010\t\u001a\u00020\u0004J\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u0018\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u001a\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\b2\b\u0010\u0012\u001a\u0004\u0018\u00010\b¨\u0006\u0014"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/api/PrivacyAgreementApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BasePrivacyAgreementApi;", "()V", "confirmRead", "", "deviceType", "", "privacyAgreementId", "", "confirmReadSubScreenWaring", "getConfirmReadSubScreenWaring", "Lcom/alibaba/fastjson/JSONObject;", "getReadState", "Lcn/mucang/jiakaoyi/uilib/model/PrivacyAgreementModel;", "refuseRead", "setToken", "", "authToken", "xyToken", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class PrivacyAgreementApi extends BasePrivacyAgreementApi {
    public final boolean m(int i, String str) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("deviceType", String.valueOf(i)));
        arrayList.add(new MucangNameValuePair("privacyAgreementId", str));
        return httpPost("/api/open/user-privacy-agreement/confirm.htm", arrayList).isSuccess();
    }

    public final boolean n() throws ApiException, InternalException, HttpException {
        return httpGet("/api/open/coach-disclaimer/confirm.htm").isSuccess();
    }

    public final PrivacyAgreementModel o(int i, String str) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("deviceType", String.valueOf(i)));
        arrayList.add(new MucangNameValuePair("privacyAgreementId", str));
        Object data = httpPost("/api/open/user-privacy-agreement/is-confirm.htm", arrayList).getData((Class<Object>) PrivacyAgreementModel.class);
        r.d(data, "httpPost(\"/api/open/user…del::class.java\n        )");
        return (PrivacyAgreementModel) data;
    }

    public final boolean p(int i, String str) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("deviceType", String.valueOf(i)));
        arrayList.add(new MucangNameValuePair("privacyAgreementId", str));
        return httpPost("/api/open/user-privacy-agreement/refuse.htm", arrayList).isSuccess();
    }

    public final void q(String str, String str2) {
        Map<String, String> extraParams = getExtraParams();
        r.d(extraParams, "extraParams");
        extraParams.put("authToken", str);
        Map<String, String> extraParams2 = getExtraParams();
        r.d(extraParams2, "extraParams");
        extraParams2.put("xyToken", str2);
    }
}
