package cn.mucang.sundial.library.util;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.jvm.internal.o;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0001\u0011B\u0013\b\u0016\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\fR\u0016\u0010\u000e\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\t¨\u0006\u0012"}, d2 = {"Lcn/mucang/sundial/library/util/ClickController;", "", "Lcn/mucang/sundial/library/util/ClickController$ClickListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lkotlin/v;", "click", "(Lcn/mucang/sundial/library/util/ClickController$ClickListener;)V", "", "minClickCount", "I", "", "maxInternal", "J", "lastClickTime", "clickCount", "<init>", "(I)V", "ClickListener", "library_release"}, k = 1, mv = {1, 1, 15})
public final class ClickController {
    private int clickCount;
    private long lastClickTime;
    private long maxInternal;
    private int minClickCount;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcn/mucang/sundial/library/util/ClickController$ClickListener;", "", "Lkotlin/v;", "onClickCountFull", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
    public interface ClickListener {
        void onClickCountFull();
    }

    public /* synthetic */ ClickController(int i, int i2, o oVar) {
        this((i2 & 1) != 0 ? 10 : i);
    }

    public final void click(ClickListener listener) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.lastClickTime > this.maxInternal) {
            this.clickCount = 0;
        }
        int i = this.clickCount + 1;
        this.clickCount = i;
        this.lastClickTime = jCurrentTimeMillis;
        if (i >= this.minClickCount) {
            if (listener != null) {
                listener.onClickCountFull();
            }
            this.clickCount = 0;
        }
    }

    public ClickController(int i) {
        this.maxInternal = 500L;
        this.minClickCount = 10;
        this.minClickCount = i;
    }
}
