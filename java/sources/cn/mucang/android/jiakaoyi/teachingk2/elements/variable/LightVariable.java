package cn.mucang.android.jiakaoyi.teachingk2.elements.variable;

import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;

/* JADX INFO: loaded from: classes4.dex */
public class LightVariable extends Variable {
    public int light;

    public LightVariable() {
        this.type = 81;
        this.light = Light.TurnLeftLight.lightId;
    }

    public LightVariable(int i) {
        this.type = 81;
        this.enable = true;
        this.light = i;
    }
}
