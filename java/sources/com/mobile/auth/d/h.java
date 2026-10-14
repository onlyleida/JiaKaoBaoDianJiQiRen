package com.mobile.auth.d;

import com.iflytek.cloud.SpeechUtility;
import com.tencent.open.SocialConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f13145a = "h";

    public static String a(int i, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(SpeechUtility.TAG_RESOURCE_RESULT, i);
            jSONObject.put(SocialConstants.PARAM_SEND_MSG, str);
            return jSONObject.toString();
        } catch (Throwable th) {
            try {
                com.mobile.auth.a.a.a(f13145a, "Json parse error", th);
                return "";
            } catch (Throwable th2) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return null;
                } catch (Throwable th3) {
                    com.mobile.auth.gatewayauth.a.a(th3);
                    return null;
                }
            }
        }
    }
}
