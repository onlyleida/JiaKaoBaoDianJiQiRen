package com.alivc.live.pusher;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class ParameterUtil {
    public static int getInteger(Map<String, String> map, String str) {
        String str2;
        if (map == null || str == null || !map.containsKey(str) || (str2 = map.get(str)) == null) {
            return 0;
        }
        try {
            return Integer.parseInt(str2);
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }

    public static long getLong(Map<String, String> map, String str) {
        String str2;
        if (map == null || str == null || !map.containsKey(str) || (str2 = map.get(str)) == null) {
            return 0L;
        }
        try {
            return Long.parseLong(str2);
        } catch (Throwable th) {
            th.printStackTrace();
            return 0L;
        }
    }

    public static float getRunningAppProcessInfo(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                int i = runningAppProcessInfo.pid;
                int i2 = runningAppProcessInfo.uid;
                String str = runningAppProcessInfo.processName;
                int[] iArr = {i};
                if (i == Process.myPid()) {
                    return activityManager.getProcessMemoryInfo(iArr)[0].getTotalPss() / 1024.0f;
                }
            }
        }
        return BitmapDescriptorFactory.HUE_RED;
    }

    public static String getSecondTime() {
        return new SimpleDateFormat("mm:ss", Locale.getDefault()).format(new Date());
    }

    public static String getTodayDateTime() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date());
    }
}
