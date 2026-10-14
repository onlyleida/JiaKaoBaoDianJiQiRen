package cn.mucang.sundial.library.activelistener;

import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.library.activity.BaseActivity;
import cn.mucang.sundial.library.device.DeviceHelper;
import cn.mucang.sundial.library.device.SundialDevice;
import cn.mucang.sundial.library.util.GlobalData;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u000b\u0010\nJ\u0017\u0010\f\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\f\u0010\n¨\u0006\u0010"}, d2 = {"Lcn/mucang/sundial/library/activelistener/SpecialFuncActiveListener;", "Lcn/mucang/sundial/library/activelistener/ActivityActiveListener;", "Landroid/content/Context;", "context", "Lkotlin/v;", "makeSelfLauncher", "(Landroid/content/Context;)V", "Landroid/app/Activity;", "activity", "onFirstActivityCreated", "(Landroid/app/Activity;)V", "onActivityResumed", "onAllActivityDestroyed", "<init>", "()V", "Companion", "library_release"}, k = 1, mv = {1, 1, 15})
public final class SpecialFuncActiveListener implements ActivityActiveListener {
    private static boolean shouldResumeLauncher;

    private final void makeSelfLauncher(Context context) {
        BaseActivity.INSTANCE.setCanExit(!DeviceUtils.isSingleApk(context));
        final DeviceHelper deviceHelper = GlobalData.INSTANCE.getDevice().deviceHelper(context);
        if (deviceHelper.isInit()) {
            deviceHelper.makeSelfLauncher();
        } else {
            deviceHelper.init(new DeviceHelper.OnInitListener() { // from class: cn.mucang.sundial.library.activelistener.SpecialFuncActiveListener.makeSelfLauncher.1
                @Override // cn.mucang.sundial.library.device.DeviceHelper.OnInitListener
                public void onInit() {
                    deviceHelper.makeSelfLauncher();
                }
            });
            context.registerComponentCallbacks(new ComponentCallbacks2() { // from class: cn.mucang.sundial.library.activelistener.SpecialFuncActiveListener.makeSelfLauncher.2
                @Override // android.content.ComponentCallbacks
                public void onConfigurationChanged(Configuration newConfig) {
                    r.e(newConfig, "newConfig");
                }

                @Override // android.content.ComponentCallbacks
                public void onLowMemory() {
                }

                @Override // android.content.ComponentCallbacks2
                public void onTrimMemory(int level) {
                    SpecialFuncActiveListener.shouldResumeLauncher = true;
                }
            });
        }
        shouldResumeLauncher = false;
    }

    @Override // cn.mucang.sundial.library.activelistener.ActivityActiveListener
    public void onActivityResumed(Activity activity) {
        r.e(activity, "activity");
        ActivityActiveListener.DefaultImpls.onActivityResumed(this, activity);
        if (shouldResumeLauncher) {
            Context applicationContext = activity.getApplicationContext();
            r.d(applicationContext, "activity.applicationContext");
            makeSelfLauncher(applicationContext);
        }
    }

    @Override // cn.mucang.sundial.library.activelistener.ActivityActiveListener
    public void onAllActivityDestroyed(Activity activity) {
        r.e(activity, "activity");
        SundialDevice device = GlobalData.INSTANCE.getDevice();
        Context applicationContext = activity.getApplicationContext();
        r.d(applicationContext, "activity.applicationContext");
        device.deviceHelper(applicationContext).free();
    }

    @Override // cn.mucang.sundial.library.activelistener.ActivityActiveListener
    public void onFirstActivityCreated(Activity activity) {
        r.e(activity, "activity");
        Context applicationContext = activity.getApplicationContext();
        r.d(applicationContext, "activity.applicationContext");
        makeSelfLauncher(applicationContext);
    }
}
