package cn.mucang.jiakaoyi.uilib.api;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.framework.p002e.n;
import cn.mucang.jiakaoyi.uilib.model.ConfigModel;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.u;
import kotlin.jvm.internal.r;
import kotlin.text.Charsets;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.i.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000bJ$\u0010\f\u001a\u00020\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\t2\b\u0010\u000e\u001a\u0004\u0018\u00010\t2\b\u0010\u000f\u001a\u0004\u0018\u00010\t¨\u0006\u0010"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/api/DeviceConfigApi;", "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;", "()V", "getLocalConfig", "", "Lcn/mucang/jiakaoyi/uilib/model/ConfigModel;", "uploadLocalConfig", "", "configJson", "", "isFull", "", "uploadSimInfo", "iccid1", "iccid2", "imsi", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DeviceConfigApi extends n {
    public static /* synthetic */ void o(DeviceConfigApi deviceConfigApi, String str, boolean z, int i, Object obj) throws ApiException, InternalException, HttpException {
        if ((i & 2) != 0) {
            z = false;
        }
        deviceConfigApi.n(str, z);
    }

    public final List<ConfigModel> m() throws Exception {
        List<ConfigModel> listHttpGetDataList = httpGetDataList(r.m("/api/open/device/get-device-config.htm?examSiteId=", Long.valueOf(ExamSiteUtil.e(0L))), ConfigModel.class);
        r.d(listHttpGetDataList, "httpGetDataList(\"/api/op… ConfigModel::class.java)");
        return listHttpGetDataList;
    }

    public final void n(String configJson, boolean z) throws ApiException, InternalException, HttpException {
        r.e(configJson, "configJson");
        String strM = r.m("/api/open/device/save-device-config.htm?isFull=", Boolean.valueOf(z));
        byte[] bytes = configJson.getBytes(Charsets.f15811a);
        r.d(bytes, "(this as java.lang.String).getBytes(charset)");
        httpPost(strM, bytes);
    }

    public final boolean p(String str, String str2, String str3) throws ApiException, InternalException, HttpException {
        return httpPost("/api/open/device/record-sim-info.htm", u.m(new MucangNameValuePair("iccid", str), new MucangNameValuePair("iccid2", str2), new MucangNameValuePair("imsi", str3))).isSuccess();
    }
}
