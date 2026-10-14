package cn.mucang.android.jiakaoyi.framework.utils;

import android.annotation.SuppressLint;
import android.app.Application;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.Calendar;

/* JADX INFO: loaded from: classes2.dex */
public class q0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static Application f3636a;

    public static Application a() {
        Application application = f3636a;
        if (application != null) {
            return application;
        }
        Application applicationB = b();
        e(applicationB);
        return applicationB;
    }

    private static Application b() {
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Object objInvoke = cls.getMethod("getApplication", new Class[0]).invoke(cls.getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]), new Object[0]);
            if (objInvoke != null) {
                return (Application) objInvoke;
            }
            throw new NullPointerException("u should init first");
        } catch (ClassNotFoundException e2) {
            e2.printStackTrace();
            throw new NullPointerException("u should init first");
        } catch (IllegalAccessException e3) {
            e3.printStackTrace();
            throw new NullPointerException("u should init first");
        } catch (NoSuchMethodException e4) {
            e4.printStackTrace();
            throw new NullPointerException("u should init first");
        } catch (InvocationTargetException e5) {
            e5.printStackTrace();
            throw new NullPointerException("u should init first");
        }
    }

    public static int[] c(double d2, double d3, boolean z) {
        double radians = Math.toRadians(d2);
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        calendar2.set(2000, 0, 1);
        int timeInMillis = (int) ((calendar.getTimeInMillis() - calendar2.getTimeInMillis()) / 86400000);
        double dSin = Math.sin(Math.toRadians(-0.833d));
        double d4 = 0.0d;
        double d5 = 180.0d;
        while (Math.abs(d4 - d5) >= 0.1d) {
            double d6 = (((double) timeInMillis) + (d5 / 360.0d)) / 36525.0d;
            double radians2 = Math.toRadians((35999.05d * d6) + 357.528d);
            double d7 = radians2 * 2.0d;
            double radians3 = Math.toRadians((36000.777d * d6) + 280.46d + (Math.sin(radians2) * 1.915d) + (Math.sin(d7) * 0.02d));
            double dAsin = Math.asin(Math.sin(Math.toRadians(23.4393d - (d6 * 0.013d))) * Math.sin(radians3));
            double dSin2 = ((((d5 - 180.0d) - (Math.sin(radians2) * 1.915d)) - (Math.sin(d7) * 0.02d)) + (Math.sin(2.0d * radians3) * 2.466d)) - (Math.sin(radians3 * 4.0d) * 0.053d);
            double degrees = Math.toDegrees(Math.acos(dSin - (Math.tan(radians) * Math.tan(dAsin))));
            double d8 = (d5 - dSin2) - d3;
            if (z) {
                degrees = -degrees;
            }
            d5 = d8 + degrees;
            d4 = d5;
        }
        double d9 = (d4 / 15.0d) + ((double) ((int) ((d3 / 15.0d) + ((double) (d3 >= 0.0d ? 1 : -1)))));
        int i = (int) d9;
        return new int[]{i, (int) ((d9 - ((double) i)) * 60.0d)};
    }

    public static String d(Throwable th) {
        String string;
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        try {
            try {
                th.printStackTrace(printWriter);
                string = stringWriter.toString();
                cn.mucang.android.core.utils.o.a(printWriter);
            } catch (Exception e2) {
                e2.printStackTrace();
                cn.mucang.android.core.utils.o.a(printWriter);
                string = "";
            }
            return string;
        } catch (Throwable th2) {
            cn.mucang.android.core.utils.o.a(printWriter);
            throw th2;
        }
    }

    public static void e(Application application) {
        if (f3636a == null) {
            if (application == null) {
                f3636a = b();
                return;
            } else {
                f3636a = application;
                return;
            }
        }
        if (application == null || application.getClass() == f3636a.getClass()) {
            return;
        }
        f3636a = application;
    }
}
