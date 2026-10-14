package com.alivc.live.pusher;

import android.util.Log;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes5.dex */
public class LogUtil {
    private static boolean sDebug = true;

    public static String _FILE_() {
        return new Exception().getStackTrace()[2].getFileName();
    }

    public static String _FUNC_() {
        return new Exception().getStackTrace()[1].getMethodName();
    }

    public static int _LINE_() {
        return new Exception().getStackTrace()[1].getLineNumber();
    }

    public static String _TIME_() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS").format(new Date());
    }

    public static void d(String str) {
        if (sDebug) {
            Log.d(_FILE_(), str);
        }
    }

    public static void d(String str, String str2) {
        if (sDebug) {
            Log.d(str, str2);
        }
    }

    public static void d(String str, String str2, String str3) {
        if (sDebug) {
            Log.d(str, "[" + str2 + "]" + str3);
        }
    }

    public static void disableDebug() {
        sDebug = false;
    }

    public static void e(String str) {
        Log.e(_FILE_(), getLineMethod() + str);
    }

    public static void e(String str, String str2) {
        Log.e(str, getLineMethod() + str2);
    }

    public static void enalbeDebug() {
        sDebug = true;
    }

    public static String getFileLineMethod() {
        StackTraceElement stackTraceElement = new Exception().getStackTrace()[2];
        StringBuffer stringBuffer = new StringBuffer("[");
        stringBuffer.append(stackTraceElement.getFileName());
        stringBuffer.append(" | ");
        stringBuffer.append(stackTraceElement.getLineNumber());
        stringBuffer.append(" | ");
        stringBuffer.append(stackTraceElement.getMethodName());
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    public static String getLineMethod() {
        StackTraceElement stackTraceElement = new Exception().getStackTrace()[2];
        StringBuffer stringBuffer = new StringBuffer("[");
        stringBuffer.append(stackTraceElement.getLineNumber());
        stringBuffer.append(" | ");
        stringBuffer.append(stackTraceElement.getMethodName());
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    public static void w(String str) {
        if (sDebug) {
            Log.w(_FILE_(), str);
        }
    }

    public static void w(String str, String str2) {
        if (sDebug) {
            Log.w(str, str2);
        }
    }
}
