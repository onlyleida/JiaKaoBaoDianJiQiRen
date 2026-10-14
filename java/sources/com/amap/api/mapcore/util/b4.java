package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.CameraPosition;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;

/* JADX INFO: loaded from: classes5.dex */
public class b4 extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Bitmap f10496a;
    Bitmap b;
    Bitmap c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ImageView f10497d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    IAMapDelegate f10498e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Matrix f10499f;

    class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            try {
                if (!b4.this.f10498e.isMaploaded()) {
                    return false;
                }
                if (motionEvent.getAction() == 0) {
                    b4 b4Var = b4.this;
                    b4Var.f10497d.setImageBitmap(b4Var.b);
                } else if (motionEvent.getAction() == 1) {
                    b4 b4Var2 = b4.this;
                    b4Var2.f10497d.setImageBitmap(b4Var2.f10496a);
                    CameraPosition cameraPosition = b4.this.f10498e.getCameraPosition();
                    b4.this.f10498e.animateCamera(h.f(new CameraPosition(cameraPosition.target, cameraPosition.zoom, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED)));
                }
            } catch (Throwable th) {
                e6.r(th, "CompassView", "onTouch");
                th.printStackTrace();
            }
            return false;
        }
    }

    public b4(Context context, IAMapDelegate iAMapDelegate) {
        super(context);
        this.f10499f = new Matrix();
        this.f10498e = iAMapDelegate;
        try {
            Bitmap bitmapO = r3.o(context, "maps_dav_compass_needle_large.png");
            this.c = bitmapO;
            this.b = r3.p(bitmapO, x9.f11344a * 0.8f);
            Bitmap bitmapP = r3.p(this.c, x9.f11344a * 0.7f);
            this.c = bitmapP;
            Bitmap bitmap = this.b;
            if (bitmap != null && bitmapP != null) {
                this.f10496a = Bitmap.createBitmap(bitmap.getWidth(), this.b.getHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(this.f10496a);
                Paint paint = new Paint();
                paint.setAntiAlias(true);
                paint.setFilterBitmap(true);
                canvas.drawBitmap(this.c, (this.b.getWidth() - this.c.getWidth()) / 2.0f, (this.b.getHeight() - this.c.getHeight()) / 2.0f, paint);
                ImageView imageView = new ImageView(context);
                this.f10497d = imageView;
                imageView.setScaleType(ImageView.ScaleType.MATRIX);
                this.f10497d.setImageBitmap(this.f10496a);
                this.f10497d.setClickable(true);
                c();
                this.f10497d.setOnTouchListener(new a());
                addView(this.f10497d);
            }
        } catch (Throwable th) {
            e6.r(th, "CompassView", "create");
            th.printStackTrace();
        }
    }

    public void a() {
        try {
            removeAllViews();
            Bitmap bitmap = this.f10496a;
            if (bitmap != null) {
                r3.g0(bitmap);
            }
            Bitmap bitmap2 = this.b;
            if (bitmap2 != null) {
                r3.g0(bitmap2);
            }
            Bitmap bitmap3 = this.c;
            if (bitmap3 != null) {
                r3.g0(bitmap3);
            }
            Matrix matrix = this.f10499f;
            if (matrix != null) {
                matrix.reset();
                this.f10499f = null;
            }
            this.c = null;
            this.f10496a = null;
            this.b = null;
        } catch (Throwable th) {
            e6.r(th, "CompassView", "destroy");
            th.printStackTrace();
        }
    }

    public void b(boolean z) {
        if (!z) {
            setVisibility(8);
        } else {
            setVisibility(0);
            c();
        }
    }

    public void c() {
        try {
            IAMapDelegate iAMapDelegate = this.f10498e;
            if (iAMapDelegate == null || this.f10497d == null) {
                return;
            }
            float cameraDegree = iAMapDelegate.getCameraDegree(1);
            float mapAngle = this.f10498e.getMapAngle(1);
            if (this.f10499f == null) {
                this.f10499f = new Matrix();
            }
            this.f10499f.reset();
            this.f10499f.postRotate(-mapAngle, this.f10497d.getDrawable().getBounds().width() / 2.0f, this.f10497d.getDrawable().getBounds().height() / 2.0f);
            this.f10499f.postScale(1.0f, (float) Math.cos((((double) cameraDegree) * 3.141592653589793d) / 180.0d), this.f10497d.getDrawable().getBounds().width() / 2.0f, this.f10497d.getDrawable().getBounds().height() / 2.0f);
            this.f10497d.setImageMatrix(this.f10499f);
        } catch (Throwable th) {
            e6.r(th, "CompassView", "invalidateAngle");
            th.printStackTrace();
        }
    }
}
