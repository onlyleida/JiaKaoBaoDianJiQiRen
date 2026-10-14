package cn.mucang.jiakaoyi.uilib.ui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.amap.api.fence.GeoFence;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mucang.android.jiakaoyi.uilib.R;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0003456B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0016J\u0010\u0010&\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0002J\u0010\u0010'\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0002J\u0010\u0010(\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0002J8\u0010)\u001a\u00020#2\u0006\u0010*\u001a\u00020\b2\u0006\u0010+\u001a\u00020\b2\u0006\u0010,\u001a\u00020\b2\u0006\u0010-\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010$\u001a\u00020%H\u0002J\"\u0010.\u001a\u00020#2\u0006\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00102\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u0010\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202H\u0016J\u000e\u00103\u001a\u00020#2\u0006\u0010\u0015\u001a\u00020\u000bR\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u000b8\u0002X\u0083\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00060\rR\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u00020\u000b8\u0002X\u0083\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0019\u001a\n \u001b*\u0004\u0018\u00010\u001a0\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u00067"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;", "Landroid/view/View;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "centerCircleRadius", "", "centerCircleStrokeWidth", "defaultBackground", "", "dragController", "Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$DragController;", "lineHeight", "onProgressChange", "Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$OnProgressChange;", "paint", "Landroid/graphics/Paint;", "param", "Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$Param;", "progress", "progressBackground", "progressPoint", "Landroid/graphics/PointF;", "seekBarBg", "Landroid/graphics/Bitmap;", "kotlin.jvm.PlatformType", "seekBarHeight", "seekBarPaddingBottom", "seekBarRectF", "Landroid/graphics/RectF;", "seekBarTextSize", "seekBarWidth", "draw", "", "canvas", "Landroid/graphics/Canvas;", "drawDefaultBackground", "drawProgressBackground", "drawProgressText", "drawRect", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "initParam", "onTouchEvent", "", GeoFence.BUNDLE_KEY_FENCESTATUS, "Landroid/view/MotionEvent;", "resetProgress", "DragController", "OnProgressChange", "Param", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class JSeekBar extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f10291a;
    private final int b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Bitmap f10292d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f10293e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f10294f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float f10295g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float f10296h;
    private final float i;
    private final float j;
    private final float k;
    private final RectF l;
    private final PointF m;
    private final Paint n;
    private final a o;
    private int p;
    private b q;

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J\u000e\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$DragController;", "", "(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;)V", "downX", "", "dragging", "", "handleRect", "Landroid/graphics/RectF;", "hitOffset", "", "initProgressX", "isHit", "checkHit", "x", "y", "moveProgress", "", "disX", "onTouchEvent", GeoFence.BUNDLE_KEY_FENCESTATUS, "Landroid/view/MotionEvent;", "setHitRect", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    private final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f10297a;
        private float b;
        private float c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f10298d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f10299e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final RectF f10300f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ JSeekBar f10301g;

        public a(JSeekBar this$0) {
            r.e(this$0, "this$0");
            this.f10301g = this$0;
            this.f10297a = this$0.getContext().getResources().getDimensionPixelSize(R.dimen.dp_150);
            this.f10300f = new RectF();
        }

        private final boolean a(float f2, float f3) {
            return this.f10300f.contains(f2, f3);
        }

        private final void b(float f2) {
            if (f2 <= BitmapDescriptorFactory.HUE_RED || f2 >= this.f10301g.getWidth()) {
                return;
            }
            float f3 = 2;
            if (f2 >= this.f10301g.getWidth() - (this.f10301g.f10293e / f3)) {
                this.f10301g.m.x = this.f10301g.getWidth() - (this.f10301g.f10293e / f3);
                JSeekBar jSeekBar = this.f10301g;
                jSeekBar.p = jSeekBar.f10291a.getB();
            } else if (f2 <= this.f10301g.f10293e / f3) {
                this.f10301g.m.x = this.f10301g.f10293e / f3;
                JSeekBar jSeekBar2 = this.f10301g;
                jSeekBar2.p = jSeekBar2.f10291a.getF10302a();
            } else {
                this.f10301g.m.x = f2;
                JSeekBar jSeekBar3 = this.f10301g;
                jSeekBar3.p = jSeekBar3.f10291a.getF10302a() + kotlin.y.c.a(((((double) f2) * 1.0d) * ((double) (this.f10301g.f10291a.getB() - this.f10301g.f10291a.getF10302a()))) / ((double) this.f10301g.getWidth()));
            }
            this.f10301g.invalidate();
        }

        public final boolean c(MotionEvent event) {
            r.e(event, "event");
            int action = event.getAction();
            if (action == 0) {
                this.b = event.getX();
                this.c = this.f10301g.m.x;
                this.f10298d = a(event.getX(), event.getY());
            } else if (action == 1) {
                this.f10298d = false;
                this.f10299e = false;
                b bVar = this.f10301g.q;
                if (bVar != null) {
                    bVar.a(this.f10301g.p);
                }
            } else if (action == 2) {
                if (!this.f10299e) {
                    this.f10299e = true;
                }
                if (this.f10298d) {
                    b((event.getX() - this.b) + this.c);
                }
            } else if (action == 3) {
                this.f10298d = false;
                this.f10299e = false;
                b bVar2 = this.f10301g.q;
                if (bVar2 != null) {
                    bVar2.a(this.f10301g.p);
                }
            }
            return true;
        }

        public final void d() {
            this.f10300f.set(this.f10301g.m.x - this.f10297a, this.f10301g.m.y - this.f10297a, this.f10301g.m.x + this.f10297a, this.f10301g.m.y + this.f10297a);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$OnProgressChange;", "", "onChange", "", "progress", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public interface b {
        void a(int i);
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0004J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\r"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$Param;", "", "()V", "maxValue", "", "getMaxValue", "()I", "setMaxValue", "(I)V", "minValue", "getMinValue", "setMinValue", "value", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f10302a;
        private int b = 100;

        /* JADX INFO: renamed from: a, reason: from getter */
        public final int getB() {
            return this.b;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final int getF10302a() {
            return this.f10302a;
        }

        public final c c(int i) {
            this.f10302a = i;
            return this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        r.e(context, "context");
        this.f10291a = new c();
        this.b = Color.parseColor("#e8e8e8");
        this.c = Color.parseColor("#00baff");
        this.f10292d = BitmapFactory.decodeResource(context.getResources(), R.drawable.ic_seekbar);
        this.f10293e = context.getResources().getDimensionPixelSize(R.dimen.dp_38);
        float dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.dp_45);
        this.f10294f = dimensionPixelSize;
        this.f10295g = context.getResources().getDimensionPixelSize(R.dimen.dp_17);
        this.f10296h = context.getResources().getDimensionPixelSize(R.dimen.font_20);
        this.i = context.getResources().getDimensionPixelSize(R.dimen.dp_6);
        Resources resources = context.getResources();
        int i = R.dimen.dp_3;
        this.j = resources.getDimensionPixelSize(i);
        this.k = context.getResources().getDimensionPixelSize(i);
        RectF rectF = new RectF();
        this.l = rectF;
        this.m = new PointF(-1.0f, -1.0f);
        Paint paint = new Paint();
        this.n = paint;
        this.o = new a(this);
        paint.setAntiAlias(true);
        rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, dimensionPixelSize);
    }

    private final void g(Canvas canvas) {
        canvas.save();
        this.n.setColor(this.b);
        float f2 = 2;
        j(this.f10293e / f2, getHeight() - (this.i + (this.k / f2)), getWidth() - (this.f10293e / f2), getHeight() - (this.i - (this.k / f2)), this.n, canvas);
        canvas.restore();
    }

    private final void h(Canvas canvas) {
        canvas.save();
        this.n.setStyle(Paint.Style.FILL);
        this.n.setColor(this.c);
        float f2 = 2;
        j(this.f10293e / f2, getHeight() - (this.i + (this.k / f2)), this.m.x, getHeight() - (this.i - (this.k / f2)), this.n, canvas);
        canvas.restore();
    }

    private final void i(Canvas canvas) {
        float f2;
        float f3;
        int i;
        float f4;
        canvas.save();
        this.n.setStyle(Paint.Style.FILL);
        this.n.setStrokeWidth(BitmapDescriptorFactory.HUE_RED);
        this.n.setColor(-1);
        float f5 = this.m.x;
        float height = getHeight();
        float f6 = this.i;
        canvas.drawCircle(f5, height - f6, f6, this.n);
        this.n.setStyle(Paint.Style.STROKE);
        this.n.setColor(this.c);
        this.n.setStrokeWidth(this.j);
        float f7 = this.m.x;
        float height2 = getHeight();
        float f8 = this.i;
        float f9 = 2;
        canvas.drawCircle(f7, height2 - f8, f8 - (this.j / f9), this.n);
        this.l.set(this.m.x - (this.f10293e / f9), (getHeight() - this.f10295g) - this.f10294f, this.m.x + (this.f10293e / f9), getHeight() - this.f10295g);
        canvas.drawBitmap(this.f10292d, (Rect) null, this.l, (Paint) null);
        this.n.setColor(-1);
        this.n.setTextSize(this.f10296h);
        this.n.setTypeface(Typeface.DEFAULT_BOLD);
        this.n.setStrokeWidth(1.0f);
        this.n.setStyle(Paint.Style.FILL);
        int i2 = this.p;
        if (i2 >= 10) {
            if (i2 == 100) {
                f2 = this.m.x;
                f4 = this.f10293e / f9;
            } else {
                f2 = this.m.x;
                f3 = this.f10293e;
                i = 3;
            }
            canvas.drawText(String.valueOf(i2), f2 - f4, (float) (((double) (getHeight() - this.f10295g)) - (((double) this.f10294f) / 2.5d)), this.n);
            canvas.restore();
        }
        f2 = this.m.x;
        f3 = this.f10293e;
        i = 6;
        f4 = f3 / i;
        canvas.drawText(String.valueOf(i2), f2 - f4, (float) (((double) (getHeight() - this.f10295g)) - (((double) this.f10294f) / 2.5d)), this.n);
        canvas.restore();
    }

    private final void j(float f2, float f3, float f4, float f5, Paint paint, Canvas canvas) {
        if (Build.VERSION.SDK_INT >= 21) {
            canvas.drawRoundRect(f2, f3, f4, f5, 2.0f, 2.0f, paint);
        } else {
            canvas.drawRect(f2, f3, f4, f5, paint);
        }
    }

    public static /* synthetic */ void l(JSeekBar jSeekBar, int i, b bVar, c cVar, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            cVar = null;
        }
        jSeekBar.k(i, bVar, cVar);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        r.e(canvas, "canvas");
        super.draw(canvas);
        PointF pointF = this.m;
        if (pointF.x < BitmapDescriptorFactory.HUE_RED || pointF.y < BitmapDescriptorFactory.HUE_RED) {
            pointF.x = (float) (((((double) getWidth()) * 1.0d) * ((double) (this.p - this.f10291a.getF10302a()))) / ((double) (this.f10291a.getB() - this.f10291a.getF10302a())));
            this.m.y = getHeight() - this.i;
        }
        PointF pointF2 = this.m;
        float f2 = pointF2.x;
        float f3 = this.f10293e;
        float f4 = 2;
        if (f2 <= f3 / f4) {
            pointF2.x = f3 / f4;
        }
        if (pointF2.x >= getWidth() - (this.f10293e / f4)) {
            this.m.x = getWidth() - (this.f10293e / f4);
        }
        this.o.d();
        g(canvas);
        h(canvas);
        i(canvas);
    }

    public final void k(int i, b onProgressChange, c cVar) {
        r.e(onProgressChange, "onProgressChange");
        this.p = i;
        this.q = onProgressChange;
        if (cVar == null) {
            return;
        }
        this.f10291a = cVar;
    }

    public final void m(int i) {
        this.p = i;
        PointF pointF = this.m;
        pointF.x = -1.0f;
        pointF.y = -1.0f;
        invalidate();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        r.e(event, "event");
        return this.o.c(event);
    }
}
