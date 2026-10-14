package cn.mucang.android.jiakaoyi.signal.pos;

import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class Pos implements Serializable {
    public double x;
    public double y;
    public double z;

    public Pos() {
    }

    public double angleTo(Pos pos) {
        return Math.atan2(pos.y - this.y, pos.x - this.x);
    }

    public double angleToInZ(Pos pos) {
        return Math.atan2(pos.z - this.z, distanceTo(pos));
    }

    public double cross(Pos pos) {
        return (this.x * pos.y) - (this.y * pos.x);
    }

    public double distanceSquare(Pos pos) {
        double d2 = this.x - pos.x;
        double d3 = this.y - pos.y;
        return (d2 * d2) + (d3 * d3);
    }

    public double distanceTo(Pos pos) {
        double d2 = this.x - pos.x;
        double d3 = this.y - pos.y;
        return Math.sqrt((d2 * d2) + (d3 * d3));
    }

    public double distanceTo3D(Pos pos) {
        double d2 = this.x - pos.x;
        double d3 = this.y - pos.y;
        double d4 = this.z - pos.z;
        return Math.sqrt((d2 * d2) + (d3 * d3) + (d4 * d4));
    }

    public double distanceToLine(Pos pos, Pos pos2) {
        double d2 = pos.x;
        double d3 = pos2.x;
        double d4 = d2 - d3;
        double d5 = pos.y;
        double d6 = pos2.y;
        double d7 = d5 - d6;
        double d8 = (d4 * d4) + (d7 * d7);
        if (d8 < 1.0E-8d) {
            return distanceTo(pos);
        }
        double d9 = this.x;
        double d10 = (d9 - d2) * (d2 - d3);
        double d11 = this.y;
        double d12 = (d10 + ((d11 - d5) * (d5 - d6))) / d8;
        double d13 = (d2 + (d4 * d12)) - d9;
        double d14 = (d5 + (d12 * d7)) - d11;
        return Math.sqrt((d13 * d13) + (d14 * d14));
    }

    public double dot(Pos pos) {
        return (this.x * pos.x) + (this.y * pos.y);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Pos)) {
            return false;
        }
        Pos pos = (Pos) obj;
        return Double.compare(pos.x, this.x) == 0 && Double.compare(pos.y, this.y) == 0 && Double.compare(pos.z, this.z) == 0;
    }

    public int hashCode() {
        return Objects.hash(Double.valueOf(this.x), Double.valueOf(this.y), Double.valueOf(this.z));
    }

    public Pos ignoreZ() {
        this.z = 0.0d;
        return this;
    }

    public Pos meanWith(Pos pos) {
        this.x = (this.x + pos.x) * 0.5d;
        this.y = (this.y + pos.y) * 0.5d;
        this.z = (this.z + pos.z) * 0.5d;
        return this;
    }

    public double model() {
        double d2 = this.x;
        double d3 = this.y;
        return Math.sqrt((d2 * d2) + (d3 * d3));
    }

    public Pos move(double d2, double d3) {
        this.x += Math.cos(d3) * d2;
        this.y += d2 * Math.sin(d3);
        return this;
    }

    public double projectOn(Pos pos) {
        return dot(pos) / pos.model();
    }

    public Pos rotate(double d2, double d3) {
        double d4 = this.x;
        double d5 = this.y;
        this.x = (d4 * d2) - (d5 * d3);
        this.y = (d4 * d3) + (d5 * d2);
        return this;
    }

    public Pos scale(double d2) {
        this.x *= d2;
        this.y *= d2;
        return this;
    }

    public Pos setPos(Pos pos) {
        this.x = pos.x;
        this.y = pos.y;
        this.z = pos.z;
        return this;
    }

    public String toString() {
        return "Pos{x=" + ((int) this.x) + ", y=" + ((int) this.y) + ", z=" + ((int) this.z) + '}';
    }

    public Pos translate(double d2, double d3) {
        this.x += d2;
        this.y += d3;
        return this;
    }

    public double vectorAngle(Pos pos) {
        double dDot = dot(pos);
        double d2 = this.x;
        double d3 = this.y;
        double d4 = (d2 * d2) + (d3 * d3);
        double d5 = pos.x;
        double d6 = pos.y;
        return Math.acos(dDot / Math.sqrt(d4 * ((d5 * d5) + (d6 * d6))));
    }

    public Pos vectorTo(Pos pos) {
        Pos pos2 = new Pos(pos);
        pos2.translate(-this.x, -this.y);
        return pos2;
    }

    public Pos(double d2, double d3) {
        this(d2, d3, 0.0d);
    }

    public Pos(double d2, double d3, double d4) {
        this.x = d2;
        this.y = d3;
        this.z = d4;
    }

    public Pos translate(Pos pos) {
        return translate(pos.x, pos.y);
    }

    public Pos vectorTo(Pos pos, Pos pos2) {
        pos2.setPos(pos);
        pos2.translate(-this.x, -this.y);
        return pos2;
    }

    public Pos setPos(double d2, double d3) {
        this.x = d2;
        this.y = d3;
        return this;
    }

    public Pos rotate(Pos pos, double d2, double d3) {
        double d4 = this.x;
        double d5 = pos.x;
        double d6 = d4 - d5;
        double d7 = this.y;
        double d8 = pos.y;
        double d9 = d7 - d8;
        this.x = ((d6 * d2) - (d9 * d3)) + d5;
        this.y = (d6 * d3) + (d9 * d2) + d8;
        return this;
    }

    public Pos setPos(double d2, double d3, double d4) {
        this.x = d2;
        this.y = d3;
        this.z = d4;
        return this;
    }

    public Pos(Pos pos) {
        this(pos.x, pos.y, pos.z);
    }
}
