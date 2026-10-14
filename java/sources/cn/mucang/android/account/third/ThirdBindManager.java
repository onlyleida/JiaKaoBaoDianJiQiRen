package cn.mucang.android.account.third;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import cn.mucang.android.account.api.data.Gender;
import cn.mucang.android.account.api.data.ThirdLoginRequest;
import cn.mucang.android.account.api.data.UpdateUserInfo;
import cn.mucang.android.account.data.MCUserInfo;
import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import com.amap.api.maps.model.MyLocationStyle;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mobile.auth.gatewayauth.ResultCode;
import com.tencent.connect.common.Constants;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.Result;

/* JADX INFO: renamed from: cn.mucang.android.account.third.y, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J,\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\fH\u0003J&\u0010\r\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0001\u0010\u0010\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0002J\"\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006H\u0002J(\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J,\u0010\u001b\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0002J(\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J$\u0010\u001e\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0001\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\nJ,\u0010\u001f\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010 \u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0002J\u001a\u0010!\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u001a\u0010\"\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\t\u001a\u0004\u0018\u00010\nJ$\u0010#\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0001\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\nJ&\u0010$\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0001\u0010\u0010\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0002J\u001a\u0010%\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00122\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0003J\u001a\u0010&\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\t\u001a\u0004\u0018\u00010\n¨\u0006'"}, d2 = {"Lcn/mucang/android/account/third/ThirdBindManager;", "", "()V", "bindAccount", "", "token", "", "loginPlatform", "Lcn/mucang/android/account/third/LoginPlatform;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/android/account/listener/AccountBindThirdListener;", "needUpdateUser", "", "doThirdAuthorize", "activity", "Landroid/app/Activity;", Constants.PARAM_PLATFORM, "from", "Lcn/mucang/android/account/api/data/ThirdLoginRequest;", "mcUserInfo", "Lcn/mucang/android/account/data/MCUserInfo;", "thirdParty", "appId", "showConfirm", "okListener", "Landroid/content/DialogInterface$OnClickListener;", "cancelListener", "showConfirmAsync", "showUnBindConfirm", "thirdType", "toBind", "toBindAccount", SocialConstants.TYPE_REQUEST, "toBindQQ", "toBindWeChat", "toUnBind", "unBindThird", "updateThirdInfo", "updateUserInfoByWeChat", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ThirdBindManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThirdBindManager f2301a = new ThirdBindManager();

    /* JADX INFO: renamed from: cn.mucang.android.account.third.y$a */
    @Metadata(d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016¨\u0006\f"}, d2 = {"cn/mucang/android/account/third/ThirdBindManager$doThirdAuthorize$1", "Lcn/mucang/android/account/third/LoginCallback;", "onCancel", "", "onComplete", "mcUserInfo", "Lcn/mucang/android/account/data/MCUserInfo;", "onError", MyLocationStyle.ERROR_CODE, "", "throwable", "", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Activity f2302a;
        final /* synthetic */ u b;
        final /* synthetic */ cn.mucang.android.account.i.a c;

        a(Activity activity, u uVar, cn.mucang.android.account.i.a aVar) {
            this.f2302a = activity;
            this.b = uVar;
            this.c = aVar;
        }

        @Override // cn.mucang.android.account.third.s
        public void a(MCUserInfo mCUserInfo) {
            ThirdBindManager thirdBindManager = ThirdBindManager.f2301a;
            Activity activity = this.f2302a;
            String strF = this.b.f();
            kotlin.jvm.internal.r.d(strF, "loginPlatform.thirdPartyValue");
            String strG = this.b.g();
            kotlin.jvm.internal.r.d(strG, "loginPlatform.appId");
            thirdBindManager.G(activity, thirdBindManager.h(mCUserInfo, strF, strG), this.b, this.c);
        }

        @Override // cn.mucang.android.account.third.s
        public void b(int i, Throwable th) {
            this.b.c();
            cn.mucang.android.account.i.a aVar = this.c;
            if (aVar == null) {
                return;
            }
            aVar.a(th);
        }

        @Override // cn.mucang.android.account.third.s
        public void onCancel() {
            cn.mucang.android.account.i.a aVar = this.c;
            if (aVar == null) {
                return;
            }
            aVar.onCancel();
        }
    }

    private ThirdBindManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(Activity activity, final cn.mucang.android.account.i.a aVar, final u loginPlatform, final String token) {
        kotlin.jvm.internal.r.e(loginPlatform, "$loginPlatform");
        kotlin.jvm.internal.r.e(token, "$token");
        if (activity == null) {
            if (aVar == null) {
                return;
            }
            aVar.a(new Throwable("绑定失败"));
        } else if (!activity.isFinishing() && !activity.isDestroyed()) {
            f2301a.y(activity, loginPlatform, new DialogInterface.OnClickListener() { // from class: cn.mucang.android.account.third.i
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    ThirdBindManager.B(token, loginPlatform, aVar, dialogInterface, i);
                }
            }, new DialogInterface.OnClickListener() { // from class: cn.mucang.android.account.third.a
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    ThirdBindManager.D(aVar, dialogInterface, i);
                }
            });
        } else {
            if (aVar == null) {
                return;
            }
            aVar.a(new Throwable("绑定失败"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(final String token, final u loginPlatform, final cn.mucang.android.account.i.a aVar, DialogInterface dialogInterface, int i) {
        kotlin.jvm.internal.r.e(token, "$token");
        kotlin.jvm.internal.r.e(loginPlatform, "$loginPlatform");
        MucangConfig.f(new Runnable() { // from class: cn.mucang.android.account.third.l
            @Override // java.lang.Runnable
            public final void run() {
                ThirdBindManager.C(token, loginPlatform, aVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(String token, u loginPlatform, cn.mucang.android.account.i.a aVar) {
        kotlin.jvm.internal.r.e(token, "$token");
        kotlin.jvm.internal.r.e(loginPlatform, "$loginPlatform");
        f2301a.c(token, loginPlatform, aVar, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(cn.mucang.android.account.i.a aVar, DialogInterface dialogInterface, int i) {
        if (aVar == null) {
            return;
        }
        aVar.a(new Throwable("绑定失败,已绑定其它账户"));
    }

    private final void E(Activity activity, String str, DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2) {
        new AlertDialog.Builder(activity).setTitle("解除绑定").setMessage("确定将" + str + "账号与你的账号解除绑定").setCancelable(false).setPositiveButton("确认", onClickListener).setNegativeButton("取消", onClickListener2).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G(final Activity activity, final ThirdLoginRequest thirdLoginRequest, final u uVar, final cn.mucang.android.account.i.a aVar) {
        MucangConfig.f(new Runnable() { // from class: cn.mucang.android.account.third.f
            @Override // java.lang.Runnable
            public final void run() {
                ThirdBindManager.H(thirdLoginRequest, uVar, aVar, activity);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(ThirdLoginRequest request, u loginPlatform, final cn.mucang.android.account.i.a aVar, Activity activity) {
        kotlin.jvm.internal.r.e(request, "$request");
        kotlin.jvm.internal.r.e(loginPlatform, "$loginPlatform");
        try {
            String token = new cn.mucang.android.account.g.d().g(request).getData().getString("token");
            if (n0.e(token)) {
                cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.account.third.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        ThirdBindManager.I(aVar);
                    }
                });
            } else {
                ThirdBindManager thirdBindManager = f2301a;
                kotlin.jvm.internal.r.d(token, "token");
                thirdBindManager.c(token, loginPlatform, aVar, true);
            }
        } catch (ApiException e2) {
            ApiResponse apiResponse = e2.getApiResponse();
            if (apiResponse == null) {
                cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.account.third.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        ThirdBindManager.J(aVar);
                    }
                });
                return;
            }
            try {
                String token2 = apiResponse.getData().getString("token");
                if (20029 == apiResponse.getErrorCode()) {
                    if (aVar instanceof cn.mucang.android.account.i.b) {
                        ((cn.mucang.android.account.i.b) aVar).b(request);
                    } else {
                        ThirdBindManager thirdBindManager2 = f2301a;
                        kotlin.jvm.internal.r.d(token2, "token");
                        thirdBindManager2.z(activity, token2, loginPlatform, aVar);
                    }
                }
            } catch (Exception unused) {
                cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.account.third.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        ThirdBindManager.K(aVar);
                    }
                });
            }
        } catch (HttpException e3) {
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.account.third.h
                @Override // java.lang.Runnable
                public final void run() {
                    ThirdBindManager.M(aVar, e3);
                }
            });
        } catch (InternalException e4) {
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.account.third.p
                @Override // java.lang.Runnable
                public final void run() {
                    ThirdBindManager.L(aVar, e4);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(cn.mucang.android.account.i.a aVar) {
        if (aVar == null) {
            return;
        }
        aVar.a(new Throwable("绑定失败"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(cn.mucang.android.account.i.a aVar) {
        if (aVar == null) {
            return;
        }
        aVar.a(new Throwable("绑定失败"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(cn.mucang.android.account.i.a aVar) {
        if (aVar == null) {
            return;
        }
        aVar.a(new Throwable("绑定失败"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(cn.mucang.android.account.i.a aVar, InternalException e2) {
        kotlin.jvm.internal.r.e(e2, "$e");
        if (aVar == null) {
            return;
        }
        aVar.a(e2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M(cn.mucang.android.account.i.a aVar, HttpException e2) {
        kotlin.jvm.internal.r.e(e2, "$e");
        if (aVar == null) {
            return;
        }
        aVar.a(e2);
    }

    private final void O(Activity activity, final String str, final cn.mucang.android.account.i.a aVar) {
        String str2;
        if (activity == null) {
            if (aVar == null) {
                return;
            }
            aVar.a(new Throwable("解绑失败"));
        } else if (activity.isFinishing() || activity.isDestroyed()) {
            if (aVar == null) {
                return;
            }
            aVar.a(new Throwable("解绑失败"));
        } else {
            if (kotlin.jvm.internal.r.a(str, "xiaomi")) {
                str2 = "小米";
            } else {
                str2 = kotlin.jvm.internal.r.a(str, "weixin") ? "微信" : "";
            }
            E(activity, str2, new DialogInterface.OnClickListener() { // from class: cn.mucang.android.account.third.c
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    ThirdBindManager.P(str, aVar, dialogInterface, i);
                }
            }, new DialogInterface.OnClickListener() { // from class: cn.mucang.android.account.third.d
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    ThirdBindManager.R(aVar, dialogInterface, i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P(final String platform, final cn.mucang.android.account.i.a aVar, DialogInterface dialogInterface, int i) {
        Object objM139constructorimpl;
        kotlin.jvm.internal.r.e(platform, "$platform");
        try {
            Result.Companion companion = Result.INSTANCE;
            MucangConfig.f(new Runnable() { // from class: cn.mucang.android.account.third.e
                @Override // java.lang.Runnable
                public final void run() {
                    ThirdBindManager.Q(platform, aVar);
                }
            });
            objM139constructorimpl = Result.m139constructorimpl(kotlin.v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
        }
        if (Result.m142exceptionOrNullimpl(objM139constructorimpl) == null || aVar == null) {
            return;
        }
        aVar.a(new Throwable("解绑失败"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q(String platform, cn.mucang.android.account.i.a aVar) {
        kotlin.jvm.internal.r.e(platform, "$platform");
        if (new cn.mucang.android.account.g.n().h(platform)) {
            if (aVar == null) {
                return;
            }
            aVar.onSuccess();
        } else {
            if (aVar == null) {
                return;
            }
            aVar.a(new Throwable("解绑失败"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R(cn.mucang.android.account.i.a aVar, DialogInterface dialogInterface, int i) {
        if (aVar == null) {
            return;
        }
        aVar.onCancel();
    }

    private final void c(String str, u uVar, final cn.mucang.android.account.i.a aVar, boolean z) {
        try {
            UpdateUserInfo updateUserInfoF = new cn.mucang.android.account.g.d().f(str, z);
            if (updateUserInfoF != null) {
                cn.mucang.android.account.f.m(updateUserInfoF);
                cn.mucang.android.account.utils.a.onEvent("绑定第三方账号-绑定" + ((Object) uVar.a()) + ResultCode.MSG_SUCCESS);
                cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.account.third.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        ThirdBindManager.d(aVar);
                    }
                });
            } else {
                cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.account.third.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        ThirdBindManager.e(aVar);
                    }
                });
            }
        } catch (Exception e2) {
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.account.third.k
                @Override // java.lang.Runnable
                public final void run() {
                    ThirdBindManager.f(aVar, e2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(cn.mucang.android.account.i.a aVar) {
        if (aVar == null) {
            return;
        }
        aVar.onSuccess();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(cn.mucang.android.account.i.a aVar) {
        if (aVar == null) {
            return;
        }
        aVar.a(new Throwable("绑定失败"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(cn.mucang.android.account.i.a aVar, Exception e2) {
        kotlin.jvm.internal.r.e(e2, "$e");
        if (aVar == null) {
            return;
        }
        aVar.a(e2);
    }

    private final void g(Activity activity, String str, cn.mucang.android.account.i.a aVar) {
        String str2;
        u uVarA = LoginPlatforms.f2300a.a(str);
        if (kotlin.jvm.internal.r.a(str, "xiaomi")) {
            str2 = "小米";
        } else {
            str2 = kotlin.jvm.internal.r.a(str, "weixin") ? "微信" : "";
        }
        if (uVarA != null) {
            uVarA.c();
            uVarA.b(activity, new a(activity, uVarA, aVar));
        } else {
            if (aVar == null) {
                return;
            }
            aVar.a(new Throwable("暂不支持绑定" + str2 + "账号"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ThirdLoginRequest h(MCUserInfo mCUserInfo, String str, String str2) {
        Gender gender;
        ThirdLoginRequest thirdLoginRequest = new ThirdLoginRequest();
        thirdLoginRequest.setAppId(str2);
        thirdLoginRequest.setThirdParty(str);
        thirdLoginRequest.setOpenId(mCUserInfo == null ? null : mCUserInfo.getOpenId());
        thirdLoginRequest.setUnionId(mCUserInfo == null ? null : mCUserInfo.getUnionId());
        thirdLoginRequest.setAvatar(mCUserInfo == null ? null : mCUserInfo.getAvatar());
        thirdLoginRequest.setGender((mCUserInfo == null || (gender = mCUserInfo.getGender()) == null) ? null : gender.name());
        thirdLoginRequest.setNickname(mCUserInfo != null ? mCUserInfo.getNickname() : null);
        return thirdLoginRequest;
    }

    private final void y(Activity activity, u uVar, DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2) {
        new AlertDialog.Builder(activity).setTitle("继续操作").setMessage((char) 35813 + ((Object) uVar.getName()) + "账号已绑定其他账号，当前操作将导致其与之前的账号解除绑定，请确定是否继续？").setCancelable(false).setPositiveButton("继续", onClickListener).setNegativeButton("取消", onClickListener2).create().show();
    }

    private final void z(final Activity activity, final String str, final u uVar, final cn.mucang.android.account.i.a aVar) {
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.account.third.o
            @Override // java.lang.Runnable
            public final void run() {
                ThirdBindManager.A(activity, aVar, uVar, str);
            }
        });
    }

    public final void F(Activity activity, String loginPlatform, cn.mucang.android.account.i.a aVar) {
        kotlin.jvm.internal.r.e(loginPlatform, "loginPlatform");
        g(activity, loginPlatform, aVar);
    }

    public final void N(Activity activity, String loginPlatform, cn.mucang.android.account.i.a aVar) {
        kotlin.jvm.internal.r.e(loginPlatform, "loginPlatform");
        O(activity, loginPlatform, aVar);
    }
}
