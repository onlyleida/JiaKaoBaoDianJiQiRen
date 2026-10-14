package cn.mucang.android.core.utils;

import android.util.Log;
import cn.mucang.android.core.config.MucangConfig;
import com.mobile.auth.BuildConfig;
import java.io.PrintWriter;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class t {

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static volatile int f2670a;

        static {
            f2670a = MucangConfig.v() ? 3 : 6;
        }
    }

    public static int a(String str, String str2) {
        if (3 >= f()) {
            return i(3, str, l(str2));
        }
        return 0;
    }

    public static int b(String str, String str2, Throwable th) {
        if (3 < f()) {
            return 0;
        }
        return i(3, str, l(str2) + '\n' + g(th));
    }

    public static int c(String str, Throwable th) {
        if (3 >= f()) {
            return i(3, str, g(th));
        }
        return 0;
    }

    public static int d(String str, String str2) {
        if (6 >= f()) {
            return i(6, str, l(str2));
        }
        return 0;
    }

    public static int e(String str, String str2, Throwable th) {
        if (6 < f()) {
            return 0;
        }
        return i(6, str, l(str2) + '\n' + g(th));
    }

    public static int f() {
        return a.f2670a;
    }

    public static String g(Throwable th) {
        if (th == null) {
            return "";
        }
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static int h(String str, String str2) {
        if (4 >= f()) {
            return i(4, str, l(str2));
        }
        return 0;
    }

    private static int i(int i, String str, String str2) {
        if (!MucangConfig.v()) {
            return Log.println(i, str, str2);
        }
        String[] strArrO = o(str, str2);
        return Log.println(i, strArrO[0], strArrO[1] + strArrO[2]);
    }

    public static synchronized void j(int i) {
        a.f2670a = i;
    }

    public static int k(String str, String str2) {
        if (2 >= f()) {
            return i(2, str, l(str2));
        }
        return 0;
    }

    private static String l(String str) {
        return str == null ? "Log message can't be null." : str;
    }

    public static int m(String str, String str2) {
        if (5 >= f()) {
            return i(5, str, l(str2));
        }
        return 0;
    }

    public static int n(String str, String str2, Throwable th) {
        if (5 < f()) {
            return 0;
        }
        return i(5, str, l(str2) + '\n' + g(th));
    }

    public static String[] o(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        try {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            StackTraceElement stackTraceElement = stackTrace[4].getFileName().equals("LogUtils.java") ? stackTrace[5] : stackTrace[4];
            String fileName = stackTraceElement.getFileName();
            String methodName = stackTraceElement.getMethodName();
            int lineNumber = stackTraceElement.getLineNumber();
            sb.append("(");
            sb.append(fileName);
            sb.append(":");
            sb.append(lineNumber);
            sb.append(") #");
            sb.append(methodName);
            sb.append(" : ");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (str == null) {
            str = MucangConfig.r();
        }
        if (str2 == null) {
            str2 = BuildConfig.COMMON_MODULE_COMMIT_ID;
        }
        return new String[]{str, sb.toString(), str2};
    }
}
