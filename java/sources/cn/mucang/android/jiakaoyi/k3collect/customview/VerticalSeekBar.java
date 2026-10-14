package cn.mucang.android.jiakaoyi.k3collect.customview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import cn.mucang.android.jiakaoyi.k3collect.R;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes3.dex */
public class VerticalSeekBar extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f3926a;
    private int b;
    private Paint c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3927d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f3928e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected Bitmap f3929f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f3930g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f3931h;
    private boolean i;
    private int j;
    private int k;
    private int l;
    private int m;
    private RectF n;
    private int o;
    private int p;
    private a q;

    public interface a {
        void a(VerticalSeekBar verticalSeekBar, float f2);

        void b(VerticalSeekBar verticalSeekBar, float f2);

        void c(VerticalSeekBar verticalSeekBar, float f2);
    }

    public VerticalSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3927d = 100;
        this.f3928e = 50.0f;
        this.j = -1;
        this.k = 4;
        this.m = -863467384;
        this.p = -1442217747;
        b(context, attributeSet, 0);
    }

    private void a() {
        int i = this.j;
        int i2 = this.f3930g;
        if (i <= i2 / 2) {
            this.j = i2 / 2;
            return;
        }
        int i3 = this.f3926a;
        if (i >= i3 - (i2 / 2)) {
            this.j = i3 - (i2 / 2);
        }
    }

    private void b(Context context, AttributeSet attributeSet, int i) {
        this.c = new Paint();
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getResources(), R.drawable.ic_map_scale_thumb);
        this.f3929f = bitmapDecodeResource;
        this.f3930g = bitmapDecodeResource.getHeight();
        this.f3931h = this.f3929f.getWidth();
        this.n = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.f3931h, this.f3930g);
        this.l = this.k;
    }

    private boolean c(MotionEvent motionEvent) {
        return motionEvent.getX() >= ((float) ((this.b / 2) - (this.f3931h / 2))) && motionEvent.getX() <= ((float) ((this.b / 2) + (this.f3931h / 2))) && motionEvent.getY() >= ((float) (this.j - (this.f3930g / 2))) && motionEvent.getY() <= ((float) (this.j + (this.f3930g / 2)));
    }

    public void d(int i, int i2) {
        this.f3930g = i;
        this.f3931h = i2;
        this.n.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, i, i2);
        invalidate();
    }

    public int getMaxProgress() {
        return this.f3927d;
    }

    public float getProgress() {
        return this.f3928e;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        Bitmap bitmap = this.f3929f;
        if (bitmap != null) {
            bitmap.recycle();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i = this.o;
        if (i == 0) {
            int i2 = this.f3930g;
            int i3 = this.f3927d;
            this.j = (int) ((i2 * 0.5f) + (((i3 - this.f3928e) * (this.f3926a - i2)) / i3));
        } else {
            int i4 = this.f3930g;
            this.j = (int) ((i4 * 0.5f) + ((this.f3928e * (this.f3926a - i4)) / this.f3927d));
        }
        this.c.setColor(i == 0 ? this.m : this.p);
        canvas.drawRect((this.b / 2) - (this.l / 2), this.n.height() / 2.0f, (this.b / 2) + (this.l / 2), this.j, this.c);
        this.c.setColor(this.o == 0 ? this.p : this.m);
        int i5 = this.b;
        int i6 = this.l;
        canvas.drawRect((i5 / 2) - (i6 / 2), this.j, (i5 / 2) + (i6 / 2), this.f3926a - (this.n.height() / 2.0f), this.c);
        canvas.save();
        canvas.translate((this.b / 2) - (this.n.width() / 2.0f), this.j - (this.n.height() / 2.0f));
        canvas.drawBitmap(this.f3929f, (Rect) null, this.n, new Paint());
        canvas.restore();
        super.onDraw(canvas);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f3926a = getMeasuredHeight();
        int measuredWidth = getMeasuredWidth();
        this.b = measuredWidth;
        if (this.j == -1) {
            int i5 = measuredWidth / 2;
            this.j = this.f3926a / 2;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        a aVar;
        a aVar2;
        int action = motionEvent.getAction();
        if (action == 0) {
            boolean zC = c(motionEvent);
            this.i = zC;
            if (zC && (aVar = this.q) != null) {
                aVar.b(this, this.f3928e);
            }
            motionEvent.getX();
            motionEvent.getY();
        } else if (action != 1) {
            if (action == 2 && this.i) {
                this.j = (int) motionEvent.getY();
                a();
                int i = this.f3927d;
                double d2 = this.j;
                int i2 = this.f3930g;
                float f2 = (int) (((double) i) - (((d2 - (((double) i2) * 0.5d)) / ((double) (this.f3926a - i2))) * ((double) i)));
                this.f3928e = f2;
                if (this.o == 1) {
                    this.f3928e = i - f2;
                }
                motionEvent.getY();
                motionEvent.getX();
                a aVar3 = this.q;
                if (aVar3 != null) {
                    aVar3.c(this, this.f3928e);
                }
                invalidate();
            }
        } else if (this.i && (aVar2 = this.q) != null) {
            aVar2.a(this, this.f3928e);
        }
        return true;
    }

    public void setMaxProgress(int i) {
        this.f3927d = i;
    }

    public void setOnSlideChangeListener(a aVar) {
        this.q = aVar;
    }

    public void setOrientation(int i) {
        this.o = i;
        invalidate();
    }

    public void setProgress(float f2) {
        if (this.f3926a == 0) {
            this.f3926a = getMeasuredHeight();
        }
        this.f3928e = f2;
        invalidate();
    }

    public void setSelectColor(int i) {
        this.p = i;
    }

    public void setThumb(int i) {
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getResources(), i);
        this.f3929f = bitmapDecodeResource;
        this.f3930g = bitmapDecodeResource.getHeight();
        int width = this.f3929f.getWidth();
        this.f3931h = width;
        this.n.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, width, this.f3930g);
        invalidate();
    }

    public void setUnSelectColor(int i) {
        this.m = i;
    }

    public void setmInnerProgressWidth(int i) {
        this.k = i;
        this.l = i;
    }

    public void setmInnerProgressWidthPx(int i) {
        this.l = i;
    }
}
