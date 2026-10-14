package cn.mucang.android.jiakaoyi.teachingk2.elements.variable;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.h0.a;

/* JADX INFO: loaded from: classes4.dex */
public class CarCrossRectVariable extends Variable implements a {
    public Pos point1;
    public int point1Index;
    public Pos point2;
    public int point2Index;
    public Pos point3;
    public int point3Index;
    public Pos point4;
    public int point4Index;
    public transient c rect;

    public CarCrossRectVariable() {
        this.type = 58;
        this.enable = true;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.h0.a
    public void convertCoordinate(SparseArray<Pos> sparseArray) {
        this.point1 = sparseArray.get(this.point1Index);
        this.point2 = sparseArray.get(this.point2Index);
        this.point3 = sparseArray.get(this.point3Index);
        Pos pos = sparseArray.get(this.point4Index);
        this.point4 = pos;
        this.rect = new c(this.point1, this.point2, this.point3, pos);
    }
}
