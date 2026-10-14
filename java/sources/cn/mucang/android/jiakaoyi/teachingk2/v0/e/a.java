package cn.mucang.android.jiakaoyi.teachingk2.v0.e;

import cn.mucang.android.jiakaoyi.teachingk2.firstpractice.FirstPracticeStep;
import cn.mucang.android.jiakaoyi.teachingk2.v0.b.b;
import cn.mucang.android.jiakaoyi.teachingk2.v0.b.c;
import cn.mucang.android.jiakaoyi.teachingk2.v0.b.d;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f8700a = 0;
    public static int b = 1;
    private static int c;

    public static void a(boolean z, int i) {
        c = i;
        if (!z) {
            cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().d();
            return;
        }
        if (i == b) {
            cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().k(FirstPracticeStep.DaoKu_Line);
        }
        cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().c();
        cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().a(FirstPracticeStep.DaoKu_Line, new c());
        cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().a(FirstPracticeStep.DaoKu_Left, new b());
        cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().a(FirstPracticeStep.DaoKu_Right, new d());
    }

    public static boolean b() {
        return c == b;
    }
}
