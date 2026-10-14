package cn.mucang.android.jiakaoyi.signal.j;

import cn.mucang.android.jiakaoyi.signal.car.CarItemModel;
import cn.mucang.android.jiakaoyi.signal.car.LocalCarModel;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import com.alibaba.fastjson.asm.Opcodes;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f5760a = {4, 20, 132, Opcodes.LCMP};

    public static boolean a() {
        CarItemModel config;
        LocalCarModel localCarModelB = SelectCarManager.b();
        if (localCarModelB != null && (config = localCarModelB.getConfig()) != null) {
            int code = config.getCode();
            for (int i : f5760a) {
                if (i == code) {
                    return true;
                }
            }
        }
        return false;
    }
}
