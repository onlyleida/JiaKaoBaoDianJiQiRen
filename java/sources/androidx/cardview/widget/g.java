package androidx.cardview.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.cardview.R;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes.dex */
class g extends Drawable {
    private static final double q = Math.cos(Math.toRadians(45.0d));
    static a r;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f553a;
    private Paint c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Paint f554d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final RectF f555e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f556f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Path f557g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f558h;
    private float i;
    private float j;
    private ColorStateList k;
    private final int m;
    private final int n;
    private boolean l = true;
    private boolean o = true;
    private boolean p = false;
    private Paint b = new Paint(5);

    interface a {
        void a(Canvas canvas, RectF rectF, float f2, Paint paint);
    }

    g(Resources resources, ColorStateList colorStateList, float f2, float f3, float f4) {
        this.m = resources.getColor(R.color.cardview_shadow_start_color);
        this.n = resources.getColor(R.color.cardview_shadow_end_color);
        this.f553a = resources.getDimensionPixelSize(R.dimen.cardview_compat_inset_shadow);
        n(colorStateList);
        Paint paint = new Paint(5);
        this.c = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f556f = (int) (f2 + 0.5f);
        this.f555e = new RectF();
        Paint paint2 = new Paint(this.c);
        this.f554d = paint2;
        paint2.setAntiAlias(false);
        s(f3, f4);
    }

    private void a(Rect rect) {
        float f2 = this.f558h;
        float f3 = 1.5f * f2;
        this.f555e.set(rect.left + f2, rect.top + f3, rect.right - f2, rect.bottom - f3);
        b();
    }

    private void b() {
        float f2 = this.f556f;
        RectF rectF = new RectF(-f2, -f2, f2, f2);
        RectF rectF2 = new RectF(rectF);
        float f3 = this.i;
        rectF2.inset(-f3, -f3);
        Path path = this.f557g;
        if (path == null) {
            this.f557g = new Path();
        } else {
            path.reset();
        }
        this.f557g.setFillType(Path.FillType.EVEN_ODD);
        this.f557g.moveTo(-this.f556f, BitmapDescriptorFactory.HUE_RED);
        this.f557g.rLineTo(-this.i, BitmapDescriptorFactory.HUE_RED);
        this.f557g.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f557g.arcTo(rectF, 270.0f, -90.0f, false);
        this.f557g.close();
        float f4 = this.f556f;
        float f5 = f4 / (this.i + f4);
        Paint paint = this.c;
        float f6 = this.f556f + this.i;
        int i = this.m;
        paint.setShader(new RadialGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f6, new int[]{i, i, this.n}, new float[]{BitmapDescriptorFactory.HUE_RED, f5, 1.0f}, Shader.TileMode.CLAMP));
        Paint paint2 = this.f554d;
        float f7 = this.f556f;
        float f8 = this.i;
        int i2 = this.m;
        paint2.setShader(new LinearGradient(BitmapDescriptorFactory.HUE_RED, (-f7) + f8, BitmapDescriptorFactory.HUE_RED, (-f7) - f8, new int[]{i2, i2, this.n}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f554d.setAntiAlias(false);
    }

    static float c(float f2, float f3, boolean z) {
        return z ? (float) (((double) f2) + ((1.0d - q) * ((double) f3))) : f2;
    }

    static float d(float f2, float f3, boolean z) {
        return z ? (float) (((double) (f2 * 1.5f)) + ((1.0d - q) * ((double) f3))) : f2 * 1.5f;
    }

    private void e(Canvas canvas) {
        float f2 = this.f556f;
        float f3 = (-f2) - this.i;
        float f4 = f2 + this.f553a + (this.j / 2.0f);
        float f5 = f4 * 2.0f;
        boolean z = this.f555e.width() - f5 > BitmapDescriptorFactory.HUE_RED;
        boolean z2 = this.f555e.height() - f5 > BitmapDescriptorFactory.HUE_RED;
        int iSave = canvas.save();
        RectF rectF = this.f555e;
        canvas.translate(rectF.left + f4, rectF.top + f4);
        canvas.drawPath(this.f557g, this.c);
        if (z) {
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f3, this.f555e.width() - f5, -this.f556f, this.f554d);
        }
        canvas.restoreToCount(iSave);
        int iSave2 = canvas.save();
        RectF rectF2 = this.f555e;
        canvas.translate(rectF2.right - f4, rectF2.bottom - f4);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f557g, this.c);
        if (z) {
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f3, this.f555e.width() - f5, (-this.f556f) + this.i, this.f554d);
        }
        canvas.restoreToCount(iSave2);
        int iSave3 = canvas.save();
        RectF rectF3 = this.f555e;
        canvas.translate(rectF3.left + f4, rectF3.bottom - f4);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f557g, this.c);
        if (z2) {
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f3, this.f555e.height() - f5, -this.f556f, this.f554d);
        }
        canvas.restoreToCount(iSave3);
        int iSave4 = canvas.save();
        RectF rectF4 = this.f555e;
        canvas.translate(rectF4.right - f4, rectF4.top + f4);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f557g, this.c);
        if (z2) {
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f3, this.f555e.height() - f5, -this.f556f, this.f554d);
        }
        canvas.restoreToCount(iSave4);
    }

    private void n(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.k = colorStateList;
        this.b.setColor(colorStateList.getColorForState(getState(), this.k.getDefaultColor()));
    }

    private void s(float f2, float f3) {
        if (f2 < BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException("Invalid shadow size " + f2 + ". Must be >= 0");
        }
        if (f3 < BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException("Invalid max shadow size " + f3 + ". Must be >= 0");
        }
        float fT = t(f2);
        float fT2 = t(f3);
        if (fT > fT2) {
            if (!this.p) {
                this.p = true;
            }
            fT = fT2;
        }
        if (this.j == fT && this.f558h == fT2) {
            return;
        }
        this.j = fT;
        this.f558h = fT2;
        this.i = (int) ((fT * 1.5f) + this.f553a + 0.5f);
        this.l = true;
        invalidateSelf();
    }

    private int t(float f2) {
        int i = (int) (f2 + 0.5f);
        return i % 2 == 1 ? i - 1 : i;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.l) {
            a(getBounds());
            this.l = false;
        }
        canvas.translate(BitmapDescriptorFactory.HUE_RED, this.j / 2.0f);
        e(canvas);
        canvas.translate(BitmapDescriptorFactory.HUE_RED, (-this.j) / 2.0f);
        r.a(canvas, this.f555e, this.f556f, this.b);
    }

    ColorStateList f() {
        return this.k;
    }

    float g() {
        return this.f556f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int iCeil = (int) Math.ceil(d(this.f558h, this.f556f, this.o));
        int iCeil2 = (int) Math.ceil(c(this.f558h, this.f556f, this.o));
        rect.set(iCeil2, iCeil, iCeil2, iCeil);
        return true;
    }

    void h(Rect rect) {
        getPadding(rect);
    }

    float i() {
        return this.f558h;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.k;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    float j() {
        float f2 = this.f558h;
        return (Math.max(f2, this.f556f + this.f553a + ((f2 * 1.5f) / 2.0f)) * 2.0f) + (((this.f558h * 1.5f) + this.f553a) * 2.0f);
    }

    float k() {
        float f2 = this.f558h;
        return (Math.max(f2, this.f556f + this.f553a + (f2 / 2.0f)) * 2.0f) + ((this.f558h + this.f553a) * 2.0f);
    }

    float l() {
        return this.j;
    }

    void m(boolean z) {
        this.o = z;
        invalidateSelf();
    }

    void o(ColorStateList colorStateList) {
        n(colorStateList);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.l = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.k;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.b.getColor() == colorForState) {
            return false;
        }
        this.b.setColor(colorForState);
        this.l = true;
        invalidateSelf();
        return true;
    }

    void p(float f2) {
        if (f2 < BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException("Invalid radius " + f2 + ". Must be >= 0");
        }
        float f3 = (int) (f2 + 0.5f);
        if (this.f556f == f3) {
            return;
        }
        this.f556f = f3;
        this.l = true;
        invalidateSelf();
    }

    void q(float f2) {
        s(this.j, f2);
    }

    void r(float f2) {
        s(f2, this.f558h);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.b.setAlpha(i);
        this.c.setAlpha(i);
        this.f554d.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.b.setColorFilter(colorFilter);
    }
}
