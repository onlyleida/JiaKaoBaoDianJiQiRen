package com.tencent.open.log;

import com.tencent.connect.common.Constants;
import java.io.File;

/* JADX INFO: loaded from: classes6.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f14129a = 60;
    public static int b = 60;
    public static String c = "OpenSDK.Client.File.Tracer";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static String f14130d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static String f14131e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static long f14132f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f14133g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f14134h;
    public static int i;
    public static String j;
    public static String k;
    public static String l;
    public static int m;
    public static long n;
    public static String o;

    static {
        StringBuilder sb = new StringBuilder();
        sb.append("Tencent");
        String str = File.separator;
        sb.append(str);
        sb.append("msflogs");
        sb.append(str);
        sb.append("com");
        sb.append(str);
        sb.append("tencent");
        sb.append(str);
        sb.append("mobileqq");
        sb.append(str);
        f14130d = sb.toString();
        f14131e = ".log";
        f14132f = 8388608L;
        f14133g = 262144;
        f14134h = 1024;
        i = 10000;
        j = "debug.file.blockcount";
        k = "debug.file.keepperiod";
        l = "debug.file.tracelevel";
        m = 24;
        n = 604800000L;
        o = Constants.APP_SPECIFIC_ROOT + str + "logs";
    }
}
