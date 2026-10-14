package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.signal.handle.gear.LineAB;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class LineFinder {
    private static final int N = 10;
    public Pos end;
    public Pos start;
    public float startAngle;
    private List<Pos> posList = new ArrayList(200);
    private Pos startPos = null;

    LineFinder() {
    }

    public static LineAB fitLine(List<Pos> list, int i, int i2) {
        double d2 = 0.0d;
        double d3 = 0.0d;
        double d4 = 0.0d;
        double d5 = 0.0d;
        for (int i3 = i; i3 <= i2; i3++) {
            d2 += list.get(i3).x;
            d4 += list.get(i3).y;
            d5 += list.get(i3).x * list.get(i3).y;
            d3 += list.get(i3).x * list.get(i3).x;
        }
        double d6 = (i2 - i) + 1;
        double d7 = ((d2 * d2) / d6) - d3;
        if (Math.abs(d7) < 1.0E-20d) {
            return new LineAB((float) (d2 / d6));
        }
        double d8 = (((d4 * d2) / d6) - d5) / d7;
        return new LineAB((float) d8, (float) ((d4 - (d2 * d8)) / d6));
    }

    public void clear() {
        this.posList.clear();
    }

    public LineAB find(Pos pos) {
        this.posList.add(pos);
        int size = this.posList.size();
        if (size <= 10) {
            return null;
        }
        if (this.startPos == null) {
            this.startPos = new Pos();
            for (int i = 0; i < 10; i++) {
                this.startPos.x += this.posList.get(i).x;
                this.startPos.y += this.posList.get(i).y;
            }
            Pos pos2 = this.startPos;
            pos2.x /= 10.0d;
            pos2.y /= 10.0d;
        }
        for (int i2 = 10; i2 < size - 1; i2 += 2) {
            if (fitLine(this.posList, 0, i2).distance((float) pos.x, (float) pos.y) > 45.0d) {
                int i3 = i2 - 1;
                LineAB lineABFitLine = fitLine(this.posList, 0, i3);
                this.start = new Pos(this.posList.get(0).x, lineABFitLine.getY((float) this.posList.get(0).x));
                Pos pos3 = new Pos(this.posList.get(i3).x, lineABFitLine.getY((float) this.posList.get(i3).x));
                this.end = pos3;
                this.startAngle = (float) Math.toDegrees(this.start.angleTo(pos3));
                return lineABFitLine;
            }
        }
        if (this.posList.size() <= 99) {
            return null;
        }
        this.posList.remove(0);
        return null;
    }

    public LineAB inverseFind(Pos pos) {
        this.posList.add(pos);
        if (this.posList.size() > 20) {
            this.posList.remove(0);
        }
        int size = this.posList.size();
        if (size == 20) {
            double d2 = 0.0d;
            int i = 1;
            while (true) {
                int i2 = size - 1;
                if (i >= i2) {
                    if (d2 / ((double) (size - 2)) > 1.0d) {
                        break;
                    }
                    LineAB lineABFitLine = fitLine(this.posList, 0, i2);
                    this.start = new Pos(this.posList.get(0).x, lineABFitLine.getY((float) this.posList.get(0).x));
                    Pos pos2 = new Pos(this.posList.get(i2).x, lineABFitLine.getY((float) this.posList.get(i2).x));
                    this.end = pos2;
                    this.startAngle = (float) Math.toDegrees(this.start.angleTo(pos2));
                    return lineABFitLine;
                }
                double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(this.posList.get(i), this.posList.get(0), this.posList.get(i2));
                if (dK > 5.0d) {
                    return null;
                }
                d2 += dK;
                i++;
            }
        }
        return null;
    }

    public Pos rotate(Pos pos) {
        if (this.start == null) {
            return null;
        }
        Pos pos2 = new Pos(pos);
        pos2.rotate(this.start, Math.cos(Math.toRadians(-this.startAngle)), Math.sin(Math.toRadians(-this.startAngle)));
        pos2.y -= this.start.y;
        return pos2;
    }
}
