package cn.mucang.android.jiakaoyi.hpmap.model;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Line implements Serializable {
    public Pos end;
    public double lineWidth;
    double maxX;
    double maxY;
    double minX;
    double minY;
    public Pos start;

    public Line() {
        this.minX = Double.MAX_VALUE;
        this.minY = Double.MAX_VALUE;
        this.maxX = -1.7976931348623157E308d;
        this.maxY = -1.7976931348623157E308d;
    }

    private void calMaxMin(Pos pos) {
        double d2 = this.minX;
        double d3 = pos.x;
        if (d2 > d3) {
            this.minX = d3;
        }
        double d4 = this.minY;
        double d5 = pos.y;
        if (d4 > d5) {
            this.minY = d5;
        }
        if (this.maxX < d3) {
            this.maxX = d3;
        }
        if (this.maxY < d5) {
            this.maxY = d5;
        }
    }

    public void calBounds() {
        calMaxMin(this.start);
        calMaxMin(this.end);
    }

    public boolean isCross(List<Pos> list, boolean z) {
        return cn.mucang.android.jiakaoyi.hpmap.d.a.A(this.start, this.end, list, z);
    }

    public double length() {
        return this.start.distanceTo(this.end);
    }

    public Pos middle() {
        return new Pos(this.start).meanWith(this.end);
    }

    public String toString() {
        return "Line{start=" + this.start.toString() + ", end=" + this.end.toString() + '}';
    }

    public Pos vector() {
        return this.start.vectorTo(this.end);
    }

    public Line(Line line) {
        this(new Pos(line.start), new Pos(line.end), line.lineWidth);
    }

    public Line(Pos pos, Pos pos2) {
        this(pos, pos2, 0.0d);
    }

    public Line(Pos pos, Pos pos2, double d2) {
        this.minX = Double.MAX_VALUE;
        this.minY = Double.MAX_VALUE;
        this.maxX = -1.7976931348623157E308d;
        this.maxY = -1.7976931348623157E308d;
        this.start = pos;
        this.end = pos2;
        this.lineWidth = d2;
        calBounds();
    }
}
