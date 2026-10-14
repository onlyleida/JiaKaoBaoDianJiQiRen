package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.View;
import androidx.core.view.ViewCompat;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.autonavi.amap.mapcore.DPoint;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.VirtualEarthProjection;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import com.mobile.auth.gatewayauth.Constant;
import org.apache.commons.math3.distribution.PoissonDistribution;
import org.apache.commons.math3.optimization.direct.CMAESOptimizer;

/* JADX INFO: loaded from: classes5.dex */
public class g4 extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f10810a;
    private int b;
    private IAMapDelegate c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Paint f10811d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Paint f10812e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Rect f10813f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private IPoint f10814g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f10815h;
    private final int[] i;

    public g4(Context context, IAMapDelegate iAMapDelegate) {
        super(context);
        this.f10810a = "";
        this.b = 0;
        this.f10815h = BitmapDescriptorFactory.HUE_RED;
        this.i = new int[]{PoissonDistribution.DEFAULT_MAX_ITERATIONS, 5000000, 2000000, 1000000, 500000, 200000, 100000, 50000, CMAESOptimizer.DEFAULT_MAXITERATIONS, Constant.DEFAULT_SECURITY_VERIFY_TIMEOUT, 10000, 5000, 2000, 1000, 500, 200, 100, 50, 25, 10, 5};
        this.c = iAMapDelegate;
        this.f10811d = new Paint();
        this.f10813f = new Rect();
        this.f10811d.setAntiAlias(true);
        this.f10811d.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.f10811d.setStrokeWidth(x9.f11344a * 2.0f);
        this.f10811d.setStyle(Paint.Style.STROKE);
        Paint paint = new Paint();
        this.f10812e = paint;
        paint.setAntiAlias(true);
        this.f10812e.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.f10812e.setTextSize(x9.f11344a * 20.0f);
        this.f10815h = l3.a(context, 1.0f);
        this.f10814g = new IPoint();
    }

    public void a() {
        this.f10811d = null;
        this.f10812e = null;
        this.f10813f = null;
        this.f10810a = null;
        this.f10814g = null;
    }

    public void b(int i) {
        this.b = i;
    }

    public void c(String str) {
        this.f10810a = str;
    }

    public void d(boolean z) {
        if (z) {
            setVisibility(0);
            e();
        } else {
            c("");
            b(0);
            setVisibility(8);
        }
    }

    public void e() {
        IAMapDelegate iAMapDelegate = this.c;
        if (iAMapDelegate == null) {
            return;
        }
        try {
            float preciseLevel = iAMapDelegate.getPreciseLevel(1);
            this.c.getGeoCenter(1, this.f10814g);
            IPoint iPoint = this.f10814g;
            if (iPoint == null) {
                return;
            }
            DPoint dPointPixelsToLatLong = VirtualEarthProjection.pixelsToLatLong(((Point) iPoint).x, ((Point) iPoint).y, 20);
            float mapZoomScale = this.c.getMapZoomScale();
            double dCos = (float) ((((Math.cos((dPointPixelsToLatLong.y * 3.141592653589793d) / 180.0d) * 2.0d) * 3.141592653589793d) * 6378137.0d) / (Math.pow(2.0d, preciseLevel) * 256.0d));
            int[] iArr = this.i;
            int i = (int) preciseLevel;
            int i2 = (int) (((double) iArr[i]) / (dCos * ((double) mapZoomScale)));
            String strX = r3.x(iArr[i]);
            b(i2);
            c(strX);
            dPointPixelsToLatLong.recycle();
            invalidate();
        } catch (Throwable th) {
            e6.r(th, "AMapDelegateImpGLSurfaceView", "changeScaleState");
            th.printStackTrace();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Point waterMarkerPositon;
        String str = this.f10810a;
        if (str == null || "".equals(str) || this.b == 0 || (waterMarkerPositon = this.c.getWaterMarkerPositon()) == null) {
            return;
        }
        Paint paint = this.f10812e;
        String str2 = this.f10810a;
        paint.getTextBounds(str2, 0, str2.length(), this.f10813f);
        int i = waterMarkerPositon.x;
        int iHeight = (waterMarkerPositon.y - this.f10813f.height()) + 5;
        canvas.drawText(this.f10810a, ((this.b - this.f10813f.width()) / 2) + i, iHeight, this.f10812e);
        float f2 = i;
        float fHeight = iHeight + (this.f10813f.height() - 5);
        canvas.drawLine(f2, fHeight - (this.f10815h * 2.0f), f2, fHeight + x9.f11344a, this.f10811d);
        canvas.drawLine(f2, fHeight, this.b + i, fHeight, this.f10811d);
        int i2 = this.b;
        canvas.drawLine(i + i2, fHeight - (this.f10815h * 2.0f), i + i2, fHeight + x9.f11344a, this.f10811d);
    }
}
