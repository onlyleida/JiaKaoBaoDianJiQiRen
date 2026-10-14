package com.mobile.auth.gatewayauth.manager;

import android.text.TextUtils;
import android.util.LruCache;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.mobile.auth.gatewayauth.Constant;
import com.mobile.auth.gatewayauth.ResultCode;
import com.mobile.auth.gatewayauth.annotations.SafeProtector;
import com.mobile.auth.gatewayauth.manager.base.CacheKey;
import com.mobile.auth.gatewayauth.model.LoginPhoneInfo;
import com.mobile.auth.gatewayauth.utils.TokenGenerator;
import com.nirvana.tools.cache.CacheHandler;
import com.nirvana.tools.cache.CacheManager;
import com.nirvana.tools.jsoner.JsonType;
import com.nirvana.tools.requestqueue.Callback;
import com.nirvana.tools.requestqueue.RequestQueue;
import com.nirvana.tools.requestqueue.Response;
import com.nirvana.tools.requestqueue.strategy.ThreadStrategy;
import com.tencent.bugly.Bugly;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class TokenMaskManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f13335a;
    private SystemManager b;
    private d c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private VendorSdkInfoManager f13336d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private f f13337e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TokenGenerator f13338f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.mobile.auth.o.a f13339g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile Map<String, LoginPhoneInfo> f13340h = new ConcurrentHashMap();
    private volatile com.mobile.auth.gatewayauth.manager.base.a<LoginPhoneInfo> i = null;
    private volatile LruCache<String, com.mobile.auth.gatewayauth.manager.base.a<String>> j = new LruCache<>(10);
    private volatile LruCache<String, com.mobile.auth.gatewayauth.manager.base.a<String>> k = new LruCache<>(10);
    private CacheHandler l;
    private CacheHandler m;
    private CacheHandler n;
    private CacheHandler o;
    private CacheManager p;

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.manager.TokenMaskManager$11, reason: invalid class name */
    class AnonymousClass11 extends Callback<com.mobile.auth.u.e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f13343a;
        final /* synthetic */ RequestCallback b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass11(ThreadStrategy threadStrategy, long j, String str, RequestCallback requestCallback) {
            super(threadStrategy, j);
            this.f13343a = str;
            this.b = requestCallback;
        }

        public void a(com.mobile.auth.u.e eVar) {
            try {
                TokenMaskManager.d(TokenMaskManager.this).a("Update LoginToken from network!");
                if (eVar.a()) {
                    eVar.b().a(TokenMaskManager.a(TokenMaskManager.this, eVar.b().d(), this.f13343a, true));
                    this.b.onSuccess(eVar.b());
                } else {
                    com.mobile.auth.gatewayauth.manager.base.c cVarB = eVar.b();
                    if (cVarB == null) {
                        cVarB = com.mobile.auth.gatewayauth.manager.base.c.a(ResultCode.CODE_ERROR_UNKNOWN_FAIL, "未知异常");
                    }
                    this.b.onError(cVarB);
                }
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                }
            }
        }

        @Override // com.nirvana.tools.requestqueue.Callback
        public /* synthetic */ void onResult(Response response) {
            try {
                a((com.mobile.auth.u.e) response);
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.manager.TokenMaskManager$12, reason: invalid class name */
    class AnonymousClass12 extends com.mobile.auth.p.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f13344a;
        final /* synthetic */ String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass12(f fVar, String str, String str2, String str3) {
            super(fVar, str);
            this.f13344a = str2;
            this.b = str3;
        }

        @Override // com.mobile.auth.p.e
        public void a(RequestCallback requestCallback, a aVar) {
            try {
                aVar.b(requestCallback, a.b.a().a(this.f13344a).b(this.b).a());
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.manager.TokenMaskManager$13, reason: invalid class name */
    class AnonymousClass13 extends Callback<com.mobile.auth.u.f> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f13345a;
        final /* synthetic */ RequestCallback b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass13(ThreadStrategy threadStrategy, long j, String str, RequestCallback requestCallback) {
            super(threadStrategy, j);
            this.f13345a = str;
            this.b = requestCallback;
        }

        public void a(com.mobile.auth.u.f fVar) {
            try {
                TokenMaskManager.d(TokenMaskManager.this).a("Update VerifyToken from network!");
                if (fVar.a()) {
                    fVar.b().a(TokenMaskManager.a(TokenMaskManager.this, fVar.b().d(), this.f13345a, false));
                    this.b.onSuccess(fVar.b());
                } else {
                    com.mobile.auth.gatewayauth.manager.base.c cVarB = fVar.b();
                    if (cVarB == null) {
                        cVarB = com.mobile.auth.gatewayauth.manager.base.c.a(ResultCode.CODE_ERROR_UNKNOWN_FAIL, "未知异常");
                    }
                    this.b.onError(cVarB);
                }
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                }
            }
        }

        @Override // com.nirvana.tools.requestqueue.Callback
        public /* synthetic */ void onResult(Response response) {
            try {
                a((com.mobile.auth.u.f) response);
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.manager.TokenMaskManager$2, reason: invalid class name */
    class AnonymousClass2 extends Callback<com.mobile.auth.u.f> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f13346a;
        final /* synthetic */ String b;
        final /* synthetic */ CacheKey c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ RequestCallback f13347d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(ThreadStrategy threadStrategy, long j, String str, String str2, CacheKey cacheKey, RequestCallback requestCallback) {
            super(threadStrategy, j);
            this.f13346a = str;
            this.b = str2;
            this.c = cacheKey;
            this.f13347d = requestCallback;
        }

        public void a(com.mobile.auth.u.f fVar) {
            try {
                TokenMaskManager.d(TokenMaskManager.this).a("Update VerifyToken from network!");
                if (fVar.a()) {
                    fVar.b().a(Math.min(System.currentTimeMillis() + 86400000, fVar.b().f()));
                    TokenMaskManager.b(TokenMaskManager.this, this.f13346a, this.b, this.c, fVar.b().d(), fVar.b().f());
                    this.f13347d.onSuccess(Bugly.SDK_IS_DEV);
                } else {
                    com.mobile.auth.gatewayauth.manager.base.c cVarB = fVar.b();
                    if (cVarB == null) {
                        cVarB = com.mobile.auth.gatewayauth.manager.base.c.a(ResultCode.CODE_ERROR_UNKNOWN_FAIL, "未知异常");
                    }
                    this.f13347d.onError(cVarB);
                }
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                }
            }
        }

        @Override // com.nirvana.tools.requestqueue.Callback
        public /* synthetic */ void onResult(Response response) {
            try {
                a((com.mobile.auth.u.f) response);
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.manager.TokenMaskManager$3, reason: invalid class name */
    class AnonymousClass3 extends JsonType<LoginPhoneInfo> {
        AnonymousClass3() {
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.manager.TokenMaskManager$4, reason: invalid class name */
    class AnonymousClass4 extends JsonType<String> {
        AnonymousClass4() {
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.manager.TokenMaskManager$5, reason: invalid class name */
    class AnonymousClass5 extends JsonType<String> {
        AnonymousClass5() {
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.manager.TokenMaskManager$6, reason: invalid class name */
    class AnonymousClass6 implements Runnable {
        AnonymousClass6() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                TokenMaskManager.g(TokenMaskManager.this).save(TokenMaskManager.f(TokenMaskManager.this).encryptContent(TokenMaskManager.e(TokenMaskManager.this).f().toString()));
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.manager.TokenMaskManager$7, reason: invalid class name */
    class AnonymousClass7 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ JSONObject f13353a;

        AnonymousClass7(JSONObject jSONObject) {
            this.f13353a = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                TokenMaskManager.h(TokenMaskManager.this).save(TokenMaskManager.f(TokenMaskManager.this).encryptContent(this.f13353a.toString()));
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.manager.TokenMaskManager$8, reason: invalid class name */
    class AnonymousClass8 implements RequestCallback<com.mobile.auth.u.e, com.mobile.auth.gatewayauth.manager.base.c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CacheKey f13354a;
        final /* synthetic */ String b;
        final /* synthetic */ RequestCallback c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f13355d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ CacheKey f13356e;

        AnonymousClass8(CacheKey cacheKey, String str, RequestCallback requestCallback, String str2, CacheKey cacheKey2) {
            this.f13354a = cacheKey;
            this.b = str;
            this.c = requestCallback;
            this.f13355d = str2;
            this.f13356e = cacheKey2;
        }

        public void a(com.mobile.auth.gatewayauth.manager.base.c cVar) {
            if (cVar == null) {
                try {
                    cVar = com.mobile.auth.gatewayauth.manager.base.c.a(ResultCode.CODE_ERROR_UNKNOWN_FAIL, "未知异常");
                } catch (Throwable th) {
                    try {
                        com.mobile.auth.gatewayauth.a.a(th);
                        return;
                    } catch (Throwable th2) {
                        com.mobile.auth.gatewayauth.a.a(th2);
                        return;
                    }
                }
            }
            this.c.onError(cVar);
        }

        public void a(com.mobile.auth.u.e eVar) {
            try {
                LoginPhoneInfo loginPhoneInfoBuild = LoginPhoneInfo.newLoginPhoneInfo().protocolName(eVar.c().e()).protocolUrl(eVar.c().f()).phoneNumber(eVar.c().b()).build();
                TokenMaskManager.a(TokenMaskManager.this, this.f13354a, loginPhoneInfoBuild, this.b);
                this.c.onSuccess(com.mobile.auth.gatewayauth.manager.base.c.a().a(false).a(loginPhoneInfoBuild).a());
                eVar.b().a(Math.min(System.currentTimeMillis() + 86400000, eVar.b().f()));
                if (TextUtils.isEmpty(eVar.b().d())) {
                    return;
                }
                TokenMaskManager.a(TokenMaskManager.this, this.f13355d, this.b, this.f13356e, eVar.b().d(), eVar.b().f());
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                }
            }
        }

        @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
        public /* synthetic */ void onError(com.mobile.auth.gatewayauth.manager.base.c cVar) {
            try {
                a(cVar);
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                }
            }
        }

        @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
        public /* synthetic */ void onSuccess(com.mobile.auth.u.e eVar) {
            try {
                a(eVar);
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                }
            }
        }
    }

    static {
        System.loadLibrary("auth_number_product-2.12.1.2-log-online-standard-release_alijtca_plus");
    }

    public TokenMaskManager(b bVar, SystemManager systemManager, d dVar, f fVar, VendorSdkInfoManager vendorSdkInfoManager) {
        this.f13335a = bVar;
        this.b = systemManager;
        this.c = dVar;
        this.f13339g = dVar.a();
        this.f13336d = vendorSdkInfoManager;
        this.f13337e = fVar;
        this.f13338f = new TokenGenerator(this.f13339g, this.b, this.f13336d);
        this.p = CacheManager.getInstance(this.b.g());
        b();
        com.mobile.auth.gatewayauth.utils.b.a(new Runnable() { // from class: com.mobile.auth.gatewayauth.manager.TokenMaskManager.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    TokenMaskManager.a(TokenMaskManager.this);
                    TokenMaskManager.b(TokenMaskManager.this);
                    TokenMaskManager.c(TokenMaskManager.this);
                } catch (Throwable th) {
                    try {
                        com.mobile.auth.gatewayauth.a.a(th);
                    } catch (Throwable th2) {
                        com.mobile.auth.gatewayauth.a.a(th2);
                    }
                }
            }
        });
    }

    static /* synthetic */ String a(TokenMaskManager tokenMaskManager, String str, String str2, boolean z) {
        try {
            return tokenMaskManager.a(str, str2, z);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    private native String a(String str, CacheKey cacheKey, long j);

    private native String a(String str, String str2, CacheKey cacheKey, long j);

    private native String a(String str, String str2, boolean z);

    static /* synthetic */ void a(TokenMaskManager tokenMaskManager) {
        try {
            tokenMaskManager.c();
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    static /* synthetic */ void a(TokenMaskManager tokenMaskManager, CacheKey cacheKey, LoginPhoneInfo loginPhoneInfo, String str) {
        try {
            tokenMaskManager.a(cacheKey, loginPhoneInfo, str);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    static /* synthetic */ void a(TokenMaskManager tokenMaskManager, String str, String str2, CacheKey cacheKey, String str3, long j) {
        try {
            tokenMaskManager.b(str, str2, cacheKey, str3, j);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    private native synchronized void a(CacheKey cacheKey, LoginPhoneInfo loginPhoneInfo, String str);

    private native synchronized void a(String str, String str2, CacheKey cacheKey, String str3, long j);

    private native boolean a(String str, String str2, long j);

    private native synchronized boolean a(String str, String str2, LruCache<String, com.mobile.auth.gatewayauth.manager.base.a<String>> lruCache, long j);

    private native void b();

    static /* synthetic */ void b(TokenMaskManager tokenMaskManager) {
        try {
            tokenMaskManager.d();
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    static /* synthetic */ void b(TokenMaskManager tokenMaskManager, String str, String str2, CacheKey cacheKey, String str3, long j) {
        try {
            tokenMaskManager.a(str, str2, cacheKey, str3, j);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    private native synchronized void b(String str, String str2, CacheKey cacheKey, String str3, long j);

    private native boolean b(CacheKey cacheKey);

    private native synchronized void c();

    static /* synthetic */ void c(TokenMaskManager tokenMaskManager) {
        try {
            tokenMaskManager.e();
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    static /* synthetic */ com.mobile.auth.o.a d(TokenMaskManager tokenMaskManager) {
        try {
            return tokenMaskManager.f13339g;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    private native synchronized void d();

    static /* synthetic */ com.mobile.auth.gatewayauth.manager.base.a e(TokenMaskManager tokenMaskManager) {
        try {
            return tokenMaskManager.i;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    private native synchronized void e();

    static /* synthetic */ SystemManager f(TokenMaskManager tokenMaskManager) {
        try {
            return tokenMaskManager.b;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    private native synchronized void f();

    static /* synthetic */ CacheHandler g(TokenMaskManager tokenMaskManager) {
        try {
            return tokenMaskManager.o;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    private native synchronized void g();

    static /* synthetic */ CacheHandler h(TokenMaskManager tokenMaskManager) {
        try {
            return tokenMaskManager.n;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    private native synchronized void h();

    @SafeProtector
    private native synchronized String popToken(String str, CacheKey cacheKey, CacheHandler cacheHandler, LruCache<String, com.mobile.auth.gatewayauth.manager.base.a<String>> lruCache, long j);

    @SafeProtector
    private void requestMask(long j, String str, final RequestCallback<com.mobile.auth.u.e, com.mobile.auth.gatewayauth.manager.base.c> requestCallback, CacheKey cacheKey, String str2, int i, final String str3, final String str4) {
        try {
            if (this.f13335a.a(i)) {
                requestCallback.onError(com.mobile.auth.gatewayauth.manager.base.c.a(Constant.CODE_ERROR_FUNCTION_LIMIT, "该功能已达最大调用次数"));
                return;
            }
            this.f13335a.b(i);
            RequestQueue.getInstance().pushRequest(new com.mobile.auth.t.c(new com.mobile.auth.p.e(this.f13337e, str) { // from class: com.mobile.auth.gatewayauth.manager.TokenMaskManager.10
                @Override // com.mobile.auth.p.e
                public void a(RequestCallback requestCallback2, a aVar) {
                    try {
                        aVar.a((RequestCallback<a.C0256a, com.mobile.auth.gatewayauth.manager.base.c>) requestCallback2, a.b.a().a(str3).b(str4).a());
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }
            }, new Callback<com.mobile.auth.u.e>(ThreadStrategy.SAME_WITH_CALLABLE, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS) { // from class: com.mobile.auth.gatewayauth.manager.TokenMaskManager.9
                public void a(com.mobile.auth.u.e eVar) {
                    try {
                        if (eVar.a()) {
                            requestCallback.onSuccess(eVar);
                            return;
                        }
                        com.mobile.auth.gatewayauth.manager.base.c cVarB = eVar.b();
                        if (cVarB == null) {
                            cVarB = com.mobile.auth.gatewayauth.manager.base.c.a(ResultCode.CODE_ERROR_UNKNOWN_FAIL, "未知异常");
                        }
                        requestCallback.onError(cVarB);
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }

                @Override // com.nirvana.tools.requestqueue.Callback
                public /* synthetic */ void onResult(Response response) {
                    try {
                        a((com.mobile.auth.u.e) response);
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }
            }, j));
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public native LoginPhoneInfo a(CacheKey cacheKey);

    public native synchronized void a();

    public native void a(long j, String str, RequestCallback<com.mobile.auth.gatewayauth.manager.base.c, com.mobile.auth.gatewayauth.manager.base.c> requestCallback, CacheKey cacheKey, long j2, String str2, String str3, String str4);

    public native void a(long j, String str, RequestCallback<com.mobile.auth.gatewayauth.manager.base.c, com.mobile.auth.gatewayauth.manager.base.c> requestCallback, CacheKey cacheKey, String str2, long j2, int i, String str3, String str4);

    public native void b(long j, String str, RequestCallback<String, com.mobile.auth.gatewayauth.manager.base.c> requestCallback, CacheKey cacheKey, long j2, String str2, String str3, String str4);

    @SafeProtector
    public native void updateMask(long j, String str, RequestCallback<com.mobile.auth.gatewayauth.manager.base.c, com.mobile.auth.gatewayauth.manager.base.c> requestCallback, CacheKey cacheKey, int i, String str2, String str3, String str4);
}
