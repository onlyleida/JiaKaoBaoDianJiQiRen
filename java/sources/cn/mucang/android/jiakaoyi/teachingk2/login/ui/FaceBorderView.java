package cn.mucang.android.jiakaoyi.teachingk2.login.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004B\u001b\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B#\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0014J\u0016\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\tR\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001d"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceBorderView;", "Landroid/view/View;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "paint", "Landroid/graphics/Paint;", "getPaint", "()Landroid/graphics/Paint;", "rect", "Landroid/graphics/Rect;", "getRect", "()Landroid/graphics/Rect;", "setRect", "(Landroid/graphics/Rect;)V", "onDraw", "", "canvas", "Landroid/graphics/Canvas;", "updateBox", "box", "Lorg/opencv/core/Rect;", "videoWidth", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FaceBorderView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Rect f7353a;
    private final Paint b;

    public FaceBorderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7353a = new Rect();
        Paint paint = new Paint(1);
        this.b = paint;
        paint.setColor(-16711936);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(5.0f);
    }

    public final void a(org.opencv.core.Rect box, int i) {
        kotlin.jvm.internal.r.e(box, "box");
        float width = getWidth() / i;
        Rect rect = this.f7353a;
        int i2 = box.x;
        int i3 = box.y;
        rect.set((int) (i2 * width), (int) (i3 * width), (int) ((i2 + box.width) * width), (int) ((i3 + box.height) * width));
        invalidate();
    }

    /* JADX INFO: renamed from: getPaint, reason: from getter */
    public final Paint getB() {
        return this.b;
    }

    /* JADX INFO: renamed from: getRect, reason: from getter */
    public final Rect getF7353a() {
        return this.f7353a;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        kotlin.jvm.internal.r.e(canvas, "canvas");
        super.onDraw(canvas);
        canvas.drawRect(this.f7353a, this.b);
    }

    public final void setRect(Rect rect) {
        kotlin.jvm.internal.r.e(rect, "<set-?>");
        this.f7353a = rect;
    }
}
