package cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable;

import cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachTypes;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.Variable;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class ThreeTouchVariable extends Variable implements Serializable {
    public int id;

    public ThreeTouchVariable() {
        this.type = K3TeachTypes.ThreeTouch.type;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.model.Variable
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && super.equals(obj) && this.id == ((ThreeTouchVariable) obj).id;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.model.Variable
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), Integer.valueOf(this.id));
    }

    public ThreeTouchVariable(int i) {
        this.id = i;
        this.type = K3TeachTypes.ThreeTouch.type;
    }
}
