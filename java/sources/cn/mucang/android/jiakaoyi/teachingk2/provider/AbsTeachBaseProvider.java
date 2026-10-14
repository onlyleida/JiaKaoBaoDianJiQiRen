package cn.mucang.android.jiakaoyi.teachingk2.provider;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import cn.mucang.android.core.api.verify.ErrorDialogParams;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.dataprovider.BaseDataProvider;
import cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager;
import cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H&J\b\u0010\u0007\u001a\u00020\bH&J\b\u0010\t\u001a\u00020\bH&J\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH&J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\f\u001a\u00020\u0013H&J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\f\u001a\u00020\u0013H&J\u000e\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H&J\u000e\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\u0016H&J\u000e\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001b0\u0016H&J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u00122\u0006\u0010\f\u001a\u00020\u0013H&J\b\u0010\u001d\u001a\u00020\u001eH&J\b\u0010\u001f\u001a\u00020\u001eH&J\u0010\u0010 \u001a\u00020\u00062\u0006\u0010!\u001a\u00020\"H&J\u0010\u0010#\u001a\u00020\u001e2\u0006\u0010\f\u001a\u00020\u0013H&J\b\u0010$\u001a\u00020\u0006H&J\b\u0010%\u001a\u00020\u001eH&J\u0018\u0010&\u001a\u00020\u00062\u0006\u0010'\u001a\u00020\u00102\u0006\u0010\f\u001a\u00020\u0013H&J\u0010\u0010(\u001a\u00020\u001e2\u0006\u0010)\u001a\u00020*H&¨\u0006+"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;", "Lcn/mucang/android/jiakaoyi/framework/dataprovider/BaseDataProvider;", "args", "Landroid/os/Bundle;", "(Landroid/os/Bundle;)V", "enableAi", "", "getAppType", "", "getDefaultLoginType", "getEndTestEvent", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TestEvent;", "activity", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", ErrorDialogParams.EXTRA_MESSAGE, "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "", "getHomePageIntent", "Landroid/content/Intent;", "Landroid/app/Activity;", "getLaunchPageIntent", "getRadarRenderConfig", "", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarRenderConfig;", "getResourceList", "Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;", "getSignalItem", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/check/SignalItem;", "getTracePageIntent", "initAiCameraManager", "", "initUsbManager", "isUnityPage", "context", "Landroid/content/Context;", "logout", "needStartCarStateAndPosition", "onLocalConfigLoaded", "processSpecial", "url", "updateUserInfo", "user", "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class AbsTeachBaseProvider extends BaseDataProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbsTeachBaseProvider(Bundle args) {
        super(args);
        r.e(args, "args");
    }

    public abstract boolean enableAi();

    public abstract int getAppType();

    public abstract int getDefaultLoginType();

    public abstract k getEndTestEvent(BaseActivity baseActivity, cn.mucang.android.jiakaoyi.framework.h.b<String> bVar);

    public abstract Intent getHomePageIntent(Activity activity);

    public abstract Intent getLaunchPageIntent(Activity activity);

    public abstract List<cn.mucang.android.jiakaoyi.teachingk2.safe.ui.signal.a> getRadarRenderConfig();

    public abstract List<ResourceManager.Resource> getResourceList();

    public abstract List<cn.mucang.android.jiakaoyi.teachingk2.ui.f1.c> getSignalItem();

    public abstract Intent getTracePageIntent(Activity activity);

    public abstract void initAiCameraManager();

    public abstract void initUsbManager();

    public abstract boolean isUnityPage(Context context);

    public abstract void logout(Activity activity);

    public abstract boolean needStartCarStateAndPosition();

    public abstract void onLocalConfigLoaded();

    public abstract boolean processSpecial(String url, Activity activity);

    public abstract void updateUserInfo(XyUserModel user);
}
