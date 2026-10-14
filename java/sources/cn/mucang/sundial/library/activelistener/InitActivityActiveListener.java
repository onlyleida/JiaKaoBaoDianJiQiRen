package cn.mucang.sundial.library.activelistener;

import android.app.Activity;
import android.content.Context;
import cn.mucang.android.core.utils.z;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.location.AppLocation;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.data.gnss.OBDManager;
import cn.mucang.sundial.library.device.SundialDevice;
import cn.mucang.sundial.library.util.GlobalData;
import cn.mucang.sundial.library.util.LoginUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\u0006R\u0016\u0010\t\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcn/mucang/sundial/library/activelistener/InitActivityActiveListener;", "Lcn/mucang/sundial/library/activelistener/ActivityActiveListener;", "Landroid/app/Activity;", "activity", "Lkotlin/v;", "onActivityResumed", "(Landroid/app/Activity;)V", "onAllActivityDestroyed", "", "init", "Z", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class InitActivityActiveListener implements ActivityActiveListener {
    private boolean init;

    @Override // cn.mucang.sundial.library.activelistener.ActivityActiveListener
    public void onActivityResumed(Activity activity) {
        r.e(activity, "activity");
        if (!this.init && z.b("android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.READ_PHONE_STATE", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE")) {
            this.init = true;
            AppLocation appLocation = AppLocation.INSTANCE;
            GlobalData globalData = GlobalData.INSTANCE;
            SundialDevice device = globalData.getDevice();
            Context applicationContext = activity.getApplicationContext();
            r.d(applicationContext, "activity.applicationContext");
            appLocation.setLocationStrategy(device.locationStrategy(applicationContext));
            OBDManager.start(activity, globalData.getDevice().dataStrategy());
            LoginUtil.INSTANCE.registerLoginLogoutTimeoutCallback();
        }
    }

    @Override // cn.mucang.sundial.library.activelistener.ActivityActiveListener
    public void onAllActivityDestroyed(Activity activity) {
        r.e(activity, "activity");
        if (this.init) {
            SundialLog.normal("----------------onAllActivityDestroyed---------------");
            this.init = false;
            SundialManager.getInstance().destroy();
            OBDManager.stop();
        }
    }

    @Override // cn.mucang.sundial.library.activelistener.ActivityActiveListener
    public void onFirstActivityCreated(Activity activity) {
        r.e(activity, "activity");
        ActivityActiveListener.DefaultImpls.onFirstActivityCreated(this, activity);
    }
}
