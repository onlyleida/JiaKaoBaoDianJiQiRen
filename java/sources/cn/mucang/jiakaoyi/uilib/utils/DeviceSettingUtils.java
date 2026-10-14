package cn.mucang.jiakaoyi.uilib.utils;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.jiakaoyi.uilib.api.DeviceApi;
import cn.mucang.jiakaoyi.uilib.model.DeviceSettingInfo;
import com.alibaba.fastjson.JSON;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.s.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\u0006\u001a\u00020\u0007J\n\u0010\b\u001a\u0004\u0018\u00010\u0004H\u0007J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/utils/DeviceSettingUtils;", "", "()V", "deviceSettingInfo", "Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;", "getDeviceSetting", "getKey", "", "loadSetting", "saveSetting", "", "settingInfo", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DeviceSettingUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DeviceSettingUtils f9578a = new DeviceSettingUtils();
    private static DeviceSettingInfo b;

    private DeviceSettingUtils() {
    }

    public final DeviceSettingInfo a() {
        if (b == null) {
            try {
                b = (DeviceSettingInfo) JSON.parseObject(i0.g(b(), ""), DeviceSettingInfo.class);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return b;
    }

    public final String b() {
        return AppUtils.a() + "_key_device_setting";
    }

    public final DeviceSettingInfo c() {
        DeviceSettingInfo deviceSettingInfoN;
        try {
            deviceSettingInfoN = new DeviceApi().n();
        } catch (Exception e2) {
            e2.printStackTrace();
            deviceSettingInfoN = null;
        }
        if (deviceSettingInfoN == null) {
            DeviceSettingInfo deviceSettingInfoA = a();
            return deviceSettingInfoA != null ? deviceSettingInfoA : deviceSettingInfoN;
        }
        f.o(r.m("获取到最新的设备信息数据：", JSON.toJSONString(deviceSettingInfoN)));
        d(deviceSettingInfoN);
        return deviceSettingInfoN;
    }

    public final void d(DeviceSettingInfo settingInfo) {
        r.e(settingInfo, "settingInfo");
        b = settingInfo;
        i0.m(b(), JSON.toJSONString(b));
    }
}
