package com.iflytek.cloud;

import android.os.Environment;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.cloud.resource.Resource;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class Setting {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f12121a;
    private static String b;
    private static boolean c;

    public enum LOG_LEVEL {
        all,
        detail,
        normal,
        low,
        none
    }

    static {
        String str = Environment.getExternalStorageDirectory().getPath() + "/msc/msc.log";
        f12121a = str;
        b = str;
        c = false;
    }

    private Setting() {
    }

    @Deprecated
    public static boolean getLocationEnable() {
        return false;
    }

    public static LOG_LEVEL getLogLevel() {
        LOG_LEVEL log_level = LOG_LEVEL.none;
        try {
            return LOG_LEVEL.values()[DebugLog.getLogLevel().ordinal()];
        } catch (Exception e2) {
            DebugLog.LogE(e2);
            return log_level;
        }
    }

    public static String getLogPath() {
        return b;
    }

    public static boolean getSaveTestLog() {
        return c;
    }

    public static boolean getShowLog() {
        return DebugLog.getShowLog();
    }

    public static void setLocale(Locale locale) {
        Resource.setUILanguage(locale);
    }

    @Deprecated
    public static void setLocationEnable(boolean z) {
    }

    public static void setLogLevel(LOG_LEVEL log_level) {
        if (log_level != null) {
            try {
                DebugLog.setLogLevel(DebugLog.a.values()[log_level.ordinal()]);
            } catch (Exception e2) {
                DebugLog.LogE(e2);
            }
        }
    }

    public static void setLogPath(String str) {
        b = str;
    }

    public static void setSaveTestLog(boolean z) {
        c = z;
    }

    public static void setShowLog(boolean z) {
        DebugLog.setShowLog(z);
    }
}
