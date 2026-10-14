package com.rscja.deviceapi;

import android.os.Build;
import android.util.Log;
import com.rscja.deviceapi.exception.ConfigurationException;

/* JADX INFO: loaded from: classes6.dex */
public class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f13635d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f13636e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f13637f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static String f13638g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static String f13639h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f13640a;
    private String b;
    private int c;

    static {
        String simpleName = a.class.getSimpleName();
        String upperCase = Build.DISPLAY.toUpperCase();
        f13635d = upperCase;
        f13636e = "";
        f13637f = "";
        f13638g = "";
        f13639h = "";
        if (upperCase.contains("6018909")) {
            f13635d = "CJ6008909";
            f13636e = "/dev/ttyHSL0";
            f13638g = "/dev/ttyHSL0";
            f13639h = "/dev/ttyHSL1";
            f13637f = "/dev/ttyHSL1";
        } else if (f13635d.contains("6008909")) {
            f13635d = "CJ6008909";
            f13636e = "/dev/ttyHSL1";
            f13638g = "/dev/ttyHSL1";
            f13639h = "/dev/ttyHSL1";
            f13637f = "/dev/ttyHSL1";
        } else if (f13635d.contains("V600S_8909")) {
            f13635d = "CJ6008909_V600S";
            f13636e = "/dev/ttyHSL1";
            f13637f = "/dev/ttyHSL0";
            f13638g = "/dev/ttyHSL0";
        }
        Log.e(simpleName, "111 uartPath_bd=" + f13636e + " uartPath_rfid=" + f13637f + "  uartPath_obd=" + f13638g + "  uartPath_finger=" + f13639h);
    }

    private a(String str, String str2, int i) {
        this.f13640a = str;
        this.b = str2;
        this.c = i;
    }

    public static a a() throws ConfigurationException {
        return new a(f(), f13639h, 57600);
    }

    public static a b() throws ConfigurationException {
        return new a(f(), f13637f, 115200);
    }

    public static a c() throws ConfigurationException {
        return new a(f(), f13638g, 9600);
    }

    public static String f() {
        if (f13635d.equals("i760")) {
            return "C4000";
        }
        Log.i("DeviceConfiguration", "getModel() model=" + f13635d);
        return f13635d.toUpperCase();
    }

    public int d() {
        return this.c;
    }

    public String e() {
        return this.f13640a;
    }

    public String g() {
        return this.b;
    }
}
