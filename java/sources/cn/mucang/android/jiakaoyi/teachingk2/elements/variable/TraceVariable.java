package cn.mucang.android.jiakaoyi.teachingk2.elements.variable;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.SerializableRect;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class TraceVariable extends Variable {
    public boolean enableStopCheck;
    public List<Pos> left;
    public int range;
    public List<Pos> right;
    public SerializableRect stopRange;
    public int time;
    public List<TraceItemModel> traces;

    public TraceVariable() {
        this.traces = null;
        this.left = null;
        this.right = null;
        this.range = 25;
        this.time = 5000;
        this.type = 100;
        this.enable = true;
    }

    public boolean needCreateStopTeachModel() {
        SerializableRect serializableRect;
        return this.enableStopCheck && (serializableRect = this.stopRange) != null && serializableRect.isValid();
    }

    public TraceVariable(int i, int i2) {
        this();
        if ((i == Step.K2_DaoCheRuKu.type && i2 == 1) || ((i == Step.K2_CeFangTingChe.type && i2 == 1) || i == Step.K2_ShangPoQiBu.type)) {
            this.range = 25;
        } else {
            this.range = 2000;
        }
    }
}
