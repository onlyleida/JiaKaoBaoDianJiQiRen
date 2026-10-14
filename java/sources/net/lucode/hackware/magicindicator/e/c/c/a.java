package net.lucode.hackware.magicindicator.e.c.c;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.Arrays;
import java.util.List;
import net.lucode.hackware.magicindicator.e.b;
import net.lucode.hackware.magicindicator.e.c.b.c;

/* JADX INFO: loaded from: classes6.dex */
public class a extends View implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f16149a;
    private Interpolator b;
    private Interpolator c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f16150d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f16151e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f16152f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f16153g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f16154h;
    private Paint i;
    private List<net.lucode.hackware.magicindicator.e.c.d.a> j;
    private List<Integer> k;
    private RectF l;

    public a(Context context) {
        super(context);
        this.b = new LinearInterpolator();
        this.c = new LinearInterpolator();
        this.l = new RectF();
        b(context);
    }

    private void b(Context context) {
        Paint paint = new Paint(1);
        this.i = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f16151e = b.a(context, 3.0d);
        this.f16153g = b.a(context, 10.0d);
    }

    @Override // net.lucode.hackware.magicindicator.e.c.b.c
    public void a(List<net.lucode.hackware.magicindicator.e.c.d.a> list) {
        this.j = list;
    }

    public List<Integer> getColors() {
        return this.k;
    }

    public Interpolator getEndInterpolator() {
        return this.c;
    }

    public float getLineHeight() {
        return this.f16151e;
    }

    public float getLineWidth() {
        return this.f16153g;
    }

    public int getMode() {
        return this.f16149a;
    }

    public Paint getPaint() {
        return this.i;
    }

    public float getRoundRadius() {
        return this.f16154h;
    }

    public Interpolator getStartInterpolator() {
        return this.b;
    }

    public float getXOffset() {
        return this.f16152f;
    }

    public float getYOffset() {
        return this.f16150d;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        RectF rectF = this.l;
        float f2 = this.f16154h;
        canvas.drawRoundRect(rectF, f2, f2, this.i);
    }

    @Override // net.lucode.hackware.magicindicator.e.c.b.c
    public void onPageScrollStateChanged(int i) {
    }

    @Override // net.lucode.hackware.magicindicator.e.c.b.c
    public void onPageScrolled(int i, float f2, int i2) {
        float fB;
        float fB2;
        float fB3;
        float f3;
        float f4;
        int i3;
        List<net.lucode.hackware.magicindicator.e.c.d.a> list = this.j;
        if (list == null || list.isEmpty()) {
            return;
        }
        List<Integer> list2 = this.k;
        if (list2 != null && list2.size() > 0) {
            this.i.setColor(net.lucode.hackware.magicindicator.e.a.a(f2, this.k.get(Math.abs(i) % this.k.size()).intValue(), this.k.get(Math.abs(i + 1) % this.k.size()).intValue()));
        }
        net.lucode.hackware.magicindicator.e.c.d.a aVarA = net.lucode.hackware.magicindicator.a.a(this.j, i);
        net.lucode.hackware.magicindicator.e.c.d.a aVarA2 = net.lucode.hackware.magicindicator.a.a(this.j, i + 1);
        int i4 = this.f16149a;
        if (i4 != 0) {
            if (i4 == 1) {
                float f5 = aVarA.f16157e;
                f4 = this.f16152f;
                fB = f5 + f4;
                f3 = aVarA2.f16157e + f4;
                fB2 = aVarA.f16159g - f4;
                i3 = aVarA2.f16159g;
            } else {
                fB = aVarA.f16155a + ((aVarA.b() - this.f16153g) / 2.0f);
                float fB4 = aVarA2.f16155a + ((aVarA2.b() - this.f16153g) / 2.0f);
                fB2 = ((aVarA.b() + this.f16153g) / 2.0f) + aVarA.f16155a;
                fB3 = ((aVarA2.b() + this.f16153g) / 2.0f) + aVarA2.f16155a;
                f3 = fB4;
            }
            this.l.left = fB + ((f3 - fB) * this.b.getInterpolation(f2));
            this.l.right = fB2 + ((fB3 - fB2) * this.c.getInterpolation(f2));
            this.l.top = (getHeight() - this.f16151e) - this.f16150d;
            this.l.bottom = getHeight() - this.f16150d;
            invalidate();
        }
        float f6 = aVarA.f16155a;
        f4 = this.f16152f;
        fB = f6 + f4;
        f3 = aVarA2.f16155a + f4;
        fB2 = aVarA.c - f4;
        i3 = aVarA2.c;
        fB3 = i3 - f4;
        this.l.left = fB + ((f3 - fB) * this.b.getInterpolation(f2));
        this.l.right = fB2 + ((fB3 - fB2) * this.c.getInterpolation(f2));
        this.l.top = (getHeight() - this.f16151e) - this.f16150d;
        this.l.bottom = getHeight() - this.f16150d;
        invalidate();
    }

    @Override // net.lucode.hackware.magicindicator.e.c.b.c
    public void onPageSelected(int i) {
    }

    public void setColors(Integer... numArr) {
        this.k = Arrays.asList(numArr);
    }

    public void setEndInterpolator(Interpolator interpolator) {
        this.c = interpolator;
        if (interpolator == null) {
            this.c = new LinearInterpolator();
        }
    }

    public void setLineHeight(float f2) {
        this.f16151e = f2;
    }

    public void setLineWidth(float f2) {
        this.f16153g = f2;
    }

    public void setMode(int i) {
        if (i == 2 || i == 0 || i == 1) {
            this.f16149a = i;
            return;
        }
        throw new IllegalArgumentException("mode " + i + " not supported.");
    }

    public void setRoundRadius(float f2) {
        this.f16154h = f2;
    }

    public void setStartInterpolator(Interpolator interpolator) {
        this.b = interpolator;
        if (interpolator == null) {
            this.b = new LinearInterpolator();
        }
    }

    public void setXOffset(float f2) {
        this.f16152f = f2;
    }

    public void setYOffset(float f2) {
        this.f16150d = f2;
    }
}
