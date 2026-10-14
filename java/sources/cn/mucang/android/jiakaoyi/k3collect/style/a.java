package cn.mucang.android.jiakaoyi.k3collect.style;

import android.graphics.DashPathEffect;
import android.graphics.Paint;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static float f4161a = cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(10.0d);
    public static float b = 2.0f;
    public static float c = 2.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static float f4162d = 5.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final float f4163e = cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(80.0d);

    public static Paint a(LineStyle lineStyle) {
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.STROKE);
        if (lineStyle != null) {
            paint.setStrokeWidth(lineStyle.lineWidth);
            paint.setColor(lineStyle.color);
            if (lineStyle.isDashed) {
                paint.setPathEffect(new DashPathEffect(new float[]{lineStyle.dashLength, lineStyle.dashInterval}, BitmapDescriptorFactory.HUE_RED));
            }
        }
        return paint;
    }

    public static Paint b() {
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setColor(-16741633);
        return paint;
    }

    public static Paint c() {
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.FILL);
        paint.setTextSize(14.0f);
        paint.setColor(-1);
        return paint;
    }
}
