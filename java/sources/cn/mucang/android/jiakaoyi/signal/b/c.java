package cn.mucang.android.jiakaoyi.signal.b;

import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.framework.utils.r0;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f5228a;
    private static final r0<Boolean> b = r0.d("daochedeng_state", Boolean.FALSE);
    private static final cn.mucang.android.jiakaoyi.signal.c.f.a c = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.android.jiakaoyi.signal.b.a
        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public final void onSignalChanged(e eVar) {
            c.e(eVar);
        }
    };

    public interface a {
        void a(e eVar, r0<Boolean> r0Var);
    }

    public static boolean a() {
        return f5228a != null;
    }

    public static void b(a aVar) {
        if (!AppUtils.k() || AppUtils.b()) {
            return;
        }
        f5228a = aVar;
        d.m.b(c);
    }

    public static boolean c() {
        return f5228a != null && b.b().booleanValue();
    }

    static /* synthetic */ void e(final e eVar) {
        final a aVar = f5228a;
        if (aVar != null) {
            n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.b.b
                @Override // java.lang.Runnable
                public final void run() {
                    aVar.a(eVar, c.b);
                }
            });
        }
    }
}
