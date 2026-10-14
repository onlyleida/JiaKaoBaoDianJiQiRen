package cn.mucang.sundial.library.http;

import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.sundial.library.entity.UpdateInfo;
import cn.mucang.sundial.library.util.AppUtil;
import com.mobile.auth.gatewayauth.Constant;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.o0;
import kotlin.collections.u;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.l;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J!\u0010\u0005\u001a\u00020\u0003*\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0007\u0010\bJ'\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ5\u0010\u0013\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\n¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcn/mucang/sundial/library/http/UpdateApi;", "Lcn/mucang/sundial/library/http/SundialNormalApi;", "", "", "", "toQueryParam", "(Ljava/util/Map;)Ljava/lang/String;", "getApiHost", "()Ljava/lang/String;", "versionName", "", "versionNumber", "imei", "Lcn/mucang/sundial/library/entity/UpdateInfo;", "check", "(Ljava/lang/String;ILjava/lang/String;)Lcn/mucang/sundial/library/entity/UpdateInfo;", "upgradeVersionName", "upgradeVersionNumber", "", "record", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Z", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class UpdateApi extends SundialNormalApi {
    private final String toQueryParam(Map<String, ? extends Object> map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
            if (entry.getValue() != null) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            arrayList.add(((String) entry2.getKey()) + '=' + entry2.getValue());
        }
        return CollectionsKt___CollectionsKt.m0(arrayList, "&", null, null, 0, null, null, 62, null);
    }

    public final UpdateInfo check(String versionName, int versionNumber, String imei) {
        r.e(versionName, "versionName");
        r.e(imei, "imei");
        try {
            Result.Companion companion = Result.INSTANCE;
            return (UpdateInfo) httpGetData("/api/open/device/check.htm?" + toQueryParam(o0.k(l.a("versionName", versionName), l.a("versionNumber", String.valueOf(versionNumber)), l.a("imei", imei), l.a(Constant.LOGIN_ACTIVITY_VENDOR_KEY, AppUtil.getMateData("")))), UpdateInfo.class);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(k.a(th));
            return null;
        }
    }

    @Override // cn.mucang.sundial.library.http.SundialNormalApi, cn.mucang.android.core.api.a
    protected String getApiHost() {
        return MucangConfig.v() ? "https://sundial-app.ttt.mucang.cn" : "https://sundial-app.jiakaobaodian.com";
    }

    public final boolean record(String versionName, int versionNumber, String imei, String upgradeVersionName, int upgradeVersionNumber) {
        r.e(versionName, "versionName");
        r.e(imei, "imei");
        r.e(upgradeVersionName, "upgradeVersionName");
        try {
            Result.Companion companion = Result.INSTANCE;
            ApiResponse apiResponseHttpPost = httpPost("/api/open/device/record.htm", u.m(new MucangNameValuePair("versionName", versionName), new MucangNameValuePair("versionNumber", String.valueOf(versionNumber)), new MucangNameValuePair("imei", imei), new MucangNameValuePair("upgradeVersionName", upgradeVersionName), new MucangNameValuePair("upgradeVersionNumber", String.valueOf(upgradeVersionNumber))));
            r.d(apiResponseHttpPost, "httpPost(\"/api/open/device/record.htm\", params)");
            return apiResponseHttpPost.isSuccess();
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(k.a(th));
            return false;
        }
    }
}
