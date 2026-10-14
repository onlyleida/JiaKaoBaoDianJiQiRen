package cn.mucang.sundial.library;

import android.app.Activity;
import android.os.Bundle;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.config.l;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.library.activelistener.ActivityActiveListener;
import cn.mucang.sundial.library.activelistener.InitActivityActiveListener;
import cn.mucang.sundial.library.activelistener.SpecialFuncActiveListener;
import cn.mucang.sundial.library.activelistener.TtsActivityActiveListener;
import cn.mucang.sundial.library.activelistener.UpdateActivityActiveListener;
import cn.mucang.sundial.library.activity.TopActivity;
import cn.mucang.sundial.library.util.ActivityUtil;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.u;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\nJ\u0017\u0010\f\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\f\u0010\nR\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcn/mucang/sundial/library/SundialActivityLifecycleCallbacks;", "Lcn/mucang/android/core/config/l;", "Landroid/app/Activity;", "activity", "Landroid/os/Bundle;", "savedInstanceState", "Lkotlin/v;", "onActivityCreated", "(Landroid/app/Activity;Landroid/os/Bundle;)V", "onActivityResumed", "(Landroid/app/Activity;)V", "onActivityPaused", "onActivityDestroyed", "", "activityCount", "I", "", "Lcn/mucang/sundial/library/activelistener/ActivityActiveListener;", "activityActiveListeners", "Ljava/util/List;", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class SundialActivityLifecycleCallbacks extends l {
    private final List<ActivityActiveListener> activityActiveListeners;
    private int activityCount;

    public SundialActivityLifecycleCallbacks() {
        List listP = u.p(new SpecialFuncActiveListener(), new InitActivityActiveListener(), new TtsActivityActiveListener());
        if (DeviceUtils.isSingleApk(MucangConfig.getContext())) {
            listP.add(new UpdateActivityActiveListener());
        }
        v vVar = v.f15822a;
        this.activityActiveListeners = CollectionsKt___CollectionsKt.M0(listP);
    }

    @Override // cn.mucang.android.core.config.l, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
        r.e(activity, "activity");
        if (activity instanceof TopActivity) {
            this.activityCount++;
            ActivityUtil.push(activity);
            if (this.activityCount == 1) {
                Iterator<T> it = this.activityActiveListeners.iterator();
                while (it.hasNext()) {
                    ((ActivityActiveListener) it.next()).onFirstActivityCreated(activity);
                }
            }
        }
    }

    @Override // cn.mucang.android.core.config.l, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        r.e(activity, "activity");
        if (activity instanceof TopActivity) {
            ActivityUtil.pop(activity);
            int i = this.activityCount - 1;
            this.activityCount = i;
            if (i == 0 && DeviceUtils.isSingleApk(MucangConfig.getContext())) {
                Iterator<T> it = this.activityActiveListeners.iterator();
                while (it.hasNext()) {
                    ((ActivityActiveListener) it.next()).onAllActivityDestroyed(activity);
                }
            }
        }
    }

    @Override // cn.mucang.android.core.config.l, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        r.e(activity, "activity");
        if (activity.isFinishing() && (activity instanceof TopActivity)) {
            ActivityUtil.pop(activity);
        }
    }

    @Override // cn.mucang.android.core.config.l, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        r.e(activity, "activity");
        super.onActivityResumed(activity);
        if (activity instanceof TopActivity) {
            Iterator<T> it = this.activityActiveListeners.iterator();
            while (it.hasNext()) {
                ((ActivityActiveListener) it.next()).onActivityResumed(activity);
            }
        }
    }
}
