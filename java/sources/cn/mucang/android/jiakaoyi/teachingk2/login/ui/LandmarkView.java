package cn.mucang.android.jiakaoyi.teachingk2.login.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.View;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004B\u001b\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B#\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0014\u0010\u0012\u001a\u00020\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eJ\u0010\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0017H\u0014J\u0016\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\tR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LandmarkView;", "Landroid/view/View;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "paint", "Landroid/graphics/Paint;", "points", "", "Landroid/graphics/PointF;", "ratioHeight", "ratioWidth", "inputFace", "", "point", "onDraw", "canvas", "Landroid/graphics/Canvas;", "setRatio", "ratioW", "ratioH", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LandmarkView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f7360a;
    private int b;
    private List<? extends PointF> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Paint f7361d;

    public LandmarkView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7360a = 1280;
        this.b = 720;
        this.f7361d = new Paint(1);
    }

    public final void a(List<? extends PointF> point) {
        kotlin.jvm.internal.r.e(point, "point");
        this.c = point;
        invalidate();
    }

    public final void b(int i, int i2) {
        this.f7360a = i;
        this.b = i2;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        kotlin.jvm.internal.r.e(canvas, "canvas");
        super.onDraw(canvas);
        this.f7361d.setColor(-16711936);
        this.f7361d.setStrokeWidth(8.0f);
        List<? extends PointF> list = this.c;
        if (list == null) {
            return;
        }
        for (PointF pointF : list) {
            canvas.drawPoint((pointF.x * getWidth()) / this.f7360a, (pointF.y * getHeight()) / this.b, this.f7361d);
        }
    }
}
