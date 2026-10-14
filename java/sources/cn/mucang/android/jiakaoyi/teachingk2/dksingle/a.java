package cn.mucang.android.jiakaoyi.teachingk2.dksingle;

import cn.mucang.android.jiakaoyi.framework.log.f;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static SingleType f6986a = SingleType.All;

    public static SingleType a() {
        return f6986a;
    }

    public static void b(SingleType singleType) {
        f6986a = singleType;
        f.o("设置倒库单边:" + singleType.typeName);
    }
}
