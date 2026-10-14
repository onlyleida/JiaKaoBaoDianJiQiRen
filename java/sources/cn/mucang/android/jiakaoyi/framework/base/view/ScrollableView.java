package cn.mucang.android.jiakaoyi.framework.base.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import com.amap.api.fence.GeoFence;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u001fB\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u001bH\u0016J\u000e\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0015R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000e\"\u0004\b\u0013\u0010\u0010R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/base/view/ScrollableView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "lastX", "", "getLastX", "()F", "setLastX", "(F)V", "lastY", "getLastY", "setLastY", "onScrollListener", "Lcn/mucang/android/jiakaoyi/framework/base/view/ScrollableView$OnScrollListener;", "init", "", "onInterceptTouchEvent", "", "ev", "Landroid/view/MotionEvent;", "onTouchEvent", GeoFence.BUNDLE_KEY_FENCESTATUS, "setScrollListener", "OnScrollListener", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ScrollableView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f3427a;
    private float b;
    private float c;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/base/view/ScrollableView$OnScrollListener;", "", "onScroll", "", "distanceX", "", "distanceY", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public interface a {
        void a(int i, int i2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ScrollableView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        r.e(context, "context");
    }

    private final void a() {
    }

    /* JADX INFO: renamed from: getLastX, reason: from getter */
    public final float getB() {
        return this.b;
    }

    /* JADX INFO: renamed from: getLastY, reason: from getter */
    public final float getC() {
        return this.c;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        r.e(ev, "ev");
        int action = ev.getAction();
        if (action != 0) {
            if (action != 2) {
                return false;
            }
            return Math.abs(ev.getX() - this.b) > ((float) ViewConfiguration.get(getContext()).getScaledTouchSlop()) || Math.abs(ev.getY() - this.c) > ((float) ViewConfiguration.get(getContext()).getScaledTouchSlop());
        }
        this.b = ev.getX();
        this.c = ev.getY();
        return false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        a aVar;
        r.e(event, "event");
        if (event.getAction() != 2 || (aVar = this.f3427a) == null) {
            return true;
        }
        float f2 = 3;
        aVar.a((int) ((event.getX() - this.b) / f2), (int) ((event.getY() - this.c) / f2));
        return true;
    }

    public final void setLastX(float f2) {
        this.b = f2;
    }

    public final void setLastY(float f2) {
        this.c = f2;
    }

    public final void setScrollListener(a onScrollListener) {
        r.e(onScrollListener, "onScrollListener");
        this.f3427a = onScrollListener;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollableView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        r.e(context, "context");
        a();
    }
}
