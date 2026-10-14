package cn.mucang.android.jiakaoyi.teachingk2.elements.variable;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.h0.a;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.Relation;

/* JADX INFO: loaded from: classes4.dex */
public class CarHeaderDistanceToLineVariable extends Variable implements a {
    public float accuracy;
    public float distance;
    public float distanceMax;
    public Pos endPoint;
    public int endPointIndex;
    public Relation mode = Relation.BigThan;
    public Pos startPoint;
    public int startPointIndex;

    public CarHeaderDistanceToLineVariable() {
        this.type = 50;
        this.accuracy = 10.0f;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.h0.a
    public void convertCoordinate(SparseArray<Pos> sparseArray) {
        this.startPoint = sparseArray.get(this.startPointIndex);
        this.endPoint = sparseArray.get(this.endPointIndex);
    }
}
