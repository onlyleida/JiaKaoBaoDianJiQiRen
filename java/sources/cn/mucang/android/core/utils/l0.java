package cn.mucang.android.core.utils;

import android.content.Context;
import f.a.a.a.stat_api.StatReporter;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes.dex */
public class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final CopyOnWriteArraySet<StatReporter> f2656a = new CopyOnWriteArraySet<>();

    public static void a(String str, String str2) {
        b(str, str2, null, 0L);
    }

    public static void b(String str, String str2, Map<String, Object> map, long j) {
        Iterator<StatReporter> it = f2656a.iterator();
        while (it.hasNext()) {
            it.next().d(str, str2, map, j);
        }
    }

    public static void c(Context context, String str) {
        d(context, str, null);
    }

    public static void d(Context context, String str, Map<String, Object> map) {
        Iterator<StatReporter> it = f2656a.iterator();
        while (it.hasNext()) {
            it.next().b(context, str, map);
        }
    }

    public static void e(Context context, String str) {
        f(context, str, null);
    }

    public static void f(Context context, String str, Map<String, Object> map) {
        Iterator<StatReporter> it = f2656a.iterator();
        while (it.hasNext()) {
            it.next().a(context, str, map);
        }
    }

    public static void g() {
        Iterator<StatReporter> it = f2656a.iterator();
        while (it.hasNext()) {
            try {
                it.next().c();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }
}
