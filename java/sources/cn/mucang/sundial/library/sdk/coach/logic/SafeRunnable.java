package cn.mucang.sundial.library.sdk.coach.logic;

import android.app.Activity;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcn/mucang/sundial/library/sdk/coach/logic/SafeRunnable;", "Ljava/lang/Runnable;", "Lkotlin/v;", "run", "()V", "task", "Ljava/lang/Runnable;", "Landroid/app/Activity;", "activity", "Landroid/app/Activity;", "<init>", "(Landroid/app/Activity;Ljava/lang/Runnable;)V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class SafeRunnable implements Runnable {
    private final Activity activity;
    private final Runnable task;

    public SafeRunnable(Activity activity, Runnable task) {
        r.e(task, "task");
        this.activity = activity;
        this.task = task;
    }

    @Override // java.lang.Runnable
    public void run() {
        Activity activity = this.activity;
        if (activity == null || activity.isDestroyed() || this.activity.isFinishing()) {
            return;
        }
        this.task.run();
    }
}
