package cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable;

import cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachTypes;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.Variable;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class LightVariable extends Variable implements Serializable {
    public int id;
    public boolean on;

    public LightVariable() {
        this.type = K3TeachTypes.Light.type;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.model.Variable
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        LightVariable lightVariable = (LightVariable) obj;
        return this.id == lightVariable.id && this.on == lightVariable.on;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.model.Variable
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), Integer.valueOf(this.id), Boolean.valueOf(this.on));
    }

    public LightVariable(int i, boolean z) {
        this.type = K3TeachTypes.Light.type;
        this.id = i;
        this.on = z;
    }
}
