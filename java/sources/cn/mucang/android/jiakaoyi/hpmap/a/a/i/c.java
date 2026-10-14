package cn.mucang.android.jiakaoyi.hpmap.a.a.i;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.moto.MotoChangDiRenderModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class c extends cn.mucang.android.jiakaoyi.hpmap.a.a.e implements cn.mucang.android.jiakaoyi.hpmap.a.a.b {
    public final List<List<Pos>> i = new ArrayList();
    public final List<List<Pos>> j = new ArrayList();
    public cn.mucang.android.jiakaoyi.signal.pos.a k;

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.pos.a b() {
        return this.k;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.hpmap.c.a d() {
        MotoChangDiRenderModel motoChangDiRenderModel = new MotoChangDiRenderModel();
        motoChangDiRenderModel.key = this.f3655a;
        motoChangDiRenderModel.solidLines = new ArrayList();
        motoChangDiRenderModel.dashLines = new ArrayList();
        if (!cn.mucang.android.core.utils.g.b(this.i)) {
            for (List<Pos> list : this.i) {
                ArrayList arrayList = new ArrayList();
                int i = 0;
                while (i < list.size() - 1) {
                    int i2 = i + 1;
                    Line line = new Line(list.get(i), list.get(i2));
                    line.lineWidth = 15.0d;
                    if (i == 0) {
                        arrayList.add(line.start);
                    }
                    arrayList.add(line.end);
                    i = i2;
                }
                motoChangDiRenderModel.solidLines.add(arrayList);
            }
        }
        if (!cn.mucang.android.core.utils.g.b(this.j)) {
            for (List<Pos> list2 : this.j) {
                ArrayList arrayList2 = new ArrayList();
                int i3 = 0;
                while (i3 < list2.size() - 1) {
                    int i4 = i3 + 1;
                    Line line2 = new Line(list2.get(i3), list2.get(i4));
                    line2.lineWidth = 15.0d;
                    if (i3 == 0) {
                        arrayList2.add(line2.start);
                    }
                    arrayList2.add(line2.end);
                    i3 = i4;
                }
                motoChangDiRenderModel.dashLines.add(arrayList2);
            }
        }
        motoChangDiRenderModel.mapName = this.b;
        return motoChangDiRenderModel;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line f() {
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public SparseArray<Pos> j() {
        return new SparseArray<>();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line k() {
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line l() {
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean m(CarPos carPos) {
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line o() {
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Step s() {
        return Step.Moto_ChangDi;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean v(CarPos carPos) {
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean w(Pos pos) {
        return true;
    }
}
