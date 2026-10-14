package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.view.View;
import androidx.core.view.ViewCompat;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.autonavi.amap.mapcore.AMapEngineUtils;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import java.io.File;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public class h4 extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Bitmap f10865a;
    private Bitmap b;
    private Bitmap c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Bitmap f10866d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Bitmap f10867e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Bitmap f10868f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Bitmap f10869g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Paint f10870h;
    private boolean i;
    private int j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private boolean r;
    private boolean s;
    private Context t;
    private boolean u;
    private float v;
    private float w;
    private boolean x;
    private boolean y;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h4.this.e(AMapEngineUtils.LOGO_CUSTOM_ICON_DAY_NAME, 0);
            h4.this.e(AMapEngineUtils.LOGO_CUSTOM_ICON_NIGHT_NAME, 1);
            if ("".equals(h3.b(h4.this.t, "amap_web_logo", "md5_day", ""))) {
                if (h4.this.c == null || h4.this.f10866d == null) {
                    h3.c(h4.this.t, "amap_web_logo", "md5_day", "f3a1627fe912c49ecdcd4ab92a5d6bc8");
                    h3.c(h4.this.t, "amap_web_logo", "md5_night", "61733cf36c9727db08c2ef727490c036");
                    return;
                }
                h3.c(h4.this.t, "amap_web_logo", "md5_day", k5.a(AMapEngineUtils.LOGO_CUSTOM_ICON_DAY_NAME));
                String strA = k5.a(AMapEngineUtils.LOGO_CUSTOM_ICON_NIGHT_NAME);
                if (!"".equals(strA)) {
                    h3.c(h4.this.t, "amap_web_logo", "md5_night", strA);
                }
                h4.this.q(true);
            }
        }
    }

    public h4(Context context, IAMapDelegate iAMapDelegate) {
        InputStream inputStream;
        super(context);
        this.f10870h = new Paint();
        this.i = false;
        this.j = 0;
        this.k = 0;
        this.l = 0;
        this.m = 10;
        this.n = 0;
        this.o = 0;
        this.p = 10;
        this.q = 8;
        this.r = false;
        this.s = false;
        this.u = true;
        this.v = BitmapDescriptorFactory.HUE_RED;
        this.w = BitmapDescriptorFactory.HUE_RED;
        this.x = true;
        this.y = false;
        InputStream inputStreamOpen = null;
        try {
            try {
                this.t = context.getApplicationContext();
                InputStream inputStreamOpen2 = l3.b(context).open("ap.data");
                try {
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpen2);
                    this.f10868f = bitmapDecodeStream;
                    this.f10865a = r3.p(bitmapDecodeStream, x9.f11344a);
                    inputStreamOpen2.close();
                    inputStreamOpen = l3.b(context).open("ap1.data");
                    Bitmap bitmapDecodeStream2 = BitmapFactory.decodeStream(inputStreamOpen);
                    this.f10869g = bitmapDecodeStream2;
                    this.b = r3.p(bitmapDecodeStream2, x9.f11344a);
                    inputStreamOpen.close();
                    this.k = this.b.getWidth();
                    this.j = this.b.getHeight();
                    this.f10870h.setAntiAlias(true);
                    this.f10870h.setColor(ViewCompat.MEASURED_STATE_MASK);
                    this.f10870h.setStyle(Paint.Style.STROKE);
                    AMapEngineUtils.LOGO_CUSTOM_ICON_DAY_NAME = context.getFilesDir() + "/icon_web_day.data";
                    AMapEngineUtils.LOGO_CUSTOM_ICON_NIGHT_NAME = context.getFilesDir() + "/icon_web_night.data";
                    q3.a().b(new a());
                    if (inputStreamOpen2 != null) {
                        try {
                            inputStreamOpen2.close();
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                    if (inputStreamOpen != null) {
                        inputStreamOpen.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = inputStreamOpen;
                    inputStreamOpen = inputStreamOpen2;
                    try {
                        e6.r(th, "WaterMarkerView", "create");
                        if (inputStreamOpen != null) {
                            try {
                                inputStreamOpen.close();
                            } catch (Throwable th3) {
                                th3.printStackTrace();
                            }
                        }
                        if (inputStream == null) {
                        }
                    } finally {
                        if (inputStreamOpen != null) {
                            try {
                                inputStreamOpen.close();
                            } catch (Throwable th4) {
                                th4.printStackTrace();
                            }
                        }
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th5) {
                                th5.printStackTrace();
                            }
                        }
                    }
                }
            } catch (Throwable th6) {
                th = th6;
                inputStream = null;
            }
        } catch (Throwable th7) {
        }
    }

    private void s() {
        int i = this.o;
        if (i == 0) {
            u();
        } else if (i == 2) {
            t();
        }
        this.m = this.p;
        int height = (getHeight() - this.q) - this.j;
        this.n = height;
        if (this.m < 0) {
            this.m = 0;
        }
        if (height < 0) {
            this.n = 0;
        }
    }

    private void t() {
        if (this.x) {
            this.p = (int) (getWidth() * this.v);
        } else {
            this.p = (int) ((getWidth() * this.v) - this.k);
        }
        this.q = (int) (getHeight() * this.w);
    }

    private void u() {
        int i = this.l;
        if (i == 1) {
            this.p = (getWidth() - this.k) / 2;
        } else if (i == 2) {
            this.p = (getWidth() - this.k) - 10;
        } else {
            this.p = 10;
        }
        this.q = 8;
    }

    public void b() {
        try {
            Bitmap bitmap = this.f10865a;
            if (bitmap != null) {
                r3.g0(bitmap);
                this.f10865a = null;
            }
            Bitmap bitmap2 = this.b;
            if (bitmap2 != null) {
                r3.g0(bitmap2);
                this.b = null;
            }
            this.f10865a = null;
            this.b = null;
            Bitmap bitmap3 = this.f10868f;
            if (bitmap3 != null) {
                r3.g0(bitmap3);
                this.f10868f = null;
            }
            Bitmap bitmap4 = this.f10869g;
            if (bitmap4 != null) {
                r3.g0(bitmap4);
                this.f10869g = null;
            }
            Bitmap bitmap5 = this.c;
            if (bitmap5 != null) {
                r3.g0(bitmap5);
            }
            this.c = null;
            Bitmap bitmap6 = this.f10866d;
            if (bitmap6 != null) {
                r3.g0(bitmap6);
            }
            this.f10866d = null;
            Bitmap bitmap7 = this.f10867e;
            if (bitmap7 != null) {
                bitmap7.recycle();
            }
            this.f10870h = null;
        } catch (Throwable th) {
            e6.r(th, "WaterMarkerView", "destory");
            th.printStackTrace();
        }
    }

    public void c(int i) {
        this.o = 0;
        this.l = i;
        p();
    }

    public void d(int i, float f2) {
        if (this.u) {
            this.o = 2;
            float fMax = Math.max(BitmapDescriptorFactory.HUE_RED, Math.min(f2, 1.0f));
            if (i == 0) {
                this.v = fMax;
                this.x = true;
            } else if (i == 1) {
                this.v = 1.0f - fMax;
                this.x = false;
            } else if (i == 2) {
                this.w = 1.0f - fMax;
            }
            p();
        }
    }

    public void e(String str, int i) {
        try {
            if (this.u && new File(str).exists()) {
                if (i == 0) {
                    Bitmap bitmap = this.c;
                    Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
                    this.f10868f = bitmapDecodeFile;
                    this.c = r3.p(bitmapDecodeFile, x9.f11344a);
                    if (bitmap != null && !bitmap.isRecycled()) {
                        r3.g0(bitmap);
                    }
                } else if (i == 1) {
                    Bitmap bitmap2 = this.f10866d;
                    Bitmap bitmapDecodeFile2 = BitmapFactory.decodeFile(str);
                    this.f10868f = bitmapDecodeFile2;
                    this.f10866d = r3.p(bitmapDecodeFile2, x9.f11344a);
                    if (bitmap2 != null && !bitmap2.isRecycled()) {
                        r3.g0(bitmap2);
                    }
                }
            }
        } catch (Throwable th) {
            e6.r(th, "WaterMarkerView", "create");
            th.printStackTrace();
        }
    }

    public void f(boolean z) {
        if (this.u) {
            try {
                this.i = z;
                if (z) {
                    this.f10870h.setColor(-1);
                } else {
                    this.f10870h.setColor(ViewCompat.MEASURED_STATE_MASK);
                }
            } catch (Throwable th) {
                e6.r(th, "WaterMarkerView", "changeBitmap");
                th.printStackTrace();
            }
        }
    }

    public Bitmap g() {
        Bitmap bitmap;
        Bitmap bitmap2;
        Bitmap bitmap3;
        if (this.y && (bitmap3 = this.f10867e) != null) {
            return bitmap3;
        }
        if (this.i) {
            return (!this.s || (bitmap2 = this.f10866d) == null) ? this.b : bitmap2;
        }
        return (!this.s || (bitmap = this.c) == null) ? this.f10865a : bitmap;
    }

    public void i(int i) {
        this.o = 1;
        this.q = i;
        p();
    }

    public void j(boolean z) {
        if (this.u) {
            this.y = z;
            if (!z) {
                this.k = this.f10865a.getWidth();
                this.j = this.f10865a.getHeight();
                return;
            }
            Bitmap bitmap = this.f10867e;
            if (bitmap != null) {
                this.k = bitmap.getWidth();
                this.j = this.f10867e.getHeight();
            }
        }
    }

    public Point l() {
        return new Point(this.m, this.n - 2);
    }

    public void m(int i) {
        this.o = 1;
        this.p = i;
        p();
    }

    public void n(boolean z) {
        this.u = z;
    }

    public float o(int i) {
        float f2;
        if (!this.u) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        if (i == 0) {
            return this.v;
        }
        if (i == 1) {
            f2 = this.v;
        } else {
            if (i != 2) {
                return BitmapDescriptorFactory.HUE_RED;
            }
            f2 = this.w;
        }
        return 1.0f - f2;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        try {
            if (!this.u || getWidth() == 0 || getHeight() == 0 || this.b == null) {
                return;
            }
            if (!this.r) {
                s();
                this.r = true;
            }
            canvas.drawBitmap(g(), this.m, this.n, this.f10870h);
        } catch (Throwable th) {
            e6.r(th, "WaterMarkerView", "onDraw");
            th.printStackTrace();
        }
    }

    public void p() {
        if (getWidth() == 0 || getHeight() == 0) {
            return;
        }
        s();
        postInvalidate();
    }

    public void q(boolean z) {
        if (this.u && this.s != z) {
            this.s = z;
            if (!z) {
                this.k = this.f10865a.getWidth();
                this.j = this.f10865a.getHeight();
                return;
            }
            if (this.i) {
                Bitmap bitmap = this.f10866d;
                if (bitmap != null) {
                    this.k = bitmap.getWidth();
                    this.j = this.f10866d.getHeight();
                    return;
                }
                return;
            }
            Bitmap bitmap2 = this.c;
            if (bitmap2 != null) {
                this.k = bitmap2.getWidth();
                this.j = this.c.getHeight();
            }
        }
    }

    public boolean r() {
        return this.i;
    }
}
