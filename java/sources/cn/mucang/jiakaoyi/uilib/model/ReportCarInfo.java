package cn.mucang.jiakaoyi.uilib.model;

import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import com.iflytek.cloud.SpeechConstant;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0005\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0017\"\u0004\b\u001b\u0010\u0019R\u001a\u0010\u001c\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0017\"\u0004\b\u001d\u0010\u0019R\u001a\u0010\u001e\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0017\"\u0004\b\u001f\u0010\u0019R\u001a\u0010 \u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0017\"\u0004\b!\u0010\u0019R\u001a\u0010\"\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0017\"\u0004\b#\u0010\u0019R\u001a\u0010$\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0006\"\u0004\b&\u0010\bR\u001c\u0010'\u001a\u0004\u0018\u00010(X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u001a\u0010-\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0006\"\u0004\b/\u0010\bR\u001a\u00100\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0006\"\u0004\b2\u0010\bR\u001a\u00103\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u0006\"\u0004\b5\u0010\b¨\u00066"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/model/ReportCarInfo;", "Ljava/io/Serializable;", "()V", "brakeInt", "", "getBrakeInt", "()I", "setBrakeInt", "(I)V", "gear", "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;", "getGear", "()Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;", "setGear", "(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V", "gpsType", "", "getGpsType", "()B", "setGpsType", "(B)V", "isBrake", "", "()Z", "setBrake", "(Z)V", "isDoorClose", "setDoorClose", "isFlameOut", "setFlameOut", "isFootBrakeOn", "setFootBrakeOn", "isHandbrakeOpen", "setHandbrakeOpen", "isSeatBeltOn", "setSeatBeltOn", "lightState", "getLightState", "setLightState", "pos", "Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;", "getPos", "()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;", "setPos", "(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V", "rpm", "getRpm", "setRpm", SpeechConstant.SPEED, "getSpeed", "setSpeed", "wheelDegree", "getWheelDegree", "setWheelDegree", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ReportCarInfo implements Serializable {
    private int brakeInt;
    private Gear gear;
    private byte gpsType;
    private boolean isBrake;
    private boolean isDoorClose;
    private boolean isFlameOut;
    private boolean isFootBrakeOn;
    private boolean isHandbrakeOpen;
    private boolean isSeatBeltOn;
    private int lightState;
    private CarPos pos;
    private int rpm;
    private int speed;
    private int wheelDegree;

    public final int getBrakeInt() {
        return this.brakeInt;
    }

    public final Gear getGear() {
        return this.gear;
    }

    public final byte getGpsType() {
        return this.gpsType;
    }

    public final int getLightState() {
        return this.lightState;
    }

    public final CarPos getPos() {
        return this.pos;
    }

    public final int getRpm() {
        return this.rpm;
    }

    public final int getSpeed() {
        return this.speed;
    }

    public final int getWheelDegree() {
        return this.wheelDegree;
    }

    /* JADX INFO: renamed from: isBrake, reason: from getter */
    public final boolean getIsBrake() {
        return this.isBrake;
    }

    /* JADX INFO: renamed from: isDoorClose, reason: from getter */
    public final boolean getIsDoorClose() {
        return this.isDoorClose;
    }

    /* JADX INFO: renamed from: isFlameOut, reason: from getter */
    public final boolean getIsFlameOut() {
        return this.isFlameOut;
    }

    /* JADX INFO: renamed from: isFootBrakeOn, reason: from getter */
    public final boolean getIsFootBrakeOn() {
        return this.isFootBrakeOn;
    }

    /* JADX INFO: renamed from: isHandbrakeOpen, reason: from getter */
    public final boolean getIsHandbrakeOpen() {
        return this.isHandbrakeOpen;
    }

    /* JADX INFO: renamed from: isSeatBeltOn, reason: from getter */
    public final boolean getIsSeatBeltOn() {
        return this.isSeatBeltOn;
    }

    public final void setBrake(boolean z) {
        this.isBrake = z;
    }

    public final void setBrakeInt(int i) {
        this.brakeInt = i;
    }

    public final void setDoorClose(boolean z) {
        this.isDoorClose = z;
    }

    public final void setFlameOut(boolean z) {
        this.isFlameOut = z;
    }

    public final void setFootBrakeOn(boolean z) {
        this.isFootBrakeOn = z;
    }

    public final void setGear(Gear gear) {
        this.gear = gear;
    }

    public final void setGpsType(byte b) {
        this.gpsType = b;
    }

    public final void setHandbrakeOpen(boolean z) {
        this.isHandbrakeOpen = z;
    }

    public final void setLightState(int i) {
        this.lightState = i;
    }

    public final void setPos(CarPos carPos) {
        this.pos = carPos;
    }

    public final void setRpm(int i) {
        this.rpm = i;
    }

    public final void setSeatBeltOn(boolean z) {
        this.isSeatBeltOn = z;
    }

    public final void setSpeed(int i) {
        this.speed = i;
    }

    public final void setWheelDegree(int i) {
        this.wheelDegree = i;
    }
}
