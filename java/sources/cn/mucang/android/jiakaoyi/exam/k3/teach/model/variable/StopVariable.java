package cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable;

import cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachTypes;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.Variable;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class StopVariable extends Variable implements Serializable {
    public StopVariable() {
        this.type = K3TeachTypes.StopCar.type;
    }
}
