package cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable;

import cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachTypes;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.Variable;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class KeepLightVariable extends Variable implements Serializable {
    public int distance;
    public int[] ids;
    public boolean on;
    public int time;

    public KeepLightVariable() {
        this.time = 0;
        this.distance = 0;
        this.type = K3TeachTypes.KeepLight.type;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.model.Variable
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        KeepLightVariable keepLightVariable = (KeepLightVariable) obj;
        return this.time == keepLightVariable.time && this.distance == keepLightVariable.distance && this.on == keepLightVariable.on && Arrays.equals(this.ids, keepLightVariable.ids);
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.model.Variable
    public int hashCode() {
        return (Objects.hash(Integer.valueOf(super.hashCode()), Integer.valueOf(this.time), Integer.valueOf(this.distance), Boolean.valueOf(this.on)) * 31) + Arrays.hashCode(this.ids);
    }

    public KeepLightVariable(int[] iArr, boolean z, int i, int i2) {
        this.time = 0;
        this.distance = 0;
        this.type = K3TeachTypes.KeepLight.type;
        this.ids = iArr;
        this.time = i;
        this.distance = i2;
        this.on = z;
    }
}
