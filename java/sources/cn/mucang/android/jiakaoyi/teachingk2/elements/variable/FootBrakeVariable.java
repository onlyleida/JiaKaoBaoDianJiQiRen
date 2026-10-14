package cn.mucang.android.jiakaoyi.teachingk2.elements.variable;

import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;

/* JADX INFO: loaded from: classes4.dex */
public class FootBrakeVariable extends Variable {
    public boolean notBrake;

    public FootBrakeVariable() {
        this.notBrake = false;
        this.type = 6;
    }

    public FootBrakeVariable(boolean z) {
        this.notBrake = false;
        this.type = 6;
        this.enable = true;
        this.notBrake = z;
    }
}
