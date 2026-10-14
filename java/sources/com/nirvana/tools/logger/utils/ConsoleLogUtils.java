package com.nirvana.tools.logger.utils;

import android.util.Log;

/* JADX INFO: loaded from: classes6.dex */
public class ConsoleLogUtils {
    public static boolean isDebug() {
        return false;
    }

    public static void logcatD(String str, String str2) {
        Log.d(str, str2);
    }

    public static void logcatE(String str, String str2) {
        Log.e(str, str2);
    }

    public static void logcatI(String str, String str2) {
        Log.i(str, str2);
    }

    public static void logcatV(String str, String str2) {
        Log.v(str, str2);
    }

    public static void logcatW(String str, String str2) {
        Log.w(str, str2);
    }
}
