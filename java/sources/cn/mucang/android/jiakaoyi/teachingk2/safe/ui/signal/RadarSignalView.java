package cn.mucang.android.jiakaoyi.teachingk2.safe.ui.signal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.view.ViewCompat;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public class RadarSignalView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f7872a;
    private final Paint b;
    private final Paint c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Paint f7873d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final TextPaint f7874e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f7875f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private RectF f7876g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private RectF[] f7877h;
    private a i;

    public RadarSignalView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7872a = 20.0f;
        this.b = new Paint(1);
        this.c = new Paint(1);
        this.f7873d = new Paint(1);
        this.f7874e = new TextPaint(1);
        this.f7876g = new RectF();
        a();
    }

    private void a() {
        this.f7872a = getResources().getDimensionPixelSize(R.dimen.rpx_30);
        this.b.setColor(-16711936);
        this.b.setStyle(Paint.Style.FILL);
        this.f7873d.setStyle(Paint.Style.STROKE);
        this.f7873d.setColor(a.f7878d);
        this.f7873d.setStrokeWidth(1.0f);
        this.f7874e.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.f7874e.setTextSize(this.f7872a);
    }

    public void b(int[] iArr) {
        b[] bVarArr = this.i.c;
        if (bVarArr.length < iArr.length) {
            int length = bVarArr.length;
            int[] iArr2 = new int[length];
            System.arraycopy(iArr, 0, iArr2, 0, length);
            iArr = iArr2;
        }
        int length2 = this.i.c.length - iArr.length;
        if (length2 < 0 || length2 % 2 != 0) {
            return;
        }
        int i = length2 / 2;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            this.i.c[i2 + i].b(iArr[i2]);
        }
        invalidate();
    }

    public a getConfig() {
        return this.i;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.i == null) {
            return;
        }
        int i = 0;
        if (this.f7877h == null) {
            this.f7877h = new RectF[4];
            int i2 = 0;
            while (true) {
                RectF[] rectFArr = this.f7877h;
                if (i2 >= rectFArr.length) {
                    break;
                }
                rectFArr[i2] = new RectF();
                int i3 = i2 + 1;
                int i4 = (this.f7875f * i3) / 4;
                float f2 = -i4;
                float f3 = i4;
                this.f7877h[i2].set(f2, f2, f3, f3);
                i2 = i3;
            }
        }
        canvas.translate(getMeasuredWidth() / 2, getMeasuredHeight() / 2);
        int iC = this.i.c();
        this.b.setColor(a.f7879e);
        int i5 = 0;
        while (true) {
            a aVar = this.i;
            b[] bVarArr = aVar.c;
            if (i5 >= bVarArr.length) {
                break;
            }
            b bVar = bVarArr[i5];
            if (bVar.f7882a) {
                float fD = aVar.d(i5);
                float f4 = iC;
                canvas.drawArc(this.f7876g, fD, f4, true, this.b);
                this.c.setColor(bVar.c);
                int iA = (int) (this.i.c[i5].a() * this.f7875f);
                float f5 = -iA;
                float f6 = iA;
                bVar.f7883d.set(f5, f5, f6, f6);
                canvas.drawArc(bVar.f7883d, fD, f4, true, this.c);
                int i6 = 0;
                while (true) {
                    RectF[] rectFArr2 = this.f7877h;
                    if (i6 < rectFArr2.length) {
                        canvas.drawArc(rectFArr2[i6], fD, f4, true, this.f7873d);
                        i6++;
                    }
                }
            } else {
                t.h("DebugRadar", "没安装雷达" + i5);
            }
            i5++;
        }
        while (i < this.i.f7880a) {
            int i7 = i + 1;
            String strValueOf = String.valueOf(i7);
            float fMeasureText = this.f7874e.measureText(strValueOf);
            canvas.save();
            canvas.rotate(this.i.d(i) + 90 + (iC / 2));
            canvas.drawText(strValueOf, (-fMeasureText) / 2.0f, (-this.f7875f) - 5, this.f7874e);
            canvas.restore();
            i = i7;
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        int i5 = (int) ((i2 * 0.8f) / 2.0f);
        this.f7875f = i5;
        this.f7876g.set(-i5, -i5, i5, i5);
        this.f7874e.setTextSize((this.f7872a * i) / getResources().getDimensionPixelSize(R.dimen.rpx_528));
    }

    public void setConfig(a aVar) {
        this.i = aVar;
        invalidate();
    }
}
