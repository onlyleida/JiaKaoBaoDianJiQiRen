package com.mobile.auth.gatewayauth;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.mobile.auth.gatewayauth.annotations.AuthNumber;
import com.mobile.auth.gatewayauth.annotations.SafeProtector;
import com.mobile.auth.gatewayauth.manager.CrashManager;
import com.mobile.auth.gatewayauth.manager.FeatureManager;
import com.mobile.auth.gatewayauth.manager.RequestCallback;
import com.mobile.auth.gatewayauth.manager.SystemManager;
import com.mobile.auth.gatewayauth.manager.TokenMaskManager;
import com.mobile.auth.gatewayauth.manager.VendorSdkInfoManager;
import com.mobile.auth.gatewayauth.manager.compat.ResultCodeProcessor;
import com.mobile.auth.gatewayauth.manager.f;
import com.mobile.auth.gatewayauth.model.ConfigRule;
import com.mobile.auth.gatewayauth.model.InitResult;
import com.mobile.auth.gatewayauth.model.LoginPhoneInfo;
import com.mobile.auth.gatewayauth.model.MonitorStruct;
import com.mobile.auth.gatewayauth.model.TokenRet;
import com.mobile.auth.gatewayauth.model.UStruct;
import com.nirvana.tools.core.ComponentSdkCore;
import com.tencent.bugly.Bugly;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
class PhoneNumberAuthHelperProxy {

    @AuthNumber
    public static final int SERVICE_TYPE_AUTH = 1;

    @AuthNumber
    public static final int SERVICE_TYPE_LOGIN = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static volatile PhoneNumberAuthHelperProxy f13205a;
    private TokenResultListener b;
    private SystemManager c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.mobile.auth.gatewayauth.manager.b f13206d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private VendorSdkInfoManager f13207e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TokenMaskManager f13208f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.mobile.auth.gatewayauth.manager.d f13209g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private CrashManager f13210h;
    private f i;
    private Future j;
    private com.mobile.auth.o.a k;
    private String l;
    private ResultCodeProcessor m = new com.mobile.auth.gatewayauth.manager.compat.a();
    private ResultCodeProcessor n = new com.mobile.auth.gatewayauth.manager.compat.b();

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy$13, reason: invalid class name */
    class AnonymousClass13 implements TokenResultListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ PreLoginResultListener f13216a;
        final /* synthetic */ String b;

        AnonymousClass13(PreLoginResultListener preLoginResultListener, String str) {
            this.f13216a = preLoginResultListener;
            this.b = str;
        }

        @Override // com.mobile.auth.gatewayauth.TokenResultListener
        public void onTokenFailed(String str) {
            try {
                this.f13216a.onTokenFailed(this.b, str);
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }

        @Override // com.mobile.auth.gatewayauth.TokenResultListener
        public void onTokenSuccess(String str) {
            try {
                this.f13216a.onTokenSuccess(this.b);
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy$14, reason: invalid class name */
    class AnonymousClass14 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f13217a;
        final /* synthetic */ TokenResultListener b;
        final /* synthetic */ MonitorStruct c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f13218d;

        AnonymousClass14(String str, TokenResultListener tokenResultListener, MonitorStruct monitorStruct, String str2) {
            this.f13217a = str;
            this.b = tokenResultListener;
            this.c = monitorStruct;
            this.f13218d = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                PhoneNumberAuthHelperProxy.b(PhoneNumberAuthHelperProxy.this, ResultCode.CODE_ERROR_FUNCTION_TIME_OUT, "请求超时", com.mobile.auth.gatewayauth.utils.a.a(ResultCode.CODE_ERROR_FUNCTION_TIME_OUT, "请求超时"), this.f13217a, this.b, PhoneNumberAuthHelperProxy.j(PhoneNumberAuthHelperProxy.this), this.c, this.f13218d);
                PhoneNumberAuthHelperProxy.g(PhoneNumberAuthHelperProxy.this).d("justPreVerify errorCode = ", ResultCode.CODE_ERROR_FUNCTION_TIME_OUT, "; errorMsg = ", "请求超时", "; action = ", this.c.getAction());
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy$15, reason: invalid class name */
    class AnonymousClass15 implements RequestCallback<String, com.mobile.auth.gatewayauth.manager.base.c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c f13220a;
        final /* synthetic */ MonitorStruct b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ TokenResultListener f13221d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f13222e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f13223f;

        AnonymousClass15(c cVar, MonitorStruct monitorStruct, String str, TokenResultListener tokenResultListener, String str2, String str3) {
            this.f13220a = cVar;
            this.b = monitorStruct;
            this.c = str;
            this.f13221d = tokenResultListener;
            this.f13222e = str2;
            this.f13223f = str3;
        }

        public void a(com.mobile.auth.gatewayauth.manager.base.c cVar) {
            try {
                if (this.f13220a.d()) {
                    this.b.setCache(Bugly.SDK_IS_DEV);
                    this.b.setCarrierFailedResultData(cVar.d());
                    PhoneNumberAuthHelperProxy.b(PhoneNumberAuthHelperProxy.this, cVar.b(), cVar.c(), cVar.g(), this.f13222e, this.f13221d, PhoneNumberAuthHelperProxy.j(PhoneNumberAuthHelperProxy.this), this.b, this.f13223f);
                }
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }

        public void a(String str) {
            try {
                if (this.f13220a.d()) {
                    this.b.setCache(str);
                    this.b.setAuthSdkCode(PhoneNumberAuthHelperProxy.j(PhoneNumberAuthHelperProxy.this).convertCode(Constant.CODE_GET_TOKEN_SUCCESS));
                    PhoneNumberAuthHelperProxy.a(PhoneNumberAuthHelperProxy.this, true, true, "", this.c, this.b, this.f13221d);
                }
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }

        @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
        public /* synthetic */ void onError(com.mobile.auth.gatewayauth.manager.base.c cVar) {
            try {
                a(cVar);
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }

        @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
        public /* synthetic */ void onSuccess(String str) {
            try {
                a(str);
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy$18, reason: invalid class name */
    class AnonymousClass18 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RequestCallback f13232a;

        AnonymousClass18(RequestCallback requestCallback) {
            this.f13232a = requestCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f13232a.onError(com.mobile.auth.gatewayauth.manager.base.c.a(ResultCode.CODE_ERROR_FUNCTION_TIME_OUT, "请求超时"));
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy$19, reason: invalid class name */
    class AnonymousClass19 implements RequestCallback<com.mobile.auth.gatewayauth.manager.base.c, com.mobile.auth.gatewayauth.manager.base.c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c f13233a;
        final /* synthetic */ MonitorStruct b;
        final /* synthetic */ ResultCodeProcessor c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ RequestCallback f13234d;

        AnonymousClass19(c cVar, MonitorStruct monitorStruct, ResultCodeProcessor resultCodeProcessor, RequestCallback requestCallback) {
            this.f13233a = cVar;
            this.b = monitorStruct;
            this.c = resultCodeProcessor;
            this.f13234d = requestCallback;
        }

        public void a(com.mobile.auth.gatewayauth.manager.base.c cVar) {
            try {
                if (this.f13233a.d()) {
                    this.b.setCache(String.valueOf(cVar.e()));
                    LoginPhoneInfo loginPhoneInfoH = cVar.h();
                    this.b.setPhoneNumber(loginPhoneInfoH.getPhoneNumber());
                    this.b.setAuthSdkCode(this.c.convertCode(Constant.CODE_GET_TOKEN_SUCCESS));
                    this.f13234d.onSuccess(loginPhoneInfoH);
                }
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }

        public void b(com.mobile.auth.gatewayauth.manager.base.c cVar) {
            try {
                if (this.f13233a.d()) {
                    this.b.setCache(Bugly.SDK_IS_DEV);
                    this.b.setCarrierFailedResultData(cVar.d());
                    com.mobile.auth.o.a aVarG = PhoneNumberAuthHelperProxy.g(PhoneNumberAuthHelperProxy.this);
                    String[] strArr = new String[2];
                    strArr[0] = "justGetLoginPhone failed!";
                    strArr[1] = cVar == null ? "" : cVar.i();
                    aVarG.d(strArr);
                    this.f13234d.onError(cVar);
                }
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }

        @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
        public /* synthetic */ void onError(com.mobile.auth.gatewayauth.manager.base.c cVar) {
            try {
                b(cVar);
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }

        @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
        public /* synthetic */ void onSuccess(com.mobile.auth.gatewayauth.manager.base.c cVar) {
            try {
                a(cVar);
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy$20, reason: invalid class name */
    class AnonymousClass20 implements TokenResultListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ PreLoginResultListener f13237a;
        final /* synthetic */ String b;

        AnonymousClass20(PreLoginResultListener preLoginResultListener, String str) {
            this.f13237a = preLoginResultListener;
            this.b = str;
        }

        @Override // com.mobile.auth.gatewayauth.TokenResultListener
        public void onTokenFailed(String str) {
            try {
                this.f13237a.onTokenFailed(this.b, str);
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }

        @Override // com.mobile.auth.gatewayauth.TokenResultListener
        public void onTokenSuccess(String str) {
            try {
                this.f13237a.onTokenSuccess(this.b);
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy$21, reason: invalid class name */
    class AnonymousClass21 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f13238a;
        final /* synthetic */ TokenResultListener b;
        final /* synthetic */ ResultCodeProcessor c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ MonitorStruct f13239d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f13240e;

        AnonymousClass21(String str, TokenResultListener tokenResultListener, ResultCodeProcessor resultCodeProcessor, MonitorStruct monitorStruct, String str2) {
            this.f13238a = str;
            this.b = tokenResultListener;
            this.c = resultCodeProcessor;
            this.f13239d = monitorStruct;
            this.f13240e = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                PhoneNumberAuthHelperProxy.a(PhoneNumberAuthHelperProxy.this, ResultCode.CODE_ERROR_FUNCTION_TIME_OUT, "请求超时", com.mobile.auth.gatewayauth.utils.a.a(ResultCode.CODE_ERROR_FUNCTION_TIME_OUT, "请求超时"), this.f13238a, this.b, this.c, this.f13239d, this.f13240e);
                PhoneNumberAuthHelperProxy.g(PhoneNumberAuthHelperProxy.this).d("justPreLogin errorCode = ", ResultCode.CODE_ERROR_FUNCTION_TIME_OUT, "; errorMsg = ", "请求超时", "; action = ", this.f13239d.getAction());
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy$22, reason: invalid class name */
    class AnonymousClass22 implements RequestCallback<com.mobile.auth.gatewayauth.manager.base.c, com.mobile.auth.gatewayauth.manager.base.c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c f13242a;
        final /* synthetic */ MonitorStruct b;
        final /* synthetic */ ResultCodeProcessor c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f13243d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ TokenResultListener f13244e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f13245f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f13246g;

        AnonymousClass22(c cVar, MonitorStruct monitorStruct, ResultCodeProcessor resultCodeProcessor, String str, TokenResultListener tokenResultListener, String str2, String str3) {
            this.f13242a = cVar;
            this.b = monitorStruct;
            this.c = resultCodeProcessor;
            this.f13243d = str;
            this.f13244e = tokenResultListener;
            this.f13245f = str2;
            this.f13246g = str3;
        }

        public void a(com.mobile.auth.gatewayauth.manager.base.c cVar) {
            try {
                if (this.f13242a.d()) {
                    this.b.setCache(String.valueOf(cVar.e()));
                    this.b.setAuthSdkCode(this.c.convertCode(Constant.CODE_GET_TOKEN_SUCCESS));
                    PhoneNumberAuthHelperProxy.a(PhoneNumberAuthHelperProxy.this, true, true, "", this.f13243d, this.b, this.f13244e);
                }
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }

        public void b(com.mobile.auth.gatewayauth.manager.base.c cVar) {
            try {
                if (this.f13242a.d()) {
                    this.b.setCache(Bugly.SDK_IS_DEV);
                    this.b.setCarrierFailedResultData(cVar.d());
                    PhoneNumberAuthHelperProxy.a(PhoneNumberAuthHelperProxy.this, cVar.b(), cVar.c(), cVar.g(), this.f13245f, this.f13244e, this.c, this.b, this.f13246g);
                }
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }

        @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
        public /* synthetic */ void onError(com.mobile.auth.gatewayauth.manager.base.c cVar) {
            try {
                b(cVar);
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }

        @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
        public /* synthetic */ void onSuccess(com.mobile.auth.gatewayauth.manager.base.c cVar) {
            try {
                a(cVar);
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy$4, reason: invalid class name */
    class AnonymousClass4 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f13269a;
        final /* synthetic */ TokenResultListener b;
        final /* synthetic */ ResultCodeProcessor c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ MonitorStruct f13270d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f13271e;

        AnonymousClass4(String str, TokenResultListener tokenResultListener, ResultCodeProcessor resultCodeProcessor, MonitorStruct monitorStruct, String str2) {
            this.f13269a = str;
            this.b = tokenResultListener;
            this.c = resultCodeProcessor;
            this.f13270d = monitorStruct;
            this.f13271e = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                PhoneNumberAuthHelperProxy.a(PhoneNumberAuthHelperProxy.this, ResultCode.CODE_ERROR_FUNCTION_TIME_OUT, "请求超时", com.mobile.auth.gatewayauth.utils.a.a(ResultCode.CODE_ERROR_FUNCTION_TIME_OUT, "请求超时"), this.f13269a, this.b, this.c, this.f13270d, this.f13271e);
                PhoneNumberAuthHelperProxy.g(PhoneNumberAuthHelperProxy.this).d("justGetLoginToken Timeout!");
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy$5, reason: invalid class name */
    class AnonymousClass5 implements RequestCallback<com.mobile.auth.gatewayauth.manager.base.c, com.mobile.auth.gatewayauth.manager.base.c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c f13273a;
        final /* synthetic */ MonitorStruct b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ TokenResultListener f13274d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ ResultCodeProcessor f13275e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f13276f;

        AnonymousClass5(c cVar, MonitorStruct monitorStruct, String str, TokenResultListener tokenResultListener, ResultCodeProcessor resultCodeProcessor, String str2) {
            this.f13273a = cVar;
            this.b = monitorStruct;
            this.c = str;
            this.f13274d = tokenResultListener;
            this.f13275e = resultCodeProcessor;
            this.f13276f = str2;
        }

        public void a(com.mobile.auth.gatewayauth.manager.base.c cVar) {
            try {
                if (this.f13273a.d()) {
                    this.b.setCache(String.valueOf(cVar.e()));
                    PhoneNumberAuthHelperProxy.a(PhoneNumberAuthHelperProxy.this, true, this.c, this.f13274d, this.f13275e, cVar.d(), this.b, this.f13276f);
                }
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }

        public void b(com.mobile.auth.gatewayauth.manager.base.c cVar) {
            try {
                if (this.f13273a.d()) {
                    this.b.setCache(Bugly.SDK_IS_DEV);
                    this.b.setCarrierFailedResultData(cVar.d());
                    PhoneNumberAuthHelperProxy.a(PhoneNumberAuthHelperProxy.this, cVar.b(), cVar.c(), cVar.g(), this.c, this.f13274d, this.f13275e, this.b, this.f13276f);
                }
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }

        @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
        public /* synthetic */ void onError(com.mobile.auth.gatewayauth.manager.base.c cVar) {
            try {
                b(cVar);
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }

        @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
        public /* synthetic */ void onSuccess(com.mobile.auth.gatewayauth.manager.base.c cVar) {
            try {
                a(cVar);
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy$6, reason: invalid class name */
    class AnonymousClass6 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f13278a;
        final /* synthetic */ TokenResultListener b;
        final /* synthetic */ ResultCodeProcessor c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ MonitorStruct f13279d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f13280e;

        AnonymousClass6(String str, TokenResultListener tokenResultListener, ResultCodeProcessor resultCodeProcessor, MonitorStruct monitorStruct, String str2) {
            this.f13278a = str;
            this.b = tokenResultListener;
            this.c = resultCodeProcessor;
            this.f13279d = monitorStruct;
            this.f13280e = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                PhoneNumberAuthHelperProxy.b(PhoneNumberAuthHelperProxy.this, ResultCode.CODE_ERROR_FUNCTION_TIME_OUT, "请求超时", com.mobile.auth.gatewayauth.utils.a.a(ResultCode.CODE_ERROR_FUNCTION_TIME_OUT, "请求超时"), this.f13278a, this.b, this.c, this.f13279d, this.f13280e);
                PhoneNumberAuthHelperProxy.g(PhoneNumberAuthHelperProxy.this).d("justGetToken Timeout!");
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy$7, reason: invalid class name */
    class AnonymousClass7 implements RequestCallback<com.mobile.auth.gatewayauth.manager.base.c, com.mobile.auth.gatewayauth.manager.base.c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c f13282a;
        final /* synthetic */ MonitorStruct b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ResultCodeProcessor f13283d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ TokenResultListener f13284e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f13285f;

        AnonymousClass7(c cVar, MonitorStruct monitorStruct, String str, ResultCodeProcessor resultCodeProcessor, TokenResultListener tokenResultListener, String str2) {
            this.f13282a = cVar;
            this.b = monitorStruct;
            this.c = str;
            this.f13283d = resultCodeProcessor;
            this.f13284e = tokenResultListener;
            this.f13285f = str2;
        }

        public void a(com.mobile.auth.gatewayauth.manager.base.c cVar) {
            try {
                if (this.f13282a.d()) {
                    this.b.setCache(String.valueOf(cVar.e()));
                    PhoneNumberAuthHelperProxy.a(PhoneNumberAuthHelperProxy.this, true, this.c, this.f13283d, this.b, cVar.d(), this.f13284e, this.f13285f);
                }
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }

        public void b(com.mobile.auth.gatewayauth.manager.base.c cVar) {
            try {
                if (this.f13282a.d()) {
                    this.b.setCache(Bugly.SDK_IS_DEV);
                    this.b.setCarrierFailedResultData(cVar.d());
                    PhoneNumberAuthHelperProxy.b(PhoneNumberAuthHelperProxy.this, cVar.b(), cVar.c(), cVar.g(), this.c, this.f13284e, this.f13283d, this.b, this.f13285f);
                }
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }

        @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
        public /* synthetic */ void onError(com.mobile.auth.gatewayauth.manager.base.c cVar) {
            try {
                b(cVar);
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }

        @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
        public /* synthetic */ void onSuccess(com.mobile.auth.gatewayauth.manager.base.c cVar) {
            try {
                a(cVar);
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }
    }

    static {
        System.loadLibrary("auth_number_product-2.12.1.2-log-online-standard-release_alijtca_plus");
        f13205a = null;
    }

    private PhoneNumberAuthHelperProxy(Context context, TokenResultListener tokenResultListener) {
        this.b = tokenResultListener;
        ComponentSdkCore.register(context.getApplicationContext());
        a(context.getApplicationContext());
    }

    static /* synthetic */ SystemManager a(PhoneNumberAuthHelperProxy phoneNumberAuthHelperProxy) {
        try {
            return phoneNumberAuthHelperProxy.c;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    private void a(Context context) {
        try {
            com.mobile.auth.gatewayauth.manager.d dVar = new com.mobile.auth.gatewayauth.manager.d(context);
            this.f13209g = dVar;
            this.k = dVar.a();
            this.c = new SystemManager(context, this.k);
            this.f13210h = CrashManager.a(context);
            VendorSdkInfoManager vendorSdkInfoManager = new VendorSdkInfoManager(this.f13209g, this.c);
            this.f13207e = vendorSdkInfoManager;
            this.f13206d = new com.mobile.auth.gatewayauth.manager.b(context, vendorSdkInfoManager, this.f13209g);
            f fVar = new f(this.c, this.f13209g);
            this.i = fVar;
            this.f13209g.a(fVar);
            this.f13208f = new TokenMaskManager(this.f13206d, this.c, this.f13209g, this.i, this.f13207e);
            com.mobile.auth.gatewayauth.utils.b.a(new Runnable() { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        PhoneNumberAuthHelperProxy.a(PhoneNumberAuthHelperProxy.this).getSimCacheKey(false, PhoneNumberAuthHelperProxy.a(PhoneNumberAuthHelperProxy.this).c());
                    } catch (Throwable th) {
                        try {
                            a.a(th);
                        } catch (Throwable th2) {
                            a.a(th2);
                        }
                    }
                }
            });
            this.j = e();
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    static /* synthetic */ void a(PhoneNumberAuthHelperProxy phoneNumberAuthHelperProxy, int i, ResultCodeProcessor resultCodeProcessor, boolean z, TokenResultListener tokenResultListener) {
        try {
            phoneNumberAuthHelperProxy.justGetToken(i, resultCodeProcessor, z, tokenResultListener);
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    static /* synthetic */ void a(PhoneNumberAuthHelperProxy phoneNumberAuthHelperProxy, long j, PreLoginResultListener preLoginResultListener) {
        try {
            phoneNumberAuthHelperProxy.justPreVerify(j, preLoginResultListener);
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    static /* synthetic */ void a(PhoneNumberAuthHelperProxy phoneNumberAuthHelperProxy, long j, PreLoginResultListener preLoginResultListener, ResultCodeProcessor resultCodeProcessor, boolean z, boolean z2) {
        try {
            phoneNumberAuthHelperProxy.justPreLogin(j, preLoginResultListener, resultCodeProcessor, z, z2);
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    static /* synthetic */ void a(PhoneNumberAuthHelperProxy phoneNumberAuthHelperProxy, long j, TokenResultListener tokenResultListener, ResultCodeProcessor resultCodeProcessor) {
        try {
            phoneNumberAuthHelperProxy.justGetLoginToken(j, tokenResultListener, resultCodeProcessor);
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    static /* synthetic */ void a(PhoneNumberAuthHelperProxy phoneNumberAuthHelperProxy, String str, String str2, String str3, String str4, TokenResultListener tokenResultListener, ResultCodeProcessor resultCodeProcessor, MonitorStruct monitorStruct, String str5) {
        try {
            phoneNumberAuthHelperProxy.a(str, str2, str3, str4, tokenResultListener, resultCodeProcessor, monitorStruct, str5);
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    static /* synthetic */ void a(PhoneNumberAuthHelperProxy phoneNumberAuthHelperProxy, boolean z, boolean z2, String str, String str2, MonitorStruct monitorStruct, TokenResultListener tokenResultListener) {
        try {
            phoneNumberAuthHelperProxy.a(z, z2, str, str2, monitorStruct, tokenResultListener);
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    private void a(String str, String str2, String str3, String str4, TokenResultListener tokenResultListener, ResultCodeProcessor resultCodeProcessor, MonitorStruct monitorStruct, String str5) {
        try {
            this.f13209g.i();
            a(false, true, str, str2, str3, str4, monitorStruct, tokenResultListener, resultCodeProcessor, str5);
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    private void a(final String str, final boolean z, final MonitorStruct monitorStruct, final boolean z2) {
        try {
            com.mobile.auth.gatewayauth.utils.b.a(new Runnable() { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy.25
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (monitorStruct != null) {
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            monitorStruct.setSuccess(z);
                            monitorStruct.setEndTime(jCurrentTimeMillis);
                            if (!z) {
                                monitorStruct.setFailRet(str);
                            }
                            PhoneNumberAuthHelperProxy.g(PhoneNumberAuthHelperProxy.this).a(PhoneNumberAuthHelperProxy.i(PhoneNumberAuthHelperProxy.this).a(monitorStruct), monitorStruct.getUrgency());
                        }
                        if (z2) {
                            PhoneNumberAuthHelperProxy.g(PhoneNumberAuthHelperProxy.this).a();
                        }
                    } catch (Throwable th) {
                        try {
                            a.a(th);
                        } catch (Throwable th2) {
                            a.a(th2);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    private void a(final boolean z, final String str, final TokenResultListener tokenResultListener) {
        try {
            com.mobile.auth.gatewayauth.utils.b.a(new com.mobile.auth.gatewayauth.utils.b.a() { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy.24
                @Override // com.mobile.auth.gatewayauth.utils.b.a
                protected void a() {
                    try {
                        if (z) {
                            tokenResultListener.onTokenSuccess(str);
                        } else {
                            tokenResultListener.onTokenFailed(str);
                        }
                    } catch (Throwable th) {
                        try {
                            a.a(th);
                        } catch (Throwable th2) {
                            a.a(th2);
                        }
                    }
                }

                @Override // com.mobile.auth.gatewayauth.utils.b.a
                protected void a(Throwable th) {
                    try {
                        PhoneNumberAuthHelperProxy.g(PhoneNumberAuthHelperProxy.this).d("TokenResultListener callback exception!", com.mobile.auth.gatewayauth.utils.b.b(th));
                    } catch (Throwable th2) {
                        try {
                            a.a(th2);
                        } catch (Throwable th3) {
                            a.a(th3);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    private void a(boolean z, boolean z2, String str, String str2, MonitorStruct monitorStruct, TokenResultListener tokenResultListener) {
        if (tokenResultListener != null) {
            try {
                a(z, str2, tokenResultListener);
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return;
                } catch (Throwable th2) {
                    a.a(th2);
                    return;
                }
            }
        }
        a(str, z, monitorStruct, z2);
    }

    static /* synthetic */ boolean a(PhoneNumberAuthHelperProxy phoneNumberAuthHelperProxy, boolean z, String str, TokenResultListener tokenResultListener, ResultCodeProcessor resultCodeProcessor, String str2, MonitorStruct monitorStruct, String str3) {
        try {
            return phoneNumberAuthHelperProxy.a(z, str, tokenResultListener, resultCodeProcessor, str2, monitorStruct, str3);
        } catch (Throwable th) {
            try {
                a.a(th);
                return false;
            } catch (Throwable th2) {
                a.a(th2);
                return false;
            }
        }
    }

    static /* synthetic */ boolean a(PhoneNumberAuthHelperProxy phoneNumberAuthHelperProxy, boolean z, String str, ResultCodeProcessor resultCodeProcessor, MonitorStruct monitorStruct, String str2, TokenResultListener tokenResultListener, String str3) {
        try {
            return phoneNumberAuthHelperProxy.a(z, str, resultCodeProcessor, monitorStruct, str2, tokenResultListener, str3);
        } catch (Throwable th) {
            try {
                a.a(th);
                return false;
            } catch (Throwable th2) {
                a.a(th2);
                return false;
            }
        }
    }

    private boolean a(final String str, String str2, final String str3) {
        try {
            final long jCurrentTimeMillis = System.currentTimeMillis();
            boolean z = (str3 == null || str3.equals(str2)) ? false : true;
            final long jCurrentTimeMillis2 = System.currentTimeMillis();
            final boolean z2 = z;
            com.mobile.auth.gatewayauth.utils.b.a(new Runnable() { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy.27
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        PhoneNumberAuthHelperProxy.g(PhoneNumberAuthHelperProxy.this).a(PhoneNumberAuthHelperProxy.i(PhoneNumberAuthHelperProxy.this).a(str3, Constant.ACTION_SDK_CROSS_CARRIER_CHANGE, UStruct.newUStruct().isCarrierChanged(String.valueOf(z2)).requestId(PhoneNumberAuthHelperProxy.i(PhoneNumberAuthHelperProxy.this).f()).sessionId(str).startTime(jCurrentTimeMillis).endTime(jCurrentTimeMillis2).build(), ""), 2);
                    } catch (Throwable th) {
                        try {
                            a.a(th);
                        } catch (Throwable th2) {
                            a.a(th2);
                        }
                    }
                }
            });
            return z;
        } catch (Throwable th) {
            try {
                a.a(th);
                return false;
            } catch (Throwable th2) {
                a.a(th2);
                return false;
            }
        }
    }

    private boolean a(boolean z, String str, TokenResultListener tokenResultListener, ResultCodeProcessor resultCodeProcessor, String str2, MonitorStruct monitorStruct, String str3) {
        try {
            this.f13209g.i();
            if (!TextUtils.isEmpty(str2)) {
                a(str2, str, monitorStruct, resultCodeProcessor, tokenResultListener);
                return true;
            }
            this.k.d("GetLoginToken from cache is null!");
            if (z) {
                monitorStruct.setAuthSdkCode(Constant.CODE_ERROR_UNKNOWN_FAIL);
                a(false, true, Constant.CODE_ERROR_UNKNOWN_FAIL, "未知异常", com.mobile.auth.gatewayauth.utils.a.a(Constant.CODE_ERROR_UNKNOWN_FAIL, "未知异常"), str, monitorStruct, tokenResultListener, resultCodeProcessor, str3);
            }
            return false;
        } catch (Throwable th) {
            try {
                a.a(th);
                return false;
            } catch (Throwable th2) {
                a.a(th2);
                return false;
            }
        }
    }

    private boolean a(boolean z, String str, ResultCodeProcessor resultCodeProcessor, MonitorStruct monitorStruct, String str2, TokenResultListener tokenResultListener, String str3) {
        try {
            this.f13209g.j();
            if (!TextUtils.isEmpty(str2)) {
                a(str2, str, monitorStruct, resultCodeProcessor, tokenResultListener);
                return true;
            }
            this.k.d("GetVerifyToken from cache is null!");
            if (z) {
                a(false, true, Constant.CODE_ERROR_UNKNOWN_FAIL, "未知异常", com.mobile.auth.gatewayauth.utils.a.a(Constant.CODE_ERROR_UNKNOWN_FAIL, "未知异常"), str, monitorStruct, tokenResultListener, resultCodeProcessor, str3);
            }
            return false;
        } catch (Throwable th) {
            try {
                a.a(th);
                return false;
            } catch (Throwable th2) {
                a.a(th2);
                return false;
            }
        }
    }

    static /* synthetic */ com.mobile.auth.gatewayauth.manager.b b(PhoneNumberAuthHelperProxy phoneNumberAuthHelperProxy) {
        try {
            return phoneNumberAuthHelperProxy.f13206d;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    static /* synthetic */ void b(PhoneNumberAuthHelperProxy phoneNumberAuthHelperProxy, String str, String str2, String str3, String str4, TokenResultListener tokenResultListener, ResultCodeProcessor resultCodeProcessor, MonitorStruct monitorStruct, String str5) {
        try {
            phoneNumberAuthHelperProxy.b(str, str2, str3, str4, tokenResultListener, resultCodeProcessor, monitorStruct, str5);
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    private void b(String str, String str2, String str3, String str4, TokenResultListener tokenResultListener, ResultCodeProcessor resultCodeProcessor, MonitorStruct monitorStruct, String str5) {
        try {
            this.f13209g.j();
            a(false, true, str, str2, str3, str4, monitorStruct, tokenResultListener, resultCodeProcessor, str5);
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    static /* synthetic */ void c(PhoneNumberAuthHelperProxy phoneNumberAuthHelperProxy) {
        try {
            phoneNumberAuthHelperProxy.f();
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    private void d() {
        try {
            this.k.b();
            this.k.c();
            if (this.f13206d.t()) {
                this.f13209g.a(this.f13206d.u());
            }
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    static /* synthetic */ void d(PhoneNumberAuthHelperProxy phoneNumberAuthHelperProxy) {
        try {
            phoneNumberAuthHelperProxy.d();
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    static /* synthetic */ VendorSdkInfoManager e(PhoneNumberAuthHelperProxy phoneNumberAuthHelperProxy) {
        try {
            return phoneNumberAuthHelperProxy.f13207e;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    private Future e() {
        try {
            return com.mobile.auth.gatewayauth.utils.b.a(new Runnable() { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy.12
                @Override // java.lang.Runnable
                public void run() {
                    PhoneNumberAuthHelperProxy phoneNumberAuthHelperProxy;
                    try {
                        final CountDownLatch countDownLatch = new CountDownLatch(1);
                        PhoneNumberAuthHelperProxy.b(PhoneNumberAuthHelperProxy.this).a(new RequestCallback<ConfigRule, Void>() { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy.12.1
                            public void a(ConfigRule configRule) {
                                try {
                                    countDownLatch.countDown();
                                } catch (Throwable th) {
                                    try {
                                        a.a(th);
                                    } catch (Throwable th2) {
                                        a.a(th2);
                                    }
                                }
                            }

                            public void a(Void r1) {
                                try {
                                    countDownLatch.countDown();
                                } catch (Throwable th) {
                                    try {
                                        a.a(th);
                                    } catch (Throwable th2) {
                                        a.a(th2);
                                    }
                                }
                            }

                            @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
                            public /* synthetic */ void onError(Void r1) {
                                try {
                                    a(r1);
                                } catch (Throwable th) {
                                    try {
                                        a.a(th);
                                    } catch (Throwable th2) {
                                        a.a(th2);
                                    }
                                }
                            }

                            @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
                            public /* synthetic */ void onSuccess(ConfigRule configRule) {
                                try {
                                    a(configRule);
                                } catch (Throwable th) {
                                    try {
                                        a.a(th);
                                    } catch (Throwable th2) {
                                        a.a(th2);
                                    }
                                }
                            }
                        });
                        try {
                            try {
                                countDownLatch.await(3000L, TimeUnit.MILLISECONDS);
                                PhoneNumberAuthHelperProxy.a(PhoneNumberAuthHelperProxy.this).setupWifi();
                                PhoneNumberAuthHelperProxy.c(PhoneNumberAuthHelperProxy.this);
                                phoneNumberAuthHelperProxy = PhoneNumberAuthHelperProxy.this;
                            } catch (InterruptedException e2) {
                                e2.printStackTrace();
                                PhoneNumberAuthHelperProxy.c(PhoneNumberAuthHelperProxy.this);
                                phoneNumberAuthHelperProxy = PhoneNumberAuthHelperProxy.this;
                            }
                            PhoneNumberAuthHelperProxy.d(phoneNumberAuthHelperProxy);
                        } catch (Throwable th) {
                            PhoneNumberAuthHelperProxy.c(PhoneNumberAuthHelperProxy.this);
                            PhoneNumberAuthHelperProxy.d(PhoneNumberAuthHelperProxy.this);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        try {
                            a.a(th2);
                        } catch (Throwable th3) {
                            a.a(th3);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    static /* synthetic */ f f(PhoneNumberAuthHelperProxy phoneNumberAuthHelperProxy) {
        try {
            return phoneNumberAuthHelperProxy.i;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    private void f() {
        try {
            if (this.f13206d.d() || FeatureManager.getInstance().get(FeatureManager.FEATURE_KEY_CRASH) != null) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            boolean zLoadCrashComponent = this.f13210h.loadCrashComponent();
            this.k.a(this.f13209g.b(this.c.c(), Constant.ACTION_SDK_CRASH, UStruct.newUStruct().startTime(jCurrentTimeMillis).endTime(System.currentTimeMillis()).isCrashDependencied(String.valueOf(zLoadCrashComponent)).isSuccess(zLoadCrashComponent).build(), ""), 2);
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    static /* synthetic */ com.mobile.auth.o.a g(PhoneNumberAuthHelperProxy phoneNumberAuthHelperProxy) {
        try {
            return phoneNumberAuthHelperProxy.k;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    @AuthNumber
    public static PhoneNumberAuthHelperProxy getInstance(Context context, TokenResultListener tokenResultListener) {
        try {
            if (f13205a == null && context != null) {
                synchronized (PhoneNumberAuthHelperProxy.class) {
                    if (f13205a == null) {
                        f13205a = new PhoneNumberAuthHelperProxy(context, tokenResultListener);
                    }
                }
            }
            f13205a.setAuthListener(tokenResultListener);
            return f13205a;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    /* JADX WARN: Unreachable blocks removed: 7, instructions: 7 */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:8:0x0009
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1478)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    @com.mobile.auth.gatewayauth.annotations.AuthNumber
    public static java.lang.String getVersion() {
        /*
            java.lang.String r0 = "2.12.1.2"
            return r0
        L3:
            r0 = move-exception
            r1 = 0
            com.mobile.auth.gatewayauth.a.a(r0)     // Catch: java.lang.Throwable -> L9
            return r1
        L9:
            r0 = move-exception
            com.mobile.auth.gatewayauth.a.a(r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy.getVersion():java.lang.String");
    }

    static /* synthetic */ ResultCodeProcessor h(PhoneNumberAuthHelperProxy phoneNumberAuthHelperProxy) {
        try {
            return phoneNumberAuthHelperProxy.m;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    static /* synthetic */ com.mobile.auth.gatewayauth.manager.d i(PhoneNumberAuthHelperProxy phoneNumberAuthHelperProxy) {
        try {
            return phoneNumberAuthHelperProxy.f13209g;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    static /* synthetic */ ResultCodeProcessor j(PhoneNumberAuthHelperProxy phoneNumberAuthHelperProxy) {
        try {
            return phoneNumberAuthHelperProxy.n;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    @SafeProtector
    private native void justGetLoginPhone(MonitorStruct monitorStruct, String str, int i, ResultCodeProcessor resultCodeProcessor, boolean z, RequestCallback<LoginPhoneInfo, com.mobile.auth.gatewayauth.manager.base.c> requestCallback, String str2, String str3, int i2);

    @SafeProtector
    private native void justGetLoginToken(long j, TokenResultListener tokenResultListener, ResultCodeProcessor resultCodeProcessor);

    @SafeProtector
    private native void justGetToken(int i, ResultCodeProcessor resultCodeProcessor, boolean z, TokenResultListener tokenResultListener);

    @SafeProtector
    private native void justPreLogin(long j, PreLoginResultListener preLoginResultListener, ResultCodeProcessor resultCodeProcessor, boolean z, boolean z2);

    @SafeProtector
    private native void justPreVerify(long j, PreLoginResultListener preLoginResultListener);

    static /* synthetic */ Future k(PhoneNumberAuthHelperProxy phoneNumberAuthHelperProxy) {
        try {
            return phoneNumberAuthHelperProxy.j;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    protected SystemManager a() {
        try {
            return this.c;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    void a(final long j, final TokenResultListener tokenResultListener, final ResultCodeProcessor resultCodeProcessor) {
        try {
            com.mobile.auth.gatewayauth.utils.b.a(new com.mobile.auth.gatewayauth.utils.b.AbstractRunnableC0261b(tokenResultListener) { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy.3
                @Override // com.mobile.auth.gatewayauth.utils.b.AbstractRunnableC0261b
                protected void a() {
                    try {
                        PhoneNumberAuthHelperProxy.a(PhoneNumberAuthHelperProxy.this, j, tokenResultListener, resultCodeProcessor);
                    } catch (Throwable th) {
                        try {
                            a.a(th);
                        } catch (Throwable th2) {
                            a.a(th2);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    protected void a(String str, String str2, MonitorStruct monitorStruct, ResultCodeProcessor resultCodeProcessor, TokenResultListener tokenResultListener) {
        if (tokenResultListener == null) {
            return;
        }
        try {
            TokenRet tokenRetConvertErrorInfo = resultCodeProcessor.convertErrorInfo(Constant.CODE_GET_TOKEN_SUCCESS, "获取token成功", str2);
            tokenRetConvertErrorInfo.setToken(str);
            tokenRetConvertErrorInfo.setRequestId(monitorStruct.getRequestId());
            monitorStruct.setAccessCode(str);
            monitorStruct.setAuthSdkCode(tokenRetConvertErrorInfo.getCode());
            a(true, true, "", tokenRetConvertErrorInfo.toJsonString(), monitorStruct, tokenResultListener);
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    protected void a(boolean z, boolean z2, String str, String str2, String str3, String str4, MonitorStruct monitorStruct, TokenResultListener tokenResultListener, ResultCodeProcessor resultCodeProcessor, String str5) {
        try {
            TokenRet tokenRetConvertErrorInfo = resultCodeProcessor.convertErrorInfo(str, str2, str4);
            if (monitorStruct != null) {
                monitorStruct.setAuthSdkCode(tokenRetConvertErrorInfo.getCode());
                tokenRetConvertErrorInfo.setCarrierFailedResultData(monitorStruct.getCarrierFailedResultData());
            }
            tokenRetConvertErrorInfo.setRequestId(str5);
            a(z, z2, str3, tokenRetConvertErrorInfo.toJsonString(), monitorStruct, tokenResultListener);
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    @AuthNumber
    public void accelerateLoginPage(final int i, final PreLoginResultListener preLoginResultListener, final boolean z) {
        try {
            com.mobile.auth.gatewayauth.utils.b.a(new com.mobile.auth.gatewayauth.utils.b.AbstractRunnableC0261b(this.b) { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy.9
                @Override // com.mobile.auth.gatewayauth.utils.b.AbstractRunnableC0261b
                protected void a() {
                    try {
                        PhoneNumberAuthHelperProxy phoneNumberAuthHelperProxy = PhoneNumberAuthHelperProxy.this;
                        PhoneNumberAuthHelperProxy.a(phoneNumberAuthHelperProxy, i, preLoginResultListener, PhoneNumberAuthHelperProxy.j(phoneNumberAuthHelperProxy), true, z);
                    } catch (Throwable th) {
                        try {
                            a.a(th);
                        } catch (Throwable th2) {
                            a.a(th2);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    @AuthNumber
    public void accelerateVerify(final int i, final PreLoginResultListener preLoginResultListener) {
        try {
            com.mobile.auth.gatewayauth.utils.b.a(new com.mobile.auth.gatewayauth.utils.b.AbstractRunnableC0261b(new TokenResultListener() { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy.10
                @Override // com.mobile.auth.gatewayauth.TokenResultListener
                public void onTokenFailed(String str) {
                    try {
                        PreLoginResultListener preLoginResultListener2 = preLoginResultListener;
                        if (preLoginResultListener2 != null) {
                            preLoginResultListener2.onTokenFailed(PhoneNumberAuthHelperProxy.a(PhoneNumberAuthHelperProxy.this).f(), str);
                        }
                    } catch (Throwable th) {
                        try {
                            a.a(th);
                        } catch (Throwable th2) {
                            a.a(th2);
                        }
                    }
                }

                @Override // com.mobile.auth.gatewayauth.TokenResultListener
                public void onTokenSuccess(String str) {
                }
            }) { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy.11
                @Override // com.mobile.auth.gatewayauth.utils.b.AbstractRunnableC0261b
                protected void a() {
                    try {
                        PhoneNumberAuthHelperProxy.a(PhoneNumberAuthHelperProxy.this, i, preLoginResultListener);
                    } catch (Throwable th) {
                        try {
                            a.a(th);
                        } catch (Throwable th2) {
                            a.a(th2);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    protected com.mobile.auth.gatewayauth.manager.d b() {
        try {
            return this.f13209g;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    protected com.mobile.auth.o.a c() {
        try {
            return this.k;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    @AuthNumber
    @Deprecated
    public InitResult checkAuthEnvEnable() {
        Throwable th;
        Exception e2;
        String str;
        String strB = "";
        try {
            String strK = this.f13209g.k();
            InitResult initResult = new InitResult();
            MonitorStruct monitorStruct = new MonitorStruct();
            monitorStruct.setAction(Constant.ACTION_CHECK);
            monitorStruct.setStartTime(System.currentTimeMillis());
            monitorStruct.setApiLevel(this.m.getApiLevel());
            monitorStruct.setUrgency(2);
            monitorStruct.setRequestId(strK);
            try {
                try {
                    try {
                        initResult.setSimPhoneNumber("");
                        boolean zD = this.c.d();
                        boolean zE = this.c.e();
                        initResult.setCan4GAuth(zD && zE && this.i.a(this.c.c()) != null);
                        if (initResult.isCan4GAuth()) {
                            monitorStruct.setAuthSdkCode(Constant.CODE_GET_TOKEN_SUCCESS);
                            str = "";
                        } else {
                            str = "can4gAuth:can not 4g";
                            try {
                                monitorStruct.setAuthSdkCode(Constant.CODE_ERROR_NO_MOBILE_NETWORK_FAIL);
                            } catch (Exception e3) {
                                e2 = e3;
                                e2.printStackTrace();
                                monitorStruct.setAuthSdkCode(Constant.CODE_ERROR_UNKNOWN_FAIL);
                                strB = com.mobile.auth.gatewayauth.utils.b.b(e2);
                                com.mobile.auth.gatewayauth.utils.f.c(strB);
                                a(strB, TextUtils.isEmpty(strB), monitorStruct, true);
                            }
                        }
                        if (initResult.isCan4GAuth() && !this.f13207e.b()) {
                            this.f13207e.a("", new RequestCallback<Void, String>() { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy.31
                                public void a(String str2) {
                                    try {
                                        PhoneNumberAuthHelperProxy.g(PhoneNumberAuthHelperProxy.this).d("GetVendorList failed!", str2);
                                    } catch (Throwable th2) {
                                        try {
                                            a.a(th2);
                                        } catch (Throwable th3) {
                                            a.a(th3);
                                        }
                                    }
                                }

                                public void a(Void r1) {
                                }

                                @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
                                public /* synthetic */ void onError(String str2) {
                                    try {
                                        a(str2);
                                    } catch (Throwable th2) {
                                        try {
                                            a.a(th2);
                                        } catch (Throwable th3) {
                                            a.a(th3);
                                        }
                                    }
                                }

                                @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
                                public /* synthetic */ void onSuccess(Void r1) {
                                    try {
                                        a(r1);
                                    } catch (Throwable th2) {
                                        try {
                                            a.a(th2);
                                        } catch (Throwable th3) {
                                            a.a(th3);
                                        }
                                    }
                                }
                            }, com.mobile.auth.gatewayauth.manager.e.a(this.c.g(), this.f13207e, this.f13206d, this.k));
                        }
                        this.k.a("checkEnvAvailable ret = ", initResult.toString(), "; hasSimCard = ", String.valueOf(zD), "; isMobileNetworkOpen = ", String.valueOf(zE));
                        a(str, TextUtils.isEmpty(str), monitorStruct, true);
                    } catch (Throwable th2) {
                        th = th2;
                        a(str, TextUtils.isEmpty(str), monitorStruct, true);
                        throw th;
                    }
                } catch (Exception e4) {
                    e2 = e4;
                }
                return initResult;
            } catch (Throwable th3) {
                String str2 = strB;
                th = th3;
                a(str2, TextUtils.isEmpty(str2), monitorStruct, true);
                throw th;
            }
        } catch (Throwable th4) {
            try {
                a.a(th4);
                return null;
            } catch (Throwable th5) {
                a.a(th5);
                return null;
            }
        }
    }

    @AuthNumber
    public void checkEnvAvailable(final int i, final TokenResultListener tokenResultListener) {
        try {
            com.mobile.auth.gatewayauth.utils.b.a(new com.mobile.auth.gatewayauth.utils.b.AbstractRunnableC0261b() { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy.30
                /* JADX WARN: Code duplicated, block: B:72:0x02fc A[Catch: all -> 0x034d, TRY_ENTER, TryCatch #7 {all -> 0x034d, blocks: (B:3:0x0006, B:10:0x0072, B:21:0x00e9, B:31:0x0140, B:37:0x0192, B:52:0x0233, B:72:0x02fc, B:75:0x0326, B:76:0x034c, B:58:0x027f), top: B:90:0x0006 }] */
                /* JADX WARN: Code duplicated, block: B:75:0x0326 A[Catch: all -> 0x034d, TryCatch #7 {all -> 0x034d, blocks: (B:3:0x0006, B:10:0x0072, B:21:0x00e9, B:31:0x0140, B:37:0x0192, B:52:0x0233, B:72:0x02fc, B:75:0x0326, B:76:0x034c, B:58:0x027f), top: B:90:0x0006 }] */
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference fix 'apply assigned field type' failed
                java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                 */
                @Override // com.mobile.auth.gatewayauth.utils.b.AbstractRunnableC0261b
                protected void a() {
                    char c;
                    Object obj = ResultCode.CODE_ERROR_ANALYZE_SDK_INFO;
                    try {
                        String strC = PhoneNumberAuthHelperProxy.a(PhoneNumberAuthHelperProxy.this).c();
                        String strK = PhoneNumberAuthHelperProxy.i(PhoneNumberAuthHelperProxy.this).k();
                        MonitorStruct monitorStruct = new MonitorStruct();
                        monitorStruct.setAction(Constant.ACTION_CHECK);
                        monitorStruct.setStartTime(System.currentTimeMillis());
                        monitorStruct.setApiLevel(PhoneNumberAuthHelperProxy.j(PhoneNumberAuthHelperProxy.this).getApiLevel());
                        monitorStruct.setVendorKey(strC);
                        monitorStruct.setUrgency(2);
                        monitorStruct.setRequestId(PhoneNumberAuthHelperProxy.i(PhoneNumberAuthHelperProxy.this).f());
                        monitorStruct.putApiParam("type", String.valueOf(i));
                        TokenRet tokenRetConvertErrorInfo = null;
                        try {
                            try {
                                int i2 = i;
                                if (i2 != 1 && i2 != 2) {
                                    TokenRet tokenRetConvertErrorInfo2 = PhoneNumberAuthHelperProxy.j(PhoneNumberAuthHelperProxy.this).convertErrorInfo("600025", ResultCode.MSG_ERROR_INVALID_PARAM, strC);
                                    if (tokenRetConvertErrorInfo2 != null) {
                                        PhoneNumberAuthHelperProxy.this.a(false, true, tokenRetConvertErrorInfo2.getCode(), tokenRetConvertErrorInfo2.getMsg(), com.mobile.auth.gatewayauth.utils.a.a(tokenRetConvertErrorInfo2.getCode(), tokenRetConvertErrorInfo2.getMsg()), strC, monitorStruct, tokenResultListener, PhoneNumberAuthHelperProxy.j(PhoneNumberAuthHelperProxy.this), strK);
                                        return;
                                    }
                                    return;
                                }
                                monitorStruct.setSessionId(1 == i2 ? PhoneNumberAuthHelperProxy.i(PhoneNumberAuthHelperProxy.this).e() : PhoneNumberAuthHelperProxy.i(PhoneNumberAuthHelperProxy.this).d());
                                TokenRet tokenRetA = PhoneNumberAuthHelperProxy.a(PhoneNumberAuthHelperProxy.this).a(PhoneNumberAuthHelperProxy.j(PhoneNumberAuthHelperProxy.this), true);
                                if (tokenRetA != null) {
                                    try {
                                        PhoneNumberAuthHelperProxy.g(PhoneNumberAuthHelperProxy.this).d("checkEnvAvailable errorCode = ", tokenRetA.getCode(), "; errorMsg = ", tokenRetA.getMsg());
                                        if (tokenRetA != null) {
                                            PhoneNumberAuthHelperProxy.this.a(false, true, tokenRetA.getCode(), tokenRetA.getMsg(), com.mobile.auth.gatewayauth.utils.a.a(tokenRetA.getCode(), tokenRetA.getMsg()), strC, monitorStruct, tokenResultListener, PhoneNumberAuthHelperProxy.j(PhoneNumberAuthHelperProxy.this), strK);
                                            return;
                                        }
                                        return;
                                    } catch (Exception e2) {
                                        e = e2;
                                        obj = monitorStruct;
                                        c = 1;
                                        e.printStackTrace();
                                        tokenRetConvertErrorInfo = PhoneNumberAuthHelperProxy.j(PhoneNumberAuthHelperProxy.this).convertErrorInfo(ResultCode.CODE_ERROR_UNKNOWN_FAIL, com.mobile.auth.gatewayauth.utils.b.b(e), strC);
                                        com.mobile.auth.o.a aVarG = PhoneNumberAuthHelperProxy.g(PhoneNumberAuthHelperProxy.this);
                                        String[] strArr = new String[2];
                                        strArr[0] = "checkEnvAvailable exception:";
                                        strArr[c] = tokenRetConvertErrorInfo.toJsonString();
                                        aVarG.d(strArr);
                                        if (tokenRetConvertErrorInfo != null) {
                                            PhoneNumberAuthHelperProxy.this.a(false, true, tokenRetConvertErrorInfo.getCode(), tokenRetConvertErrorInfo.getMsg(), com.mobile.auth.gatewayauth.utils.a.a(tokenRetConvertErrorInfo.getCode(), tokenRetConvertErrorInfo.getMsg()), strC, obj, tokenResultListener, PhoneNumberAuthHelperProxy.j(PhoneNumberAuthHelperProxy.this), strK);
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        tokenRetConvertErrorInfo = tokenRetA;
                                        obj = monitorStruct;
                                        if (tokenRetConvertErrorInfo != null) {
                                            PhoneNumberAuthHelperProxy.this.a(false, true, tokenRetConvertErrorInfo.getCode(), tokenRetConvertErrorInfo.getMsg(), com.mobile.auth.gatewayauth.utils.a.a(tokenRetConvertErrorInfo.getCode(), tokenRetConvertErrorInfo.getMsg()), strC, obj, tokenResultListener, PhoneNumberAuthHelperProxy.j(PhoneNumberAuthHelperProxy.this), strK);
                                        }
                                        throw th;
                                    }
                                }
                                if (!PhoneNumberAuthHelperProxy.e(PhoneNumberAuthHelperProxy.this).a()) {
                                    TokenRet tokenRetConvertErrorInfo3 = PhoneNumberAuthHelperProxy.j(PhoneNumberAuthHelperProxy.this).convertErrorInfo(ResultCode.CODE_ERROR_ANALYZE_SDK_INFO, ResultCode.MSG_ERROR_ANALYZE_SDK_INFO, strC);
                                    PhoneNumberAuthHelperProxy.g(PhoneNumberAuthHelperProxy.this).d("checkEnvAvailable errorCode = ", ResultCode.CODE_ERROR_ANALYZE_SDK_INFO, "; errorMsg = ", ResultCode.MSG_ERROR_ANALYZE_SDK_INFO);
                                    if (tokenRetConvertErrorInfo3 != null) {
                                        PhoneNumberAuthHelperProxy.this.a(false, true, tokenRetConvertErrorInfo3.getCode(), tokenRetConvertErrorInfo3.getMsg(), com.mobile.auth.gatewayauth.utils.a.a(tokenRetConvertErrorInfo3.getCode(), tokenRetConvertErrorInfo3.getMsg()), strC, monitorStruct, tokenResultListener, PhoneNumberAuthHelperProxy.j(PhoneNumberAuthHelperProxy.this), strK);
                                        return;
                                    }
                                    return;
                                }
                                if (PhoneNumberAuthHelperProxy.f(PhoneNumberAuthHelperProxy.this).a(strC) == null) {
                                    TokenRet tokenRetConvertErrorInfo4 = PhoneNumberAuthHelperProxy.j(PhoneNumberAuthHelperProxy.this).convertErrorInfo(ResultCode.CODE_ERROR_OPERATOR_UNKNOWN_FAIL, "无法判运营商", strC);
                                    PhoneNumberAuthHelperProxy.g(PhoneNumberAuthHelperProxy.this).d("checkEnvAvailable failed! Unsupported Vendor!");
                                    if (tokenRetConvertErrorInfo4 != null) {
                                        PhoneNumberAuthHelperProxy.this.a(false, true, tokenRetConvertErrorInfo4.getCode(), tokenRetConvertErrorInfo4.getMsg(), com.mobile.auth.gatewayauth.utils.a.a(tokenRetConvertErrorInfo4.getCode(), tokenRetConvertErrorInfo4.getMsg()), strC, monitorStruct, tokenResultListener, PhoneNumberAuthHelperProxy.j(PhoneNumberAuthHelperProxy.this), strK);
                                        return;
                                    }
                                    return;
                                }
                                if (!PhoneNumberAuthHelperProxy.e(PhoneNumberAuthHelperProxy.this).b()) {
                                    PhoneNumberAuthHelperProxy.e(PhoneNumberAuthHelperProxy.this).a("", new RequestCallback<Void, String>() { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy.30.1
                                        public void a(String str) {
                                            try {
                                                PhoneNumberAuthHelperProxy.g(PhoneNumberAuthHelperProxy.this).d("GetVendorList failed!", str);
                                            } catch (Throwable th2) {
                                                try {
                                                    a.a(th2);
                                                } catch (Throwable th3) {
                                                    a.a(th3);
                                                }
                                            }
                                        }

                                        public void a(Void r1) {
                                        }

                                        @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
                                        public /* synthetic */ void onError(String str) {
                                            try {
                                                a(str);
                                            } catch (Throwable th2) {
                                                try {
                                                    a.a(th2);
                                                } catch (Throwable th3) {
                                                    a.a(th3);
                                                }
                                            }
                                        }

                                        @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
                                        public /* synthetic */ void onSuccess(Void r1) {
                                            try {
                                                a(r1);
                                            } catch (Throwable th2) {
                                                try {
                                                    a.a(th2);
                                                } catch (Throwable th3) {
                                                    a.a(th3);
                                                }
                                            }
                                        }
                                    }, com.mobile.auth.gatewayauth.manager.e.a(PhoneNumberAuthHelperProxy.a(PhoneNumberAuthHelperProxy.this).g(), PhoneNumberAuthHelperProxy.e(PhoneNumberAuthHelperProxy.this), PhoneNumberAuthHelperProxy.b(PhoneNumberAuthHelperProxy.this), PhoneNumberAuthHelperProxy.g(PhoneNumberAuthHelperProxy.this)));
                                }
                                if (PhoneNumberAuthHelperProxy.k(PhoneNumberAuthHelperProxy.this) != null) {
                                    PhoneNumberAuthHelperProxy.k(PhoneNumberAuthHelperProxy.this).get();
                                }
                                if (i == 1) {
                                    if (PhoneNumberAuthHelperProxy.b(PhoneNumberAuthHelperProxy.this).b()) {
                                        TokenRet tokenRetConvertErrorInfo5 = PhoneNumberAuthHelperProxy.j(PhoneNumberAuthHelperProxy.this).convertErrorInfo(ResultCode.CODE_ERROR_FUNCTION_DEMOTE, "系统维护，功能不可用", strC);
                                        PhoneNumberAuthHelperProxy.g(PhoneNumberAuthHelperProxy.this).d("checkEnvAvailable errorCode = ", ResultCode.CODE_ERROR_FUNCTION_DEMOTE, "; errorMsg = ", "系统维护，功能不可用");
                                        if (tokenRetConvertErrorInfo5 != null) {
                                            PhoneNumberAuthHelperProxy.this.a(false, true, tokenRetConvertErrorInfo5.getCode(), tokenRetConvertErrorInfo5.getMsg(), com.mobile.auth.gatewayauth.utils.a.a(tokenRetConvertErrorInfo5.getCode(), tokenRetConvertErrorInfo5.getMsg()), strC, monitorStruct, tokenResultListener, PhoneNumberAuthHelperProxy.j(PhoneNumberAuthHelperProxy.this), strK);
                                            return;
                                        }
                                        return;
                                    }
                                } else if (PhoneNumberAuthHelperProxy.b(PhoneNumberAuthHelperProxy.this).c()) {
                                    TokenRet tokenRetConvertErrorInfo6 = PhoneNumberAuthHelperProxy.j(PhoneNumberAuthHelperProxy.this).convertErrorInfo(ResultCode.CODE_ERROR_FUNCTION_DEMOTE, "系统维护，功能不可用", strC);
                                    PhoneNumberAuthHelperProxy.g(PhoneNumberAuthHelperProxy.this).d("checkEnvAvailable errorCode = ", ResultCode.CODE_ERROR_FUNCTION_DEMOTE, "; errorMsg = ", "系统维护，功能不可用");
                                    if (tokenRetConvertErrorInfo6 != null) {
                                        PhoneNumberAuthHelperProxy.this.a(false, true, tokenRetConvertErrorInfo6.getCode(), tokenRetConvertErrorInfo6.getMsg(), com.mobile.auth.gatewayauth.utils.a.a(tokenRetConvertErrorInfo6.getCode(), tokenRetConvertErrorInfo6.getMsg()), strC, monitorStruct, tokenResultListener, PhoneNumberAuthHelperProxy.j(PhoneNumberAuthHelperProxy.this), strK);
                                        return;
                                    }
                                    return;
                                }
                                monitorStruct.setAuthSdkCode(ResultCode.CODE_ERROR_ENV_CHECK_SUCCESS);
                                PhoneNumberAuthHelperProxy phoneNumberAuthHelperProxy = PhoneNumberAuthHelperProxy.this;
                                c = 1;
                                obj = monitorStruct;
                                try {
                                    phoneNumberAuthHelperProxy.a(true, true, ResultCode.CODE_ERROR_ENV_CHECK_SUCCESS, ResultCode.MSG_ERROR_ENV_CHECK_SUCCESS, "", strC, monitorStruct, tokenResultListener, PhoneNumberAuthHelperProxy.j(phoneNumberAuthHelperProxy), strK);
                                } catch (Exception e3) {
                                    e = e3;
                                    e.printStackTrace();
                                    tokenRetConvertErrorInfo = PhoneNumberAuthHelperProxy.j(PhoneNumberAuthHelperProxy.this).convertErrorInfo(ResultCode.CODE_ERROR_UNKNOWN_FAIL, com.mobile.auth.gatewayauth.utils.b.b(e), strC);
                                    com.mobile.auth.o.a aVarG2 = PhoneNumberAuthHelperProxy.g(PhoneNumberAuthHelperProxy.this);
                                    String[] strArr2 = new String[2];
                                    strArr2[0] = "checkEnvAvailable exception:";
                                    strArr2[c] = tokenRetConvertErrorInfo.toJsonString();
                                    aVarG2.d(strArr2);
                                    if (tokenRetConvertErrorInfo != null) {
                                        PhoneNumberAuthHelperProxy.this.a(false, true, tokenRetConvertErrorInfo.getCode(), tokenRetConvertErrorInfo.getMsg(), com.mobile.auth.gatewayauth.utils.a.a(tokenRetConvertErrorInfo.getCode(), tokenRetConvertErrorInfo.getMsg()), strC, obj, tokenResultListener, PhoneNumberAuthHelperProxy.j(PhoneNumberAuthHelperProxy.this), strK);
                                    }
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                if (tokenRetConvertErrorInfo != null) {
                                    PhoneNumberAuthHelperProxy.this.a(false, true, tokenRetConvertErrorInfo.getCode(), tokenRetConvertErrorInfo.getMsg(), com.mobile.auth.gatewayauth.utils.a.a(tokenRetConvertErrorInfo.getCode(), tokenRetConvertErrorInfo.getMsg()), strC, obj, tokenResultListener, PhoneNumberAuthHelperProxy.j(PhoneNumberAuthHelperProxy.this), strK);
                                }
                                throw th;
                            }
                        } catch (Exception e4) {
                            e = e4;
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    } catch (Throwable th4) {
                        try {
                            a.a(th4);
                        } catch (Throwable th5) {
                            a.a(th5);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:58:0x027b  */
    /* JADX WARN: Code duplicated, block: B:59:0x02b6  */
    @AuthNumber
    @Deprecated
    public boolean checkEnvAvailable() throws Throwable {
        int i;
        char c;
        char c2;
        TokenRet tokenRetA;
        try {
            String strK = this.f13209g.k();
            MonitorStruct monitorStruct = new MonitorStruct();
            monitorStruct.setAction(Constant.ACTION_CHECK);
            monitorStruct.setStartTime(System.currentTimeMillis());
            monitorStruct.setApiLevel(this.n.getApiLevel());
            monitorStruct.setUrgency(2);
            monitorStruct.setRequestId(strK);
            TokenRet tokenRet = null;
            try {
                tokenRetA = this.c.a(this.n, true);
                if (tokenRetA != null) {
                    if (tokenRetA == null) {
                        a(true, true, "", "", "", "", monitorStruct, null, this.n, strK);
                        return false;
                    }
                    a(false, true, tokenRetA.getCode(), tokenRetA.getMsg(), com.mobile.auth.gatewayauth.utils.a.a(tokenRetA.getCode(), tokenRetA.getMsg()), tokenRetA.getVendorName(), monitorStruct, null, this.n, strK);
                    this.k.d("checkEnvAvailable code = ", tokenRetA.getCode(), "; msg = ", tokenRetA.getMsg());
                    return false;
                }
                i = 4;
                c = 2;
                c2 = 1;
                try {
                    if (!this.f13207e.a()) {
                        TokenRet tokenRetConvertErrorInfo = this.n.convertErrorInfo(ResultCode.CODE_ERROR_ANALYZE_SDK_INFO, ResultCode.MSG_ERROR_ANALYZE_SDK_INFO, this.c.c());
                        this.k.d("checkEnvAvailable failed! Has no sceneCode!");
                        if (tokenRetConvertErrorInfo == null) {
                            a(true, true, "", "", "", "", monitorStruct, null, this.n, strK);
                            return false;
                        }
                        a(false, true, tokenRetConvertErrorInfo.getCode(), tokenRetConvertErrorInfo.getMsg(), com.mobile.auth.gatewayauth.utils.a.a(tokenRetConvertErrorInfo.getCode(), tokenRetConvertErrorInfo.getMsg()), tokenRetConvertErrorInfo.getVendorName(), monitorStruct, null, this.n, strK);
                        this.k.d("checkEnvAvailable code = ", tokenRetConvertErrorInfo.getCode(), "; msg = ", tokenRetConvertErrorInfo.getMsg());
                        return false;
                    }
                    if (!this.f13207e.b()) {
                        this.f13207e.a("", new RequestCallback<Void, String>() { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy.29
                            public void a(String str) {
                                try {
                                    PhoneNumberAuthHelperProxy.g(PhoneNumberAuthHelperProxy.this).d("GetVendorList failed!", str);
                                } catch (Throwable th) {
                                    try {
                                        a.a(th);
                                    } catch (Throwable th2) {
                                        a.a(th2);
                                    }
                                }
                            }

                            public void a(Void r1) {
                            }

                            @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
                            public /* synthetic */ void onError(String str) {
                                try {
                                    a(str);
                                } catch (Throwable th) {
                                    try {
                                        a.a(th);
                                    } catch (Throwable th2) {
                                        a.a(th2);
                                    }
                                }
                            }

                            @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
                            public /* synthetic */ void onSuccess(Void r1) {
                                try {
                                    a(r1);
                                } catch (Throwable th) {
                                    try {
                                        a.a(th);
                                    } catch (Throwable th2) {
                                        a.a(th2);
                                    }
                                }
                            }
                        }, com.mobile.auth.gatewayauth.manager.e.a(this.c.g(), this.f13207e, this.f13206d, this.k));
                    }
                    String strC = this.c.c();
                    if (this.i.a(strC) != null) {
                        if (tokenRetA != null) {
                            a(false, true, tokenRetA.getCode(), tokenRetA.getMsg(), com.mobile.auth.gatewayauth.utils.a.a(tokenRetA.getCode(), tokenRetA.getMsg()), tokenRetA.getVendorName(), monitorStruct, null, this.n, strK);
                            this.k.d("checkEnvAvailable code = ", tokenRetA.getCode(), "; msg = ", tokenRetA.getMsg());
                        } else {
                            a(true, true, "", "", "", "", monitorStruct, null, this.n, strK);
                        }
                        return true;
                    }
                    TokenRet tokenRetConvertErrorInfo2 = this.n.convertErrorInfo(ResultCode.CODE_ERROR_OPERATOR_UNKNOWN_FAIL, "无法判运营商", strC);
                    this.k.d("checkEnvAvailable failed! Unsupported Vendor!");
                    if (tokenRetConvertErrorInfo2 == null) {
                        a(true, true, "", "", "", "", monitorStruct, null, this.n, strK);
                        return false;
                    }
                    a(false, true, tokenRetConvertErrorInfo2.getCode(), tokenRetConvertErrorInfo2.getMsg(), com.mobile.auth.gatewayauth.utils.a.a(tokenRetConvertErrorInfo2.getCode(), tokenRetConvertErrorInfo2.getMsg()), tokenRetConvertErrorInfo2.getVendorName(), monitorStruct, null, this.n, strK);
                    this.k.d("checkEnvAvailable code = ", tokenRetConvertErrorInfo2.getCode(), "; msg = ", tokenRetConvertErrorInfo2.getMsg());
                    return false;
                } catch (Exception e2) {
                    e = e2;
                    tokenRet = tokenRetA;
                    try {
                        e.printStackTrace();
                        TokenRet tokenRetConvertErrorInfo3 = this.n.convertErrorInfo(ResultCode.CODE_ERROR_UNKNOWN_FAIL, com.mobile.auth.gatewayauth.utils.b.b(e), this.c.c());
                        if (tokenRetConvertErrorInfo3 == null) {
                            a(true, true, "", "", "", "", monitorStruct, null, this.n, strK);
                            return false;
                        }
                        a(false, true, tokenRetConvertErrorInfo3.getCode(), tokenRetConvertErrorInfo3.getMsg(), com.mobile.auth.gatewayauth.utils.a.a(tokenRetConvertErrorInfo3.getCode(), tokenRetConvertErrorInfo3.getMsg()), tokenRetConvertErrorInfo3.getVendorName(), monitorStruct, null, this.n, strK);
                        com.mobile.auth.o.a aVar = this.k;
                        String[] strArr = new String[i];
                        strArr[0] = "checkEnvAvailable code = ";
                        strArr[c2] = tokenRetConvertErrorInfo3.getCode();
                        strArr[c] = "; msg = ";
                        strArr[3] = tokenRetConvertErrorInfo3.getMsg();
                        aVar.d(strArr);
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        tokenRetA = tokenRet;
                        if (tokenRetA != null) {
                            a(false, true, tokenRetA.getCode(), tokenRetA.getMsg(), com.mobile.auth.gatewayauth.utils.a.a(tokenRetA.getCode(), tokenRetA.getMsg()), tokenRetA.getVendorName(), monitorStruct, null, this.n, strK);
                            com.mobile.auth.o.a aVar2 = this.k;
                            String[] strArr2 = new String[i];
                            strArr2[0] = "checkEnvAvailable code = ";
                            strArr2[c2] = tokenRetA.getCode();
                            strArr2[c] = "; msg = ";
                            strArr2[3] = tokenRetA.getMsg();
                            aVar2.d(strArr2);
                        } else {
                            a(true, true, "", "", "", "", monitorStruct, null, this.n, strK);
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (tokenRetA != null) {
                        a(false, true, tokenRetA.getCode(), tokenRetA.getMsg(), com.mobile.auth.gatewayauth.utils.a.a(tokenRetA.getCode(), tokenRetA.getMsg()), tokenRetA.getVendorName(), monitorStruct, null, this.n, strK);
                        com.mobile.auth.o.a aVar3 = this.k;
                        String[] strArr3 = new String[i];
                        strArr3[0] = "checkEnvAvailable code = ";
                        strArr3[c2] = tokenRetA.getCode();
                        strArr3[c] = "; msg = ";
                        strArr3[3] = tokenRetA.getMsg();
                        aVar3.d(strArr3);
                    } else {
                        a(true, true, "", "", "", "", monitorStruct, null, this.n, strK);
                    }
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                i = 4;
                c = 2;
                c2 = 1;
            } catch (Throwable th3) {
                th = th3;
                i = 4;
                c = 2;
                c2 = 1;
                tokenRetA = tokenRet;
                if (tokenRetA != null) {
                    a(false, true, tokenRetA.getCode(), tokenRetA.getMsg(), com.mobile.auth.gatewayauth.utils.a.a(tokenRetA.getCode(), tokenRetA.getMsg()), tokenRetA.getVendorName(), monitorStruct, null, this.n, strK);
                    com.mobile.auth.o.a aVar4 = this.k;
                    String[] strArr4 = new String[i];
                    strArr4[0] = "checkEnvAvailable code = ";
                    strArr4[c2] = tokenRetA.getCode();
                    strArr4[c] = "; msg = ";
                    strArr4[3] = tokenRetA.getMsg();
                    aVar4.d(strArr4);
                } else {
                    a(true, true, "", "", "", "", monitorStruct, null, this.n, strK);
                }
                throw th;
            }
        } catch (Throwable th4) {
            try {
                a.a(th4);
                return false;
            } catch (Throwable th5) {
                a.a(th5);
                return false;
            }
        }
    }

    @AuthNumber
    public void clearPreInfo() {
        try {
            this.f13208f.a();
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    @AuthNumber
    @Deprecated
    public void getAuthToken(final int i, final TokenResultListener tokenResultListener) {
        try {
            com.mobile.auth.gatewayauth.utils.b.a(new com.mobile.auth.gatewayauth.utils.b.AbstractRunnableC0261b(tokenResultListener) { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy.2
                @Override // com.mobile.auth.gatewayauth.utils.b.AbstractRunnableC0261b
                protected void a() {
                    try {
                        PhoneNumberAuthHelperProxy phoneNumberAuthHelperProxy = PhoneNumberAuthHelperProxy.this;
                        PhoneNumberAuthHelperProxy.a(phoneNumberAuthHelperProxy, i, PhoneNumberAuthHelperProxy.h(phoneNumberAuthHelperProxy), false, tokenResultListener);
                    } catch (Throwable th) {
                        try {
                            a.a(th);
                        } catch (Throwable th2) {
                            a.a(th2);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    @AuthNumber
    public String getCurrentCarrierName() {
        try {
            return this.c.f();
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    @AuthNumber
    public String getLoginMaskPhone(int i, final String str, final OnLoginPhoneListener onLoginPhoneListener, final boolean z, boolean z2, final String str2) {
        try {
            final MonitorStruct monitorStruct = new MonitorStruct();
            String strG = this.f13209g.g();
            monitorStruct.setStartTime(System.currentTimeMillis());
            justGetLoginPhone(monitorStruct, str, i, this.n, z2, new RequestCallback<LoginPhoneInfo, com.mobile.auth.gatewayauth.manager.base.c>() { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy.17
                public void a(com.mobile.auth.gatewayauth.manager.base.c cVar) {
                    try {
                        PhoneNumberAuthHelperProxy.i(PhoneNumberAuthHelperProxy.this).i();
                        PhoneNumberAuthHelperProxy.this.a(false, true, cVar.b(), cVar.c(), cVar.g(), str, monitorStruct, new TokenResultListener() { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy.17.2
                            @Override // com.mobile.auth.gatewayauth.TokenResultListener
                            public void onTokenFailed(String str3) {
                                try {
                                    onLoginPhoneListener.onGetFailed(str3);
                                } catch (Throwable th) {
                                    try {
                                        a.a(th);
                                    } catch (Throwable th2) {
                                        a.a(th2);
                                    }
                                }
                            }

                            @Override // com.mobile.auth.gatewayauth.TokenResultListener
                            public void onTokenSuccess(String str3) {
                            }
                        }, PhoneNumberAuthHelperProxy.j(PhoneNumberAuthHelperProxy.this), str2);
                    } catch (Throwable th) {
                        try {
                            a.a(th);
                        } catch (Throwable th2) {
                            a.a(th2);
                        }
                    }
                }

                public void a(final LoginPhoneInfo loginPhoneInfo) {
                    try {
                        loginPhoneInfo.setVendor(PhoneNumberAuthHelperProxy.a(PhoneNumberAuthHelperProxy.this).b(str));
                        PhoneNumberAuthHelperProxy phoneNumberAuthHelperProxy = PhoneNumberAuthHelperProxy.this;
                        phoneNumberAuthHelperProxy.a(true, z, "600000", "获取掩码成功", "", str, monitorStruct, null, PhoneNumberAuthHelperProxy.j(phoneNumberAuthHelperProxy), str2);
                        com.mobile.auth.gatewayauth.utils.b.a(new com.mobile.auth.gatewayauth.utils.b.a() { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy.17.1
                            @Override // com.mobile.auth.gatewayauth.utils.b.a
                            protected void a() {
                                try {
                                    onLoginPhoneListener.onGetLoginPhone(loginPhoneInfo);
                                } catch (Throwable th) {
                                    try {
                                        a.a(th);
                                    } catch (Throwable th2) {
                                        a.a(th2);
                                    }
                                }
                            }

                            @Override // com.mobile.auth.gatewayauth.utils.b.a
                            protected void a(Throwable th) {
                            }
                        });
                    } catch (Throwable th) {
                        try {
                            a.a(th);
                        } catch (Throwable th2) {
                            a.a(th2);
                        }
                    }
                }

                @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
                public /* synthetic */ void onError(com.mobile.auth.gatewayauth.manager.base.c cVar) {
                    try {
                        a(cVar);
                    } catch (Throwable th) {
                        try {
                            a.a(th);
                        } catch (Throwable th2) {
                            a.a(th2);
                        }
                    }
                }

                @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
                public /* synthetic */ void onSuccess(LoginPhoneInfo loginPhoneInfo) {
                    try {
                        a(loginPhoneInfo);
                    } catch (Throwable th) {
                        try {
                            a.a(th);
                        } catch (Throwable th2) {
                            a.a(th2);
                        }
                    }
                }
            }, str2, strG, 6);
            return str2;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    @AuthNumber
    public PnsReporter getReporter() {
        try {
            return this.f13209g.b();
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    @AuthNumber
    public void getVerifyToken(final int i, final TokenResultListener tokenResultListener) {
        try {
            com.mobile.auth.gatewayauth.utils.b.a(new com.mobile.auth.gatewayauth.utils.b.AbstractRunnableC0261b(tokenResultListener) { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy.32
                @Override // com.mobile.auth.gatewayauth.utils.b.AbstractRunnableC0261b
                protected void a() {
                    try {
                        PhoneNumberAuthHelperProxy phoneNumberAuthHelperProxy = PhoneNumberAuthHelperProxy.this;
                        PhoneNumberAuthHelperProxy.a(phoneNumberAuthHelperProxy, i, PhoneNumberAuthHelperProxy.j(phoneNumberAuthHelperProxy), true, tokenResultListener);
                    } catch (Throwable th) {
                        try {
                            a.a(th);
                        } catch (Throwable th2) {
                            a.a(th2);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    @AuthNumber
    @Deprecated
    public void onDestroy() {
        try {
            final long jCurrentTimeMillis = System.currentTimeMillis();
            this.b = null;
            if (f13205a != null) {
                f13205a = null;
            }
            final long jCurrentTimeMillis2 = System.currentTimeMillis();
            com.mobile.auth.gatewayauth.utils.b.a(new Runnable() { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy.23
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        PhoneNumberAuthHelperProxy.g(PhoneNumberAuthHelperProxy.this).a(PhoneNumberAuthHelperProxy.i(PhoneNumberAuthHelperProxy.this).a("", Constant.ACTION_SDK_DESTROY, UStruct.newUStruct().startTime(jCurrentTimeMillis).endTime(jCurrentTimeMillis2).build(), PhoneNumberAuthHelperProxy.h(PhoneNumberAuthHelperProxy.this).getApiLevel()), 2);
                        PhoneNumberAuthHelperProxy.g(PhoneNumberAuthHelperProxy.this).a();
                    } catch (Throwable th) {
                        try {
                            a.a(th);
                        } catch (Throwable th2) {
                            a.a(th2);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    @AuthNumber
    @Deprecated
    public void preLogin(int i, final PreLoginResultListener preLoginResultListener, final boolean z) {
        try {
            com.mobile.auth.gatewayauth.utils.b.a(new com.mobile.auth.gatewayauth.utils.b.AbstractRunnableC0261b(this.b) { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy.8
                @Override // com.mobile.auth.gatewayauth.utils.b.AbstractRunnableC0261b
                protected void a() {
                    try {
                        PreLoginResultListener preLoginResultListener2 = preLoginResultListener;
                        if (preLoginResultListener2 == null) {
                            return;
                        }
                        PhoneNumberAuthHelperProxy phoneNumberAuthHelperProxy = PhoneNumberAuthHelperProxy.this;
                        PhoneNumberAuthHelperProxy.a(phoneNumberAuthHelperProxy, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS, preLoginResultListener2, PhoneNumberAuthHelperProxy.h(phoneNumberAuthHelperProxy), false, z);
                    } catch (Throwable th) {
                        try {
                            a.a(th);
                        } catch (Throwable th2) {
                            a.a(th2);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    @AuthNumber
    public void setAuthListener(TokenResultListener tokenResultListener) {
        try {
            this.b = tokenResultListener;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    @AuthNumber
    public void setAuthSDKInfo(String str) {
        try {
            this.k.a("setAuthSDKInfo secretInfo = ", str);
            this.c.a(str);
            this.f13207e.setLocalVendorSdkInfo(str);
            if (this.i.a(this.f13207e)) {
                this.f13207e.a("", new RequestCallback<Void, String>() { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy.16
                    public void a(String str2) {
                        try {
                            PhoneNumberAuthHelperProxy.g(PhoneNumberAuthHelperProxy.this).d("GetVendorList failed!", str2);
                        } catch (Throwable th) {
                            try {
                                a.a(th);
                            } catch (Throwable th2) {
                                a.a(th2);
                            }
                        }
                    }

                    public void a(Void r2) {
                        try {
                            PhoneNumberAuthHelperProxy.f(PhoneNumberAuthHelperProxy.this).a(PhoneNumberAuthHelperProxy.e(PhoneNumberAuthHelperProxy.this));
                        } catch (Throwable th) {
                            try {
                                a.a(th);
                            } catch (Throwable th2) {
                                a.a(th2);
                            }
                        }
                    }

                    @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
                    public /* synthetic */ void onError(String str2) {
                        try {
                            a(str2);
                        } catch (Throwable th) {
                            try {
                                a.a(th);
                            } catch (Throwable th2) {
                                a.a(th2);
                            }
                        }
                    }

                    @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
                    public /* synthetic */ void onSuccess(Void r1) {
                        try {
                            a(r1);
                        } catch (Throwable th) {
                            try {
                                a.a(th);
                            } catch (Throwable th2) {
                                a.a(th2);
                            }
                        }
                    }
                }, com.mobile.auth.gatewayauth.manager.e.a(this.c.g(), this.f13207e, this.f13206d, this.k));
            } else {
                this.k.d("VendorSdkFactor update local VendorConfig failed!");
            }
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    @AuthNumber
    @Deprecated
    public void setDebugMode(boolean z) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            com.mobile.auth.gatewayauth.utils.f.a(z);
            this.k.a(this.f13209g.b("", Constant.ACTION_SDK_DEBUG_MODE, UStruct.newUStruct().startTime(jCurrentTimeMillis).putApiParams(Constant.API_PARAMS_KEY_ENABLE, String.valueOf(z)).endTime(System.currentTimeMillis()).build(), this.m.getApiLevel()), 2);
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    @AuthNumber
    @Deprecated
    public void setLoggerEnable(final boolean z) {
        try {
            final long jCurrentTimeMillis = System.currentTimeMillis();
            com.mobile.auth.gatewayauth.utils.f.a(z);
            final long jCurrentTimeMillis2 = System.currentTimeMillis();
            com.mobile.auth.gatewayauth.utils.b.a(new Runnable() { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy.26
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        PhoneNumberAuthHelperProxy.g(PhoneNumberAuthHelperProxy.this).a(PhoneNumberAuthHelperProxy.i(PhoneNumberAuthHelperProxy.this).b("", Constant.ACTION_PHONE_LOGGER_ENABLE, UStruct.newUStruct().startTime(jCurrentTimeMillis).putApiParams(Constant.API_PARAMS_KEY_ENABLE, String.valueOf(z)).endTime(jCurrentTimeMillis2).build(), PhoneNumberAuthHelperProxy.h(PhoneNumberAuthHelperProxy.this).getApiLevel()), 2);
                    } catch (Throwable th) {
                        try {
                            a.a(th);
                        } catch (Throwable th2) {
                            a.a(th2);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    @AuthNumber
    @Deprecated
    public void setUploadEnable(final boolean z) {
        try {
            final long jCurrentTimeMillis = System.currentTimeMillis();
            com.mobile.auth.gatewayauth.utils.f.b(z);
            final long jCurrentTimeMillis2 = System.currentTimeMillis();
            com.mobile.auth.gatewayauth.utils.b.a(new Runnable() { // from class: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy.28
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        PhoneNumberAuthHelperProxy.g(PhoneNumberAuthHelperProxy.this).a(PhoneNumberAuthHelperProxy.i(PhoneNumberAuthHelperProxy.this).b("", Constant.ACTION_PHONE_UPLOAD_ENABLE, UStruct.newUStruct().startTime(jCurrentTimeMillis).endTime(jCurrentTimeMillis2).putApiParams(Constant.API_PARAMS_KEY_ENABLE, String.valueOf(z)).build(), PhoneNumberAuthHelperProxy.h(PhoneNumberAuthHelperProxy.this).getApiLevel()), 2);
                    } catch (Throwable th) {
                        try {
                            a.a(th);
                        } catch (Throwable th2) {
                            a.a(th2);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }
}
