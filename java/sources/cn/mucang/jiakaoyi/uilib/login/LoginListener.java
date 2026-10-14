package cn.mucang.jiakaoyi.uilib.login;

import android.app.Activity;
import cn.mucang.android.account.AccountManager;
import cn.mucang.jiakaoyi.uilib.login.model.DeviceType;
import cn.mucang.jiakaoyi.uilib.login.model.LoginData;
import cn.mucang.jiakaoyi.uilib.login.model.LoginType;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import cn.mucang.jiakaoyi.uilib.ui.dialog.PrivacyAgreementDialog;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.login.m, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0017J\b\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH&J4\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00030\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00030\u0011H\u0017J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\fH\u0017J\b\u0010\u0015\u001a\u00020\u0003H\u0017J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0018H'J \u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u0005H'¨\u0006\u001a"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/LoginListener;", "", "beforeLoginStart", "", "data", "Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;", "getDeviceType", "Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;", "getPrivacyViews", "", "Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$IPrivacyView;", "loginType", "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;", "interceptLogin", "user", "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;", "next", "Lkotlin/Function0;", "back", "notifyBusiness", "", "onRefusePrivacy", "onSsoLogin", "activity", "Landroid/app/Activity;", "onUserLogin", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public interface LoginListener {

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.login.m$a */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        public static void a(LoginListener loginListener, LoginData data) {
            r.e(loginListener, "this");
            r.e(data, "data");
        }

        public static void b(LoginListener loginListener) {
            r.e(loginListener, "this");
            AccountManager.h().m();
            try {
                Result.Companion companion = Result.INSTANCE;
                System.exit(0);
                throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m139constructorimpl(kotlin.k.a(th));
            }
        }
    }

    void a(Activity activity, XyUserModel xyUserModel, LoginData loginData);

    void b();

    void c(XyUserModel xyUserModel, LoginType loginType, Function0<v> function0, Function0<v> function1);

    List<PrivacyAgreementDialog.a> d(LoginType loginType);

    DeviceType e();

    void f(LoginData loginData);

    void g(Activity activity);

    boolean h(XyUserModel xyUserModel, LoginType loginType);
}
