package cn.mucang.jiakaoyi.sundial.client.view;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.LinearLayout;
import cn.mucang.android.core.config.MucangConfig;
import com.amap.api.fence.GeoFence;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001 B\u0011\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004B\u001b\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B#\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nB+\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0002\u0010\fJ\u0012\u0010\u001a\u001a\u00020\u000e2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010\u001d\u001a\u00020\u000e2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0010\u0010\u001e\u001a\u00020\u001f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView;", "Landroid/widget/LinearLayout;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "defStyleRes", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "consume", "", "downX", "", "downY", "dragListener", "Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView$OnDragListener;", "lastX", "lastY", "maxChange", "slop", "upX", "upY", "onInterceptTouchEvent", GeoFence.BUNDLE_KEY_FENCESTATUS, "Landroid/view/MotionEvent;", "onTouchEvent", "setDragListener", "", "OnDragListener", "sundial_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DraggableView extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f9156a;
    private float b;
    private float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f9157d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f9158e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f9159f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f9160g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private a f9161h;
    private float i;
    private boolean j;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0003H&¨\u0006\t"}, d2 = {"Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView$OnDragListener;", "", "getCurrentX", "", "getCurrentY", "onDrag", "", "x", "y", "sundial_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public interface a {
        void a(int i, int i2);

        int b();

        int c();
    }

    public DraggableView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9156a = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(DraggableView this$0, int i, ValueAnimator valueAnimator) {
        r.e(this$0, "this$0");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        int iIntValue = ((Integer) animatedValue).intValue();
        a aVar = this$0.f9161h;
        if (aVar == null) {
            return;
        }
        aVar.a(iIntValue, i);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent event) {
        if (this.f9156a == -1) {
            this.f9156a = ViewConfiguration.get(MucangConfig.getContext()).getScaledTouchSlop();
        }
        Integer numValueOf = event == null ? null : Integer.valueOf(event.getAction());
        if (numValueOf != null && numValueOf.intValue() == 0) {
            this.i = BitmapDescriptorFactory.HUE_RED;
            this.j = false;
            this.f9157d = event.getRawX();
            this.f9158e = event.getRawY();
            this.b = event.getRawX();
            this.c = event.getRawY();
        } else if (numValueOf != null && numValueOf.intValue() == 2) {
            float fMax = Math.max(this.i, Math.max(Math.abs(event.getRawX() - this.f9157d), Math.abs(event.getRawY() - this.f9158e)));
            this.i = fMax;
            this.j = fMax > ((float) this.f9156a);
            this.b = event.getRawX();
            this.c = event.getRawY();
        }
        return this.j;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        a aVar = this.f9161h;
        int iC = aVar == null ? 0 : aVar.c();
        a aVar2 = this.f9161h;
        final int iB = aVar2 == null ? 0 : aVar2.b();
        Integer numValueOf = event == null ? null : Integer.valueOf(event.getAction());
        if (numValueOf != null && numValueOf.intValue() == 2) {
            float rawX = event.getRawX() - this.b;
            float rawY = event.getRawY() - this.c;
            a aVar3 = this.f9161h;
            if (aVar3 != null) {
                aVar3.a((int) (iC + rawX), (int) (iB + rawY));
            }
            this.b = event.getRawX();
            this.c = event.getRawY();
        } else if (numValueOf != null && numValueOf.intValue() == 1) {
            this.f9159f = event.getRawX();
            this.f9160g = event.getRawY();
            if (Math.abs(this.f9159f - this.f9157d) > ((float) this.f9156a) || Math.abs(this.f9160g - this.f9158e) > ((float) this.f9156a)) {
                ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(iC, getContext().getResources().getDisplayMetrics().widthPixels - getWidth());
                valueAnimatorOfInt.setDuration(300L);
                valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: cn.mucang.jiakaoyi.sundial.client.view.a
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        DraggableView.b(this.f9162a, iB, valueAnimator);
                    }
                });
                valueAnimatorOfInt.start();
            }
        }
        return super.onTouchEvent(event);
    }

    public final void setDragListener(a aVar) {
        this.f9161h = aVar;
    }
}
