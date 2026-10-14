package cn.mucang.android.jiakaoyi.framework.base;

import android.os.SystemClock;
import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.base.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0016\n\u0002\b\u0003\u0018\u00002\u00020\u0001B-\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\u0002\u0010\nJ\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\bH\u0016R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/base/MultiClickListener;", "Landroid/view/View$OnClickListener;", "count", "", "duration", "", "click", "Lkotlin/Function1;", "Landroid/view/View;", "", "(IJLkotlin/jvm/functions/Function1;)V", "hits", "", "onClick", "v", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class MultiClickListener implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3416a;
    private final long b;
    private final Function1<View, v> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long[] f3417d;

    /* JADX WARN: Multi-variable type inference failed */
    public MultiClickListener(int i, long j, Function1<? super View, v> click) {
        r.e(click, "click");
        this.f3416a = i;
        this.b = j;
        this.c = click;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        r.e(v, "v");
        if (this.f3417d == null) {
            this.f3417d = new long[this.f3416a];
        }
        long[] jArr = this.f3417d;
        r.c(jArr);
        long[] jArr2 = this.f3417d;
        r.c(jArr2);
        System.arraycopy(jArr, 1, jArr2, 0, jArr2.length - 1);
        long[] jArr3 = this.f3417d;
        r.c(jArr3);
        long[] jArr4 = this.f3417d;
        r.c(jArr4);
        jArr3[jArr4.length - 1] = SystemClock.uptimeMillis();
        long[] jArr5 = this.f3417d;
        r.c(jArr5);
        long[] jArr6 = this.f3417d;
        r.c(jArr6);
        long j = jArr5[jArr6.length - 1];
        long[] jArr7 = this.f3417d;
        r.c(jArr7);
        if (j - jArr7[0] <= this.b) {
            this.f3417d = null;
            this.c.invoke(v);
        }
    }

    public /* synthetic */ MultiClickListener(int i, long j, Function1 function1, int i2, o oVar) {
        this((i2 & 1) != 0 ? 5 : i, (i2 & 2) != 0 ? 3000L : j, function1);
    }
}
