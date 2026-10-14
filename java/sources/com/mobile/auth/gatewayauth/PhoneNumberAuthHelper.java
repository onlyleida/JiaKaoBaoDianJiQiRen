package com.mobile.auth.gatewayauth;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.mobile.auth.BuildConfig;
import com.mobile.auth.gatewayauth.annotations.AuthNumber;
import com.mobile.auth.gatewayauth.manager.compat.ResultCodeProcessor;
import com.mobile.auth.gatewayauth.model.LoginPhoneInfo;
import com.mobile.auth.gatewayauth.model.UStruct;

/* JADX INFO: loaded from: classes2.dex */
public class PhoneNumberAuthHelper {

    @AuthNumber
    public static final int SERVICE_TYPE_AUTH = 1;

    @AuthNumber
    public static final int SERVICE_TYPE_LOGIN = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static volatile PhoneNumberAuthHelper f13195a;
    private TokenResultListener b;
    private d c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ResultCodeProcessor f13196d = new com.mobile.auth.gatewayauth.manager.compat.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ResultCodeProcessor f13197e = new com.mobile.auth.gatewayauth.manager.compat.b();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private PhoneNumberAuthHelperProxy f13198f;

    private PhoneNumberAuthHelper(Context context, TokenResultListener tokenResultListener) {
        this.f13198f = PhoneNumberAuthHelperProxy.getInstance(context, tokenResultListener);
        this.b = tokenResultListener;
        this.c = new d(context, this.f13198f.b(), this.f13198f.a(), this);
    }

    static /* synthetic */ ResultCodeProcessor a(PhoneNumberAuthHelper phoneNumberAuthHelper) {
        try {
            return phoneNumberAuthHelper.f13197e;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    private boolean a(long j, final String str, final ResultCodeProcessor resultCodeProcessor, final TokenResultListener tokenResultListener, LoginPhoneInfo loginPhoneInfo, final String str2) {
        if (loginPhoneInfo != null) {
            try {
                if (!TextUtils.isEmpty(loginPhoneInfo.getPhoneNumber())) {
                    try {
                        this.c.a(j, loginPhoneInfo.getPhoneNumber(), str, resultCodeProcessor, new e() { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelper.3
                            @Override // com.mobile.auth.gatewayauth.e
                            public void a(String str3) {
                                try {
                                    PhoneNumberAuthHelper.b(PhoneNumberAuthHelper.this).a(false, false, Constant.CODE_ERROR_START_AUTHPAGE_FAIL, "唤起授权页失败", com.mobile.auth.gatewayauth.utils.a.a(Constant.CODE_ERROR_START_AUTHPAGE_FAIL, "唤起授权页失败"), str, null, tokenResultListener, resultCodeProcessor, str2);
                                } catch (Throwable th) {
                                    a.a(th);
                                }
                            }

                            @Override // com.mobile.auth.gatewayauth.e
                            public void a(String str3, String str4) {
                                try {
                                    PhoneNumberAuthHelper.b(PhoneNumberAuthHelper.this).a(true, false, Constant.CODE_START_AUTHPAGE_SUCCESS, "唤起授权页成功", "", str, null, tokenResultListener, resultCodeProcessor, str2);
                                } catch (Throwable th) {
                                    a.a(th);
                                }
                            }
                        });
                        return true;
                    } catch (Throwable th) {
                        th = th;
                        a.a(th);
                        return false;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return false;
    }

    static /* synthetic */ boolean a(PhoneNumberAuthHelper phoneNumberAuthHelper, long j, String str, ResultCodeProcessor resultCodeProcessor, TokenResultListener tokenResultListener, LoginPhoneInfo loginPhoneInfo, String str2) {
        try {
            return phoneNumberAuthHelper.a(j, str, resultCodeProcessor, tokenResultListener, loginPhoneInfo, str2);
        } catch (Throwable th) {
            a.a(th);
            return false;
        }
    }

    static /* synthetic */ PhoneNumberAuthHelperProxy b(PhoneNumberAuthHelper phoneNumberAuthHelper) {
        try {
            return phoneNumberAuthHelper.f13198f;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    static /* synthetic */ d c(PhoneNumberAuthHelper phoneNumberAuthHelper) {
        try {
            return phoneNumberAuthHelper.c;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    static /* synthetic */ TokenResultListener d(PhoneNumberAuthHelper phoneNumberAuthHelper) {
        try {
            return phoneNumberAuthHelper.b;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    @AuthNumber
    public static PhoneNumberAuthHelper getInstance(Context context, TokenResultListener tokenResultListener) {
        try {
            if (f13195a == null && context != null) {
                synchronized (PhoneNumberAuthHelper.class) {
                    if (f13195a == null) {
                        f13195a = new PhoneNumberAuthHelper(context, tokenResultListener);
                    }
                }
            }
            f13195a.setAuthListener(tokenResultListener);
            return f13195a;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    @AuthNumber
    public static String getVersion() {
        return BuildConfig.VERSION_NAME;
    }

    void a(long j, TokenResultListener tokenResultListener, ResultCodeProcessor resultCodeProcessor) {
        try {
            this.f13198f.a(j, tokenResultListener, resultCodeProcessor);
        } catch (Throwable th) {
            a.a(th);
        }
    }

    @AuthNumber
    public void accelerateLoginPage(int i, PreLoginResultListener preLoginResultListener) {
        try {
            this.f13198f.accelerateLoginPage(i, preLoginResultListener, this.c.m());
        } catch (Throwable th) {
            a.a(th);
        }
    }

    @AuthNumber
    public void accelerateVerify(int i, PreLoginResultListener preLoginResultListener) {
        try {
            this.f13198f.accelerateVerify(i, preLoginResultListener);
        } catch (Throwable th) {
            a.a(th);
        }
    }

    @AuthNumber
    public void addAuthRegistViewConfig(String str, AuthRegisterViewConfig authRegisterViewConfig) {
        try {
            this.c.a(str, authRegisterViewConfig);
        } catch (Throwable th) {
            a.a(th);
        }
    }

    @AuthNumber
    public void addAuthRegisterXmlConfig(AuthRegisterXmlConfig authRegisterXmlConfig) {
        try {
            this.c.a(authRegisterXmlConfig);
        } catch (Throwable th) {
            a.a(th);
        }
    }

    @AuthNumber
    public void checkEnvAvailable(int i) {
        try {
            this.f13198f.checkEnvAvailable(i, this.b);
        } catch (Throwable th) {
            a.a(th);
        }
    }

    @AuthNumber
    @Deprecated
    public boolean checkEnvAvailable() {
        try {
            return this.f13198f.checkEnvAvailable();
        } catch (Throwable th) {
            a.a(th);
            return false;
        }
    }

    @AuthNumber
    public void clearPreInfo() {
        try {
            this.f13198f.clearPreInfo();
        } catch (Throwable th) {
            a.a(th);
        }
    }

    @AuthNumber
    public String getCurrentCarrierName() {
        try {
            return this.f13198f.getCurrentCarrierName();
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    @AuthNumber
    public void getLoginToken(final Context context, final int i) {
        try {
            com.mobile.auth.gatewayauth.utils.b.a(new com.mobile.auth.gatewayauth.utils.b.AbstractRunnableC0261b() { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelper.2
                @Override // com.mobile.auth.gatewayauth.utils.b.AbstractRunnableC0261b
                protected void a() {
                    try {
                        if (context instanceof Activity) {
                            PhoneNumberAuthHelper.c(PhoneNumberAuthHelper.this).a((Activity) context);
                        }
                        final String strC = PhoneNumberAuthHelper.b(PhoneNumberAuthHelper.this).a().c();
                        final String strK = PhoneNumberAuthHelper.b(PhoneNumberAuthHelper.this).b().k();
                        PhoneNumberAuthHelper.b(PhoneNumberAuthHelper.this).getLoginMaskPhone(i, strC, new OnLoginPhoneListener() { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelper.2.1
                            @Override // com.mobile.auth.gatewayauth.OnLoginPhoneListener
                            public void onGetFailed(String str) {
                                try {
                                    if (PhoneNumberAuthHelper.d(PhoneNumberAuthHelper.this) != null) {
                                        PhoneNumberAuthHelper.d(PhoneNumberAuthHelper.this).onTokenFailed(str);
                                    }
                                } catch (Throwable th) {
                                    a.a(th);
                                }
                            }

                            @Override // com.mobile.auth.gatewayauth.OnLoginPhoneListener
                            public void onGetLoginPhone(LoginPhoneInfo loginPhoneInfo) {
                                try {
                                    AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                    PhoneNumberAuthHelper phoneNumberAuthHelper = PhoneNumberAuthHelper.this;
                                    PhoneNumberAuthHelper.a(phoneNumberAuthHelper, i, strC, PhoneNumberAuthHelper.a(phoneNumberAuthHelper), PhoneNumberAuthHelper.d(PhoneNumberAuthHelper.this), loginPhoneInfo, strK);
                                } catch (Throwable th) {
                                    a.a(th);
                                }
                            }
                        }, false, true, strK);
                    } catch (Throwable th) {
                        a.a(th);
                    }
                }
            });
        } catch (Throwable th) {
            a.a(th);
        }
    }

    @AuthNumber
    public PnsReporter getReporter() {
        try {
            return this.f13198f.getReporter();
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    @AuthNumber
    public void getVerifyToken(int i) {
        try {
            this.f13198f.getVerifyToken(i, this.b);
        } catch (Throwable th) {
            a.a(th);
        }
    }

    @AuthNumber
    public void hideLoginLoading() {
        try {
            this.c.b();
        } catch (Throwable th) {
            a.a(th);
        }
    }

    @AuthNumber
    public void quitLoginPage() {
        try {
            final long jCurrentTimeMillis = System.currentTimeMillis();
            this.c.a(this.f13197e);
            this.c.c();
            final long jCurrentTimeMillis2 = System.currentTimeMillis();
            com.mobile.auth.gatewayauth.utils.b.a(new Runnable() { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelper.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        PhoneNumberAuthHelper.b(PhoneNumberAuthHelper.this).c().a(PhoneNumberAuthHelper.b(PhoneNumberAuthHelper.this).b().b("", Constant.ACTION_SDK_QUIT_AUTH_PAGE, UStruct.newUStruct().startTime(jCurrentTimeMillis).endTime(jCurrentTimeMillis2).build(), PhoneNumberAuthHelper.a(PhoneNumberAuthHelper.this).getApiLevel()), 2);
                    } catch (Throwable th) {
                        a.a(th);
                    }
                }
            });
        } catch (Throwable th) {
            a.a(th);
        }
    }

    @AuthNumber
    public void removeAuthRegisterViewConfig() {
        try {
            this.c.i();
        } catch (Throwable th) {
            a.a(th);
        }
    }

    @AuthNumber
    public void removeAuthRegisterXmlConfig() {
        try {
            this.c.j();
        } catch (Throwable th) {
            a.a(th);
        }
    }

    @AuthNumber
    public void setActivityResultListener(ActivityResultListener activityResultListener) {
        try {
            this.c.a(activityResultListener);
        } catch (Throwable th) {
            a.a(th);
        }
    }

    @AuthNumber
    public void setAuthListener(TokenResultListener tokenResultListener) {
        try {
            this.b = tokenResultListener;
            this.f13198f.setAuthListener(tokenResultListener);
            this.c.a(tokenResultListener);
        } catch (Throwable th) {
            a.a(th);
        }
    }

    @AuthNumber
    public void setAuthSDKInfo(String str) {
        try {
            this.f13198f.setAuthSDKInfo(str);
        } catch (Throwable th) {
            a.a(th);
        }
    }

    @AuthNumber
    public void setAuthUIConfig(AuthUIConfig authUIConfig) {
        try {
            this.c.a(authUIConfig);
        } catch (Throwable th) {
            a.a(th);
        }
    }

    @AuthNumber
    public void setUIClickListener(AuthUIControlClickListener authUIControlClickListener) {
        try {
            this.c.a(authUIControlClickListener);
        } catch (Throwable th) {
            a.a(th);
        }
    }
}
