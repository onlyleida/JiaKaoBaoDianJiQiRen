package cn.mucang.android.jiakaoyi.framework.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.utils.m0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/utils/SimInfoUtils;", "", "()V", "DEFAULT_ICCID", "", "DEFAULT_IMSI", "getIccId1", "context", "Landroid/content/Context;", "getIccId2", "getImSi", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SimInfoUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SimInfoUtils f3629a = new SimInfoUtils();

    private SimInfoUtils() {
    }

    @SuppressLint({"HardwareIds"})
    public final String a(Context context) {
        int i = Build.VERSION.SDK_INT;
        kotlin.jvm.internal.r.e(context, "context");
        try {
            Object systemService = context.getSystemService("phone");
            if (systemService == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.telephony.TelephonyManager");
            }
            TelephonyManager telephonyManager = (TelephonyManager) systemService;
            cn.mucang.android.jiakaoyi.framework.log.f.o("telephonyManager simOperatorName " + ((Object) telephonyManager.getSimOperatorName()) + " simState " + telephonyManager.getSimState());
            if (i >= 30) {
                cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("telephonyManager subscriptionId ", Integer.valueOf(telephonyManager.getSubscriptionId())));
            }
            String simSerialNumber = telephonyManager.getSimSerialNumber();
            if (simSerialNumber == null) {
                simSerialNumber = "";
            }
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("telephonyManager simSerialNumber ", telephonyManager.getSimSerialNumber()));
            return simSerialNumber;
        } catch (Exception e2) {
            e2.printStackTrace();
            cn.mucang.android.jiakaoyi.framework.log.f.o("获取getIccId1报错  VERSION.SDK_INT：" + i + " ; message  " + ((Object) e2.getLocalizedMessage()));
            return "00000000000000000000";
        }
    }

    @SuppressLint({"MissingPermission"})
    public final String b(Context context) {
        int i = Build.VERSION.SDK_INT;
        kotlin.jvm.internal.r.e(context, "context");
        String str = "";
        if (i >= 22) {
            try {
                SubscriptionManager subscriptionManagerFrom = SubscriptionManager.from(context);
                int activeSubscriptionInfoCount = subscriptionManagerFrom.getActiveSubscriptionInfoCount();
                int activeSubscriptionInfoCountMax = subscriptionManagerFrom.getActiveSubscriptionInfoCountMax();
                cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("当前实际插卡数量:", Integer.valueOf(activeSubscriptionInfoCount)));
                cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("当前卡槽数量:", Integer.valueOf(activeSubscriptionInfoCountMax)));
                List<SubscriptionInfo> activeSubscriptionInfoList = subscriptionManagerFrom.getActiveSubscriptionInfoList();
                if (activeSubscriptionInfoList != null) {
                    for (SubscriptionInfo subscriptionInfo : activeSubscriptionInfoList) {
                        String iccId = subscriptionInfo.getIccId();
                        cn.mucang.android.jiakaoyi.framework.log.f.o("SubscriptionInfo: iccId " + ((Object) iccId) + " ;number " + ((Object) subscriptionInfo.getNumber()) + " ;carrierName " + ((Object) subscriptionInfo.getCarrierName()) + " ;displayName " + ((Object) subscriptionInfo.getDisplayName()) + " ;countryIso " + ((Object) subscriptionInfo.getCountryIso()) + " ;dataRoaming " + subscriptionInfo.getDataRoaming() + " ;simSlotIndex " + subscriptionInfo.getSimSlotIndex() + " ;subscriptionId " + subscriptionInfo.getSubscriptionId());
                        if (cn.mucang.android.core.utils.n0.g(iccId)) {
                            str = str + ((Object) iccId) + ',';
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                cn.mucang.android.jiakaoyi.framework.log.f.o("获取getIccId2 报错  VERSION.SDK_INT：" + i + " ; message  " + ((Object) e2.getLocalizedMessage()));
                return "00000000000000000000";
            }
        }
        if (!cn.mucang.android.core.utils.n0.g(str)) {
            return str;
        }
        int length = str.length() - 1;
        if (str == null) {
            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
        }
        String strSubstring = str.substring(0, length);
        kotlin.jvm.internal.r.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    @SuppressLint({"HardwareIds"})
    public final String c(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        try {
            Object systemService = context.getSystemService("phone");
            if (systemService == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.telephony.TelephonyManager");
            }
            String subscriberId = ((TelephonyManager) systemService).getSubscriberId();
            return subscriberId == null ? "" : subscriberId;
        } catch (Exception e2) {
            e2.printStackTrace();
            cn.mucang.android.jiakaoyi.framework.log.f.o("获取getImSi 报错  VERSION.SDK_INT：" + Build.VERSION.SDK_INT + " ; message  " + ((Object) e2.getLocalizedMessage()));
            return "0000000000";
        }
    }
}
