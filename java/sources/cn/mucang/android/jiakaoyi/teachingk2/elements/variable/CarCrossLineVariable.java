package cn.mucang.android.jiakaoyi.teachingk2.elements.variable;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.h0.a;

/* JADX INFO: loaded from: classes4.dex */
public class CarCrossLineVariable extends Variable implements a {
    public boolean crossWithExtension;
    public Pos endPoint;
    public int endPointIndex;
    public boolean needCross;
    public Pos startPoint;
    public int startPointIndex;

    public CarCrossLineVariable() {
        this.type = 53;
        this.needCross = true;
        this.enable = true;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.h0.a
    public void convertCoordinate(SparseArray<Pos> sparseArray) {
        this.startPoint = sparseArray.get(this.startPointIndex);
        Pos pos = sparseArray.get(this.endPointIndex);
        this.endPoint = pos;
        if (this.crossWithExtension) {
            Pos posS = cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos, this.startPoint, 1000000.0d);
            this.startPoint = posS;
            this.endPoint = cn.mucang.android.jiakaoyi.hpmap.d.a.s(posS, this.endPoint, 1000000.0d);
        }
    }
}
