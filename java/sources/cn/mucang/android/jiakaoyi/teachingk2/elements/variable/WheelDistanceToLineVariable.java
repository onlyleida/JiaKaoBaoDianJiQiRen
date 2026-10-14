package cn.mucang.android.jiakaoyi.teachingk2.elements.variable;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.h0.a;
import cn.mucang.android.jiakaoyi.teachingk2.elements.h0.b;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.Relation;

/* JADX INFO: loaded from: classes4.dex */
public class WheelDistanceToLineVariable extends Variable implements a, b {
    public float accuracy;
    public float distance;
    public float distanceMax;
    public Pos endPoint;
    public int endPointIndex;
    public Relation mode = Relation.Equal;
    public Pos startPoint;
    public int startPointIndex;
    public Wheel wheel;
    public int wheelIndex;

    public WheelDistanceToLineVariable() {
        this.type = 24;
        this.enable = true;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.h0.a
    public void convertCoordinate(SparseArray<Pos> sparseArray) {
        this.startPoint = sparseArray.get(this.startPointIndex);
        this.endPoint = sparseArray.get(this.endPointIndex);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.h0.b
    public void wheelConvert() {
        this.wheel = Wheel.parse(this.wheelIndex);
    }
}
