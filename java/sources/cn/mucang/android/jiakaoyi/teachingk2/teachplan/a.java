package cn.mucang.android.jiakaoyi.teachingk2.teachplan;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;

/* JADX INFO: loaded from: classes4.dex */
public class a {
    public static long a(long j) {
        return i0.f(c(j), 0L);
    }

    public static void b() {
        if (i0.a(c(ExamSiteUtil.e(0L))) || !i0.a("key_teach_plan_id")) {
            return;
        }
        d(ExamSiteUtil.e(0L), i0.f("key_teach_plan_id", 0L));
        f.o("兼容历史启用考场：" + ExamSiteUtil.e(0L) + " 方案id：" + i0.f("key_teach_plan_id", 0L));
        i0.h("key_teach_plan_id");
    }

    private static String c(long j) {
        return "key_teach_plan_id_" + j;
    }

    public static void d(long j, long j2) {
        i0.l(c(j), j2);
    }
}
