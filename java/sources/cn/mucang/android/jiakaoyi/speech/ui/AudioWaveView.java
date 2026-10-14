package cn.mucang.android.jiakaoyi.speech.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.common.primitives.UnsignedBytes;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class AudioWaveView extends View {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static float f5903h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float[] f5904a;
    private float[] b;
    private Paint c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f5905d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f5906e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f5907f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f5908g;

    public AudioWaveView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5907f = -1;
        this.f5908g = 32768.0f;
    }

    private float a(float f2) {
        return f2 * getResources().getDisplayMetrics().density;
    }

    private void b(Canvas canvas) {
        float[] fArr;
        Paint paint = this.c;
        if (paint == null || (fArr = this.b) == null) {
            return;
        }
        canvas.drawLines(fArr, paint);
    }

    private void c() {
        f5903h = a(1.0f);
        int width = getWidth();
        int height = getHeight();
        if (width <= 0 || height <= 0 || this.c != null) {
            return;
        }
        this.f5906e = a(2.0f);
        Paint paint = new Paint();
        this.c = paint;
        paint.setAntiAlias(true);
        this.c.setStrokeWidth(a(1.0f));
        setColor(this.f5907f);
        int i = (int) (((width * 0.5f) / this.f5906e) + 1.0f);
        this.f5905d = i;
        if (i % 2 != 0) {
            this.f5905d = i + 1;
        }
        int i2 = this.f5905d;
        this.f5904a = new float[i2];
        this.b = new float[i2 * 4];
        f();
        postInvalidate();
    }

    private static short d(byte b, byte b2) {
        return (short) ((b & UnsignedBytes.MAX_VALUE) | ((b2 & UnsignedBytes.MAX_VALUE) << 8));
    }

    private void f() {
        if (this.b == null) {
            return;
        }
        float height = getHeight();
        float f2 = height * 0.5f;
        float strokeWidth = this.c.getStrokeWidth() * 0.5f;
        if (this.f5908g <= BitmapDescriptorFactory.HUE_RED) {
            this.f5908g = 32768.0f;
        }
        int i = 0;
        while (true) {
            float[] fArr = this.f5904a;
            if (i >= fArr.length) {
                return;
            }
            float f3 = fArr[i] > BitmapDescriptorFactory.HUE_RED ? 1.0f * f2 * (fArr[i] / this.f5908g) : f5903h;
            float f4 = f5903h;
            if (f3 < f4) {
                f3 = f4;
            }
            if (f3 > height) {
                f3 = height;
            }
            float[] fArr2 = this.b;
            int i2 = i * 4;
            fArr2[i2] = (i * 2 * this.f5906e) + strokeWidth;
            fArr2[i2 + 1] = f2 - f3;
            fArr2[i2 + 2] = fArr2[i2];
            fArr2[i2 + 3] = f3 + f2;
            i++;
        }
    }

    public void e() {
        float[] fArr = this.f5904a;
        if (fArr == null) {
            return;
        }
        Arrays.fill(fArr, BitmapDescriptorFactory.HUE_RED);
        f();
        postInvalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        c();
        b(canvas);
    }

    public void setColor(int i) {
        this.f5907f = i;
        Paint paint = this.c;
        if (paint != null) {
            int i2 = 369098751 & i;
            paint.setShader(new LinearGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), new int[]{i2, i, i2}, (float[]) null, Shader.TileMode.CLAMP));
        }
    }

    public void setData(byte[] bArr) {
        float[] fArr = this.f5904a;
        if (fArr == null) {
            return;
        }
        this.f5908g = 16384.0f;
        int length = fArr.length * 2;
        float fAbs = BitmapDescriptorFactory.HUE_RED;
        if (bArr == null) {
            Arrays.fill(fArr, BitmapDescriptorFactory.HUE_RED);
        } else {
            if (bArr.length >= length) {
                int length2 = bArr.length / fArr.length;
                if (length2 % 2 != 0) {
                    length2--;
                }
                for (int i = 0; i < this.f5904a.length; i++) {
                    int i2 = i * length2;
                    float fAbs2 = Math.abs((int) d(bArr[i2], bArr[i2 + 1]));
                    int i3 = i2 + 3;
                    float fAbs3 = i3 < bArr.length ? Math.abs((int) d(bArr[i2 + 2], bArr[i3])) : fAbs2;
                    float[] fArr2 = this.f5904a;
                    fArr2[i] = (((fAbs2 + fAbs3) * 0.5f) + fArr2[i]) * 0.65f;
                    if (fArr2[i] > this.f5908g) {
                        this.f5908g = fArr2[i];
                    }
                }
            } else {
                int length3 = fArr.length / bArr.length;
                int i4 = 0;
                int i5 = 0;
                while (i4 < bArr.length - 3 && i5 < this.f5904a.length) {
                    if (i4 == 0) {
                        fAbs = Math.abs((int) d(bArr[i4], bArr[i4 + 1]));
                    }
                    float fAbs4 = Math.abs((int) d(bArr[i4 + 2], bArr[i4 + 3]));
                    for (int i6 = 0; i6 < length3; i6++) {
                        float[] fArr3 = this.f5904a;
                        if (i5 >= fArr3.length) {
                            break;
                        }
                        fArr3[i5] = ((((i6 * 1.0f) / length3) * (fAbs4 - fAbs)) + fAbs + fArr3[i5]) * 0.65f;
                        if (fArr3[i5] > this.f5908g) {
                            this.f5908g = fArr3[i5];
                        }
                        i5++;
                    }
                    i4 += 4;
                    fAbs = fAbs4;
                }
            }
        }
        f();
        postInvalidate();
    }
}
