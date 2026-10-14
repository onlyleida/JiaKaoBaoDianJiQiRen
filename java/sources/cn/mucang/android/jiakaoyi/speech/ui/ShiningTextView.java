package cn.mucang.android.jiakaoyi.speech.ui;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.view.View;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.loc.ak;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u001d\u001a\u00020\u001eH\u0002J\b\u0010\u001f\u001a\u00020\u001eH\u0002J\b\u0010 \u001a\u00020\u0017H\u0002J\u0010\u0010!\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020#H\u0014J(\u0010$\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\u00102\u0006\u0010'\u001a\u00020\u00102\u0006\u0010(\u001a\u00020\u0010H\u0014J\u000e\u0010)\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020+R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R4\u0010\u0019\u001a&\u0012\f\u0012\n \u001b*\u0004\u0018\u00010\u00170\u0017 \u001b*\u0012\u0012\u000e\b\u0001\u0012\n \u001b*\u0004\u0018\u00010\u00170\u00170\u001a0\u001aX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001c¨\u0006,"}, d2 = {"Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;", "Landroid/view/View;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "darkGradient", "Landroid/graphics/LinearGradient;", "distance", "", "job", "Lkotlinx/coroutines/Job;", "lightGradient", "mBaseline", "mHeight", "", "mMatrix", "Landroid/graphics/Matrix;", "mWidth", "paint", "Landroid/graphics/Paint;", "text", "", "tipIndex", "tipList", "", "kotlin.jvm.PlatformType", "[Ljava/lang/String;", "dark", "", "light", "nextTip", "onDraw", "canvas", "Landroid/graphics/Canvas;", "onSizeChanged", "w", ak.f12508g, "oldw", "oldh", "setShow", "show", "", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ShiningTextView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String[] f5909a;
    private int b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f5910d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f5911e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f5912f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f5913g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Paint f5914h;
    private final Matrix i;
    private LinearGradient j;
    private LinearGradient k;
    private t1 l;

    private final void f() {
        this.l = kotlinx.coroutines.g.b(j0.b(), null, null, new ShiningTextView$dark$1(this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h() {
        this.c = j();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        valueAnimatorOfFloat.setDuration(200L);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: cn.mucang.android.jiakaoyi.speech.ui.b
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ShiningTextView.i(this.f5916a, valueAnimator);
            }
        });
        valueAnimatorOfFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(ShiningTextView this$0, ValueAnimator valueAnimator) {
        r.e(this$0, "this$0");
        float animatedFraction = valueAnimator.getAnimatedFraction();
        this$0.i.setTranslate((this$0.f5911e * animatedFraction) + 100.0f, BitmapDescriptorFactory.HUE_RED);
        LinearGradient linearGradient = this$0.k;
        if (linearGradient != null) {
            linearGradient.setLocalMatrix(this$0.i);
        }
        this$0.f5914h.setShader(this$0.k);
        this$0.invalidate();
        if (animatedFraction == 1.0f) {
            this$0.f();
        }
    }

    private final String j() {
        int i = this.b + 1;
        this.b = i;
        String[] strArr = this.f5909a;
        String str = strArr[i % strArr.length];
        r.d(str, "tipList[tipIndex.rem(tipList.size)]");
        return str;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        r.e(canvas, "canvas");
        super.onDraw(canvas);
        canvas.drawText(this.c, BitmapDescriptorFactory.HUE_RED, this.f5913g, this.f5914h);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h2, int oldw, int oldh) {
        super.onSizeChanged(w, h2, oldw, oldh);
        this.f5910d = h2;
        this.f5911e = w;
        this.f5913g = (h2 / 2) + this.f5912f;
    }

    public final void setShow(boolean show) {
        int i;
        this.f5914h.setShader(null);
        invalidate();
        if (show) {
            f();
            i = 0;
        } else {
            t1 t1Var = this.l;
            if (t1Var != null) {
                t1.a.a(t1Var, null, 1, null);
            }
            i = 8;
        }
        setVisibility(i);
    }
}
