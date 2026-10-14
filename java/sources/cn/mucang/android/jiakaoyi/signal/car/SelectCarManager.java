package cn.mucang.android.jiakaoyi.signal.car;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.p002e.g;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.signal.center.model.EnergyType;
import cn.mucang.android.jiakaoyi.signal.center.model.GearType;
import com.alibaba.fastjson.JSON;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.car.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0007J\b\u0010\u000b\u001a\u00020\nH\u0007J\n\u0010\f\u001a\u0004\u0018\u00010\u0007H\u0007J\b\u0010\r\u001a\u00020\u000eH\u0007J\b\u0010\u000f\u001a\u00020\u0010H\u0007J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u0007J\b\u0010\u0012\u001a\u00020\u0004H\u0007J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u0010\u0014\u001a\u00020\n2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0007H\u0007J\u0010\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0007H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/car/SelectCarManager;", "", "()V", "KEY_PRE_SELECT_CAR", "", "KEY_SELECT_CAR", "car", "Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;", "emptyCar", "clearPreSelectCar", "", "clearSelectCar", "getCar", "getEnergyType", "Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;", "getGearType", "Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;", "getPreSelectCar", "getSelectCarDesc", "getSelectedCarCode", "savePreSelectCar", "model", "saveSelectCar", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SelectCarManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SelectCarManager f5259a = new SelectCarManager();
    private static final LocalCarModel b;
    private static LocalCarModel c;

    static {
        LocalCarModel localCarModel = new LocalCarModel();
        b = localCarModel;
        c = localCarModel;
    }

    private SelectCarManager() {
    }

    public static final void a() {
        i0.h("key.preSelectCar");
    }

    public static final LocalCarModel b() {
        CarItemModel config;
        LocalCarModel localCarModel = c;
        LocalCarModel localCarModel2 = b;
        if (r.a(localCarModel, localCarModel2)) {
            String strG = i0.g("key.selectCar", "");
            f.o(r.m("本地车辆和参数:", strG));
            if (n0.g(strG)) {
                try {
                    synchronized (localCarModel2) {
                        c = (LocalCarModel) JSON.parseObject(strG, LocalCarModel.class);
                        v vVar = v.f15822a;
                    }
                    LocalCarModel localCarModel3 = c;
                    g.a("xyCarCode", String.valueOf((localCarModel3 == null || (config = localCarModel3.getConfig()) == null) ? null : Integer.valueOf(config.getCode())));
                } catch (Exception unused) {
                    synchronized (b) {
                        c = null;
                        v vVar2 = v.f15822a;
                    }
                }
            } else {
                synchronized (localCarModel2) {
                    c = null;
                    v vVar3 = v.f15822a;
                }
            }
        }
        return c;
    }

    public static final EnergyType c() {
        CarItemModel config;
        LocalCarModel localCarModelB = b();
        Integer numValueOf = null;
        if (localCarModelB != null && (config = localCarModelB.getConfig()) != null) {
            numValueOf = Integer.valueOf(config.getEnergyType());
        }
        EnergyType energyType = EnergyType.parse(numValueOf == null ? EnergyType.oil.type : numValueOf.intValue());
        r.d(energyType, "parse(type)");
        return energyType;
    }

    public static final GearType d() {
        CarItemModel config;
        LocalCarModel localCarModelB = b();
        Integer numValueOf = null;
        if (localCarModelB != null && (config = localCarModelB.getConfig()) != null) {
            numValueOf = Integer.valueOf(config.getGearType());
        }
        GearType gearType = GearType.parse(numValueOf == null ? GearType.auto.type : numValueOf.intValue());
        r.d(gearType, "parse(type)");
        return gearType;
    }

    public static final LocalCarModel e() {
        String strG = i0.g("key.preSelectCar", "");
        if (!n0.g(strG)) {
            return null;
        }
        try {
            return (LocalCarModel) JSON.parseObject(strG, LocalCarModel.class);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static final String f() {
        String carDesc;
        LocalCarModel localCarModelB = b();
        return (localCarModelB == null || (carDesc = localCarModelB.getCarDesc()) == null) ? "" : carDesc;
    }

    public static final String g() {
        CarItemModel config;
        LocalCarModel localCarModelB = b();
        if (localCarModelB == null || (config = localCarModelB.getConfig()) == null) {
            return null;
        }
        return Integer.valueOf(config.getCode()).toString();
    }

    public static final void h(LocalCarModel localCarModel) {
        if (localCarModel != null) {
            String jSONString = JSON.toJSONString(localCarModel);
            f.o(r.m("保存预设置本地车辆和参数:", jSONString));
            i0.m("key.preSelectCar", jSONString);
        }
    }

    public static final void i(LocalCarModel model) {
        r.e(model, "model");
        String jSONString = JSON.toJSONString(model);
        f.o(r.m("保存本地车辆和参数:", jSONString));
        i0.m("key.selectCar", jSONString);
        CarItemModel config = model.getConfig();
        g.a("xyCarCode", String.valueOf(config == null ? null : Integer.valueOf(config.getCode())));
        synchronized (b) {
            c = model;
            v vVar = v.f15822a;
        }
        LiveBus.d(a.class).l(new a());
        a();
        CarItemModel config2 = model.getConfig();
        if ((config2 == null ? 0 : config2.getUniversalModelNum()) > 0) {
            LocalCarModel localCarModel = new LocalCarModel();
            localCarModel.setModelName(model.getModelName());
            localCarModel.setConfig(new CarItemModel());
            CarItemModel config3 = localCarModel.getConfig();
            if (config3 != null) {
                CarItemModel config4 = model.getConfig();
                r.c(config4);
                config3.setCode(config4.getUniversalModelNum());
            }
            CarItemModel config5 = localCarModel.getConfig();
            if (config5 != null) {
                CarItemModel config6 = model.getConfig();
                r.c(config6);
                config5.setUniversalModelNum(config6.getUniversalModelNum());
            }
            CarItemModel config7 = localCarModel.getConfig();
            if (config7 != null) {
                CarItemModel config8 = model.getConfig();
                r.c(config8);
                config7.setUniversalModelName(config8.getUniversalModelName());
            }
            RealCarSelectManager.c(localCarModel);
        }
    }
}
