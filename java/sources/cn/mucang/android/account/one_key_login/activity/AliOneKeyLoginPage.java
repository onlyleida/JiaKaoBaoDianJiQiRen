package cn.mucang.android.account.one_key_login.activity;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import cn.mucang.android.account.AccountManager;
import cn.mucang.android.account.activity.LoginMultiDefaultSmsActivity;
import cn.mucang.android.account.api.data.UserInfoResponse;
import cn.mucang.android.account.data.LoginSmsModel;
import cn.mucang.android.account.f;
import cn.mucang.android.account.one_key_login.j;
import cn.mucang.android.account.one_key_login.l;
import cn.mucang.android.account.one_key_login.m;
import cn.mucang.android.account.p000one_key_login.model.QuickLoginModel;
import cn.mucang.android.account.third.LoginPlatforms;
import cn.mucang.android.account.third.ThirdAccountUtils;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.MultiProcessBroadcastManager;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.s0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.framework.account.R;
import com.mobile.auth.gatewayauth.AuthRegisterViewConfig;
import com.mobile.auth.gatewayauth.AuthRegisterXmlConfig;
import com.mobile.auth.gatewayauth.AuthUIConfig;
import com.mobile.auth.gatewayauth.AuthUIControlClickListener;
import com.mobile.auth.gatewayauth.Constant;
import com.mobile.auth.gatewayauth.CustomInterface;
import com.mobile.auth.gatewayauth.PhoneNumberAuthHelper;
import com.mobile.auth.gatewayauth.ResultCode;
import com.mobile.auth.gatewayauth.TokenResultListener;
import com.mobile.auth.gatewayauth.model.TokenRet;
import com.mobile.auth.gatewayauth.ui.AbstractPnsViewDelegate;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import org.json.JSONObject;

/* JADX INFO: renamed from: cn.mucang.android.account.j.o.j, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J \u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u0012\u0010\u001c\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J\b\u0010\u001d\u001a\u00020\u0013H\u0002J\b\u0010\u001e\u001a\u00020\u0013H\u0002J\b\u0010\u001f\u001a\u00020 H\u0002J\u0010\u0010!\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J,\u0010\"\u001a\u00020\u00132\u0006\u0010#\u001a\u00020\u00042\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010$\u001a\u00020 2\b\u0010%\u001a\u0004\u0018\u00010&H\u0002J6\u0010'\u001a\u00020\u00132\u0006\u0010#\u001a\u00020\u00042\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010$\u001a\u00020 2\b\u0010%\u001a\u0004\u0018\u00010&2\b\u0010(\u001a\u0004\u0018\u00010)H\u0002J6\u0010*\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010+\u001a\u00020\f2\u0006\u0010$\u001a\u00020 2\b\b\u0001\u0010%\u001a\u00020&2\n\b\u0003\u0010(\u001a\u0004\u0018\u00010)J\u0012\u0010,\u001a\u00020\u00182\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J\b\u0010-\u001a\u00020\u0013H\u0002J.\u0010.\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010$\u001a\u00020 2\b\u0010%\u001a\u0004\u0018\u00010&2\b\u0010(\u001a\u0004\u0018\u00010)H\u0002J\u0012\u0010/\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0003R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00060"}, d2 = {"Lcn/mucang/android/account/one_key_login/activity/AliOneKeyLoginPage;", "", "()V", "carrierName", "", "checkedFlag", "", "mPhoneNumberAuthHelper", "Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;", "mTokenResultListener", "Lcom/mobile/auth/gatewayauth/TokenResultListener;", "mobileLoginModel", "Lcn/mucang/android/account/one_key_login/model/QuickLoginModel;", "pageName", "privacyProtocolUrl", SocialConstants.PARAM_RECEIVER, "Landroid/content/BroadcastReceiver;", "userProtocolUrl", "changeLoginType", "", "context", "Landroid/content/Context;", "displayMiAndWxUI", "loginThirdLayout", "Landroid/view/View;", "loginThirdWxIv", "Landroid/widget/ImageView;", "loginThirdMiIv", "failToLoginSms", "finish", "getCarrierName", "getLoginSmsModel", "Lcn/mucang/android/account/data/LoginSmsModel;", "handleThirdLoginUI", "handleTokenFailed", "s", "loginSmsModel", "quickLoginFailAction", "Lcn/mucang/android/account/one_key_login/QuickLoginFailedAction;", "handleTokenSuccess", "quickLoginSuccessAction", "Lcn/mucang/android/account/one_key_login/QuickLoginSuccessAction;", "initAliLoginPage", "accountBaseModel", "initSwitchView", "intProtocol", "sdkInit", "setLoginViewConfig", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AliOneKeyLoginPage {
    private static TokenResultListener b = null;
    private static PhoneNumberAuthHelper c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static QuickLoginModel f2213d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f2214e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f2215f = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static String f2216g = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static String f2217h = "";
    private static boolean i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AliOneKeyLoginPage f2212a = new AliOneKeyLoginPage();
    private static final BroadcastReceiver j = new a();

    /* JADX INFO: renamed from: cn.mucang.android.account.j.o.j$a */
    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/account/one_key_login/activity/AliOneKeyLoginPage$receiver$1", "Landroid/content/BroadcastReceiver;", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            r.e(context, "context");
            r.e(intent, "intent");
            if (r.a("cn.mucang.android.account.ACTION_LOGINED", intent.getAction())) {
                AliOneKeyLoginPage.f2212a.j();
            }
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.account.j.o.j$b */
    @Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0007"}, d2 = {"cn/mucang/android/account/one_key_login/activity/AliOneKeyLoginPage$sdkInit$1", "Lcom/mobile/auth/gatewayauth/TokenResultListener;", "onTokenFailed", "", "s", "", "onTokenSuccess", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements TokenResultListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f2218a;
        final /* synthetic */ LoginSmsModel b;
        final /* synthetic */ j c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ l f2219d;

        b(Context context, LoginSmsModel loginSmsModel, j jVar, l lVar) {
            this.f2218a = context;
            this.b = loginSmsModel;
            this.c = jVar;
            this.f2219d = lVar;
        }

        @Override // com.mobile.auth.gatewayauth.TokenResultListener
        public void onTokenFailed(String s) {
            r.e(s, "s");
            AliOneKeyLoginPage.f2212a.n(s, this.f2218a, this.b, this.c);
        }

        @Override // com.mobile.auth.gatewayauth.TokenResultListener
        public void onTokenSuccess(String s) {
            r.e(s, "s");
            AliOneKeyLoginPage.f2212a.o(s, this.f2218a, this.b, this.c, this.f2219d);
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.account.j.o.j$c */
    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/android/account/one_key_login/activity/AliOneKeyLoginPage$setLoginViewConfig$1", "Lcom/mobile/auth/gatewayauth/ui/AbstractPnsViewDelegate;", "onViewCreated", "", "v", "Landroid/view/View;", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c extends AbstractPnsViewDelegate {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(View view) {
            if (AliOneKeyLoginPage.i) {
                AccountManager.h().J(MucangConfig.i(), 1027, AliOneKeyLoginPage.f2212a.l(), "xiaomi");
            } else {
                u.h(n0.c(R.string.account__disagree_protocol_tip));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(View view) {
            if (AliOneKeyLoginPage.i) {
                AccountManager.h().K(MucangConfig.i(), 1027, AliOneKeyLoginPage.f2212a.l());
            } else {
                u.h(n0.c(R.string.account__disagree_protocol_tip));
            }
        }

        @Override // com.mobile.auth.gatewayauth.ui.AbstractPnsViewDelegate
        public void onViewCreated(View v) {
            r.e(v, "v");
            View viewFindViewById = v.findViewById(R.id.account__login_third_layout_in);
            r.d(viewFindViewById, "v.findViewById(R.id.acco…t__login_third_layout_in)");
            View viewFindViewById2 = v.findViewById(R.id.account_login_third_xiaomi_iv);
            r.d(viewFindViewById2, "v.findViewById(R.id.account_login_third_xiaomi_iv)");
            ImageView imageView = (ImageView) viewFindViewById2;
            View viewFindViewById3 = v.findViewById(R.id.account_login_third_weixin_iv);
            r.d(viewFindViewById3, "v.findViewById(R.id.account_login_third_weixin_iv)");
            ImageView imageView2 = (ImageView) viewFindViewById3;
            AliOneKeyLoginPage.f2212a.h(viewFindViewById, imageView2, imageView);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.j.o.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AliOneKeyLoginPage.c.c(view);
                }
            });
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.j.o.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AliOneKeyLoginPage.c.d(view);
                }
            });
        }
    }

    private AliOneKeyLoginPage() {
    }

    private final void E(Context context, LoginSmsModel loginSmsModel, j jVar, l lVar) {
        b = new b(context, loginSmsModel, jVar, lVar);
        Application context2 = MucangConfig.getContext();
        TokenResultListener tokenResultListener = b;
        if (tokenResultListener == null) {
            r.u("mTokenResultListener");
            throw null;
        }
        PhoneNumberAuthHelper phoneNumberAuthHelper = PhoneNumberAuthHelper.getInstance(context2, tokenResultListener);
        r.d(phoneNumberAuthHelper, "getInstance(MucangConfig…(), mTokenResultListener)");
        c = phoneNumberAuthHelper;
        k();
        m.h(r.m(f2216g, "-阿里云-请求一键登录"), "", "");
        PhoneNumberAuthHelper phoneNumberAuthHelper2 = c;
        if (phoneNumberAuthHelper2 == null) {
            r.u("mPhoneNumberAuthHelper");
            throw null;
        }
        phoneNumberAuthHelper2.getLoginToken(context, 2000);
        F(context);
    }

    @SuppressLint({"ResourceType"})
    private final void F(final Context context) {
        PhoneNumberAuthHelper phoneNumberAuthHelper = c;
        if (phoneNumberAuthHelper == null) {
            r.u("mPhoneNumberAuthHelper");
            throw null;
        }
        phoneNumberAuthHelper.removeAuthRegisterXmlConfig();
        PhoneNumberAuthHelper phoneNumberAuthHelper2 = c;
        if (phoneNumberAuthHelper2 == null) {
            r.u("mPhoneNumberAuthHelper");
            throw null;
        }
        phoneNumberAuthHelper2.removeAuthRegisterViewConfig();
        PhoneNumberAuthHelper phoneNumberAuthHelper3 = c;
        if (phoneNumberAuthHelper3 == null) {
            r.u("mPhoneNumberAuthHelper");
            throw null;
        }
        phoneNumberAuthHelper3.addAuthRegisterXmlConfig(new AuthRegisterXmlConfig.Builder().setLayout(R.layout.account__activity_ali_one_key_login, new c()).build());
        PhoneNumberAuthHelper phoneNumberAuthHelper4 = c;
        if (phoneNumberAuthHelper4 == null) {
            r.u("mPhoneNumberAuthHelper");
            throw null;
        }
        phoneNumberAuthHelper4.addAuthRegistViewConfig("switch_login", new AuthRegisterViewConfig.Builder().setView(v(context)).setRootViewId(0).setCustomInterface(new CustomInterface() { // from class: cn.mucang.android.account.j.o.b
            @Override // com.mobile.auth.gatewayauth.CustomInterface
            public final void onClick(Context context2) {
                AliOneKeyLoginPage.G(context, context2);
            }
        }).build());
        PhoneNumberAuthHelper phoneNumberAuthHelper5 = c;
        if (phoneNumberAuthHelper5 == null) {
            r.u("mPhoneNumberAuthHelper");
            throw null;
        }
        phoneNumberAuthHelper5.setAuthUIConfig(new AuthUIConfig.Builder().setNavColor(0).setNavText("").setStatusBarColor(-1).setNavReturnHidden(false).setNavReturnImgPath("core__title_bar_back_icon").setLightColor(true).setWebViewStatusBarColor(-1).setWebNavColor(-1).setWebNavTextColor(ViewCompat.MEASURED_STATE_MASK).setLogoHidden(true).setSloganHidden(true).setNumberSize(22).setLogBtnHeight(68).setLogBtnMarginLeftAndRight(8).setLogBtnTextSize(17).setLogBtnTextColor(-1).setSwitchAccText("其他手机号码登录").setSwitchAccHidden(true).setSwitchAccTextColor(Color.parseColor("#1DACF9")).setAppPrivacyOne("《用户使用协议》", f2214e).setAppPrivacyTwo("《隐私政策》", f2215f).setProtocolLayoutGravity(48).setProtocolGravity(48).setPrivacyBefore(Constant.CHECKBOX_NO_HIDDEN_PROTOCOL_PREFIX).setAppPrivacyColor(-7829368, Color.parseColor("#1DACF9")).setPrivacyState(false).setPrivacyTextSize(12).setUncheckedImgPath("core__ic_login_yhxy2").setCheckedImgPath("core__ic_login_yhxy1").setCheckboxHidden(false).setCheckBoxHeight(15).setCheckBoxWidth(15).setLogBtnToastHidden(true).setPrivacyMargin(38).setVendorPrivacyPrefix("《").setVendorPrivacySuffix("》").setPageBackgroundPath("#ffffff").setLogBtnBackgroundPath("account__btn_grad_blue_corner").setScreenOrientation(1).create());
        PhoneNumberAuthHelper phoneNumberAuthHelper6 = c;
        if (phoneNumberAuthHelper6 != null) {
            phoneNumberAuthHelper6.setUIClickListener(new AuthUIControlClickListener() { // from class: cn.mucang.android.account.j.o.e
                @Override // com.mobile.auth.gatewayauth.AuthUIControlClickListener
                public final void onClick(String str, Context context2, String str2) {
                    AliOneKeyLoginPage.H(str, context2, str2);
                }
            });
        } else {
            r.u("mPhoneNumberAuthHelper");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(Context context, Context context2) {
        f2212a.g(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(String str, Context context, String str2) {
        i = new JSONObject(str2).optBoolean("isChecked");
        if (r.a(str, ResultCode.CODE_ERROR_USER_LOGIN_BTN)) {
            if (i) {
                m.h(r.m(f2217h, "点击一键登录"), "", "");
            } else {
                u.h("您需要同意用户使用协议及隐私协议才能登录");
            }
        }
    }

    private final void g(Context context) {
        LoginMultiDefaultSmsActivity.a aVar = LoginMultiDefaultSmsActivity.f2020h;
        LoginSmsModel loginSmsModel = new LoginSmsModel(f2217h);
        QuickLoginModel quickLoginModel = f2213d;
        if (quickLoginModel == null) {
            r.u("mobileLoginModel");
            throw null;
        }
        LoginSmsModel extraData = loginSmsModel.setExtraData(quickLoginModel.getExtraData());
        QuickLoginModel quickLoginModel2 = f2213d;
        if (quickLoginModel2 == null) {
            r.u("mobileLoginModel");
            throw null;
        }
        LoginSmsModel skipAuthRealName = extraData.setSkipAuthRealName(quickLoginModel2.isSkipAuthRealName());
        QuickLoginModel quickLoginModel3 = f2213d;
        if (quickLoginModel3 != null) {
            aVar.a(context, skipAuthRealName.setSkipBindThird(quickLoginModel3.isSkipBindThird()));
        } else {
            r.u("mobileLoginModel");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(View view, ImageView imageView, ImageView imageView2) {
        LoginPlatforms loginPlatforms = LoginPlatforms.f2300a;
        if (loginPlatforms.a("xiaomi") != null && ThirdAccountUtils.a("mi_login_enable_ui", false)) {
            m(view);
            imageView2.setVisibility(0);
        }
        if (loginPlatforms.a("weixin") == null || !ThirdAccountUtils.a("wechat_login_enable_ui", false)) {
            return;
        }
        m(view);
        imageView.setVisibility(0);
    }

    private final void i(Context context) {
        g(context);
        j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j() {
        PhoneNumberAuthHelper phoneNumberAuthHelper = c;
        if (phoneNumberAuthHelper == null) {
            r.u("mPhoneNumberAuthHelper");
            throw null;
        }
        phoneNumberAuthHelper.setAuthListener(null);
        MultiProcessBroadcastManager.f(j);
        PhoneNumberAuthHelper phoneNumberAuthHelper2 = c;
        if (phoneNumberAuthHelper2 != null) {
            phoneNumberAuthHelper2.quitLoginPage();
        } else {
            r.u("mPhoneNumberAuthHelper");
            throw null;
        }
    }

    private final void k() {
        PhoneNumberAuthHelper phoneNumberAuthHelper = c;
        if (phoneNumberAuthHelper == null) {
            r.u("mPhoneNumberAuthHelper");
            throw null;
        }
        String currentCarrierName = phoneNumberAuthHelper.getCurrentCarrierName();
        if (currentCarrierName != null) {
            int iHashCode = currentCarrierName.hashCode();
            if (iHashCode != 2072138) {
                if (iHashCode != 2078865) {
                    if (iHashCode == 2079826 && currentCarrierName.equals(Constant.CUCC)) {
                        f2216g = "联通";
                    }
                } else if (currentCarrierName.equals(Constant.CTCC)) {
                    f2216g = "电信";
                }
            } else if (currentCarrierName.equals(Constant.CMCC)) {
                f2216g = "移动";
            }
        }
        f2217h = r.m(f2216g, "-阿里云-一键登录页-");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LoginSmsModel l() {
        LoginSmsModel loginSmsModel = new LoginSmsModel("阿里云一键登录");
        QuickLoginModel quickLoginModel = f2213d;
        if (quickLoginModel == null) {
            r.u("mobileLoginModel");
            throw null;
        }
        LoginSmsModel skipAuthRealName = loginSmsModel.setSkipAuthRealName(quickLoginModel.isSkipAuthRealName());
        QuickLoginModel quickLoginModel2 = f2213d;
        if (quickLoginModel2 == null) {
            r.u("mobileLoginModel");
            throw null;
        }
        LoginSmsModel extraData = skipAuthRealName.setExtraData(quickLoginModel2.getExtraData());
        QuickLoginModel quickLoginModel3 = f2213d;
        if (quickLoginModel3 == null) {
            r.u("mobileLoginModel");
            throw null;
        }
        LoginSmsModel skipBindThird = extraData.setSkipBindThird(quickLoginModel3.isSkipBindThird());
        r.d(skipBindThird, "LoginSmsModel(\"阿里云一键登录\")…ginModel.isSkipBindThird)");
        return skipBindThird;
    }

    private final void m(View view) {
        if (view.getVisibility() != 0) {
            view.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(String str, Context context, LoginSmsModel loginSmsModel, j jVar) {
        PhoneNumberAuthHelper phoneNumberAuthHelper = c;
        if (phoneNumberAuthHelper == null) {
            r.u("mPhoneNumberAuthHelper");
            throw null;
        }
        phoneNumberAuthHelper.hideLoginLoading();
        PhoneNumberAuthHelper phoneNumberAuthHelper2 = c;
        if (phoneNumberAuthHelper2 == null) {
            r.u("mPhoneNumberAuthHelper");
            throw null;
        }
        phoneNumberAuthHelper2.setAuthListener(null);
        String strOptString = new JSONObject(str).optString("code");
        if (strOptString == null) {
            strOptString = "";
        }
        if (r.a(strOptString, ResultCode.CODE_ERROR_USER_CANCEL)) {
            j();
            return;
        }
        if (r.a(strOptString, ResultCode.CODE_ERROR_USER_CHECKBOX) || r.a(strOptString, ResultCode.CODE_ERROR_USER_PROTOCOL_CONTROL)) {
            return;
        }
        m.h(r.m(f2217h, "页面调起失败"), "", str);
        if (jVar == null) {
            i(context);
        } else {
            jVar.a(context, loginSmsModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o(String str, final Context context, final LoginSmsModel loginSmsModel, final j jVar, final l lVar) {
        Object objM139constructorimpl;
        PhoneNumberAuthHelper phoneNumberAuthHelper = c;
        final TokenRet tokenRetFromJson = null;
        if (phoneNumberAuthHelper == null) {
            r.u("mPhoneNumberAuthHelper");
            throw null;
        }
        phoneNumberAuthHelper.hideLoginLoading();
        try {
            Result.Companion companion = Result.INSTANCE;
            tokenRetFromJson = TokenRet.fromJson(str);
            objM139constructorimpl = Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(k.a(th));
        }
        Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
        if (thM142exceptionOrNullimpl != null) {
            u.h("登录失败!");
            m.h(r.m(f2217h, "一键登录失败"), thM142exceptionOrNullimpl.getMessage(), "");
            if (jVar != null) {
                jVar.a(context, loginSmsModel);
            }
        }
        if (tokenRetFromJson == null) {
            return;
        }
        if (r.a(ResultCode.CODE_START_AUTHPAGE_SUCCESS, tokenRetFromJson.getCode())) {
            m.h(r.m(f2217h, "展示"), "", "");
        } else if (r.a("600000", tokenRetFromJson.getCode())) {
            MucangConfig.f(new Runnable() { // from class: cn.mucang.android.account.j.o.i
                @Override // java.lang.Runnable
                public final void run() {
                    AliOneKeyLoginPage.p(tokenRetFromJson, jVar, context, loginSmsModel, lVar);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(TokenRet it, final j jVar, final Context context, final LoginSmsModel loginSmsModel, final l lVar) {
        Object objM139constructorimpl;
        r.e(it, "$it");
        r.e(loginSmsModel, "$loginSmsModel");
        try {
            Result.Companion companion = Result.INSTANCE;
            UserInfoResponse userInfoResponseB = new cn.mucang.android.account.one_key_login.api.a().b(it.getToken());
            if (userInfoResponseB == null) {
                u.h("服务器出错了!");
                m.h(r.m(f2217h, "一键登录失败"), "user为空", "服务器出错了!");
                u.c(new Runnable() { // from class: cn.mucang.android.account.j.o.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        AliOneKeyLoginPage.q(jVar, context, loginSmsModel);
                    }
                });
            } else {
                QuickLoginModel quickLoginModel = f2213d;
                if (quickLoginModel == null) {
                    r.u("mobileLoginModel");
                    throw null;
                }
                f.f(userInfoResponseB, quickLoginModel, false);
                final cn.mucang.android.account.api.data.b bVarA = f.a(userInfoResponseB);
                u.c(new Runnable() { // from class: cn.mucang.android.account.j.o.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        AliOneKeyLoginPage.r(context, bVarA, lVar, loginSmsModel);
                    }
                });
            }
            objM139constructorimpl = Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(k.a(th));
        }
        Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
        if (thM142exceptionOrNullimpl != null) {
            u.h("服务器出错了!");
            m.h(r.m(f2217h, "一键登录失败"), thM142exceptionOrNullimpl.getMessage(), "服务器出错了!");
            u.c(new Runnable() { // from class: cn.mucang.android.account.j.o.h
                @Override // java.lang.Runnable
                public final void run() {
                    AliOneKeyLoginPage.t(jVar, context, loginSmsModel);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(j jVar, Context context, LoginSmsModel loginSmsModel) {
        r.e(loginSmsModel, "$loginSmsModel");
        if (jVar == null) {
            return;
        }
        jVar.a(context, loginSmsModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(final Context context, cn.mucang.android.account.api.data.b bVar, final l lVar, final LoginSmsModel loginSmsModel) {
        r.e(loginSmsModel, "$loginSmsModel");
        QuickLoginModel quickLoginModel = f2213d;
        if (quickLoginModel == null) {
            r.u("mobileLoginModel");
            throw null;
        }
        f.d(context, quickLoginModel, bVar);
        cn.mucang.android.account.utils.a.onEvent(r.m(f2217h, "一键登录成功"));
        f2212a.j();
        QuickLoginModel quickLoginModel2 = f2213d;
        if (quickLoginModel2 == null) {
            r.u("mobileLoginModel");
            throw null;
        }
        f.c(quickLoginModel2.getExtraData());
        u.c(new Runnable() { // from class: cn.mucang.android.account.j.o.c
            @Override // java.lang.Runnable
            public final void run() {
                AliOneKeyLoginPage.s(lVar, context, loginSmsModel);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(l lVar, Context context, LoginSmsModel loginSmsModel) {
        r.e(loginSmsModel, "$loginSmsModel");
        if (lVar == null) {
            return;
        }
        lVar.a(context, loginSmsModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(j jVar, Context context, LoginSmsModel loginSmsModel) {
        r.e(loginSmsModel, "$loginSmsModel");
        if (jVar == null) {
            return;
        }
        jVar.a(context, loginSmsModel);
    }

    private final View v(Context context) {
        if (context == null) {
            context = MucangConfig.getContext();
        }
        TextView textView = new TextView(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, s0.a(50.0f));
        layoutParams.setMargins(0, s0.a(346.0f), 0, 0);
        layoutParams.addRule(14, -1);
        textView.setText("其他登录方式");
        textView.setTextColor(Color.parseColor("#1DACF9"));
        textView.setTextSize(2, 13.0f);
        textView.setLayoutParams(layoutParams);
        return textView;
    }

    private final void w() {
        StringBuilder sb = new StringBuilder(f.a.a.f.a.f14544a);
        StringBuilder sb2 = new StringBuilder(f.a.a.f.a.b);
        cn.mucang.android.core.api.url.c.b(sb, "4.3", null, true, null);
        cn.mucang.android.core.api.url.c.b(sb2, "4.3", null, true, null);
        String string = sb.toString();
        r.d(string, "userProtocolBuilder.toString()");
        f2214e = string;
        String string2 = sb2.toString();
        r.d(string2, "privacyProtocolBuilder.toString()");
        f2215f = string2;
    }

    public final void u(Context context, QuickLoginModel accountBaseModel, LoginSmsModel loginSmsModel, j quickLoginFailAction, l lVar) {
        r.e(accountBaseModel, "accountBaseModel");
        r.e(loginSmsModel, "loginSmsModel");
        r.e(quickLoginFailAction, "quickLoginFailAction");
        f2213d = accountBaseModel;
        i = false;
        MultiProcessBroadcastManager.d(j, new IntentFilter("cn.mucang.android.account.ACTION_LOGINED"));
        w();
        E(context, loginSmsModel, quickLoginFailAction, lVar);
    }
}
