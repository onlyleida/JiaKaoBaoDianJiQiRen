package cn.mucang.android.jiakaoyi.teachingk2.ui.car;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import com.alibaba.fastjson.JSON;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.ui.car.c0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007J\b\u0010\u0006\u001a\u00020\u0007H\u0007J\u0012\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarInfoManager;", "", "()V", "carInfo", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;", "getCarInfo", "isAlreadyBindCar", "", "saveCarInfo", "", "info", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarInfoManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CarInfoManager f8178a = new CarInfoManager();
    private static CarBindInfo b;

    private CarInfoManager() {
    }

    public static final synchronized CarBindInfo a() {
        CarBindInfo carBindInfo = b;
        if (carBindInfo != null) {
            return carBindInfo;
        }
        String strG = i0.g("key.carInfo", "");
        if (n0.g(strG)) {
            b = (CarBindInfo) JSON.parseObject(strG, CarBindInfo.class);
        }
        return b;
    }

    public static final boolean b() {
        CarBindInfo carBindInfoA = a();
        return n0.g(carBindInfoA == null ? null : carBindInfoA.getPlateNum());
    }

    public static final synchronized void c(CarBindInfo carBindInfo) {
        if (carBindInfo == null) {
            return;
        }
        i0.m("key.carInfo", JSON.toJSONString(carBindInfo));
        b = carBindInfo;
    }
}
