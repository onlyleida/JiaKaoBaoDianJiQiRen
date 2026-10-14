package cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.n;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.n;
import cn.mucang.android.jiakaoyi.signal.communicate.AbsSignalProvider;
import cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.n.c.c;
import cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.n.c.e;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static SparseArray<b> f5533a;
    private static int b;
    private static int c;

    static {
        SparseArray<b> sparseArray = new SparseArray<>();
        f5533a = sparseArray;
        b = 1;
        c = 2;
        sparseArray.put(1, new e());
        f5533a.put(c, new c());
    }

    public static b a() {
        AbsSignalProvider absSignalProvider = (AbsSignalProvider) DataProviderRegister.f3433a.a(AbsSignalProvider.class, null);
        int i = b;
        if (n.a()) {
            i = c;
            f.f("蓝牙连接器");
        } else if (AppUtils.m()) {
            f.f("实验室串口连接器");
        } else {
            if (absSignalProvider != null) {
                f.f(absSignalProvider.getComProvider().getF5402a());
                return absSignalProvider.getComProvider().getB();
            }
            f.f("串口连接器");
        }
        return f5533a.get(i);
    }
}
