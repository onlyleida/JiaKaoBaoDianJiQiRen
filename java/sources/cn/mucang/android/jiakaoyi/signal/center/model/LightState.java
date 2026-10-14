package cn.mucang.android.jiakaoyi.signal.center.model;

/* JADX INFO: loaded from: classes3.dex */
public enum LightState {
    On,
    Off;

    public boolean isOff(LightState lightState) {
        return lightState == Off;
    }

    public boolean isOn(LightState lightState) {
        return lightState == On;
    }
}
