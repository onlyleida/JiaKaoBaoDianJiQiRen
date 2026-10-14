package cn.mucang.jiakaoyi.uilib.task;

import android.app.Activity;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.r.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/task/SafeRunnable;", "Ljava/lang/Runnable;", "activity", "Landroid/app/Activity;", "task", "(Landroid/app/Activity;Ljava/lang/Runnable;)V", "run", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SafeRunnable implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Activity f9470a;
    private final Runnable b;

    public SafeRunnable(Activity activity, Runnable task) {
        r.e(task, "task");
        this.f9470a = activity;
        this.b = task;
    }

    @Override // java.lang.Runnable
    public void run() {
        Activity activity = this.f9470a;
        if (activity == null || activity.isDestroyed() || this.f9470a.isFinishing()) {
            return;
        }
        this.b.run();
    }
}
