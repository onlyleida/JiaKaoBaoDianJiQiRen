package cn.mucang.android.jiakaoyi.signal.car;

import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0012\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010/\u001a\u0004\u0018\u00010\rR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0006\"\u0004\b\u001c\u0010\bR\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010#\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0017\"\u0004\b%\u0010\u0019R\u001a\u0010&\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010 \"\u0004\b(\u0010\"R\u001c\u0010)\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u000f\"\u0004\b+\u0010\u0011R\u001a\u0010,\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010\u0006\"\u0004\b.\u0010\b¨\u00060"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;", "Ljava/io/Serializable;", "()V", "code", "", "getCode", "()I", "setCode", "(I)V", "energyType", "getEnergyType", "setEnergyType", "gearConfig", "", "getGearConfig", "()Ljava/lang/String;", "setGearConfig", "(Ljava/lang/String;)V", "gearType", "getGearType", "setGearType", "isSelect", "", "()Z", "setSelect", "(Z)V", "modelType", "getModelType", "setModelType", "rpmScale", "", "getRpmScale", "()F", "setRpmScale", "(F)V", "signalDelay", "getSignalDelay", "setSignalDelay", "speedScale", "getSpeedScale", "setSpeedScale", "universalModelName", "getUniversalModelName", "setUniversalModelName", "universalModelNum", "getUniversalModelNum", "setUniversalModelNum", "getDesc", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarItemModel implements Serializable {
    private int code;
    private String gearConfig;
    private int gearType;
    private boolean isSelect;
    private int modelType;
    private String universalModelName;
    private int universalModelNum;
    private float speedScale = 1.0f;
    private float rpmScale = 1.0f;
    private int energyType = 1;
    private boolean signalDelay = true;

    public final int getCode() {
        return this.code;
    }

    /* JADX INFO: renamed from: getDesc, reason: from getter */
    public final String getGearConfig() {
        return this.gearConfig;
    }

    public final int getEnergyType() {
        return this.energyType;
    }

    public final String getGearConfig() {
        return this.gearConfig;
    }

    public final int getGearType() {
        return this.gearType;
    }

    public final int getModelType() {
        return this.modelType;
    }

    public final float getRpmScale() {
        return this.rpmScale;
    }

    public final boolean getSignalDelay() {
        return this.signalDelay;
    }

    public final float getSpeedScale() {
        return this.speedScale;
    }

    public final String getUniversalModelName() {
        return this.universalModelName;
    }

    public final int getUniversalModelNum() {
        return this.universalModelNum;
    }

    /* JADX INFO: renamed from: isSelect, reason: from getter */
    public final boolean getIsSelect() {
        return this.isSelect;
    }

    public final void setCode(int i) {
        this.code = i;
    }

    public final void setEnergyType(int i) {
        this.energyType = i;
    }

    public final void setGearConfig(String str) {
        this.gearConfig = str;
    }

    public final void setGearType(int i) {
        this.gearType = i;
    }

    public final void setModelType(int i) {
        this.modelType = i;
    }

    public final void setRpmScale(float f2) {
        this.rpmScale = f2;
    }

    public final void setSelect(boolean z) {
        this.isSelect = z;
    }

    public final void setSignalDelay(boolean z) {
        this.signalDelay = z;
    }

    public final void setSpeedScale(float f2) {
        this.speedScale = f2;
    }

    public final void setUniversalModelName(String str) {
        this.universalModelName = str;
    }

    public final void setUniversalModelNum(int i) {
        this.universalModelNum = i;
    }
}
