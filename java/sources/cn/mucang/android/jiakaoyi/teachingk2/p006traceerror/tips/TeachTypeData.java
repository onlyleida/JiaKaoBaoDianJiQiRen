package cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class TeachTypeData implements Serializable {
    public static final byte Failure = 2;
    public static final byte None = 0;
    public static final byte Success = 1;
    private static int tid = 1;
    public int data1;
    public int data2;
    public String desc;
    public int id;
    public final transient NormalVariable normal;
    public final transient TeachModel teach;
    public TeachTipType type;
    public transient Pos pos = null;
    public byte triggerState = 0;

    public TeachTypeData(TeachTipType teachTipType, int i, TeachModel teachModel, NormalVariable normalVariable) {
        this.type = teachTipType;
        this.data1 = i;
        this.teach = teachModel;
        this.normal = normalVariable;
        int i2 = tid;
        tid = i2 + 1;
        this.id = i2;
    }

    public boolean isSame(TeachTypeData teachTypeData) {
        return teachTypeData.type == this.type && teachTypeData.data1 == this.data1 && teachTypeData.data2 == this.data2;
    }

    public String toString() {
        return "{type=" + this.type + ", data1=" + this.data1 + ", data2=" + this.data2 + ", desc='" + this.desc + "', triggerState=" + ((int) this.triggerState) + ", id=" + this.id + '}';
    }
}
