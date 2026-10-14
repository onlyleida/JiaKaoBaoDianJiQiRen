package cn.mucang.android.jiakaoyi.exam.k3.teach;

import cn.mucang.android.jiakaoyi.exam.k3.teach.model.Variable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.AngleVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.AroundCarVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.BianDaoVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.ClutchStepVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.DiaoTouVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.DistanceVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.DoorVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.EngineVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.FingerPrintVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.FootBrakeVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.GearVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.HandBrakeVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.HuiZhenVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.KeepLightVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.LabaVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.LightVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.OffsetVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.QiBuVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.SeatBeltVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.SpeedDownVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.SpeedUpVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.StopVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.ThreeTouchVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.TimeVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.ZhuanWanVariable;

/* JADX INFO: loaded from: classes2.dex */
public enum K3TeachTypes {
    Angle("角度", 1, AngleVariable.class),
    Light("灯光", 2, LightVariable.class),
    Gear("挡位", 3, GearVariable.class),
    Laba("喇叭", 4, LabaVariable.class),
    BianDao("变道", 5, BianDaoVariable.class),
    Distance("距离", 6, DistanceVariable.class),
    FootBrake("脚刹", 7, FootBrakeVariable.class),
    Engine("引擎", 8, EngineVariable.class),
    Door("车门", 9, DoorVariable.class),
    FingerPrint("指纹", 10, FingerPrintVariable.class),
    AroundCar("绕车一周", 11, AroundCarVariable.class),
    ThreeTouch("三摸", 12, ThreeTouchVariable.class),
    DiaoTou("掉头", 13, DiaoTouVariable.class),
    HandBrake("手刹", 14, HandBrakeVariable.class),
    SeatBelt("安全带", 15, SeatBeltVariable.class),
    SpeedUp("速度大于", 16, SpeedUpVariable.class),
    SpeedDown("速度小于", 17, SpeedDownVariable.class),
    StopCar("停车", 18, StopVariable.class),
    HuiZhen("回正方向", 19, HuiZhenVariable.class),
    ZhuanWan("转弯", 20, ZhuanWanVariable.class),
    Offset("偏移", 21, OffsetVariable.class),
    Time("时间", 22, TimeVariable.class),
    QiBu("起步", 23, QiBuVariable.class),
    Clutch("离合", 24, ClutchStepVariable.class),
    KeepLight("保持灯光", 25, KeepLightVariable.class);

    public Class<? extends Variable> clazz;
    public int type;
    public String typeName;

    K3TeachTypes(String str, int i, Class cls) {
        this.typeName = str;
        this.type = i;
        this.clazz = cls;
    }

    public static K3TeachTypes parse(int i) {
        for (K3TeachTypes k3TeachTypes : values()) {
            if (k3TeachTypes.type == i) {
                return k3TeachTypes;
            }
        }
        return null;
    }
}
