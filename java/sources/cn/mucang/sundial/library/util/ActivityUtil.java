package cn.mucang.sundial.library.util;

import android.app.Activity;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.collections.z;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0017\u0010\tJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0007\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\n\u0010\tJ\u0013\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0011\u0010\u0012R\"\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00140\u00138\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Lcn/mucang/sundial/library/util/ActivityUtil;", "", "Landroid/app/Activity;", "activity", "Lkotlin/v;", "push", "(Landroid/app/Activity;)V", "pop", "finishAll", "()V", "trim", "", "allActivity", "()Ljava/util/List;", "", "activityCount", "()I", "topActivity", "()Landroid/app/Activity;", "", "Ljava/lang/ref/WeakReference;", "all", "Ljava/util/List;", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public final class ActivityUtil {
    public static final ActivityUtil INSTANCE = new ActivityUtil();
    private static final List<WeakReference<Activity>> all = new ArrayList();

    private ActivityUtil() {
    }

    public static final void finishAll() {
        INSTANCE.trim();
        Iterator<T> it = all.iterator();
        while (it.hasNext()) {
            Activity activity = (Activity) ((WeakReference) it.next()).get();
            if (activity != null) {
                activity.finish();
            }
        }
    }

    public static final void pop(final Activity activity) {
        r.e(activity, "activity");
        INSTANCE.trim();
        z.F(all, new Function1<WeakReference<Activity>, Boolean>() { // from class: cn.mucang.sundial.library.util.ActivityUtil.pop.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(WeakReference<Activity> weakReference) {
                return Boolean.valueOf(invoke2(weakReference));
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final boolean invoke2(WeakReference<Activity> it) {
                r.e(it, "it");
                return r.a(it.get(), activity);
            }
        });
    }

    public static final void push(Activity activity) {
        r.e(activity, "activity");
        all.add(new WeakReference<>(activity));
        INSTANCE.trim();
    }

    private final void trim() {
        z.F(all, new Function1<WeakReference<Activity>, Boolean>() { // from class: cn.mucang.sundial.library.util.ActivityUtil.trim.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(WeakReference<Activity> weakReference) {
                return Boolean.valueOf(invoke2(weakReference));
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final boolean invoke2(WeakReference<Activity> it) {
                r.e(it, "it");
                return it.get() == null;
            }
        });
    }

    public final int activityCount() {
        return all.size();
    }

    public final List<Activity> allActivity() {
        trim();
        List<WeakReference<Activity>> list = all;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            Activity activity = (Activity) ((WeakReference) it.next()).get();
            if (activity != null) {
                arrayList.add(activity);
            }
        }
        return arrayList;
    }

    public final Activity topActivity() {
        trim();
        WeakReference weakReference = (WeakReference) s.q0(all);
        if (weakReference != null) {
            return (Activity) weakReference.get();
        }
        return null;
    }
}
