package cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.view;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import com.mucang.android.jiakaoyi.uilib.R;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0002\u001a\u00020\u0003J\u0018\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\rH\u0014R\u0014\u0010\b\u001a\u00020\tX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011¨\u0006\u001a"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;", "Landroidx/appcompat/widget/AppCompatImageView;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "TAG", "", "getTAG", "()Ljava/lang/String;", "handlerH", "", "getHandlerH", "()I", "setHandlerH", "(I)V", "handlerW", "getHandlerW", "setHandlerW", "initView", "", "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GearItemHandleView extends AppCompatImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f10087a;
    private int b;
    private int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GearItemHandleView(Context context, AttributeSet attrs) {
        super(context, attrs);
        r.e(context, "context");
        r.e(attrs, "attrs");
        this.f10087a = "GearItemHandleView";
        c(context);
    }

    public final void c(Context context) {
        r.e(context, "context");
        Resources resources = context.getResources();
        int i = R.dimen.dp_40;
        this.b = resources.getDimensionPixelSize(i);
        this.c = context.getResources().getDimensionPixelSize(i);
    }

    /* JADX INFO: renamed from: getHandlerH, reason: from getter */
    public final int getC() {
        return this.c;
    }

    /* JADX INFO: renamed from: getHandlerW, reason: from getter */
    public final int getB() {
        return this.b;
    }

    /* JADX INFO: renamed from: getTAG, reason: from getter */
    public final String getF10087a() {
        return this.f10087a;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        setMeasuredDimension(Math.max(this.b, 1), Math.max(this.c, 1));
    }

    public final void setHandlerH(int i) {
        this.c = i;
    }

    public final void setHandlerW(int i) {
        this.b = i;
    }
}
