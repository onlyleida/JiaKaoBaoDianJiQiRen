package cn.mucang.android.jiakaoyi.teachingk2.elements.variable;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.h0.a;

/* JADX INFO: loaded from: classes4.dex */
public class CarFaceToLineVariable extends Variable implements a {
    public Pos endPoint;
    public int endPointIndex;
    public Pos startPoint;
    public int startPointIndex;

    public CarFaceToLineVariable() {
        this.type = 60;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.h0.a
    public void convertCoordinate(SparseArray<Pos> sparseArray) {
        this.startPoint = sparseArray.get(this.startPointIndex);
        this.endPoint = sparseArray.get(this.endPointIndex);
    }
}
