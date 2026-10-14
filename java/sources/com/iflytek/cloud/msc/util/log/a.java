package com.iflytek.cloud.msc.util.log;

import android.text.TextUtils;
import com.iflytek.speech.VoiceWakeuperAidl;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static LinkedHashMap<String, String> f12381a = new LinkedHashMap<>();
    private static String b = "=";
    private static String c = ":";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f12382d = VoiceWakeuperAidl.PARAMS_SEPARATE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f12383e = "=========================================================\r\n";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f12384f = false;

    public static synchronized void a(String str, String str2) {
        String str3;
        if (f12384f) {
            DebugLog.LogS("appendInfo:" + str + "," + str2);
            if (TextUtils.isEmpty(str2)) {
                str3 = "";
            } else {
                str3 = str2 + c;
            }
            f12381a.put(str, str3 + System.currentTimeMillis());
        }
    }
}
