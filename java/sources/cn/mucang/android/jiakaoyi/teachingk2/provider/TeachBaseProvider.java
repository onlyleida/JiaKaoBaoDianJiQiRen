package cn.mucang.android.jiakaoyi.teachingk2.provider;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import cn.mucang.android.core.api.verify.ErrorDialogParams;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.signal.utils.f;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.h;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UserInfoModel;
import cn.mucang.android.jiakaoyi.teachingk2.push.AiCameraManager;
import cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager;
import cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.TestAiOTA;
import cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.TestInitModule;
import cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.g1;
import cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.h1;
import cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.l1;
import cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k;
import cn.mucang.android.jiakaoyi.unity.activity.UnityMainActivity;
import cn.mucang.android.jiakaoyi.unity.c.d;
import cn.mucang.android.jky.camera.UsbCameraManager;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import com.alibaba.fastjson.asm.Opcodes;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.u;
import kotlin.jvm.internal.r;
import org.opencv.imgproc.Imgproc;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\f\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\f\u001a\u00020\u0013H\u0016J\u000e\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H\u0016J\u000e\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\u0016H\u0016J\u000e\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001b0\u0016H\u0016J\u0010\u0010\u001c\u001a\u00020\u00122\u0006\u0010\f\u001a\u00020\u0013H\u0016J\b\u0010\u001d\u001a\u00020\u001eH\u0016J\b\u0010\u001f\u001a\u00020\u001eH\u0016J\u0010\u0010 \u001a\u00020\u00062\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010#\u001a\u00020\u001e2\u0006\u0010\f\u001a\u00020\u0013H\u0016J\b\u0010$\u001a\u00020\u0006H\u0016J\b\u0010%\u001a\u00020\u001eH\u0016J\u0018\u0010&\u001a\u00020\u00062\u0006\u0010'\u001a\u00020\u00102\u0006\u0010\f\u001a\u00020\u0013H\u0016J\u0010\u0010(\u001a\u00020\u001e2\u0006\u0010)\u001a\u00020*H\u0016¨\u0006+"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachBaseProvider;", "Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;", "args", "Landroid/os/Bundle;", "(Landroid/os/Bundle;)V", "enableAi", "", "getAppType", "", "getDefaultLoginType", "getEndTestEvent", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TestEvent;", "activity", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", ErrorDialogParams.EXTRA_MESSAGE, "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "", "getHomePageIntent", "Landroid/content/Intent;", "Landroid/app/Activity;", "getLaunchPageIntent", "getRadarRenderConfig", "", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarRenderConfig;", "getResourceList", "Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;", "getSignalItem", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/check/SignalItem;", "getTracePageIntent", "initAiCameraManager", "", "initUsbManager", "isUnityPage", "context", "Landroid/content/Context;", "logout", "needStartCarStateAndPosition", "onLocalConfigLoaded", "processSpecial", "url", "updateUserInfo", "user", "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public class TeachBaseProvider extends AbsTeachBaseProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TeachBaseProvider(Bundle args) {
        super(args);
        r.e(args, "args");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: logout$lambda-1, reason: not valid java name */
    public static final void m50logout$lambda1(Activity activity) {
        r.e(activity, "$activity");
        activity.finish();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider
    public boolean enableAi() {
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider
    public int getAppType() {
        return 1;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider
    public int getDefaultLoginType() {
        return 0;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider
    public k getEndTestEvent(BaseActivity activity, cn.mucang.android.jiakaoyi.framework.h.b<String> message) {
        r.e(activity, "activity");
        r.e(message, "message");
        return new TestInitModule(activity, message, new TestAiOTA(activity, message, new g1(activity, message, new l1(activity, message, new l1(activity, message, new h1(activity, message, null), h.b, 90), h.f8407a, 80))));
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider
    public Intent getHomePageIntent(Activity activity) {
        r.e(activity, "activity");
        return new Intent(activity, (Class<?>) UnityMainActivity.class);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider
    public Intent getLaunchPageIntent(Activity activity) {
        r.e(activity, "activity");
        return new Intent(activity, (Class<?>) UnityMainActivity.class);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider
    public List<cn.mucang.android.jiakaoyi.teachingk2.safe.ui.signal.a> getRadarRenderConfig() {
        return u.m(new cn.mucang.android.jiakaoyi.teachingk2.safe.ui.signal.a(12, false), new cn.mucang.android.jiakaoyi.teachingk2.safe.ui.signal.a(10, true));
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider
    public List<ResourceManager.Resource> getResourceList() {
        ResourceManager.Resource[] resourceArrValues = ResourceManager.Resource.values();
        ArrayList arrayList = new ArrayList();
        int length = resourceArrValues.length;
        for (int i = 0; i < length; i++) {
            ResourceManager.Resource resource = resourceArrValues[i];
            if ((resource == ResourceManager.Resource.TileMap || resource == ResourceManager.Resource.MapDataB2) ? false : true) {
                arrayList.add(resource);
            }
        }
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider
    public List<cn.mucang.android.jiakaoyi.teachingk2.ui.f1.c> getSignalItem() {
        ArrayList arrayList = new ArrayList();
        double d2 = 69.5f;
        double d3 = 2;
        arrayList.add(new cn.mucang.android.jiakaoyi.teachingk2.ui.f1.c(R.drawable.scheck__wheel_n, true, 0, 6, Videoio.CAP_PROP_XI_TRG_SOFTWARE, (int) ((118.5d - d2) * d3), Videoio.CAP_PROP_XI_DEBOUNCE_POL, Videoio.CAP_PROP_XI_DEBOUNCE_POL, "方向盘"));
        float f2 = 2;
        arrayList.add(new cn.mucang.android.jiakaoyi.teachingk2.ui.f1.c(R.drawable.scheck__light_n, false, 0, 0, 282, (int) ((127 - 69.5f) * f2), 271, 218, "转向灯"));
        arrayList.add(new cn.mucang.android.jiakaoyi.teachingk2.ui.f1.c(R.drawable.scheck__door_n, false, 0, 1, 30, (int) ((184.5d - d2) * d3), 367, 125, "门"));
        if (f.c()) {
            arrayList.add(new cn.mucang.android.jiakaoyi.teachingk2.ui.f1.c(R.drawable.scheck__clutch_n, false, 0, 2, 30, (int) ((242 - 69.5f) * f2), 659, 209, "离合"));
        }
        arrayList.add(new cn.mucang.android.jiakaoyi.teachingk2.ui.f1.c(R.drawable.scheck__brake_n, false, 0, 3, 30, (int) ((299.5d - d2) * d3), 722, 121, "刹车"));
        arrayList.add(new cn.mucang.android.jiakaoyi.teachingk2.ui.f1.c(R.drawable.scheck__oil_n, false, 0, 4, 30, (int) ((338.5d - d2) * d3), 787, 107, "油门"));
        arrayList.add(new cn.mucang.android.jiakaoyi.teachingk2.ui.f1.c(R.drawable.scheck__wheel_txt_n, false, 0, 7, 750, (int) ((178.3d - d2) * d3), 574, 73, "方向盘文字"));
        arrayList.add(new cn.mucang.android.jiakaoyi.teachingk2.ui.f1.c(R.drawable.scheck__flame_n, false, 0, 8, 773, (int) ((237 - 69.5f) * f2), Videoio.CAP_PROP_XI_BUFFERS_QUEUE_SIZE, 70, "熄火"));
        arrayList.add(new cn.mucang.android.jiakaoyi.teachingk2.ui.f1.c(R.drawable.scheck__gear_n, false, 0, 9, 932, (int) ((294.5d - d2) * d3), 393, Imgproc.COLOR_COLORCVT_MAX, "档位"));
        arrayList.add(new cn.mucang.android.jiakaoyi.teachingk2.ui.f1.c(R.drawable.scheck__handbrake_n, false, 0, 10, 913, (int) ((352 - 69.5f) * f2), Videoio.CAP_PROP_XI_LED_SELECTOR, Opcodes.IF_ICMPEQ, "手刹"));
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider
    public Intent getTracePageIntent(Activity activity) {
        r.e(activity, "activity");
        return new Intent(activity, (Class<?>) UnityMainActivity.class);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider
    public void initAiCameraManager() {
        AiCameraManager.f7519a.f();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider
    public void initUsbManager() {
        Application context = MucangConfig.getContext();
        r.d(context, "getContext()");
        UsbCameraManager.init(context, 640, 480, 1);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider
    public boolean isUnityPage(Context context) {
        r.e(context, "context");
        return ActivityUtils.a(context) instanceof UnityMainActivity;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider
    public void logout(final Activity activity) {
        r.e(activity, "activity");
        if ((activity instanceof UnityMainActivity) || activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.provider.c
            @Override // java.lang.Runnable
            public final void run() {
                TeachBaseProvider.m50logout$lambda1(activity);
            }
        }, 1000L);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider
    public boolean needStartCarStateAndPosition() {
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider
    public void onLocalConfigLoaded() {
        DataProviderRegister.f3433a.c(TeachSafeProvider.class, TeachSafeProvider.class);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider
    public boolean processSpecial(String url, Activity activity) {
        r.e(url, "url");
        r.e(activity, "activity");
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider
    public void updateUserInfo(XyUserModel user) {
        r.e(user, "user");
        UserInfoModel userInfoModel = new UserInfoModel();
        userInfoModel.name = user.getName();
        userInfoModel.headImg = user.getAvatar();
        userInfoModel.idCard = user.getIdCardMask();
        userInfoModel.gender = user.getGender();
        userInfoModel.studentId = String.valueOf(user.getStudentId());
        d.e(userInfoModel);
    }
}
