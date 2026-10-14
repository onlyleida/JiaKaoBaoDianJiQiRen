package cn.mucang.android.jiakaoyi.teachingk2.p007unity.models;

import android.text.TextUtils;
import cn.mucang.android.jiakaoyi.unity.communicator.models.MessageModel;

/* JADX INFO: loaded from: classes4.dex */
public class CarStateModel extends MessageModel {
    public float accelerator;
    public float clutch;
    public String debugInfo;
    public boolean doorState;
    public float footbrake;
    public int gear;
    public boolean handbrake;
    public boolean horn;
    public boolean key;
    public int lightsState;
    public boolean power;
    public int rpm;
    public boolean seatBelt;
    public float speed;
    public float wheelAngle;
    public boolean wiper;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CarStateModel carStateModel = (CarStateModel) obj;
        return this.gear == carStateModel.gear && TextUtils.equals(this.debugInfo, carStateModel.debugInfo) && Math.abs(carStateModel.clutch - this.clutch) <= 0.02f && this.handbrake == carStateModel.handbrake && Math.abs(carStateModel.footbrake - this.footbrake) <= 0.02f && this.power == carStateModel.power && this.key == carStateModel.key && this.rpm == carStateModel.rpm && this.wiper == carStateModel.wiper && Math.abs(carStateModel.accelerator - this.accelerator) <= 0.02f && Math.abs(carStateModel.wheelAngle - this.wheelAngle) <= 0.02f && Math.abs(carStateModel.speed - this.speed) <= 0.02f && this.lightsState == carStateModel.lightsState && this.seatBelt == carStateModel.seatBelt && this.doorState == carStateModel.doorState && this.horn == carStateModel.horn && this.speed == carStateModel.speed && this.wheelAngle == carStateModel.wheelAngle;
    }
}
