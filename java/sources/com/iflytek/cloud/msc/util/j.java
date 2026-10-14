package com.iflytek.cloud.msc.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.speech.VoiceWakeuperAidl;

/* JADX INFO: loaded from: classes4.dex */
public class j {
    public static void a(Context context) throws SpeechError {
        if (context == null) {
            return;
        }
        try {
            NetworkInfo[] allNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getAllNetworkInfo();
            if (allNetworkInfo != null && allNetworkInfo.length > 0) {
                for (NetworkInfo networkInfo : allNetworkInfo) {
                    if (networkInfo == null || networkInfo.isConnectedOrConnecting()) {
                        return;
                    }
                }
            }
            throw new SpeechError(20001);
        } catch (SecurityException e2) {
            DebugLog.LogD("check network failed: " + e2.getLocalizedMessage());
        }
    }

    public static boolean b(Context context) {
        NetworkInfo activeNetworkInfo;
        return "wifi".equals((context == null || (activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) == null) ? "" : b(activeNetworkInfo));
    }

    public static String b(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return "none";
        }
        try {
            if (networkInfo.getType() == 1) {
                return "wifi";
            }
            String lowerCase = networkInfo.getExtraInfo().toLowerCase();
            if (TextUtils.isEmpty(lowerCase)) {
                return "none";
            }
            if (!lowerCase.startsWith("3gwap") && !lowerCase.startsWith("uniwap")) {
                if (lowerCase.startsWith("cmwap")) {
                    return "cmwap";
                }
                if (lowerCase.startsWith("ctwap")) {
                    return "ctwap";
                }
                return lowerCase.startsWith("ctnet") ? "ctnet" : lowerCase;
            }
            return "uniwap";
        } catch (Exception e2) {
            DebugLog.LogD(e2.toString());
            return "none";
        }
    }

    public static String a(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return "none";
        }
        try {
            if (networkInfo.getType() == 1) {
                return "none";
            }
            return ("" + networkInfo.getSubtypeName()) + VoiceWakeuperAidl.PARAMS_SEPARATE + networkInfo.getSubtype();
        } catch (Exception e2) {
            DebugLog.LogD(e2.toString());
            return "none";
        }
    }
}
