package cn.mucang.android.jiakaoyi.hpmap.car;

import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public enum Wheel implements Serializable {
    LeftFront("左前轮", 1),
    LeftBack("左后轮", 2),
    RightFront("右前轮", 3),
    RightBack("右后轮", 4),
    None("没有轮子", 0);

    public final int wheel;
    public final String wheelName;

    Wheel(String str, int i) {
        this.wheelName = str;
        this.wheel = i;
    }

    public static Wheel parse(int i) {
        Wheel wheel = LeftBack;
        if (i == wheel.wheel) {
            return wheel;
        }
        Wheel wheel2 = LeftFront;
        if (i == wheel2.wheel) {
            return wheel2;
        }
        Wheel wheel3 = RightFront;
        if (i == wheel3.wheel) {
            return wheel3;
        }
        Wheel wheel4 = RightBack;
        return i == wheel4.wheel ? wheel4 : None;
    }

    public static Pos wheelPos(Wheel wheel, CarPos carPos) {
        if (wheel == LeftBack) {
            return carPos.wheelLeftBack;
        }
        if (wheel == LeftFront) {
            return carPos.wheelLeftFront;
        }
        if (wheel == RightFront) {
            return carPos.wheelRightFront;
        }
        if (wheel == RightBack) {
            return carPos.wheelLeftBack;
        }
        return null;
    }
}
