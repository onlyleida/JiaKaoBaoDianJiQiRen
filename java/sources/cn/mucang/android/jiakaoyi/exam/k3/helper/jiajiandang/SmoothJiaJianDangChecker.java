package cn.mucang.android.jiakaoyi.exam.k3.helper.jiajiandang;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3JiaJianDangStepConfig;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.c.g.b;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class SmoothJiaJianDangChecker {
    private final K3JiaJianDangStepConfig config;
    private float currentGearMaxDistance;
    private float currentGearMaxSpeed;
    private float currentGearMaxTime;
    private final List<Integer> distanceConfigs;
    private boolean isReachDistance;
    private boolean isReachSpeed;
    private boolean isReachTime;
    private Gear lastValidGear = Gear.Invalid;
    private final List<Integer> speedConfigs;
    private final List<Integer> timeConfigs;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.exam.k3.helper.jiajiandang.SmoothJiaJianDangChecker$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$cn$mucang$android$jiakaoyi$signal$center$model$Gear;

        static {
            int[] iArr = new int[Gear.values().length];
            $SwitchMap$cn$mucang$android$jiakaoyi$signal$center$model$Gear = iArr;
            try {
                iArr[Gear.Gear1.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$signal$center$model$Gear[Gear.Gear2.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$signal$center$model$Gear[Gear.Gear3.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$signal$center$model$Gear[Gear.Gear4.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$signal$center$model$Gear[Gear.Gear5.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SmoothJiaJianDangChecker(K3JiaJianDangStepConfig k3JiaJianDangStepConfig) {
        this.config = k3JiaJianDangStepConfig;
        this.speedConfigs = createValues((String) k3JiaJianDangStepConfig.p212140.value);
        this.timeConfigs = createValues((String) k3JiaJianDangStepConfig.p212141.value);
        this.distanceConfigs = createValues((String) k3JiaJianDangStepConfig.p212142.value);
    }

    private boolean checkGearCondition(e eVar) {
        boolean z;
        Gear gear = eVar.d().m;
        Gear gear2 = this.lastValidGear;
        if (gear2 == Gear.Invalid || gear2 == gear) {
            z = true;
        } else {
            int i = gear2.gear - 1;
            if (!this.isReachSpeed) {
                f.o("挡位发生变化 lastGear " + this.lastValidGear + " ; Gear " + gear + " ;  " + this.lastValidGear + " 最大速度为 " + this.currentGearMaxSpeed + " 没有达到 " + this.speedConfigs.get(i));
                StringBuilder sb = new StringBuilder();
                sb.append(this.lastValidGear);
                sb.append("速度没有达到");
                sb.append(this.currentGearMaxSpeed);
                t.h("smoothJiaJianDang", sb.toString());
            }
            if (!this.isReachTime) {
                f.o("挡位发生变化 lastGear " + this.lastValidGear + " ; Gear " + gear + " ;  " + this.lastValidGear + " 最大时间为(ms) " + this.currentGearMaxTime + " 没有达到(s) " + this.timeConfigs.get(i));
                StringBuilder sb2 = new StringBuilder();
                sb2.append("时间没有达到");
                sb2.append(this.currentGearMaxTime);
                t.h("smoothJiaJianDang", sb2.toString());
            }
            if (!this.isReachDistance) {
                f.o("挡位发生变化 lastGear " + this.lastValidGear + " ; Gear " + gear + " ;  " + this.lastValidGear + " 最大距离为 " + this.currentGearMaxDistance + " 没有达到 " + this.distanceConfigs.get(i));
                StringBuilder sb3 = new StringBuilder();
                sb3.append("距离没有达到");
                sb3.append(this.currentGearMaxDistance);
                t.h("smoothJiaJianDang", sb3.toString());
            }
            z = this.isReachDistance && this.isReachSpeed && this.isReachTime;
            this.isReachSpeed = false;
            this.isReachTime = false;
            this.isReachDistance = false;
            this.currentGearMaxSpeed = BitmapDescriptorFactory.HUE_RED;
            this.currentGearMaxTime = BitmapDescriptorFactory.HUE_RED;
            this.currentGearMaxDistance = BitmapDescriptorFactory.HUE_RED;
        }
        int i2 = gear.gear - 1;
        if (i2 < this.speedConfigs.size()) {
            float fIntValue = this.speedConfigs.get(i2).intValue();
            this.currentGearMaxSpeed = Math.max(this.currentGearMaxSpeed, fIntValue);
            if (!this.isReachSpeed && eVar.d().b > fIntValue) {
                this.isReachSpeed = true;
            }
        } else {
            this.isReachSpeed = true;
        }
        b.C0119b c0119bD = eVar.b().d(gear);
        if (i2 >= this.timeConfigs.size()) {
            this.isReachTime = true;
        } else if (c0119bD != null) {
            this.currentGearMaxTime = Math.max(c0119bD.c, this.currentGearMaxTime);
            if (c0119bD.c > this.timeConfigs.get(i2).intValue() * 1000) {
                this.isReachTime = true;
            }
        }
        if (i2 < this.distanceConfigs.size()) {
            float fIntValue2 = this.distanceConfigs.get(i2).intValue();
            if (c0119bD != null) {
                this.currentGearMaxDistance = Math.max(c0119bD.f5246d, this.currentGearMaxDistance);
                if (c0119bD.f5246d > fIntValue2) {
                    this.isReachDistance = true;
                }
            }
            if (c0119bD != null && c0119bD.f5246d > fIntValue2) {
                this.isReachDistance = true;
            }
        } else {
            this.isReachDistance = true;
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean checkSpeedSmoothGearChange(e eVar) {
        Gear gear = eVar.d().m;
        float f2 = eVar.d().b;
        if (this.lastValidGear == Gear.Invalid) {
            return true;
        }
        int i = AnonymousClass1.$SwitchMap$cn$mucang$android$jiakaoyi$signal$center$model$Gear[gear.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5 || this.lastValidGear != Gear.Gear4) {
                            return true;
                        }
                        if (f2 >= ((Integer) this.config.p212146.value).intValue() && f2 <= this.config.p212146.value2) {
                            return true;
                        }
                        f.o("Gear4 -> Gear5 " + f2);
                    } else if (this.lastValidGear == Gear.Gear5 && (f2 < ((Integer) this.config.p212147.value).intValue() || f2 > this.config.p212147.value2)) {
                        f.o("Gear5 -> Gear3 " + f2);
                    } else {
                        if (this.lastValidGear != Gear.Gear3) {
                            return true;
                        }
                        if (f2 >= ((Integer) this.config.p212145.value).intValue() && f2 <= this.config.p212145.value2) {
                            return true;
                        }
                        f.o("Gear3 -> Gear4 " + f2);
                    }
                } else if (this.lastValidGear == Gear.Gear4 && (f2 < ((Integer) this.config.p212148.value).intValue() || f2 > this.config.p212148.value2)) {
                    f.o("Gear4 -> Gear3 " + f2);
                } else {
                    if (this.lastValidGear != Gear.Gear2) {
                        return true;
                    }
                    if (f2 >= ((Integer) this.config.p212144.value).intValue() && f2 <= this.config.p212144.value2) {
                        return true;
                    }
                    f.o("Gear2 -> Gear3 " + f2);
                }
            } else if (this.lastValidGear == Gear.Gear3 && (f2 < ((Integer) this.config.p212149.value).intValue() || f2 > this.config.p212149.value2)) {
                f.o("Gear3 -> Gear2 " + f2);
            } else {
                if (this.lastValidGear != Gear.Gear1) {
                    return true;
                }
                if (f2 >= ((Integer) this.config.p212143.value).intValue() && f2 <= this.config.p212143.value2) {
                    return true;
                }
                f.o("Gear1 -> Gear2 " + f2);
            }
        } else {
            if (this.lastValidGear != Gear.Gear2) {
                return true;
            }
            if (f2 >= ((Integer) this.config.p212150.value).intValue() && f2 <= this.config.p212150.value2) {
                return true;
            }
            f.o("Gear2 -> Gear1 " + f2);
        }
        return false;
    }

    private List<Integer> createValues(String str) {
        ArrayList arrayList = new ArrayList();
        if (n0.g(str) && str.contains(",")) {
            for (String str2 : str.split(",")) {
                try {
                    arrayList.add(Integer.valueOf(Integer.parseInt(str2)));
                } catch (Exception e2) {
                    e2.printStackTrace();
                    StringBuilder sb = new StringBuilder();
                    sb.append("挡位速度/时间/里程配置错误");
                    sb.append(MucangConfig.v() ? ":" + e2.getLocalizedMessage() : "");
                    u.h(sb.toString());
                }
            }
        }
        return arrayList;
    }

    public boolean check(e eVar) {
        boolean zCheckSpeedSmoothGearChange;
        boolean zCheckGearCondition;
        Gear gear = eVar.d().m;
        int i = gear.gear;
        if (i < 1 || i > 5) {
            zCheckSpeedSmoothGearChange = true;
            zCheckGearCondition = true;
        } else {
            zCheckGearCondition = checkGearCondition(eVar);
            zCheckSpeedSmoothGearChange = checkSpeedSmoothGearChange(eVar);
            this.lastValidGear = gear;
        }
        return zCheckGearCondition && zCheckSpeedSmoothGearChange;
    }
}
