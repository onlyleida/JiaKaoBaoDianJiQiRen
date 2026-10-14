package cn.mucang.android.core.misc;

import android.content.Context;
import android.content.SharedPreferences;
import cn.mucang.android.core.config.u;
import cn.mucang.android.core.utils.n0;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class c extends b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final long f2596e = TimeUnit.DAYS.toMillis(1);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected static Map<String, c> f2597f = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f2598a;
    private final String b;
    private final SharedPreferences c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final u f2599d;

    c(String str, long j, SharedPreferences sharedPreferences, u uVar) {
        this.f2598a = j;
        this.f2599d = uVar;
        this.b = String.format("%s_%s", str, "run_after");
        this.c = sharedPreferences;
    }

    public static synchronized c e(Context context, String str) {
        return f(context, str, f2596e);
    }

    public static synchronized c f(Context context, String str, long j) {
        if (!n0.e(str) && j > 0) {
            String str2 = String.format("%s_%s", str, Long.valueOf(j));
            c cVar = f2597f.get(str2);
            if (cVar == null) {
                cVar = new c(str2, j, context.getSharedPreferences("__runners_shared_preference", 0), u.a.f2502a);
                f2597f.put(str2, cVar);
            }
            return cVar;
        }
        return null;
    }

    @Override // cn.mucang.android.core.misc.b
    public synchronized void a() {
        long jA = this.f2599d.a() + this.f2598a;
        SharedPreferences.Editor editorEdit = this.c.edit();
        editorEdit.putLong(this.b, jA);
        editorEdit.apply();
    }

    @Override // cn.mucang.android.core.misc.b
    public synchronized boolean b() {
        return this.f2599d.a() <= this.c.getLong(this.b, -1L);
    }
}
