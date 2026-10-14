package cn.mucang.sundial.library.activelistener;

import android.app.Activity;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\u0006J\u0017\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\b\u0010\u0006¨\u0006\t"}, d2 = {"Lcn/mucang/sundial/library/activelistener/ActivityActiveListener;", "", "Landroid/app/Activity;", "activity", "Lkotlin/v;", "onFirstActivityCreated", "(Landroid/app/Activity;)V", "onActivityResumed", "onAllActivityDestroyed", "library_release"}, k = 1, mv = {1, 1, 15})
public interface ActivityActiveListener {

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 1, 15})
    public static final class DefaultImpls {
        public static void onActivityResumed(ActivityActiveListener activityActiveListener, Activity activity) {
            r.e(activity, "activity");
        }

        public static void onAllActivityDestroyed(ActivityActiveListener activityActiveListener, Activity activity) {
            r.e(activity, "activity");
        }

        public static void onFirstActivityCreated(ActivityActiveListener activityActiveListener, Activity activity) {
            r.e(activity, "activity");
        }
    }

    void onActivityResumed(Activity activity);

    void onAllActivityDestroyed(Activity activity);

    void onFirstActivityCreated(Activity activity);
}
