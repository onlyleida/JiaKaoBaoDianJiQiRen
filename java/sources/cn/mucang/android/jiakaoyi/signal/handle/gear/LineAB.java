package cn.mucang.android.jiakaoyi.signal.handle.gear;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class LineAB implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f5676a;
    public float b;
    public boolean isVertical;
    public float x;

    public LineAB() {
        this.isVertical = false;
        this.x = BitmapDescriptorFactory.HUE_RED;
    }

    public static LineAB calculate(List<Pos> list) {
        int size = list.size();
        float f2 = BitmapDescriptorFactory.HUE_RED;
        float f3 = BitmapDescriptorFactory.HUE_RED;
        float f4 = BitmapDescriptorFactory.HUE_RED;
        float f5 = BitmapDescriptorFactory.HUE_RED;
        for (Pos pos : list) {
            double d2 = pos.x;
            f2 = (float) (((double) f2) + d2);
            double d3 = pos.y;
            f4 = (float) (((double) f4) + d3);
            f5 = (float) (((double) f5) + (d3 * d2));
            f3 = (float) (((double) f3) + (d2 * d2));
        }
        float f6 = size;
        float f7 = ((f2 * f2) / f6) - f3;
        if (Math.abs(f7) < 1.0E-8d) {
            return new LineAB(f2 / f6);
        }
        float f8 = (((f4 * f2) / f6) - f5) / f7;
        return new LineAB(f8, (f4 - (f2 * f8)) / f6);
    }

    public double area(Pos pos, Pos pos2) {
        double d2 = pos.x;
        Pos pos3 = new Pos(d2, getY((float) d2));
        double d3 = pos2.x;
        return area(pos, pos2, pos3, new Pos(d3, getY((float) d3)));
    }

    public float distance(float f2, float f3) {
        if (this.isVertical) {
            return Math.abs(f2 - this.x);
        }
        float f4 = -this.f5676a;
        return Math.abs((((f4 * f2) + (f3 * 1.0f)) + (-this.b)) / ((float) Math.sqrt((f4 * f4) + 1.0f)));
    }

    public float getY(float f2) {
        return this.isVertical ? f2 : (this.f5676a * f2) + this.b;
    }

    public LineAB(float f2) {
        this.isVertical = false;
        this.x = BitmapDescriptorFactory.HUE_RED;
        this.x = f2;
        this.isVertical = true;
    }

    public static double area(Pos pos, Pos pos2, Pos pos3, Pos pos4) {
        double d2 = pos.y - pos3.y;
        double d3 = pos2.y - pos4.y;
        double dAbs = Math.abs(d2) + Math.abs(d3);
        if (dAbs < 0.01d) {
            return 0.01d;
        }
        double dAbs2 = Math.abs(pos2.x - pos.x);
        return d2 * d3 >= 0.0d ? dAbs * dAbs2 * 0.5d : (((d2 * d2) + (d3 * d3)) / dAbs) * dAbs2 * 0.5d;
    }

    public LineAB(float f2, float f3) {
        this.isVertical = false;
        this.x = BitmapDescriptorFactory.HUE_RED;
        this.f5676a = f2;
        this.b = f3;
        this.isVertical = false;
    }
}
