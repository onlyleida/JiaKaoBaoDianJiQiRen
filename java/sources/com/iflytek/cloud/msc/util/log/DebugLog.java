package com.iflytek.cloud.msc.util.log;

import android.util.Log;
import com.iflytek.msc.MSC;

/* JADX INFO: loaded from: classes4.dex */
public class DebugLog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f12375a = "MscSpeechLog";
    private static a b = a.normal;
    private static boolean c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f12376d = false;

    public enum a {
        all,
        detail,
        normal,
        low,
        none
    }

    public static void LogD(String str, String str2) {
        if (a()) {
            Log.d(str, str2);
        }
    }

    public static void LogE(String str) {
        LogE(f12375a, str);
    }

    public static void LogI(String str, String str2) {
        if (c()) {
            Log.i(str, str2);
        }
    }

    public static void LogS(String str) {
        LogS(f12375a, str);
    }

    public static void LogW(String str, String str2) {
        if (b()) {
            Log.w(str, str2);
        }
    }

    private static boolean a() {
        return getShowLog() && getLogLevel().ordinal() <= a.normal.ordinal();
    }

    private static boolean b() {
        return getShowLog() && a.none != getLogLevel();
    }

    private static boolean c() {
        return getShowLog() && getLogLevel().ordinal() <= a.detail.ordinal();
    }

    private static boolean d() {
        return f12376d && getShowLog();
    }

    public static a getLogLevel() {
        return b;
    }

    public static boolean getShowLog() {
        return c;
    }

    public static void setLogLevel(a aVar) {
        b = aVar;
        updateJniLogStatus();
    }

    public static void setShowLog(boolean z) {
        c = z;
        updateJniLogStatus();
    }

    public static void setTag(String str) {
        f12375a = str;
    }

    public static void updateJniLogStatus() {
        try {
            if (MSC.isLoaded()) {
                MSC.DebugLog(getShowLog() && a());
                MSC.SetLogLevel(b.ordinal());
            }
        } catch (Throwable th) {
            LogD("updateJniLogStatus exception: " + th.getLocalizedMessage());
        }
    }

    public static void LogE(String str, String str2) {
        if (b()) {
            Log.e(str, str2);
        }
    }

    public static void LogS(String str, String str2) {
        if (d()) {
            Log.d(str, str2);
        }
    }

    public static void LogD(String str) {
        LogD(f12375a, str);
    }

    public static void LogI(String str) {
        LogI(f12375a, str);
    }

    public static void LogW(String str) {
        LogW(f12375a, str);
    }

    public static void LogE(Throwable th) {
        if (!b() || th == null) {
            return;
        }
        th.printStackTrace();
    }

    public static void LogS(Throwable th) {
        if (d()) {
            th.printStackTrace();
        }
    }
}
