package cn.mucang.android.jiakaoyi.hpmap.a.a.i;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.moto.MotoZhuangKaoRenderModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public class m extends cn.mucang.android.jiakaoyi.hpmap.a.a.e implements cn.mucang.android.jiakaoyi.hpmap.a.a.b {
    public Line i;
    public Line j;
    public Line k;
    public Line l;
    public Line m;
    public Pos n;
    public Pos o;
    public Pos p;
    public Pos q;
    public Pos r;
    public Line s;
    public Line t;
    public cn.mucang.android.jiakaoyi.signal.pos.a u;
    public cn.mucang.android.jiakaoyi.signal.pos.c v;
    public cn.mucang.android.jiakaoyi.signal.pos.c w;
    public cn.mucang.android.jiakaoyi.signal.pos.c x;
    public cn.mucang.android.jiakaoyi.signal.pos.c y;
    public float z;

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.pos.a b() {
        return this.u;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.hpmap.c.a d() {
        MotoZhuangKaoRenderModel motoZhuangKaoRenderModel = new MotoZhuangKaoRenderModel();
        motoZhuangKaoRenderModel.key = this.f3655a;
        Line line = this.i;
        Pos pos = line.start;
        Pos pos2 = line.end;
        Line line2 = this.k;
        Pos pos3 = line2.start;
        Pos pos4 = line2.end;
        Line line3 = this.l;
        Pos pos5 = line3.start;
        Pos pos6 = line3.end;
        Line line4 = this.j;
        Pos pos7 = line4.start;
        Pos pos8 = line4.end;
        motoZhuangKaoRenderModel.b5 = this.n;
        motoZhuangKaoRenderModel.b6 = this.o;
        motoZhuangKaoRenderModel.b7 = this.p;
        motoZhuangKaoRenderModel.b8 = this.q;
        motoZhuangKaoRenderModel.b9 = this.r;
        Pos posS = cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos5, pos3, 7.5d);
        Pos posS2 = cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos3, pos5, 7.5d);
        Pos posS3 = cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos6, pos4, 7.5d);
        Pos posS4 = cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos4, pos6, 7.5d);
        motoZhuangKaoRenderModel.startLine = new Line(pos, pos2, 15.0d);
        motoZhuangKaoRenderModel.rightLine = new Line(posS, posS3, 15.0d);
        motoZhuangKaoRenderModel.leftLine = new Line(posS2, posS4, 15.0d);
        motoZhuangKaoRenderModel.line1213 = new Line(pos7, pos8, 15.0d);
        motoZhuangKaoRenderModel.poleRadius = this.z;
        Line line5 = this.s;
        if (line5 != null) {
            motoZhuangKaoRenderModel.report = new Line(new Pos(line5.start), new Pos(this.s.end), 15.0d);
        }
        motoZhuangKaoRenderModel.reportRect = this.f3656d;
        motoZhuangKaoRenderModel.mapName = this.b;
        return motoZhuangKaoRenderModel;
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
        sparseArray.put(3, this.k.start);
        sparseArray.put(4, this.k.end);
        sparseArray.put(5, this.l.start);
        sparseArray.put(6, this.l.end);
        sparseArray.put(7, this.j.start);
        sparseArray.put(8, this.j.end);
        return sparseArray;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line k() {
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line l() {
        return this.s;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean m(CarPos carPos) {
        if (carPos.bound.h(this.u)) {
            return false;
        }
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.i) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.m) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.j) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.k) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.l) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, this.v) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, this.w) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, this.x) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, this.y)) {
            return true;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = this.f3656d;
        if (cVar != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(cVar, carPos.carRect)) {
            return true;
        }
        Line line = this.s;
        return line != null && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, line);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line o() {
        if (this.t == null) {
            Line line = this.i;
            Line lineO = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line.start, line.end, 100.0d, true);
            Pos posMiddle = this.i.middle();
            if (posMiddle.vectorTo(lineO.middle()).dot(posMiddle.vectorTo(this.k.start)) > 0.0d) {
                this.t = lineO;
            } else {
                Line line2 = this.i;
                this.t = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line2.start, line2.end, 100.0d, false);
            }
        }
        return this.t;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Step s() {
        return Step.Moto_ZhuangKao;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean v(CarPos carPos) {
        return !m(carPos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean w(Pos pos) {
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos x() {
        return this.i.middle().meanWith(this.j.middle());
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos y() {
        return this.j.start;
    }
}
