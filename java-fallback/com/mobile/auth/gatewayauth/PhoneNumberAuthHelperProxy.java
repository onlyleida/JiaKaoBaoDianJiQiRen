package com.mobile.auth.gatewayauth;

import android.content.Context;
import android.text.TextUtils;
import com.mobile.auth.BuildConfig;
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
import com.mobile.auth.gatewayauth.model.InitResult;
import com.mobile.auth.gatewayauth.model.LoginPhoneInfo;
import com.mobile.auth.gatewayauth.model.MonitorStruct;
import com.mobile.auth.gatewayauth.model.TokenRet;
import com.mobile.auth.gatewayauth.model.UStruct;
import com.nirvana.tools.core.ComponentSdkCore;
import com.tencent.bugly.Bugly;
import java.util.concurrent.Future;

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
    private ResultCodeProcessor m;
    private ResultCodeProcessor n;

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy$13, reason: invalid class name */
    class AnonymousClass13 implements TokenResultListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ PreLoginResultListener f13216a;
        final /* synthetic */ String b;
        final /* synthetic */ PhoneNumberAuthHelperProxy c;

        AnonymousClass13(PhoneNumberAuthHelperProxy r1, PreLoginResultListener r2, String r3) {
            this.c = r1;
            this.f13216a = r2;
            this.b = r3;
        }

        @Override // com.mobile.auth.gatewayauth.TokenResultListener
        public void onTokenFailed(String r3) {
            this.f13216a.onTokenFailed(this.b, r3);     // Catch: Throwable -> L4
            return;
        L4:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L7
            return;
        L7:
            th = move-exception;
            a.a(th);
        }

        @Override // com.mobile.auth.gatewayauth.TokenResultListener
        public void onTokenSuccess(String r2) {
            this.f13216a.onTokenSuccess(this.b);     // Catch: Throwable -> L4
            return;
        L4:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L7
            return;
        L7:
            th = move-exception;
            a.a(th);
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

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ PhoneNumberAuthHelperProxy f13219e;

        AnonymousClass14(PhoneNumberAuthHelperProxy r1, String r2, TokenResultListener r3, MonitorStruct r4, String r5) {
            this.f13219e = r1;
            this.f13217a = r2;
            this.b = r3;
            this.c = r4;
            this.f13218d = r5;
        }

        @Override // java.lang.Runnable
        public void run() {
            PhoneNumberAuthHelperProxy.b(this.f13219e, ResultCode.CODE_ERROR_FUNCTION_TIME_OUT, "请求超时", com.mobile.auth.gatewayauth.utils.a.a(ResultCode.CODE_ERROR_FUNCTION_TIME_OUT, "请求超时"), this.f13217a, this.b, PhoneNumberAuthHelperProxy.j(this.f13219e), this.c, this.f13218d);     // Catch: Throwable -> L5
            PhoneNumberAuthHelperProxy.g(this.f13219e).d(new String[]{"justPreVerify errorCode = ", ResultCode.CODE_ERROR_FUNCTION_TIME_OUT, "; errorMsg = ", "请求超时", "; action = ", this.c.getAction()});     // Catch: Throwable -> L5
            return;
        L5:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L8
            return;
        L8:
            th = move-exception;
            a.a(th);
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

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ PhoneNumberAuthHelperProxy f13224g;

        AnonymousClass15(PhoneNumberAuthHelperProxy r1, c r2, MonitorStruct r3, String r4, TokenResultListener r5, String r6, String r7) {
            this.f13224g = r1;
            this.f13220a = r2;
            this.b = r3;
            this.c = r4;
            this.f13221d = r5;
            this.f13222e = r6;
            this.f13223f = r7;
        }

        public void a(com.mobile.auth.gatewayauth.manager.base.c r12) {
        L6:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L9
            return;
        L9:
            th = move-exception;
            a.a(th);
            return;
        L3:
            if (this.f13220a.d() == false) goto L16;
            this.b.setCache(Bugly.SDK_IS_DEV);     // Catch: Throwable -> L6
            this.b.setCarrierFailedResultData(r12.d());     // Catch: Throwable -> L6
            PhoneNumberAuthHelperProxy.b(this.f13224g, r12.b(), r12.c(), r12.g(), this.f13222e, this.f13221d, PhoneNumberAuthHelperProxy.j(this.f13224g), this.b, this.f13223f);     // Catch: Throwable -> L6
            return;
        }

        public void a(String r9) {
        L6:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L9
            return;
        L9:
            th = move-exception;
            a.a(th);
            return;
        L3:
            if (this.f13220a.d() == false) goto L16;
            this.b.setCache(r9);     // Catch: Throwable -> L6
            this.b.setAuthSdkCode(PhoneNumberAuthHelperProxy.j(this.f13224g).convertCode(Constant.CODE_GET_TOKEN_SUCCESS));     // Catch: Throwable -> L6
            PhoneNumberAuthHelperProxy.a(this.f13224g, true, true, "", this.c, this.b, this.f13221d);     // Catch: Throwable -> L6
            return;
        }

        @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
        public /* synthetic */ void onError(com.mobile.auth.gatewayauth.manager.base.c r1) {
            a(r1);     // Catch: Throwable -> L4
            return;
        L4:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L7
            return;
        L7:
            th = move-exception;
            a.a(th);
        }

        @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
        public /* synthetic */ void onSuccess(String r1) {
            a(r1);     // Catch: Throwable -> L4
            return;
        L4:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L7
            return;
        L7:
            th = move-exception;
            a.a(th);
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy$18, reason: invalid class name */
    class AnonymousClass18 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RequestCallback f13232a;
        final /* synthetic */ PhoneNumberAuthHelperProxy b;

        AnonymousClass18(PhoneNumberAuthHelperProxy r1, RequestCallback r2) {
            this.b = r1;
            this.f13232a = r2;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f13232a.onError(com.mobile.auth.gatewayauth.manager.base.c.a(ResultCode.CODE_ERROR_FUNCTION_TIME_OUT, "请求超时"));     // Catch: Throwable -> L4
            return;
        L4:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L7
            return;
        L7:
            th = move-exception;
            a.a(th);
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

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ PhoneNumberAuthHelperProxy f13235e;

        AnonymousClass19(PhoneNumberAuthHelperProxy r1, c r2, MonitorStruct r3, ResultCodeProcessor r4, RequestCallback r5) {
            this.f13235e = r1;
            this.f13233a = r2;
            this.b = r3;
            this.c = r4;
            this.f13234d = r5;
        }

        public void a(com.mobile.auth.gatewayauth.manager.base.c r4) {
        L6:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L9
            return;
        L9:
            th = move-exception;
            a.a(th);
            return;
        L3:
            if (this.f13233a.d() == false) goto L16;
            this.b.setCache(String.valueOf(r4.e()));     // Catch: Throwable -> L6
            LoginPhoneInfo r5 = r4.h();     // Catch: Throwable -> L6
            this.b.setPhoneNumber(r5.getPhoneNumber());     // Catch: Throwable -> L6
            this.b.setAuthSdkCode(this.c.convertCode(Constant.CODE_GET_TOKEN_SUCCESS));     // Catch: Throwable -> L6
            this.f13234d.onSuccess(r5);     // Catch: Throwable -> L6
            return;
        }

        public void b(com.mobile.auth.gatewayauth.manager.base.c r5) {
        L10:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L13
            return;
        L13:
            th = move-exception;
            a.a(th);
            return;
        L3:
            if (this.f13233a.d() == false) goto L20;
            this.b.setCache(Bugly.SDK_IS_DEV);     // Catch: Throwable -> L10
            this.b.setCarrierFailedResultData(r5.d());     // Catch: Throwable -> L10
            com.mobile.auth.o.a r0 = PhoneNumberAuthHelperProxy.g(this.f13235e);     // Catch: Throwable -> L10
            String[] r1 = new String[2];     // Catch: Throwable -> L10
            r1[0] = "justGetLoginPhone failed!";     // Catch: Throwable -> L10
            if (r5 != null) goto L7;
            String r3 = "";
        L8:
            r1[1] = r3;     // Catch: Throwable -> L10
            r0.d(r1);     // Catch: Throwable -> L10
            this.f13234d.onError(r5);     // Catch: Throwable -> L10
            return;
        L7:
            r3 = r5.i();     // Catch: Throwable -> L10
            goto L8
        }

        @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
        public /* synthetic */ void onError(com.mobile.auth.gatewayauth.manager.base.c r1) {
            b(r1);     // Catch: Throwable -> L4
            return;
        L4:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L7
            return;
        L7:
            th = move-exception;
            a.a(th);
        }

        @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
        public /* synthetic */ void onSuccess(com.mobile.auth.gatewayauth.manager.base.c r1) {
            a(r1);     // Catch: Throwable -> L4
            return;
        L4:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L7
            return;
        L7:
            th = move-exception;
            a.a(th);
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.PhoneNumberAuthHelperProxy$20, reason: invalid class name */
    class AnonymousClass20 implements TokenResultListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ PreLoginResultListener f13237a;
        final /* synthetic */ String b;
        final /* synthetic */ PhoneNumberAuthHelperProxy c;

        AnonymousClass20(PhoneNumberAuthHelperProxy r1, PreLoginResultListener r2, String r3) {
            this.c = r1;
            this.f13237a = r2;
            this.b = r3;
        }

        @Override // com.mobile.auth.gatewayauth.TokenResultListener
        public void onTokenFailed(String r3) {
            this.f13237a.onTokenFailed(this.b, r3);     // Catch: Throwable -> L4
            return;
        L4:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L7
            return;
        L7:
            th = move-exception;
            a.a(th);
        }

        @Override // com.mobile.auth.gatewayauth.TokenResultListener
        public void onTokenSuccess(String r2) {
            this.f13237a.onTokenSuccess(this.b);     // Catch: Throwable -> L4
            return;
        L4:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L7
            return;
        L7:
            th = move-exception;
            a.a(th);
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

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ PhoneNumberAuthHelperProxy f13241f;

        AnonymousClass21(PhoneNumberAuthHelperProxy r1, String r2, TokenResultListener r3, ResultCodeProcessor r4, MonitorStruct r5, String r6) {
            this.f13241f = r1;
            this.f13238a = r2;
            this.b = r3;
            this.c = r4;
            this.f13239d = r5;
            this.f13240e = r6;
        }

        @Override // java.lang.Runnable
        public void run() {
            PhoneNumberAuthHelperProxy.a(this.f13241f, ResultCode.CODE_ERROR_FUNCTION_TIME_OUT, "请求超时", com.mobile.auth.gatewayauth.utils.a.a(ResultCode.CODE_ERROR_FUNCTION_TIME_OUT, "请求超时"), this.f13238a, this.b, this.c, this.f13239d, this.f13240e);     // Catch: Throwable -> L5
            PhoneNumberAuthHelperProxy.g(this.f13241f).d(new String[]{"justPreLogin errorCode = ", ResultCode.CODE_ERROR_FUNCTION_TIME_OUT, "; errorMsg = ", "请求超时", "; action = ", this.f13239d.getAction()});     // Catch: Throwable -> L5
            return;
        L5:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L8
            return;
        L8:
            th = move-exception;
            a.a(th);
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

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ PhoneNumberAuthHelperProxy f13247h;

        AnonymousClass22(PhoneNumberAuthHelperProxy r1, c r2, MonitorStruct r3, ResultCodeProcessor r4, String r5, TokenResultListener r6, String r7, String r8) {
            this.f13247h = r1;
            this.f13242a = r2;
            this.b = r3;
            this.c = r4;
            this.f13243d = r5;
            this.f13244e = r6;
            this.f13245f = r7;
            this.f13246g = r8;
        }

        public void a(com.mobile.auth.gatewayauth.manager.base.c r9) {
        L6:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L9
            return;
        L9:
            th = move-exception;
            a.a(th);
            return;
        L3:
            if (this.f13242a.d() == false) goto L16;
            this.b.setCache(String.valueOf(r9.e()));     // Catch: Throwable -> L6
            this.b.setAuthSdkCode(this.c.convertCode(Constant.CODE_GET_TOKEN_SUCCESS));     // Catch: Throwable -> L6
            PhoneNumberAuthHelperProxy.a(this.f13247h, true, true, "", this.f13243d, this.b, this.f13244e);     // Catch: Throwable -> L6
            return;
        }

        public void b(com.mobile.auth.gatewayauth.manager.base.c r12) {
        L6:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L9
            return;
        L9:
            th = move-exception;
            a.a(th);
            return;
        L3:
            if (this.f13242a.d() == false) goto L16;
            this.b.setCache(Bugly.SDK_IS_DEV);     // Catch: Throwable -> L6
            this.b.setCarrierFailedResultData(r12.d());     // Catch: Throwable -> L6
            PhoneNumberAuthHelperProxy.a(this.f13247h, r12.b(), r12.c(), r12.g(), this.f13245f, this.f13244e, this.c, this.b, this.f13246g);     // Catch: Throwable -> L6
            return;
        }

        @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
        public /* synthetic */ void onError(com.mobile.auth.gatewayauth.manager.base.c r1) {
            b(r1);     // Catch: Throwable -> L4
            return;
        L4:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L7
            return;
        L7:
            th = move-exception;
            a.a(th);
        }

        @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
        public /* synthetic */ void onSuccess(com.mobile.auth.gatewayauth.manager.base.c r1) {
            a(r1);     // Catch: Throwable -> L4
            return;
        L4:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L7
            return;
        L7:
            th = move-exception;
            a.a(th);
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

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ PhoneNumberAuthHelperProxy f13272f;

        AnonymousClass4(PhoneNumberAuthHelperProxy r1, String r2, TokenResultListener r3, ResultCodeProcessor r4, MonitorStruct r5, String r6) {
            this.f13272f = r1;
            this.f13269a = r2;
            this.b = r3;
            this.c = r4;
            this.f13270d = r5;
            this.f13271e = r6;
        }

        @Override // java.lang.Runnable
        public void run() {
            PhoneNumberAuthHelperProxy.a(this.f13272f, ResultCode.CODE_ERROR_FUNCTION_TIME_OUT, "请求超时", com.mobile.auth.gatewayauth.utils.a.a(ResultCode.CODE_ERROR_FUNCTION_TIME_OUT, "请求超时"), this.f13269a, this.b, this.c, this.f13270d, this.f13271e);     // Catch: Throwable -> L4
            PhoneNumberAuthHelperProxy.g(this.f13272f).d(new String[]{"justGetLoginToken Timeout!"});     // Catch: Throwable -> L4
            return;
        L4:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L7
            return;
        L7:
            th = move-exception;
            a.a(th);
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

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ PhoneNumberAuthHelperProxy f13277g;

        AnonymousClass5(PhoneNumberAuthHelperProxy r1, c r2, MonitorStruct r3, String r4, TokenResultListener r5, ResultCodeProcessor r6, String r7) {
            this.f13277g = r1;
            this.f13273a = r2;
            this.b = r3;
            this.c = r4;
            this.f13274d = r5;
            this.f13275e = r6;
            this.f13276f = r7;
        }

        public void a(com.mobile.auth.gatewayauth.manager.base.c r11) {
        L6:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L9
            return;
        L9:
            th = move-exception;
            a.a(th);
            return;
        L3:
            if (this.f13273a.d() == false) goto L16;
            this.b.setCache(String.valueOf(r11.e()));     // Catch: Throwable -> L6
            PhoneNumberAuthHelperProxy.a(this.f13277g, true, this.c, this.f13274d, this.f13275e, r11.d(), this.b, this.f13276f);     // Catch: Throwable -> L6
            return;
        }

        public void b(com.mobile.auth.gatewayauth.manager.base.c r12) {
        L6:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L9
            return;
        L9:
            th = move-exception;
            a.a(th);
            return;
        L3:
            if (this.f13273a.d() == false) goto L16;
            this.b.setCache(Bugly.SDK_IS_DEV);     // Catch: Throwable -> L6
            this.b.setCarrierFailedResultData(r12.d());     // Catch: Throwable -> L6
            PhoneNumberAuthHelperProxy.a(this.f13277g, r12.b(), r12.c(), r12.g(), this.c, this.f13274d, this.f13275e, this.b, this.f13276f);     // Catch: Throwable -> L6
            return;
        }

        @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
        public /* synthetic */ void onError(com.mobile.auth.gatewayauth.manager.base.c r1) {
            b(r1);     // Catch: Throwable -> L4
            return;
        L4:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L7
            return;
        L7:
            th = move-exception;
            a.a(th);
        }

        @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
        public /* synthetic */ void onSuccess(com.mobile.auth.gatewayauth.manager.base.c r1) {
            a(r1);     // Catch: Throwable -> L4
            return;
        L4:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L7
            return;
        L7:
            th = move-exception;
            a.a(th);
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

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ PhoneNumberAuthHelperProxy f13281f;

        AnonymousClass6(PhoneNumberAuthHelperProxy r1, String r2, TokenResultListener r3, ResultCodeProcessor r4, MonitorStruct r5, String r6) {
            this.f13281f = r1;
            this.f13278a = r2;
            this.b = r3;
            this.c = r4;
            this.f13279d = r5;
            this.f13280e = r6;
        }

        @Override // java.lang.Runnable
        public void run() {
            PhoneNumberAuthHelperProxy.b(this.f13281f, ResultCode.CODE_ERROR_FUNCTION_TIME_OUT, "请求超时", com.mobile.auth.gatewayauth.utils.a.a(ResultCode.CODE_ERROR_FUNCTION_TIME_OUT, "请求超时"), this.f13278a, this.b, this.c, this.f13279d, this.f13280e);     // Catch: Throwable -> L4
            PhoneNumberAuthHelperProxy.g(this.f13281f).d(new String[]{"justGetToken Timeout!"});     // Catch: Throwable -> L4
            return;
        L4:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L7
            return;
        L7:
            th = move-exception;
            a.a(th);
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

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ PhoneNumberAuthHelperProxy f13286g;

        AnonymousClass7(PhoneNumberAuthHelperProxy r1, c r2, MonitorStruct r3, String r4, ResultCodeProcessor r5, TokenResultListener r6, String r7) {
            this.f13286g = r1;
            this.f13282a = r2;
            this.b = r3;
            this.c = r4;
            this.f13283d = r5;
            this.f13284e = r6;
            this.f13285f = r7;
        }

        public void a(com.mobile.auth.gatewayauth.manager.base.c r11) {
        L6:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L9
            return;
        L9:
            th = move-exception;
            a.a(th);
            return;
        L3:
            if (this.f13282a.d() == false) goto L16;
            this.b.setCache(String.valueOf(r11.e()));     // Catch: Throwable -> L6
            PhoneNumberAuthHelperProxy.a(this.f13286g, true, this.c, this.f13283d, this.b, r11.d(), this.f13284e, this.f13285f);     // Catch: Throwable -> L6
            return;
        }

        public void b(com.mobile.auth.gatewayauth.manager.base.c r12) {
        L6:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L9
            return;
        L9:
            th = move-exception;
            a.a(th);
            return;
        L3:
            if (this.f13282a.d() == false) goto L16;
            this.b.setCache(Bugly.SDK_IS_DEV);     // Catch: Throwable -> L6
            this.b.setCarrierFailedResultData(r12.d());     // Catch: Throwable -> L6
            PhoneNumberAuthHelperProxy.b(this.f13286g, r12.b(), r12.c(), r12.g(), this.c, this.f13284e, this.f13283d, this.b, this.f13285f);     // Catch: Throwable -> L6
            return;
        }

        @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
        public /* synthetic */ void onError(com.mobile.auth.gatewayauth.manager.base.c r1) {
            b(r1);     // Catch: Throwable -> L4
            return;
        L4:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L7
            return;
        L7:
            th = move-exception;
            a.a(th);
        }

        @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
        public /* synthetic */ void onSuccess(com.mobile.auth.gatewayauth.manager.base.c r1) {
            a(r1);     // Catch: Throwable -> L4
            return;
        L4:
            th = move-exception;
            a.a(th);     // Catch: Throwable -> L7
            return;
        L7:
            th = move-exception;
            a.a(th);
        }
    }

    static {
        System.loadLibrary("auth_number_product-2.12.1.2-log-online-standard-release_alijtca_plus");
        f13205a = null;
    }

    private PhoneNumberAuthHelperProxy(Context r2, TokenResultListener r3) {
        this.m = new com.mobile.auth.gatewayauth.manager.compat.a();
        this.n = new com.mobile.auth.gatewayauth.manager.compat.b();
        this.b = r3;
        ComponentSdkCore.register(r2.getApplicationContext());
        a(r2.getApplicationContext());
    }

    static /* synthetic */ SystemManager a(PhoneNumberAuthHelperProxy r1) {
        return r1.c;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        a.a(th);
        return null;
    }

    private void a(Context r8) {
        com.mobile.auth.gatewayauth.manager.d r0 = new com.mobile.auth.gatewayauth.manager.d(r8);     // Catch: Throwable -> L4
        this.f13209g = r0;     // Catch: Throwable -> L4
        this.k = r0.a();     // Catch: Throwable -> L4
        this.c = new SystemManager(r8, this.k);     // Catch: Throwable -> L4
        this.f13210h = CrashManager.a(r8);     // Catch: Throwable -> L4
        VendorSdkInfoManager r1 = new VendorSdkInfoManager(this.f13209g, this.c);     // Catch: Throwable -> L4
        this.f13207e = r1;     // Catch: Throwable -> L4
        this.f13206d = new com.mobile.auth.gatewayauth.manager.b(r8, r1, this.f13209g);     // Catch: Throwable -> L4
        f r9 = new f(this.c, this.f13209g);     // Catch: Throwable -> L4
        this.i = r9;     // Catch: Throwable -> L4
        this.f13209g.a(r9);     // Catch: Throwable -> L4
        this.f13208f = new TokenMaskManager(this.f13206d, this.c, this.f13209g, this.i, this.f13207e);     // Catch: Throwable -> L4
        com.mobile.auth.gatewayauth.utils.b.a(new AnonymousClass1(this));     // Catch: Throwable -> L4
        this.j = e();     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        a.a(th);
    }

    static /* synthetic */ void a(PhoneNumberAuthHelperProxy r0, int r1, ResultCodeProcessor r2, boolean r3, TokenResultListener r4) {
        r0.justGetToken(r1, r2, r3, r4);     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        a.a(th);
    }

    static /* synthetic */ void a(PhoneNumberAuthHelperProxy r0, long r1, PreLoginResultListener r3) {
        r0.justPreVerify(r1, r3);     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        a.a(th);
    }

    static /* synthetic */ void a(PhoneNumberAuthHelperProxy r0, long r1, PreLoginResultListener r3, ResultCodeProcessor r4, boolean r5, boolean r6) {
        r0.justPreLogin(r1, r3, r4, r5, r6);     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        a.a(th);
    }

    static /* synthetic */ void a(PhoneNumberAuthHelperProxy r0, long r1, TokenResultListener r3, ResultCodeProcessor r4) {
        r0.justGetLoginToken(r1, r3, r4);     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        a.a(th);
    }

    static /* synthetic */ void a(PhoneNumberAuthHelperProxy r0, String r1, String r2, String r3, String r4, TokenResultListener r5, ResultCodeProcessor r6, MonitorStruct r7, String r8) {
        r0.a(r1, r2, r3, r4, r5, r6, r7, r8);     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        a.a(th);
    }

    static /* synthetic */ void a(PhoneNumberAuthHelperProxy r0, boolean r1, boolean r2, String r3, String r4, MonitorStruct r5, TokenResultListener r6) {
        r0.a(r1, r2, r3, r4, r5, r6);     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        a.a(th);
    }

    private void a(String r14, String r15, String r16, String r17, TokenResultListener r18, ResultCodeProcessor r19, MonitorStruct r20, String r21) {
        this.f13209g.i();     // Catch: Throwable -> L5
        a(false, true, r14, r15, r16, r17, r20, r18, r19, r21);     // Catch: Throwable -> L5
        return;
    L5:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L8
        return;
    L8:
        th = move-exception;
        a.a(th);
    }

    private void a(final String r8, final boolean r9, final MonitorStruct r10, final boolean r11) {
        com.mobile.auth.gatewayauth.utils.b.a(new AnonymousClass25(this, r10, r9, r8, r11));     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        a.a(th);
    }

    private void a(final boolean r2, final String r3, final TokenResultListener r4) {
        com.mobile.auth.gatewayauth.utils.b.a(new AnonymousClass24(this, r2, r4, r3));     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        a.a(th);
    }

    private void a(boolean r1, boolean r2, String r3, String r4, MonitorStruct r5, TokenResultListener r6) {
        if (r6 != null) goto L12;
    L4:
        a(r3, r1, r5, r2);     // Catch: Throwable -> L6
        return;
    L6:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L9
        return;
    L9:
        th = move-exception;
        a.a(th);
        return;
    L12:
        a(r1, r4, r6);     // Catch: Throwable -> L6
        goto L4
    }

    static /* synthetic */ boolean a(PhoneNumberAuthHelperProxy r0, boolean r1, String r2, TokenResultListener r3, ResultCodeProcessor r4, String r5, MonitorStruct r6, String r7) {
        return r0.a(r1, r2, r3, r4, r5, r6, r7);
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L8
        return false;
    L8:
        th = move-exception;
        a.a(th);
        return false;
    }

    static /* synthetic */ boolean a(PhoneNumberAuthHelperProxy r0, boolean r1, String r2, ResultCodeProcessor r3, MonitorStruct r4, String r5, TokenResultListener r6, String r7) {
        return r0.a(r1, r2, r3, r4, r5, r6, r7);
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L8
        return false;
    L8:
        th = move-exception;
        a.a(th);
        return false;
    }

    private boolean a(final String r12, String r13, final String r14) {
        final long r6 = System.currentTimeMillis();     // Catch: Throwable -> L11
        if (r14 != null) goto L6;
    L8:
        boolean r15 = false;
    L9:
        final long r8 = System.currentTimeMillis();     // Catch: Throwable -> L11
        final boolean r4 = r15;
        com.mobile.auth.gatewayauth.utils.b.a(new AnonymousClass27(this, r14, r4, r12, r6, r8));     // Catch: Throwable -> L11
        return r15;
    L6:
        if (r14.equals(r13) == true) goto L8;
        r15 = true;
    L11:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L14
        return false;
    L14:
        th = move-exception;
        a.a(th);
        return false;
    }

    private boolean a(boolean r15, String r16, TokenResultListener r17, ResultCodeProcessor r18, String r19, MonitorStruct r20, String r21) {
        this.f13209g.i();     // Catch: Throwable -> L11
        if (TextUtils.isEmpty(r19) == true) goto L7;
        a(r19, r16, r20, r18, r17);     // Catch: Throwable -> L11
        return true;
    L7:
        this.k.d(new String[]{"GetLoginToken from cache is null!"});     // Catch: Throwable -> L11
        if (r15 == false) goto L10;
        r20.setAuthSdkCode(Constant.CODE_ERROR_UNKNOWN_FAIL);     // Catch: Throwable -> L11
        a(false, true, Constant.CODE_ERROR_UNKNOWN_FAIL, "未知异常", com.mobile.auth.gatewayauth.utils.a.a(Constant.CODE_ERROR_UNKNOWN_FAIL, "未知异常"), r16, r20, r17, r18, r21);     // Catch: Throwable -> L11
    L10:
        return false;
    L11:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L14
        return false;
    L14:
        th = move-exception;
        a.a(th);
        return false;
    }

    private boolean a(boolean r15, String r16, ResultCodeProcessor r17, MonitorStruct r18, String r19, TokenResultListener r20, String r21) {
        this.f13209g.j();     // Catch: Throwable -> L11
        if (TextUtils.isEmpty(r19) == true) goto L7;
        a(r19, r16, r18, r17, r20);     // Catch: Throwable -> L11
        return true;
    L7:
        this.k.d(new String[]{"GetVerifyToken from cache is null!"});     // Catch: Throwable -> L11
        if (r15 == false) goto L10;
        a(false, true, Constant.CODE_ERROR_UNKNOWN_FAIL, "未知异常", com.mobile.auth.gatewayauth.utils.a.a(Constant.CODE_ERROR_UNKNOWN_FAIL, "未知异常"), r16, r18, r20, r17, r21);     // Catch: Throwable -> L11
    L10:
        return false;
    L11:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L14
        return false;
    L14:
        th = move-exception;
        a.a(th);
        return false;
    }

    static /* synthetic */ com.mobile.auth.gatewayauth.manager.b b(PhoneNumberAuthHelperProxy r1) {
        return r1.f13206d;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        a.a(th);
        return null;
    }

    static /* synthetic */ void b(PhoneNumberAuthHelperProxy r0, String r1, String r2, String r3, String r4, TokenResultListener r5, ResultCodeProcessor r6, MonitorStruct r7, String r8) {
        r0.b(r1, r2, r3, r4, r5, r6, r7, r8);     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        a.a(th);
    }

    private void b(String r14, String r15, String r16, String r17, TokenResultListener r18, ResultCodeProcessor r19, MonitorStruct r20, String r21) {
        this.f13209g.j();     // Catch: Throwable -> L5
        a(false, true, r14, r15, r16, r17, r20, r18, r19, r21);     // Catch: Throwable -> L5
        return;
    L5:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L8
        return;
    L8:
        th = move-exception;
        a.a(th);
    }

    static /* synthetic */ void c(PhoneNumberAuthHelperProxy r0) {
        r0.f();     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        a.a(th);
    }

    private void d() {
        this.k.b();     // Catch: Throwable -> L6
        this.k.c();     // Catch: Throwable -> L6
        if (this.f13206d.t() == false) goto L16;
        this.f13209g.a(this.f13206d.u());     // Catch: Throwable -> L6
        return;
    L16:
        return;
    L6:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L9
        return;
    L9:
        th = move-exception;
        a.a(th);
    }

    static /* synthetic */ void d(PhoneNumberAuthHelperProxy r0) {
        r0.d();     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        a.a(th);
    }

    static /* synthetic */ VendorSdkInfoManager e(PhoneNumberAuthHelperProxy r1) {
        return r1.f13207e;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        a.a(th);
        return null;
    }

    private Future e() {
        return com.mobile.auth.gatewayauth.utils.b.a(new AnonymousClass12(this));
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        a.a(th);
        return null;
    }

    static /* synthetic */ f f(PhoneNumberAuthHelperProxy r1) {
        return r1.i;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        a.a(th);
        return null;
    }

    private void f() {
    L8:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L11
        return;
    L11:
        th = move-exception;
        a.a(th);
        return;
    L3:
        if (this.f13206d.d() == false) goto L5;
        return;
    L5:
        if (FeatureManager.getInstance().get(FeatureManager.FEATURE_KEY_CRASH) != null) goto L19;
        long r0 = System.currentTimeMillis();     // Catch: Throwable -> L8
        boolean r2 = this.f13210h.loadCrashComponent();     // Catch: Throwable -> L8
        this.k.a(this.f13209g.b(this.c.c(), Constant.ACTION_SDK_CRASH, UStruct.newUStruct().startTime(r0).endTime(System.currentTimeMillis()).isCrashDependencied(String.valueOf(r2)).isSuccess(r2).build(), ""), 2);     // Catch: Throwable -> L8
        return;
    }

    static /* synthetic */ com.mobile.auth.o.a g(PhoneNumberAuthHelperProxy r1) {
        return r1.k;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        a.a(th);
        return null;
    }

    @AuthNumber
    public static PhoneNumberAuthHelperProxy getInstance(Context r2, TokenResultListener r3) {
    L17:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L21
        return null;
    L21:
        th = move-exception;
        a.a(th);
        return null;
    L3:
        if (f13205a != null) goto L15;
        if (r2 == null) goto L15;
        monitor-enter(PhoneNumberAuthHelperProxy.class);     // Catch: Throwable -> L17
    L12:
        th = move-exception;
        throw th;     // Catch: Throwable -> L17
    L8:
        if (f13205a != null) goto L10;
        f13205a = new PhoneNumberAuthHelperProxy(r2, r3);     // Catch: Throwable -> L12
    L10:
        monitor-exit(PhoneNumberAuthHelperProxy.class);     // Catch: Throwable -> L12
    L15:
        f13205a.setAuthListener(r3);     // Catch: Throwable -> L17
        return f13205a;
    }

    /* JADX WARN: Unreachable blocks removed: 7, instructions: 7 */
    @AuthNumber
    public static String getVersion() {
        return BuildConfig.VERSION_NAME;
    }

    static /* synthetic */ ResultCodeProcessor h(PhoneNumberAuthHelperProxy r1) {
        return r1.m;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        a.a(th);
        return null;
    }

    static /* synthetic */ com.mobile.auth.gatewayauth.manager.d i(PhoneNumberAuthHelperProxy r1) {
        return r1.f13209g;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        a.a(th);
        return null;
    }

    static /* synthetic */ ResultCodeProcessor j(PhoneNumberAuthHelperProxy r1) {
        return r1.n;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        a.a(th);
        return null;
    }

    @SafeProtector
    private native void justGetLoginPhone(MonitorStruct r1, String r2, int r3, ResultCodeProcessor r4, boolean r5, RequestCallback<LoginPhoneInfo, com.mobile.auth.gatewayauth.manager.base.c> r6, String r7, String r8, int r9);

    @SafeProtector
    private native void justGetLoginToken(long r1, TokenResultListener r3, ResultCodeProcessor r4);

    @SafeProtector
    private native void justGetToken(int r1, ResultCodeProcessor r2, boolean r3, TokenResultListener r4);

    @SafeProtector
    private native void justPreLogin(long r1, PreLoginResultListener r3, ResultCodeProcessor r4, boolean r5, boolean r6);

    @SafeProtector
    private native void justPreVerify(long r1, PreLoginResultListener r3);

    static /* synthetic */ Future k(PhoneNumberAuthHelperProxy r1) {
        return r1.j;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        a.a(th);
        return null;
    }

    protected SystemManager a() {
        return this.c;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        a.a(th);
        return null;
    }

    void a(final long r9, final TokenResultListener r11, final ResultCodeProcessor r12) {
        com.mobile.auth.gatewayauth.utils.b.a(new AnonymousClass3(this, r11, r9, r11, r12));     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        a.a(th);
    }

    protected void a(String r8, String r9, MonitorStruct r10, ResultCodeProcessor r11, TokenResultListener r12) {
        if (r12 != null) goto L14;
        return;
    L14:
        TokenRet r13 = r11.convertErrorInfo(Constant.CODE_GET_TOKEN_SUCCESS, "获取token成功", r9);     // Catch: Throwable -> L6
        r13.setToken(r8);     // Catch: Throwable -> L6
        r13.setRequestId(r10.getRequestId());     // Catch: Throwable -> L6
        r10.setAccessCode(r8);     // Catch: Throwable -> L6
        r10.setAuthSdkCode(r13.getCode());     // Catch: Throwable -> L6
        a(true, true, "", r13.toJsonString(), r10, r12);     // Catch: Throwable -> L6
        return;
    L6:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L9
        return;
    L9:
        th = move-exception;
        a.a(th);
    }

    protected void a(boolean r9, boolean r10, String r11, String r12, String r13, String r14, MonitorStruct r15, TokenResultListener r16, ResultCodeProcessor r17, String r18) {
        TokenRet r2 = r17.convertErrorInfo(r11, r12, r14);     // Catch: Throwable -> L8
        if (r15 == null) goto L6;
        r15.setAuthSdkCode(r2.getCode());     // Catch: Throwable -> L8
        r2.setCarrierFailedResultData(r15.getCarrierFailedResultData());     // Catch: Throwable -> L8
    L6:
        r2.setRequestId(r18);     // Catch: Throwable -> L8
        a(r9, r10, r13, r2.toJsonString(), r15, r16);     // Catch: Throwable -> L8
        return;
    L8:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L11
        return;
    L11:
        th = move-exception;
        a.a(th);
    }

    @AuthNumber
    public void accelerateLoginPage(final int r8, final PreLoginResultListener r9, final boolean r10) {
        final TokenResultListener r2 = this.b;     // Catch: Throwable -> L4
        com.mobile.auth.gatewayauth.utils.b.a(new AnonymousClass9(this, r2, r8, r9, r10));     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        a.a(th);
    }

    @AuthNumber
    public void accelerateVerify(final int r3, final PreLoginResultListener r4) {
        final TokenResultListener r0 = new AnonymousClass10(this, r4);     // Catch: Throwable -> L4
        com.mobile.auth.gatewayauth.utils.b.a(new AnonymousClass11(this, r0, r3, r4));     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        a.a(th);
    }

    protected com.mobile.auth.gatewayauth.manager.d b() {
        return this.f13209g;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        a.a(th);
        return null;
    }

    protected com.mobile.auth.o.a c() {
        return this.k;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        a.a(th);
        return null;
    }

    @AuthNumber
    @Deprecated
    public InitResult checkAuthEnvEnable() {
        String r0 = "";
        String r1 = this.f13209g.k();     // Catch: Throwable -> L39
        InitResult r2 = new InitResult();     // Catch: Throwable -> L39
        MonitorStruct r3 = new MonitorStruct();     // Catch: Throwable -> L39
        r3.setAction(Constant.ACTION_CHECK);     // Catch: Throwable -> L39
        r3.setStartTime(System.currentTimeMillis());     // Catch: Throwable -> L39
        r3.setApiLevel(this.m.getApiLevel());     // Catch: Throwable -> L39
        r3.setUrgency(2);     // Catch: Throwable -> L39
        r3.setRequestId(r1);     // Catch: Throwable -> L39
        r2.setSimPhoneNumber("");     // Catch: Throwable -> L28 Exception -> L30
        boolean r5 = this.c.d();     // Catch: Throwable -> L28 Exception -> L30
        boolean r6 = this.c.e();     // Catch: Throwable -> L28 Exception -> L30
        com.mobile.auth.gatewayauth.manager.a r7 = this.i.a(this.c.c());     // Catch: Throwable -> L28 Exception -> L30
        if (r5 == false) goto L10;
        if (r6 == false) goto L10;
        if (r7 == null) goto L10;
        boolean r8 = true;
    L11:
        r2.setCan4GAuth(r8);     // Catch: Throwable -> L28 Exception -> L30
        if (r2.isCan4GAuth() == true) goto L18;
        String r9 = "can4gAuth:can not 4g";
        r3.setAuthSdkCode(Constant.CODE_ERROR_NO_MOBILE_NETWORK_FAIL);     // Catch: Exception -> L16 Throwable -> L36
    L21:
        if (r2.isCan4GAuth() == true) goto L23;
    L25:
        this.k.a(new String[]{"checkEnvAvailable ret = ", r2.toString(), "; hasSimCard = ", String.valueOf(r5), "; isMobileNetworkOpen = ", String.valueOf(r6)});     // Catch: Exception -> L16 Throwable -> L36
        a(r9, TextUtils.isEmpty(r9), r3, true);     // Catch: Throwable -> L39
    L35:
        return r2;
    L23:
        if (this.f13207e.b() == true) goto L25;
        this.f13207e.a("", new AnonymousClass31(this), com.mobile.auth.gatewayauth.manager.e.a(this.c.g(), this.f13207e, this.f13206d, this.k));     // Catch: Exception -> L16 Throwable -> L36
    L16:
        Exception e2 = e;
    L32:
        e2.printStackTrace();     // Catch: Throwable -> L36
        r3.setAuthSdkCode(Constant.CODE_ERROR_UNKNOWN_FAIL);     // Catch: Throwable -> L36
        r0 = com.mobile.auth.gatewayauth.utils.b.b(e2);     // Catch: Throwable -> L36
        com.mobile.auth.gatewayauth.utils.f.c(r0);     // Catch: Throwable -> L28
        a(r0, TextUtils.isEmpty(r0), r3, true);     // Catch: Throwable -> L39
        goto L35
    L18:
        r3.setAuthSdkCode(Constant.CODE_GET_TOKEN_SUCCESS);     // Catch: Throwable -> L28 Exception -> L30
        r9 = "";
    L10:
        r8 = false;
    L36:
        Throwable th = th;
    L37:
        a(r7, TextUtils.isEmpty(r7), r3, true);     // Catch: Throwable -> L39
        throw th;     // Catch: Throwable -> L39
    L30:
        e = move-exception;
        e2 = e;
    L28:
        th = move-exception;
        String r10 = r0;
        th = th;
    L39:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L43
        return null;
    L43:
        th = move-exception;
        a.a(th);
        return null;
    }

    @AuthNumber
    public void checkEnvAvailable(final int r2, final TokenResultListener r3) {
        com.mobile.auth.gatewayauth.utils.b.a(new AnonymousClass30(this, r2, r3));     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        a.a(th);
    }

    @AuthNumber
    @Deprecated
    public boolean checkEnvAvailable() {
        String r11 = this.f13209g.k();     // Catch: Throwable -> L61
        MonitorStruct r8 = new MonitorStruct();     // Catch: Throwable -> L61
        r8.setAction(Constant.ACTION_CHECK);     // Catch: Throwable -> L61
        r8.setStartTime(System.currentTimeMillis());     // Catch: Throwable -> L61
        r8.setApiLevel(this.n.getApiLevel());     // Catch: Throwable -> L61
        r8.setUrgency(2);     // Catch: Throwable -> L61
        r8.setRequestId(r11);     // Catch: Throwable -> L61
        TokenRet r1 = null;
        TokenRet r17 = this.c.a(this.n, true);     // Catch: Throwable -> L43 Exception -> L46
        if (r17 == null) goto L13;
        if (r17 != null) goto L9;
        a(true, true, "", "", "", "", r8, null, this.n, r11);     // Catch: Throwable -> L61
        return false;
    L9:
        a(false, true, r17.getCode(), r17.getMsg(), com.mobile.auth.gatewayauth.utils.a.a(r17.getCode(), r17.getMsg()), r17.getVendorName(), r8, null, this.n, r11);     // Catch: Throwable -> L61
        this.k.d(new String[]{"checkEnvAvailable code = ", r17.getCode(), "; msg = ", r17.getMsg()});     // Catch: Throwable -> L61
        return false;
    L13:
        int r15 = 4;
        char r18 = 2;
        char r20 = 1;
    L41:
        e = e;
        r1 = r17;
    L68:
        e.printStackTrace();     // Catch: Throwable -> L55
        TokenRet r0 = this.n.convertErrorInfo(ResultCode.CODE_ERROR_UNKNOWN_FAIL, com.mobile.auth.gatewayauth.utils.b.b(e), this.c.c());     // Catch: Throwable -> L55
        if (r0 != null) goto L51;
        a(true, true, "", "", "", "", r8, null, this.n, r11);     // Catch: Throwable -> L61
        return false;
    L51:
        a(false, true, r0.getCode(), r0.getMsg(), com.mobile.auth.gatewayauth.utils.a.a(r0.getCode(), r0.getMsg()), r0.getVendorName(), r8, null, this.n, r11);     // Catch: Throwable -> L61
        com.mobile.auth.o.a r2 = this.k;     // Catch: Throwable -> L61
        String[] r3 = new String[r15];     // Catch: Throwable -> L61
        r3[0] = "checkEnvAvailable code = ";     // Catch: Throwable -> L61
        r3[r20] = r0.getCode();     // Catch: Throwable -> L61
        r3[r18] = "; msg = ";     // Catch: Throwable -> L61
        r3[3] = r0.getMsg();     // Catch: Throwable -> L61
        r2.d(r3);     // Catch: Throwable -> L61
        return false;
    L55:
        th = th;
    L45:
        r17 = r1;
    L57:
        if (r17 == null) goto L59;
        a(false, true, r17.getCode(), r17.getMsg(), com.mobile.auth.gatewayauth.utils.a.a(r17.getCode(), r17.getMsg()), r17.getVendorName(), r8, null, this.n, r11);
        com.mobile.auth.o.a r4 = this.k;
        String[] r5 = new String[r15];
        r5[0] = "checkEnvAvailable code = ";
        r5[r20] = r17.getCode();
        r5[r18] = "; msg = ";
        r5[3] = r17.getMsg();
        r4.d(r5);
    L60:
        throw th;
    L59:
        a(true, true, "", "", "", "", r8, null, this.n, r11);
    L39:
        th = th;
        goto L57
    L15:
        if (this.f13207e.a() == true) goto L24;
        TokenRet r19 = this.n.convertErrorInfo(ResultCode.CODE_ERROR_ANALYZE_SDK_INFO, ResultCode.MSG_ERROR_ANALYZE_SDK_INFO, this.c.c());     // Catch: Throwable -> L39 Exception -> L41
        this.k.d(new String[]{"checkEnvAvailable failed! Has no sceneCode!"});     // Catch: Throwable -> L39 Exception -> L41
        if (r19 != null) goto L19;
        a(true, true, "", "", "", "", r8, null, this.n, r11);     // Catch: Throwable -> L61
        return false;
    L19:
        a(false, true, r19.getCode(), r19.getMsg(), com.mobile.auth.gatewayauth.utils.a.a(r19.getCode(), r19.getMsg()), r19.getVendorName(), r8, null, this.n, r11);     // Catch: Throwable -> L61
        this.k.d(new String[]{"checkEnvAvailable code = ", r19.getCode(), "; msg = ", r19.getMsg()});     // Catch: Throwable -> L61
        return false;
    L24:
        if (this.f13207e.b() == true) goto L26;
        this.f13207e.a("", new AnonymousClass29(this), com.mobile.auth.gatewayauth.manager.e.a(this.c.g(), this.f13207e, this.f13206d, this.k));     // Catch: Throwable -> L39 Exception -> L41
    L26:
        String r6 = this.c.c();     // Catch: Throwable -> L39 Exception -> L41
        if (this.i.a(r6) != null) goto L35;
        TokenRet r110 = this.n.convertErrorInfo(ResultCode.CODE_ERROR_OPERATOR_UNKNOWN_FAIL, "无法判运营商", r6);     // Catch: Throwable -> L39 Exception -> L41
        this.k.d(new String[]{"checkEnvAvailable failed! Unsupported Vendor!"});     // Catch: Throwable -> L39 Exception -> L41
        if (r110 != null) goto L31;
        a(true, true, "", "", "", "", r8, null, this.n, r11);     // Catch: Throwable -> L61
        return false;
    L31:
        a(false, true, r110.getCode(), r110.getMsg(), com.mobile.auth.gatewayauth.utils.a.a(r110.getCode(), r110.getMsg()), r110.getVendorName(), r8, null, this.n, r11);     // Catch: Throwable -> L61
        this.k.d(new String[]{"checkEnvAvailable code = ", r110.getCode(), "; msg = ", r110.getMsg()});     // Catch: Throwable -> L61
        return false;
    L35:
        if (r17 == null) goto L37;
        a(false, true, r17.getCode(), r17.getMsg(), com.mobile.auth.gatewayauth.utils.a.a(r17.getCode(), r17.getMsg()), r17.getVendorName(), r8, null, this.n, r11);     // Catch: Throwable -> L61
        this.k.d(new String[]{"checkEnvAvailable code = ", r17.getCode(), "; msg = ", r17.getMsg()});     // Catch: Throwable -> L61
    L38:
        return true;
    L37:
        a(true, true, "", "", "", "", r8, null, this.n, r11);     // Catch: Throwable -> L61
        goto L38
    L46:
        e = e;
        r15 = 4;
        r18 = 2;
        r20 = 1;
    L43:
        th = th;
        r15 = 4;
        r18 = 2;
        r20 = 1;
    L61:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L65
        return false;
    L65:
        th = move-exception;
        a.a(th);
        return false;
    }

    @AuthNumber
    public void clearPreInfo() {
        this.f13208f.a();     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        a.a(th);
    }

    @AuthNumber
    @Deprecated
    public void getAuthToken(final int r2, final TokenResultListener r3) {
        com.mobile.auth.gatewayauth.utils.b.a(new AnonymousClass2(this, r3, r2, r3));     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        a.a(th);
    }

    @AuthNumber
    public String getCurrentCarrierName() {
        return this.c.f();
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        a.a(th);
        return null;
    }

    @AuthNumber
    public String getLoginMaskPhone(int r14, final String r15, final OnLoginPhoneListener r16, final boolean r17, boolean r18, final String r19) {
        final MonitorStruct r0 = new MonitorStruct();     // Catch: Throwable -> L5
        String r9 = this.f13209g.g();     // Catch: Throwable -> L5
        r0.setStartTime(System.currentTimeMillis());     // Catch: Throwable -> L5
        justGetLoginPhone(r0, r15, r14, this.n, r18, new AnonymousClass17(this, r15, r17, r0, r19, r16), r19, r9, 6);     // Catch: Throwable -> L5
        return r19;
    L5:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L9
        return null;
    L9:
        th = move-exception;
        a.a(th);
        return null;
    }

    @AuthNumber
    public PnsReporter getReporter() {
        return this.f13209g.b();
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        a.a(th);
        return null;
    }

    @AuthNumber
    public void getVerifyToken(final int r2, final TokenResultListener r3) {
        com.mobile.auth.gatewayauth.utils.b.a(new AnonymousClass32(this, r3, r2, r3));     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        a.a(th);
    }

    @AuthNumber
    @Deprecated
    public void onDestroy() {
        final long r2 = System.currentTimeMillis();     // Catch: Throwable -> L7
        this.b = null;     // Catch: Throwable -> L7
        if (f13205a == null) goto L5;
        f13205a = null;     // Catch: Throwable -> L7
    L5:
        final long r4 = System.currentTimeMillis();     // Catch: Throwable -> L7
        com.mobile.auth.gatewayauth.utils.b.a(new AnonymousClass23(this, r2, r4));     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L10
        return;
    L10:
        th = move-exception;
        a.a(th);
    }

    @AuthNumber
    @Deprecated
    public void preLogin(int r2, final PreLoginResultListener r3, final boolean r4) {
        final TokenResultListener r0 = this.b;     // Catch: Throwable -> L4
        com.mobile.auth.gatewayauth.utils.b.a(new AnonymousClass8(this, r0, r3, r4));     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        a.a(th);
    }

    @AuthNumber
    public void setAuthListener(TokenResultListener r1) {
        this.b = r1;     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        a.a(th);
    }

    @AuthNumber
    public void setAuthSDKInfo(String r7) {
        this.k.a(new String[]{"setAuthSDKInfo secretInfo = ", r7});     // Catch: Throwable -> L8
        this.c.a(r7);     // Catch: Throwable -> L8
        this.f13207e.setLocalVendorSdkInfo(r7);     // Catch: Throwable -> L8
        if (this.i.a(this.f13207e) == true) goto L6;
        this.k.d(new String[]{"VendorSdkFactor update local VendorConfig failed!"});     // Catch: Throwable -> L8
        return;
    L6:
        this.f13207e.a("", new AnonymousClass16(this), com.mobile.auth.gatewayauth.manager.e.a(this.c.g(), this.f13207e, this.f13206d, this.k));     // Catch: Throwable -> L8
        return;
    L8:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L11
        return;
    L11:
        th = move-exception;
        a.a(th);
    }

    @AuthNumber
    @Deprecated
    public void setDebugMode(boolean r10) {
        long r0 = System.currentTimeMillis();     // Catch: Throwable -> L4
        com.mobile.auth.gatewayauth.utils.f.a(r10);     // Catch: Throwable -> L4
        long r2 = System.currentTimeMillis();     // Catch: Throwable -> L4
        this.k.a(this.f13209g.b("", Constant.ACTION_SDK_DEBUG_MODE, UStruct.newUStruct().startTime(r0).putApiParams(Constant.API_PARAMS_KEY_ENABLE, String.valueOf(r10)).endTime(r2).build(), this.m.getApiLevel()), 2);     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        a.a(th);
    }

    @AuthNumber
    @Deprecated
    public void setLoggerEnable(final boolean r9) {
        final long r2 = System.currentTimeMillis();     // Catch: Throwable -> L4
        com.mobile.auth.gatewayauth.utils.f.a(r9);     // Catch: Throwable -> L4
        final long r5 = System.currentTimeMillis();     // Catch: Throwable -> L4
        com.mobile.auth.gatewayauth.utils.b.a(new AnonymousClass26(this, r2, r9, r5));     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        a.a(th);
    }

    @AuthNumber
    @Deprecated
    public void setUploadEnable(final boolean r9) {
        final long r2 = System.currentTimeMillis();     // Catch: Throwable -> L4
        com.mobile.auth.gatewayauth.utils.f.b(r9);     // Catch: Throwable -> L4
        final long r4 = System.currentTimeMillis();     // Catch: Throwable -> L4
        com.mobile.auth.gatewayauth.utils.b.a(new AnonymousClass28(this, r2, r4, r9));     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        a.a(th);
    }
}
