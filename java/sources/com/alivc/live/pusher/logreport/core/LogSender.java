package com.alivc.live.pusher.logreport.core;

import android.text.TextUtils;
import com.alivc.live.pusher.LogUtil;
import com.alivc.live.utils.HttpClientHelper;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class LogSender {
    private static final String TAG = "LogSender";
    private static Map<String, Integer> failSendLogUrls = new HashMap();
    private static String logPushUrl = "https://videocloud.cn-hangzhou.log.aliyuncs.com/logstores/";
    private static String trackVersion = "/track?APIVersion=0.6.0";

    private static String formatFinalUrl(String str, Map<String, String> map) {
        return str + formatParams(map);
    }

    private static String formatParams(Map<String, String> map) {
        if (map == null || map.size() <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String strEncode = URLEncoder.encode(entry.getKey());
            String value = entry.getValue();
            if (TextUtils.isEmpty(value)) {
                value = "";
            }
            String strEncode2 = URLEncoder.encode(value);
            sb.append("&");
            sb.append(strEncode);
            sb.append("=");
            sb.append(strEncode2);
        }
        return sb.toString();
    }

    public static void sendActually(String str, Map<String, String> map) {
        String finalUrl = formatFinalUrl(logPushUrl + str + trackVersion, map);
        HashMap map2 = new HashMap();
        synchronized (LogSender.class) {
            map2.putAll(failSendLogUrls);
            failSendLogUrls.clear();
        }
        if (!sendLogRequest(finalUrl)) {
            synchronized (LogSender.class) {
                failSendLogUrls.put(finalUrl, 0);
            }
            return;
        }
        if (map2.isEmpty()) {
            return;
        }
        for (String str2 : map2.keySet()) {
            if (sendLogRequest(str2 + "&cache=true")) {
                int iIntValue = (map2.containsKey(str2) ? ((Integer) map2.get(str2)).intValue() : 0) + 1;
                if (iIntValue < 2) {
                    synchronized (LogSender.class) {
                        failSendLogUrls.put(str2, Integer.valueOf(iIntValue));
                    }
                } else {
                    LogUtil.e(TAG, "lost log : " + str2);
                }
            }
        }
    }

    private static boolean sendLogRequest(String str) {
        try {
            return new HttpClientHelper(str).doGet();
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
