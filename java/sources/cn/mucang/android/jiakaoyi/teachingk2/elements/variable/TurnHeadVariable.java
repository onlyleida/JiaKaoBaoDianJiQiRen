package cn.mucang.android.jiakaoyi.teachingk2.elements.variable;

import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;

/* JADX INFO: loaded from: classes4.dex */
public class TurnHeadVariable extends Variable {
    public static final int LeftTurn = 1;
    public static final int NoTurn = 0;
    public static final int RightTurn = 2;
    public int headType;

    public TurnHeadVariable() {
        this.type = 7;
    }

    public TurnHeadVariable(int i) {
        this.type = 7;
        this.enable = true;
        this.headType = i;
    }
}
