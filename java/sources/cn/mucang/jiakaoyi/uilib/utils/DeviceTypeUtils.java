package cn.mucang.jiakaoyi.uilib.utils;

import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.jiakaoyi.uilib.activate.ActivateModel;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.s.h, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\u0004J\b\u0010\n\u001a\u00020\bH\u0002J\u0006\u0010\u000b\u001a\u00020\bJ\u0006\u0010\f\u001a\u00020\bJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/utils/DeviceTypeUtils;", "", "()V", "KEY_COOPERATION_MODE", "", "KEY_DEVICE_STATUS_DESC", "KEY_SERVICEFEE_EXPIRED", "isBuyOut", "", "isDeviceDesc", "isExpires", "isLease", "isShare", "saveDeviceType", "", "model", "Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;", "showExpires", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DeviceTypeUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DeviceTypeUtils f9579a = new DeviceTypeUtils();

    private DeviceTypeUtils() {
    }

    public final void a(ActivateModel model) {
        r.e(model, "model");
        i0.k("key_cooperationMode", model.getCooperationMode());
        i0.m("key_device_status_desc", model.getServiceFeeStatusLabel());
        i0.i("serviceFeeExpired", model.getServiceFeeExpired());
    }
}
