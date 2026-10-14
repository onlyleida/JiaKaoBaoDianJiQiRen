package cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable;

import cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachTypes;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.Variable;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class TimeVariable extends Variable implements Serializable {
    public TimeVariable() {
        this.type = K3TeachTypes.Time.type;
    }

    public TimeVariable(double d2) {
        this.value = Double.valueOf(d2);
        this.type = K3TeachTypes.Time.type;
    }
}
