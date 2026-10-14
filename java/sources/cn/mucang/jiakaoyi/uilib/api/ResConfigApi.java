package cn.mucang.jiakaoyi.uilib.api;

import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import cn.mucang.jiakaoyi.uilib.model.ResConfigInfo;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.i.m, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ&\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r¨\u0006\u000e"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/api/ResConfigApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceManagerApi;", "()V", "getVoiceResConfig", "Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;", "groupId", "", "type", "", "updateConfig", "", "configId", "configName", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ResConfigApi extends BaseDeviceManagerApi {
    public final ResConfigInfo m(long j, int i) throws Exception {
        ApiResponse apiResponseHttpGet = httpGet("/api/open/owner/group-config/get-group-config.htm?groupId=" + j + "&type=" + i);
        if (apiResponseHttpGet == null || apiResponseHttpGet.getData() == null) {
            return null;
        }
        return (ResConfigInfo) apiResponseHttpGet.getData(ResConfigInfo.class);
    }

    public final boolean n(long j, int i, long j2, String configName) throws ApiException, InternalException, HttpException {
        r.e(configName, "configName");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("groupId", String.valueOf(j)));
        arrayList.add(new MucangNameValuePair("type", String.valueOf(i)));
        arrayList.add(new MucangNameValuePair("configId", String.valueOf(j2)));
        arrayList.add(new MucangNameValuePair("configName", configName));
        return httpPost("/api/open/owner/group-config/update.htm", arrayList).isSuccess();
    }
}
