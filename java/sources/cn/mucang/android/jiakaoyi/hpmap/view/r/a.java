package cn.mucang.android.jiakaoyi.hpmap.view.r;

import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static float a(double d2, double d3, MapView mapView) {
        if (d2 <= 0.0d || d3 <= 0.0d || Double.isNaN(d2) || Double.isInfinite(d2) || Double.isNaN(d3) || Double.isInfinite(d3)) {
            return mapView.getCurrentZoom();
        }
        int measuredWidth = mapView.getMeasuredWidth();
        int measuredHeight = mapView.getMeasuredHeight();
        return measuredWidth * measuredHeight <= 0 ? mapView.getCurrentZoom() : (float) Math.max(Math.min(((double) measuredWidth) / d2, ((double) measuredHeight) / d3), 0.019999999552965164d);
    }

    public static float b(double d2) {
        return (float) (d2 * 1.0d);
    }

    public static Pos c(Pos pos, Pos pos2) {
        return pos2.setPos(pos).scale(1.0d);
    }
}
