package cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable;

import cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachTypes;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.Variable;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class AngleVariable extends Variable implements Serializable {
    public static final int Left = 1;
    public static final int LeftOrRight = 3;
    public static final int Right = 2;
    public int turn;

    public AngleVariable() {
        this.type = K3TeachTypes.Angle.type;
    }

    public AngleVariable(int i) {
        this.type = K3TeachTypes.Angle.type;
        this.turn = i;
    }
}
