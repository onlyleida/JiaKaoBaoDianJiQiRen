package cn.mucang.android.jiakaoyi.teachingk2.elements.variable;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.h0.a;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.Relation;

/* JADX INFO: loaded from: classes4.dex */
public class CarDistanceToLineVariable extends Variable implements a {
    public float accuracy;
    public float distance;
    public float distanceMax;
    public Pos endPoint;
    public int endPointIndex;
    public Relation mode;
    public Pos startPoint;
    public int startPointIndex;

    public CarDistanceToLineVariable() {
        this.mode = Relation.BigThan;
        this.type = 62;
        this.enable = true;
        this.accuracy = 10.0f;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.h0.a
    public void convertCoordinate(SparseArray<Pos> sparseArray) {
        this.startPoint = sparseArray.get(this.startPointIndex);
        this.endPoint = sparseArray.get(this.endPointIndex);
    }

    public CarDistanceToLineVariable(int i, int i2, float f2, Relation relation) {
        this.mode = Relation.BigThan;
        this.startPointIndex = i;
        this.endPointIndex = i2;
        this.distance = f2;
        this.mode = relation;
        this.type = 62;
        this.enable = true;
        this.accuracy = 10.0f;
    }
}
