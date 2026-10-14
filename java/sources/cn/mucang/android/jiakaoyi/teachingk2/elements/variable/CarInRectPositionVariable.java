package cn.mucang.android.jiakaoyi.teachingk2.elements.variable;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.h0.a;

/* JADX INFO: loaded from: classes4.dex */
public class CarInRectPositionVariable extends Variable implements a {
    public static final int Left = 1;
    public static final int Middle = 0;
    public static final int Right = 2;
    public Pos point1;
    public Pos point2;
    public Pos point3;
    public Pos point4;
    public int position;
    public transient c rect;

    public CarInRectPositionVariable() {
        this.type = 55;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.h0.a
    public void convertCoordinate(SparseArray<Pos> sparseArray) {
        this.point1 = sparseArray.get(3);
        this.point2 = sparseArray.get(4);
        this.point3 = sparseArray.get(5);
        Pos pos = sparseArray.get(6);
        this.point4 = pos;
        this.rect = new c(this.point1, this.point2, this.point3, pos);
    }
}
