package cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable;

import cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachTypes;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.Variable;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class FootBrakeVariable extends Variable implements Serializable {
    public static final int Close = 1;
    public static final int Open = 0;
    public int on;

    public FootBrakeVariable() {
        this.type = K3TeachTypes.FootBrake.type;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.model.Variable
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && super.equals(obj) && this.on == ((FootBrakeVariable) obj).on;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.model.Variable
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), Integer.valueOf(this.on));
    }

    public FootBrakeVariable(int i) {
        this.on = i;
        this.type = K3TeachTypes.FootBrake.type;
    }
}
