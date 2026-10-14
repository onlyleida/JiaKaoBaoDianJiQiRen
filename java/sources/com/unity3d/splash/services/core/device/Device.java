package com.unity3d.splash.services.core.device;

import android.content.Context;
import android.telephony.TelephonyManager;
import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
public class Device {

    public enum MemoryInfoType {
        TOTAL_MEMORY,
        FREE_MEMORY
    }

    public static String a(Context context) {
        String simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
        return (simOperator.length() >= 3) & (simOperator != null) ? simOperator.substring(0, 3) : "";
    }

    public static String b() {
        return UUID.randomUUID().toString();
    }
}
