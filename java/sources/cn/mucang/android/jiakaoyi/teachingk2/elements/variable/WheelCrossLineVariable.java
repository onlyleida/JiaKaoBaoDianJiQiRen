package cn.mucang.android.jiakaoyi.teachingk2.elements.variable;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.h0.a;
import cn.mucang.android.jiakaoyi.teachingk2.elements.h0.b;
import cn.mucang.android.jiakaoyi.teachingk2.elements.i0.c;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class WheelCrossLineVariable extends Variable implements a, b {
    public Pos endPoint;
    public int endPointIndex;
    public Pos startPoint;
    public int startPointIndex;
    public List<Integer> wheelIndex;
    public List<Wheel> wheels;

    public WheelCrossLineVariable() {
        this.type = 25;
        this.enable = true;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.h0.a
    public void convertCoordinate(SparseArray<Pos> sparseArray) {
        this.startPoint = sparseArray.get(this.startPointIndex);
        this.endPoint = sparseArray.get(this.endPointIndex);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.h0.b
    public void wheelConvert() {
        if (this.wheels == null) {
            this.wheels = c.a(this.wheelIndex);
        }
    }
}
