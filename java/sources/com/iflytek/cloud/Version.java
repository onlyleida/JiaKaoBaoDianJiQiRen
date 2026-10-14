package com.iflytek.cloud;

import android.text.TextUtils;
import com.iflytek.cloud.a.f.d;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.msc.MSC;
import com.iflytek.msc.MSCSessionInfo;
import com.tencent.connect.common.Constants;

/* JADX INFO: loaded from: classes4.dex */
public class Version {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f12153a = "";
    private static String b = "0";

    private static String getModeVersion() {
        return d.a.MSC == SpeechUtility.DEF_ENGINE_MODE ? Constants.VIA_SHARE_TYPE_INFO : "5";
    }

    private static String getMscVersion() {
        int i;
        if ("0".equalsIgnoreCase(b)) {
            try {
                if (MSC.isLoaded()) {
                    MSCSessionInfo mSCSessionInfo = new MSCSessionInfo();
                    byte[] bArrQMSPGetVersion = MSC.QMSPGetVersion("ver_msc".getBytes("gb2312"), mSCSessionInfo);
                    if (mSCSessionInfo.errorcode == 0) {
                        String str = new String(bArrQMSPGetVersion, "gb2312");
                        DebugLog.LogD("get msc full version name: " + str);
                        int iLastIndexOf = str.lastIndexOf(".");
                        if (iLastIndexOf >= 0 && str.length() > (i = iLastIndexOf + 1)) {
                            b = str.substring(i);
                        }
                    } else {
                        DebugLog.LogD("get msc version error: " + mSCSessionInfo.errorcode);
                    }
                } else {
                    DebugLog.LogE("get msc version msc is not load.");
                }
            } catch (Throwable th) {
                DebugLog.LogE("get msc version exception:");
                DebugLog.LogE(th);
            }
        }
        return b;
    }

    public static String getVersion() {
        if (TextUtils.isEmpty(f12153a) || "0".equalsIgnoreCase(b)) {
            f12153a = "4." + getModeVersion() + ".1143." + getMscVersion();
        }
        return f12153a;
    }
}
