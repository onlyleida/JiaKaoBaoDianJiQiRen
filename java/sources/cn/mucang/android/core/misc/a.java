package cn.mucang.android.core.misc;

import android.content.Context;
import android.content.SharedPreferences;
import cn.mucang.android.core.config.u;
import cn.mucang.android.core.utils.n0;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a extends b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Map<String, a> f2594d = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SharedPreferences f2595a;
    private final String b;
    private final u c;

    a(String str, SharedPreferences sharedPreferences, u uVar) {
        this.f2595a = sharedPreferences;
        this.b = str;
        this.c = uVar;
    }

    public static synchronized a e(Context context, String str) {
        if (n0.e(str)) {
            return null;
        }
        String str2 = String.format("%s_%s", "__day_runner", str);
        a aVar = f2594d.get(str2);
        if (!f2594d.containsKey(str2)) {
            aVar = new a(str2, context.getSharedPreferences("__runners_shared_preference", 0), u.a.f2502a);
            f2594d.put(str2, aVar);
        }
        return aVar;
    }

    static boolean g(Date date, Date date2) {
        if (date == null || date2 == null) {
            return false;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(date2);
        return calendar.get(1) == calendar2.get(1) && calendar.get(6) == calendar2.get(6);
    }

    @Override // cn.mucang.android.core.misc.b
    public synchronized void a() {
        SharedPreferences.Editor editorEdit = this.f2595a.edit();
        editorEdit.putLong(this.b, this.c.a());
        editorEdit.apply();
    }

    @Override // cn.mucang.android.core.misc.b
    public synchronized boolean b() {
        return g(new Date(this.c.a()), f());
    }

    synchronized Date f() {
        long j;
        j = this.f2595a.getLong(this.b, -1L);
        return j > 0 ? new Date(j) : null;
    }
}
