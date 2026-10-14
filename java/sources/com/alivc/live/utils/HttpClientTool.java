package com.alivc.live.utils;

/* JADX INFO: loaded from: classes5.dex */
public class HttpClientTool {
    public static String DoAndroidHttpPostRequest(String str, String[] strArr, byte[] bArr) {
        try {
            HttpClientHelper httpClientHelper = new HttpClientHelper(str);
            httpClientHelper.setVerifyCert();
            httpClientHelper.setCustomHeaders(strArr);
            return httpClientHelper.doPost(bArr) ? httpClientHelper.getResponse() : "";
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }
}
