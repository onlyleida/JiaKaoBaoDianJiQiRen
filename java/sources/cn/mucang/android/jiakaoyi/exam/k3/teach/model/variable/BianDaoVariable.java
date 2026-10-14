package cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable;

import cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachTypes;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.Variable;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class BianDaoVariable extends Variable implements Serializable {
    public static final int left = 0;
    public static final int leftOrRight = 2;
    public static final int right = 1;
    public int turn;

    public BianDaoVariable() {
        this.type = K3TeachTypes.BianDao.type;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.model.Variable
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && super.equals(obj) && this.turn == ((BianDaoVariable) obj).turn;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.model.Variable
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), Integer.valueOf(this.turn));
    }

    public BianDaoVariable(int i) {
        this.turn = i;
        this.type = K3TeachTypes.BianDao.type;
    }
}
