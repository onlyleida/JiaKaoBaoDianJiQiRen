package cn.mucang.android.jiakaoyi.signal.car;

import cn.mucang.android.jiakaoyi.signal.center.model.EnergyType;
import cn.mucang.android.jiakaoyi.signal.center.model.GearType;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\nJ\u0006\u0010\u0012\u001a\u00020\nR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;", "Ljava/io/Serializable;", "()V", "config", "Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;", "getConfig", "()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;", "setConfig", "(Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;)V", "modelName", "", "getModelName", "()Ljava/lang/String;", "setModelName", "(Ljava/lang/String;)V", "getCarCode", "", "getCarDesc", "getLogInfo", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LocalCarModel implements Serializable {
    private CarItemModel config;
    private String modelName;

    public final int getCarCode() {
        CarItemModel carItemModel = this.config;
        if (carItemModel == null) {
            return 0;
        }
        r.c(carItemModel);
        return carItemModel.getCode();
    }

    public final String getCarDesc() {
        CarItemModel carItemModel;
        CarItemModel carItemModel2 = this.config;
        Integer numValueOf = carItemModel2 == null ? null : Integer.valueOf(carItemModel2.getCode());
        CarItemModel carItemModel3 = this.config;
        String universalModelName = (!r.a(numValueOf, carItemModel3 == null ? null : Integer.valueOf(carItemModel3.getUniversalModelNum())) || (carItemModel = this.config) == null) ? null : carItemModel.getUniversalModelName();
        if (universalModelName != null) {
            return universalModelName;
        }
        StringBuilder sb = new StringBuilder();
        sb.append((Object) this.modelName);
        sb.append(' ');
        CarItemModel carItemModel4 = this.config;
        sb.append((Object) (carItemModel4 != null ? carItemModel4.getGearConfig() : null));
        sb.append(' ');
        CarItemModel carItemModel5 = this.config;
        sb.append((Object) GearType.parse(carItemModel5 == null ? 2 : carItemModel5.getGearType()).gearName);
        return sb.toString();
    }

    public final CarItemModel getConfig() {
        return this.config;
    }

    public final String getLogInfo() {
        if (this.config == null) {
            return r.m("name:", this.modelName);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("name:");
        sb.append((Object) this.modelName);
        sb.append(";code:");
        CarItemModel carItemModel = this.config;
        r.c(carItemModel);
        sb.append((Object) Integer.toHexString(carItemModel.getCode()));
        sb.append(";描述:");
        CarItemModel carItemModel2 = this.config;
        r.c(carItemModel2);
        sb.append((Object) carItemModel2.getGearConfig());
        sb.append(";挡位类型:");
        CarItemModel carItemModel3 = this.config;
        r.c(carItemModel3);
        GearType gearType = GearType.parse(carItemModel3.getGearType());
        sb.append((Object) (gearType == null ? null : gearType.gearName));
        sb.append(";速度比:");
        CarItemModel carItemModel4 = this.config;
        r.c(carItemModel4);
        sb.append(carItemModel4.getSpeedScale());
        sb.append(";转速比:");
        CarItemModel carItemModel5 = this.config;
        sb.append(carItemModel5 == null ? null : Float.valueOf(carItemModel5.getRpmScale()));
        sb.append(";是否信号延时:");
        CarItemModel carItemModel6 = this.config;
        sb.append(carItemModel6 != null ? Boolean.valueOf(carItemModel6.getSignalDelay()) : null);
        sb.append(";车类型:");
        CarItemModel carItemModel7 = this.config;
        r.c(carItemModel7);
        sb.append((Object) EnergyType.parse(carItemModel7.getEnergyType()).typeName);
        return sb.toString();
    }

    public final String getModelName() {
        return this.modelName;
    }

    public final void setConfig(CarItemModel carItemModel) {
        this.config = carItemModel;
    }

    public final void setModelName(String str) {
        this.modelName = str;
    }
}
