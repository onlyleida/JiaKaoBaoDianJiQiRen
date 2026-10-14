package cn.mucang.sundial.library.viewmodel;

import android.app.Application;
import androidx.lifecycle.a;
import androidx.lifecycle.i0;
import cn.mucang.android.core.utils.o0;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.DeviceInfo;
import cn.mucang.sundial.library.entity.ActivityBaseInfo;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004R(\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0003\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0010"}, d2 = {"Lcn/mucang/sundial/library/viewmodel/BaseActivityViewModel;", "Landroidx/lifecycle/a;", "Lkotlin/v;", "getBaseInfo", "()V", "Landroidx/lifecycle/i0;", "Lcn/mucang/sundial/library/entity/ActivityBaseInfo;", "baseInfo", "Landroidx/lifecycle/i0;", "()Landroidx/lifecycle/i0;", "setBaseInfo", "(Landroidx/lifecycle/i0;)V", "Landroid/app/Application;", "app", "<init>", "(Landroid/app/Application;)V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class BaseActivityViewModel extends a {
    private i0<ActivityBaseInfo> baseInfo;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseActivityViewModel(Application app) {
        super(app);
        r.e(app, "app");
        this.baseInfo = new i0<>();
    }

    public final i0<ActivityBaseInfo> getBaseInfo() {
        return this.baseInfo;
    }

    public final void setBaseInfo(i0<ActivityBaseInfo> i0Var) {
        r.e(i0Var, "<set-?>");
        this.baseInfo = i0Var;
    }

    /* JADX INFO: renamed from: getBaseInfo, reason: collision with other method in class */
    public final void m120getBaseInfo() {
        ThreadPool.a(new Runnable() { // from class: cn.mucang.sundial.library.viewmodel.BaseActivityViewModel.getBaseInfo.1
            @Override // java.lang.Runnable
            public final void run() {
                String imei;
                String carNo;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    ActivityBaseInfo activityBaseInfo = new ActivityBaseInfo();
                    String strU = o0.u();
                    String str = "";
                    if (strU == null) {
                        strU = "";
                    }
                    activityBaseInfo.setAppVersion(strU);
                    SundialManager sundialManager = SundialManager.getInstance();
                    r.d(sundialManager, "SundialManager.getInstance()");
                    DeviceInfo deviceInfo = sundialManager.getDeviceInfo();
                    if (deviceInfo == null || (imei = deviceInfo.getImei()) == null) {
                        imei = "";
                    }
                    activityBaseInfo.setImei(imei);
                    if (deviceInfo != null && (carNo = deviceInfo.getCarNo()) != null) {
                        str = carNo;
                    }
                    activityBaseInfo.setCarNo(str);
                    BaseActivityViewModel.this.getBaseInfo().l(activityBaseInfo);
                    Result.m139constructorimpl(v.f15822a);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    Result.m139constructorimpl(k.a(th));
                }
            }
        });
    }
}
