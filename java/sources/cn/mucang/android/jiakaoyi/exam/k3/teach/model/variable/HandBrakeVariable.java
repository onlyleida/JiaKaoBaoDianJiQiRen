package cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable;

import cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachTypes;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.Variable;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class HandBrakeVariable extends Variable implements Serializable {
    public static final int Close = 1;
    public static final int Open = 0;
    public int on;

    public HandBrakeVariable() {
        this.type = K3TeachTypes.HandBrake.type;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.model.Variable
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && super.equals(obj) && this.on == ((HandBrakeVariable) obj).on;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.model.Variable
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), Integer.valueOf(this.on));
    }

    public HandBrakeVariable(int i) {
        this.on = i;
        this.type = K3TeachTypes.HandBrake.type;
    }
}
