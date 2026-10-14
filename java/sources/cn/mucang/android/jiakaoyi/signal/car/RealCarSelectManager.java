package cn.mucang.android.jiakaoyi.signal.car;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import com.alibaba.fastjson.JSON;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.car.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0007J\n\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0007J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/car/RealCarSelectManager;", "", "()V", "KEY_SELECT_REAL_CAR", "", "getCarType", "", "getRealCar", "Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;", "saveRealCar", "", "model", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RealCarSelectManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RealCarSelectManager f5258a = new RealCarSelectManager();

    private RealCarSelectManager() {
    }

    public static final int a() {
        CarItemModel config;
        LocalCarModel localCarModelB = b();
        if (localCarModelB == null || (config = localCarModelB.getConfig()) == null) {
            return 0;
        }
        return config.getModelType();
    }

    public static final LocalCarModel b() {
        String strG = i0.g("key.selectRealCar", "");
        Object object = null;
        try {
            Result.Companion companion = Result.INSTANCE;
            object = JSON.parseObject(strG, (Class<Object>) LocalCarModel.class);
            Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(k.a(th));
        }
        return (LocalCarModel) object;
    }

    public static final void c(LocalCarModel model) {
        r.e(model, "model");
        String jSONString = JSON.toJSONString(model);
        f.o(r.m("设置真实车型:", jSONString));
        i0.m("key.selectRealCar", jSONString);
    }
}
