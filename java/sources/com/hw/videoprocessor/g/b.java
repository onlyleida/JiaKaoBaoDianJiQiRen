package com.hw.videoprocessor.g;

import android.util.Log;

/* JADX INFO: loaded from: classes4.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f12085a = false;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f12086a;
        String b;
        int c;

        a() {
        }
    }

    private static String a(a aVar, String str, Object... objArr) {
        return "[" + aVar.b + "():" + aVar.c + "]" + d(str, objArr);
    }

    public static void b(String str, Object... objArr) {
        if (f12085a) {
            a aVarE = e(new Throwable().getStackTrace());
            Log.e(aVarE.f12086a, a(aVarE, str, objArr));
        }
    }

    public static void c(Throwable th) {
        if (f12085a) {
            Log.e(e(th.getStackTrace()).f12086a, "", th);
        }
    }

    private static String d(String str, Object... objArr) {
        return objArr.length == 0 ? str : String.format(str, objArr);
    }

    private static a e(StackTraceElement[] stackTraceElementArr) {
        a aVar = new a();
        if (stackTraceElementArr.length > 1) {
            String fileName = stackTraceElementArr[1].getFileName();
            aVar.f12086a = fileName;
            if (fileName.endsWith(".java")) {
                String str = aVar.f12086a;
                aVar.f12086a = str.substring(0, str.length() - 5);
            }
            aVar.b = stackTraceElementArr[1].getMethodName();
            aVar.c = stackTraceElementArr[1].getLineNumber();
        }
        return aVar;
    }

    public static void f(String str, Object... objArr) {
        if (f12085a) {
            a aVarE = e(new Throwable().getStackTrace());
            Log.i(aVarE.f12086a, a(aVarE, str, objArr));
        }
    }

    public static void g(String str, Object... objArr) {
        if (f12085a) {
            a aVarE = e(new Throwable().getStackTrace());
            Log.w(aVarE.f12086a, a(aVarE, str, objArr));
        }
    }
}
