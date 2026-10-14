package cn.mucang.android.jiakaoyi.framework.utils;

import android.os.Build;

/* JADX INFO: loaded from: classes2.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f3635a = a("V600");
    public static final boolean b = a("YT576");

    public static boolean a(String str) {
        String str2 = Build.MODEL;
        return cn.mucang.android.core.utils.n0.g(str2) && str2.toUpperCase().contains(str);
    }
}
