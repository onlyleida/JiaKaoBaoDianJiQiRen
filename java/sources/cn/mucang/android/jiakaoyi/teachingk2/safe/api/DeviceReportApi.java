package cn.mucang.android.jiakaoyi.teachingk2.safe.api;

import android.location.Location;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceMonitorApi;
import cn.mucang.android.jiakaoyi.signal.handle.gps.JLocationManager;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iflytek.cloud.SpeechUtility;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.Charsets;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.api.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J<\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0006¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/DeviceReportApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceMonitorApi;", "()V", "reportBrakeStatus", "", TtmlNode.ATTR_ID, "", "code", "", "hardwareReason", "missBrake", "barrierDescs", "gear", "reportModuleStatus", SpeechUtility.TAG_RESOURCE_RESULT, "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DeviceReportApi extends BaseDeviceMonitorApi {
    public final boolean m(String id, int i, String str, boolean z, String str2, String str3) throws ApiException, InternalException, HttpException {
        r.e(id, "id");
        ArrayList arrayList = new ArrayList();
        Location locationE = JLocationManager.f5733a.e();
        arrayList.add(new MucangNameValuePair(TtmlNode.ATTR_ID, id));
        arrayList.add(new MucangNameValuePair("brakeTime", String.valueOf(System.currentTimeMillis())));
        arrayList.add(new MucangNameValuePair("appReasonCode", String.valueOf(i)));
        arrayList.add(new MucangNameValuePair("hardwareReason", str));
        arrayList.add(new MucangNameValuePair("missBrake", String.valueOf(z)));
        arrayList.add(new MucangNameValuePair("barrierDescs", str2));
        arrayList.add(new MucangNameValuePair("gear", str3));
        arrayList.add(new MucangNameValuePair("lat", String.valueOf(locationE.getLatitude())));
        arrayList.add(new MucangNameValuePair("lon", String.valueOf(locationE.getLongitude())));
        return httpPost("/api/open/brake/record-reason.htm", arrayList).isSuccess();
    }

    public final boolean n(String result) throws ApiException, InternalException, HttpException {
        r.e(result, "result");
        byte[] bytes = result.getBytes(Charsets.f15811a);
        r.d(bytes, "(this as java.lang.String).getBytes(charset)");
        return httpPost("/api/open/fault-code/upload.htm", bytes).isSuccess();
    }
}
