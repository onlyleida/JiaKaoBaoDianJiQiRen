package cn.mucang.jiakaoyi.uilib.api;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.framework.p002e.n;
import cn.mucang.jiakaoyi.uilib.model.DeviceAgent;
import cn.mucang.jiakaoyi.uilib.model.DeviceSettingInfo;
import cn.mucang.jiakaoyi.uilib.record.TrainStatus;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.t;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.i.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ0\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0016\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\nJ\u000e\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u001a¨\u0006\u001b"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/api/DeviceApi;", "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;", "()V", "getActivateStatus", "Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;", "getDeviceAgent", "Lcn/mucang/jiakaoyi/uilib/model/DeviceAgent;", "getDeviceSetting", "Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;", "reportCheckResult", "", "value", "", "sendHeartbeat", "userId", "studentId", "inExam", "ruleExamSiteId", "", "changeStudent", "Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;", "setDeviceSetting", "payFirst", "forceEnd", "uploadRecord", "type", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DeviceApi extends n {
    public final DeviceAgent m() throws ApiException, InternalException, HttpException {
        Object data = httpGet("/api/open/device/get-paas-info.htm").getData((Class<Object>) DeviceAgent.class);
        r.d(data, "httpGet(\"/api/open/devic…(DeviceAgent::class.java)");
        return (DeviceAgent) data;
    }

    public final DeviceSettingInfo n() throws ApiException, InternalException, HttpException {
        return (DeviceSettingInfo) httpGet("/api/open/device/get-device-info.htm").getData(DeviceSettingInfo.class);
    }

    public final boolean o(String value) throws ApiException, InternalException, HttpException {
        r.e(value, "value");
        return httpPost("/api/open/device/report.htm", t.d(new MucangNameValuePair("projects", value))).isSuccess();
    }

    public final boolean p(String userId, String str, boolean z, long j, TrainStatus changeStudent) throws ApiException, InternalException, HttpException {
        r.e(userId, "userId");
        r.e(changeStudent, "changeStudent");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("userId", userId));
        arrayList.add(new MucangNameValuePair("examSiteId", String.valueOf(j)));
        arrayList.add(new MucangNameValuePair("changeStudent", changeStudent.getStatusName()));
        if (str != null) {
            arrayList.add(new MucangNameValuePair("studentId", str.toString()));
        }
        arrayList.add(new MucangNameValuePair("inExam", String.valueOf(z)));
        return httpPost("/api/open/device/user-heartbeat.htm", arrayList).isSuccess();
    }

    public final boolean q(boolean z, boolean z2) throws ApiException, InternalException, HttpException {
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new MucangNameValuePair("payFirst", String.valueOf(z)));
            arrayList.add(new MucangNameValuePair("forceEnd", String.valueOf(z2)));
            return httpPost("/api/open/device/settings.htm", arrayList).getData(false);
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public final boolean r(int i) throws ApiException, InternalException, HttpException {
        return httpGet(r.m("/api/open/device/save-use-record.htm?type=", Integer.valueOf(i))).isSuccess();
    }
}
