package cn.mucang.android.jiakaoyi.teachingk2.elements.variable;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.SerializableRect;

/* JADX INFO: loaded from: classes4.dex */
public class StopPositionVariable extends Variable {
    public Pos center;
    public Pos last;
    public SerializableRect stopRange;

    public StopPositionVariable() {
        this.type = 65;
        this.enable = true;
    }
}
