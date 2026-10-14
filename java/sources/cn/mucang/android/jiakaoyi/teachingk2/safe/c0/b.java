package cn.mucang.android.jiakaoyi.teachingk2.safe.c0;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachingk2.safe.c0.c.c;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final List<a> f7627a;
    private static volatile long b;
    private static volatile boolean c;

    static {
        ArrayList arrayList = new ArrayList();
        f7627a = arrayList;
        if (AppUtils.n()) {
            arrayList.add(new c());
        }
        arrayList.add(new cn.mucang.android.jiakaoyi.teachingk2.safe.c0.c.a());
        arrayList.add(new cn.mucang.android.jiakaoyi.teachingk2.safe.c0.c.b());
    }

    public static synchronized boolean a(e eVar) {
        if (eVar.d().L == b) {
            return c;
        }
        boolean z = true;
        try {
            for (a aVar : f7627a) {
                if (!aVar.a(eVar)) {
                    z = false;
                    if (!c) {
                        break;
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("不计算电子围栏和后溜刹车:");
                    sb.append(aVar instanceof c ? "在隧道区域" : aVar instanceof cn.mucang.android.jiakaoyi.teachingk2.safe.c0.c.a ? "瞬时角度变化大" : "gps质量不好");
                    f.o(sb.toString());
                    break;
                }
            }
        } catch (Throwable th) {
            t.d("SafeTag", "calculate safe error : " + th.getMessage());
        }
        c = z;
        b = eVar.d().L;
        return c;
    }
}
