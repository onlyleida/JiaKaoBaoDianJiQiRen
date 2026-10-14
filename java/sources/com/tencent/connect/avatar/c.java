package com.tencent.connect.avatar;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes6.dex */
public class c extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f14006a;
    public boolean b;
    private Matrix c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Matrix f14007d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f14008e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f14009f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f14010g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Bitmap f14011h;
    private boolean i;
    private float j;
    private float k;
    private PointF l;
    private PointF m;
    private float n;
    private float o;
    private Rect p;

    public c(Context context) {
        super(context);
        this.c = new Matrix();
        this.f14007d = new Matrix();
        this.f14008e = 0;
        this.f14009f = 1.0f;
        this.f14010g = 1.0f;
        this.i = false;
        this.f14006a = "TouchView";
        this.l = new PointF();
        this.m = new PointF();
        this.n = 1.0f;
        this.o = BitmapDescriptorFactory.HUE_RED;
        this.b = false;
        Rect rect = new Rect();
        this.p = rect;
        getDrawingRect(rect);
        a();
    }

    private void a() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        boolean z;
        Animation translateAnimation;
        if (this.f14011h == null) {
            return;
        }
        float fWidth = this.p.width();
        float fHeight = this.p.height();
        float[] fArr = new float[9];
        this.c.getValues(fArr);
        float f2 = fArr[2];
        float f3 = fArr[5];
        float f4 = fArr[0];
        float f5 = this.f14009f;
        if (f4 > f5) {
            float f6 = f5 / f4;
            this.o = f6;
            Matrix matrix = this.c;
            PointF pointF = this.m;
            matrix.postScale(f6, f6, pointF.x, pointF.y);
            setImageMatrix(this.c);
            float f7 = this.o;
            float f8 = 1.0f / f7;
            float f9 = 1.0f / f7;
            PointF pointF2 = this.m;
            translateAnimation = new ScaleAnimation(f8, 1.0f, f9, 1.0f, pointF2.x, pointF2.y);
        } else {
            float f10 = this.f14010g;
            if (f4 < f10) {
                float f11 = f10 / f4;
                this.o = f11;
                Matrix matrix2 = this.c;
                PointF pointF3 = this.m;
                matrix2.postScale(f11, f11, pointF3.x, pointF3.y);
                float f12 = this.o;
                PointF pointF4 = this.m;
                translateAnimation = new ScaleAnimation(1.0f, f12, 1.0f, f12, pointF4.x, pointF4.y);
            } else {
                float width = this.f14011h.getWidth() * f4;
                float height = this.f14011h.getHeight() * f4;
                Rect rect = this.p;
                int i = rect.left;
                float f13 = i - f2;
                int i2 = rect.top;
                float f14 = i2 - f3;
                if (f13 < BitmapDescriptorFactory.HUE_RED) {
                    f2 = i;
                    z = true;
                } else {
                    z = false;
                }
                if (f14 < BitmapDescriptorFactory.HUE_RED) {
                    f3 = i2;
                    z = true;
                }
                float f15 = height - f14;
                if (width - f13 < fWidth) {
                    f2 = i - (width - fWidth);
                    z = true;
                }
                if (f15 < fHeight) {
                    f3 = i2 - (height - fHeight);
                    z = true;
                }
                if (z) {
                    float f16 = fArr[2] - f2;
                    float f17 = fArr[5] - f3;
                    fArr[2] = f2;
                    fArr[5] = f3;
                    this.c.setValues(fArr);
                    setImageMatrix(this.c);
                    translateAnimation = new TranslateAnimation(f16, BitmapDescriptorFactory.HUE_RED, f17, BitmapDescriptorFactory.HUE_RED);
                } else {
                    setImageMatrix(this.c);
                    translateAnimation = null;
                }
            }
        }
        if (translateAnimation != null) {
            this.i = true;
            translateAnimation.setDuration(300L);
            startAnimation(translateAnimation);
            new Thread(new Runnable() { // from class: com.tencent.connect.avatar.c.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Thread.sleep(300L);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                    c.this.post(new Runnable() { // from class: com.tencent.connect.avatar.c.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            c.this.clearAnimation();
                            c.this.b();
                        }
                    });
                    c.this.i = false;
                }
            }).start();
        }
    }

    private void c() {
        if (this.f14011h == null) {
            return;
        }
        float[] fArr = {fMax, 0.0f, this.j, 0.0f, fMax, height, 0.0f, 0.0f, 0.0f};
        this.c.getValues(fArr);
        float fMax = Math.max(this.p.width() / this.f14011h.getWidth(), this.p.height() / this.f14011h.getHeight());
        this.j = this.p.left - (((this.f14011h.getWidth() * fMax) - this.p.width()) / 2.0f);
        float height = this.p.top - (((this.f14011h.getHeight() * fMax) - this.p.height()) / 2.0f);
        this.k = height;
        this.c.setValues(fArr);
        float fMin = Math.min(2048.0f / this.f14011h.getWidth(), 2048.0f / this.f14011h.getHeight());
        this.f14009f = fMin;
        this.f14010g = fMax;
        if (fMin < fMax) {
            this.f14009f = fMax;
        }
        setImageMatrix(this.c);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0089  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.i) {
            return true;
        }
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.c.set(getImageMatrix());
            this.f14007d.set(this.c);
            this.l.set(motionEvent.getX(), motionEvent.getY());
            this.f14008e = 1;
        } else if (action == 1) {
            b();
            this.f14008e = 0;
        } else if (action == 2) {
            int i = this.f14008e;
            if (i == 1) {
                this.c.set(this.f14007d);
                this.c.postTranslate(motionEvent.getX() - this.l.x, motionEvent.getY() - this.l.y);
                setImageMatrix(this.c);
            } else if (i == 2) {
                Matrix matrix = this.c;
                matrix.set(matrix);
                float fA = a(motionEvent);
                if (fA > 10.0f) {
                    this.c.set(this.f14007d);
                    float f2 = fA / this.n;
                    Matrix matrix2 = this.c;
                    PointF pointF = this.m;
                    matrix2.postScale(f2, f2, pointF.x, pointF.y);
                }
                setImageMatrix(this.c);
            }
        } else if (action == 5) {
            float fA2 = a(motionEvent);
            this.n = fA2;
            if (fA2 > 10.0f) {
                this.f14007d.set(this.c);
                a(this.m);
                this.f14008e = 2;
            }
        } else if (action == 6) {
            b();
            this.f14008e = 0;
        }
        this.b = true;
        return true;
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        this.f14011h = bitmap;
        if (bitmap != null) {
            this.f14011h = bitmap;
        }
    }

    private float a(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() < 2) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        float x = motionEvent.getX(0) - motionEvent.getX(1);
        float y = motionEvent.getY(0) - motionEvent.getY(1);
        return (float) Math.sqrt((x * x) + (y * y));
    }

    public void a(Rect rect) {
        this.p = rect;
        if (this.f14011h != null) {
            c();
        }
    }

    private void a(PointF pointF) {
        if (this.f14011h == null) {
            return;
        }
        float[] fArr = new float[9];
        this.c.getValues(fArr);
        float f2 = fArr[2];
        float f3 = fArr[5];
        float f4 = fArr[0];
        float width = this.f14011h.getWidth() * f4;
        float height = this.f14011h.getHeight() * f4;
        Rect rect = this.p;
        float f5 = rect.left - f2;
        if (f5 <= 1.0f) {
            f5 = 1.0f;
        }
        float f6 = (f2 + width) - rect.right;
        if (f6 <= 1.0f) {
            f6 = 1.0f;
        }
        float fWidth = (rect.width() * f5) / (f6 + f5);
        Rect rect2 = this.p;
        float f7 = fWidth + rect2.left;
        float f8 = rect2.top - f3;
        float f9 = (f3 + height) - rect2.bottom;
        if (f8 <= 1.0f) {
            f8 = 1.0f;
        }
        pointF.set(f7, ((rect2.height() * f8) / ((f9 > 1.0f ? f9 : 1.0f) + f8)) + this.p.top);
    }
}
