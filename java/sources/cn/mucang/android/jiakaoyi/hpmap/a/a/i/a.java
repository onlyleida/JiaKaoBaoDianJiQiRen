package cn.mucang.android.jiakaoyi.hpmap.a.a.i;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.moto.MotoBanMaXianRenderModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public class a extends cn.mucang.android.jiakaoyi.hpmap.a.a.e implements cn.mucang.android.jiakaoyi.hpmap.a.a.b {
    public Line i;
    public Line j;
    public Line k;
    public Line l;
    public cn.mucang.android.jiakaoyi.signal.pos.c m;
    public cn.mucang.android.jiakaoyi.signal.pos.c n;
    public cn.mucang.android.jiakaoyi.signal.pos.c o;
    public cn.mucang.android.jiakaoyi.signal.pos.a p;

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.pos.a b() {
        return this.p;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.hpmap.c.a d() {
        MotoBanMaXianRenderModel motoBanMaXianRenderModel = new MotoBanMaXianRenderModel();
        motoBanMaXianRenderModel.key = this.f3655a;
        motoBanMaXianRenderModel.startLine = new Line(new Pos(this.i.start), new Pos(this.i.end), 15.0d);
        motoBanMaXianRenderModel.endLine = new Line(new Pos(this.j.start), new Pos(this.j.end), 15.0d);
        motoBanMaXianRenderModel.judgeArea = this.n;
        motoBanMaXianRenderModel.banmaxianArea = this.o;
        Line line = this.k;
        if (line != null) {
            motoBanMaXianRenderModel.report = new Line(new Pos(line.start), new Pos(this.k.end), 15.0d);
        }
        motoBanMaXianRenderModel.mapName = this.b;
        return motoBanMaXianRenderModel;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line f() {
        return this.i;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public SparseArray<Pos> j() {
        SparseArray<Pos> sparseArray = new SparseArray<>();
        sparseArray.put(1, this.i.start);
        sparseArray.put(2, this.i.end);
        sparseArray.put(3, this.j.start);
        sparseArray.put(4, this.j.end);
        return sparseArray;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line k() {
        return this.j;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line l() {
        return this.k;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean m(CarPos carPos) {
        if (carPos.bound.h(this.p)) {
            return false;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = this.n;
        if (cVar != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(cVar, carPos.carRect)) {
            return true;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar2 = this.o;
        if (cVar2 != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(cVar2, carPos.carRect)) {
            return true;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar3 = this.f3656d;
        if (cVar3 == null || !cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(cVar3, carPos.carRect)) {
            return cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(carPos.carRect, this.m);
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line o() {
        if (this.l == null) {
            Line line = this.i;
            Line lineO = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line.start, line.end, 100.0d, true);
            Pos posMiddle = this.i.middle();
            if (posMiddle.vectorTo(lineO.middle()).dot(posMiddle.vectorTo(this.j.start)) > 0.0d) {
                this.l = lineO;
            } else {
                Line line2 = this.i;
                this.l = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line2.start, line2.end, 100.0d, false);
            }
        }
        return this.l;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Step s() {
        return Step.Moto_BanMaXian;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean v(CarPos carPos) {
        return !m(carPos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean w(Pos pos) {
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.m, pos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos y() {
        return this.j.end;
    }
}
