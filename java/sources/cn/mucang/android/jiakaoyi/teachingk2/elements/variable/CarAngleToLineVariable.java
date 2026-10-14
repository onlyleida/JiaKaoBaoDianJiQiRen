package cn.mucang.android.jiakaoyi.teachingk2.elements.variable;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.h0.a;

/* JADX INFO: loaded from: classes4.dex */
public class CarAngleToLineVariable extends Variable implements a {
    public float accuracy;
    public float degree;
    public Pos endPoint;
    public int endPointIndex;
    public float lineDegree = -10000.0f;
    public Pos startPoint;
    public int startPointIndex;

    public CarAngleToLineVariable() {
        this.type = 52;
        this.enable = true;
        this.accuracy = 5.0f;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.h0.a
    public void convertCoordinate(SparseArray<Pos> sparseArray) {
        this.startPoint = sparseArray.get(this.startPointIndex);
        this.endPoint = sparseArray.get(this.endPointIndex);
    }
}
