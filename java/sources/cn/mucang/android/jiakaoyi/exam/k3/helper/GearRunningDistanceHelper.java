package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class GearRunningDistanceHelper {
    /* JADX WARN: Multi-variable type inference failed */
    public static cn.mucang.android.jiakaoyi.signal.c.g.b.C0119b getCompatibleGearData(cn.mucang.android.jiakaoyi.signal.center.model.c cVar, BooleanValue booleanValue, Gear gear) {
        int i;
        if (booleanValue == null || (i = gear.gear) < Gear.Gear1.gear || i > Gear.Gear5.gear) {
            return null;
        }
        cn.mucang.android.jiakaoyi.signal.c.g.b.C0119b c0119bD = cVar.d(gear);
        if (((Boolean) booleanValue.value).booleanValue()) {
            int i2 = gear.gear;
            while (true) {
                i2++;
                if (i2 > Gear.Gear5.gear) {
                    break;
                }
                cn.mucang.android.jiakaoyi.signal.c.g.b.C0119b c0119bD2 = cVar.d(Gear.parse(i2 - 1));
                if (c0119bD == null || (c0119bD2 != null && c0119bD2.n > c0119bD.n)) {
                    c0119bD = c0119bD2;
                }
            }
        }
        return c0119bD;
    }
}
