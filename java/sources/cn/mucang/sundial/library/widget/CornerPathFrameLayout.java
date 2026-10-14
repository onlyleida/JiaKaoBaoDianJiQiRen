package cn.mucang.sundial.library.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import cn.mucang.android.core.utils.s0;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017B\u001b\b\u0016\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b\u0016\u0010\u001aB#\b\u0016\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u0016\u0010\u001dB+\b\u0016\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001b¢\u0006\u0004\b\u0016\u0010\u001fJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\u0007\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0007\u0010\u0006R\u0019\u0010\t\u001a\u00020\b8\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0011\u001a\u00020\u00108\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0012¨\u0006 "}, d2 = {"Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;", "Landroid/widget/FrameLayout;", "Landroid/graphics/Canvas;", "canvas", "Lkotlin/v;", "drawCornerPath", "(Landroid/graphics/Canvas;)V", "onDraw", "Landroid/graphics/Paint;", "paint", "Landroid/graphics/Paint;", "getPaint", "()Landroid/graphics/Paint;", "Landroid/graphics/Path;", "path", "Landroid/graphics/Path;", "", "strokeWidth", "F", "cornerDistance", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "defStyleRes", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class CornerPathFrameLayout extends FrameLayout {
    private final float cornerDistance;
    private final Paint paint;
    private final Path path;
    private final float strokeWidth;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CornerPathFrameLayout(Context context) {
        this(context, null);
        r.e(context, "context");
    }

    private final void drawCornerPath(Canvas canvas) {
        this.paint.reset();
        this.paint.setColor(Color.parseColor("#008AFF"));
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setStrokeWidth(this.strokeWidth);
        this.path.reset();
        float f2 = 2;
        this.path.moveTo(this.strokeWidth / f2, this.cornerDistance);
        Path path = this.path;
        float f3 = this.strokeWidth;
        path.lineTo(f3 / f2, f3 / f2);
        this.path.lineTo(this.cornerDistance, this.strokeWidth / f2);
        this.path.moveTo(getWidth() - this.cornerDistance, this.strokeWidth / f2);
        Path path2 = this.path;
        float width = getWidth();
        float f4 = this.strokeWidth;
        path2.lineTo(width - (f4 / f2), f4 / f2);
        this.path.lineTo(getWidth() - (this.strokeWidth / f2), this.cornerDistance);
        this.path.moveTo(getWidth() - (this.strokeWidth / f2), getHeight() - this.cornerDistance);
        this.path.lineTo(getWidth() - (this.strokeWidth / f2), getHeight() - (this.strokeWidth / f2));
        this.path.lineTo(getWidth() - this.cornerDistance, getHeight() - (this.strokeWidth / f2));
        this.path.moveTo(this.cornerDistance, getHeight() - (this.strokeWidth / f2));
        this.path.lineTo(this.strokeWidth / f2, getHeight() - (this.strokeWidth / f2));
        this.path.lineTo(this.strokeWidth / f2, getHeight() - this.cornerDistance);
        canvas.drawPath(this.path, this.paint);
    }

    public final Paint getPaint() {
        return this.paint;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (canvas != null) {
            drawCornerPath(canvas);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CornerPathFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        r.e(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CornerPathFrameLayout(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
        r.e(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CornerPathFrameLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        r.e(context, "context");
        this.paint = new Paint();
        this.path = new Path();
        this.cornerDistance = s0.a(36.0f);
        this.strokeWidth = s0.a(5.0f);
    }
}
