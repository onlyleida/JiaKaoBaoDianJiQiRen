package com.mobile.auth.gatewayauth.manager;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import com.mobile.auth.gatewayauth.Constant;
import com.mobile.auth.gatewayauth.annotations.SafeProtector;
import com.mobile.auth.gatewayauth.manager.base.CacheKey;
import com.mobile.auth.gatewayauth.manager.compat.ResultCodeProcessor;
import com.mobile.auth.gatewayauth.model.TokenRet;
import com.mobile.auth.gatewayauth.utils.security.PackageUtils;
import com.nirvana.tools.core.CryptUtil;
import com.nirvana.tools.requestqueue.Callback;
import com.nirvana.tools.requestqueue.Response;
import com.nirvana.tools.requestqueue.strategy.ThreadStrategy;
import com.tencent.bugly.Bugly;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes4.dex */
public class SystemManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f13329a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.mobile.auth.o.a f13330d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f13331e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Future f13332f;

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.manager.SystemManager$2, reason: invalid class name */
    class AnonymousClass2 extends Callback<com.mobile.auth.u.d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ StringBuffer f13334a;
        final /* synthetic */ CountDownLatch b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(ThreadStrategy threadStrategy, long j, StringBuffer stringBuffer, CountDownLatch countDownLatch) {
            super(threadStrategy, j);
            this.f13334a = stringBuffer;
            this.b = countDownLatch;
        }

        public void a(com.mobile.auth.u.d dVar) {
            try {
                if (dVar.a() != null) {
                    this.f13334a.append(dVar.a());
                }
                this.b.countDown();
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
                a((com.mobile.auth.u.d) response);
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

    public SystemManager(final Context context, com.mobile.auth.o.a aVar) {
        this.f13332f = null;
        this.f13329a = context.getApplicationContext();
        this.f13332f = com.mobile.auth.gatewayauth.utils.b.a(new Runnable() { // from class: com.mobile.auth.gatewayauth.manager.SystemManager.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SystemManager.a(SystemManager.this, PackageUtils.getPackageName(context));
                    SystemManager.b(SystemManager.this, PackageUtils.getSign(context));
                } catch (Throwable th) {
                    try {
                        com.mobile.auth.gatewayauth.a.a(th);
                    } catch (Throwable th2) {
                        com.mobile.auth.gatewayauth.a.a(th2);
                    }
                }
            }
        });
        this.f13330d = aVar;
    }

    private TokenRet a(ResultCodeProcessor resultCodeProcessor) {
        try {
            if (!com.mobile.auth.gatewayauth.utils.c.g(this.f13329a)) {
                return resultCodeProcessor.convertErrorInfo(Constant.CODE_ERROR_NO_SIM_FAIL, "SIM卡无法检测", c());
            }
            if (com.mobile.auth.gatewayauth.utils.c.f(this.f13329a)) {
                return null;
            }
            return resultCodeProcessor.convertErrorInfo(Constant.CODE_ERROR_NO_MOBILE_NETWORK_FAIL, "移动网络未开启", c());
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

    static /* synthetic */ String a(SystemManager systemManager, String str) {
        try {
            systemManager.b = str;
            return str;
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

    static /* synthetic */ String b(SystemManager systemManager, String str) {
        try {
            systemManager.c = str;
            return str;
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

    @SafeProtector
    private native String requestCellularIp();

    public TokenRet a(ResultCodeProcessor resultCodeProcessor, boolean z) {
        try {
            TokenRet tokenRetCheckEnvSafe = checkEnvSafe(resultCodeProcessor);
            return (tokenRetCheckEnvSafe == null && z) ? a(resultCodeProcessor) : tokenRetCheckEnvSafe;
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

    public synchronized String a() {
        try {
            Future future = this.f13332f;
            if (future != null) {
                try {
                    future.get();
                    this.f13332f = null;
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                } catch (ExecutionException e3) {
                    e3.printStackTrace();
                }
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
        return this.b;
    }

    public void a(String str) {
        try {
            if ((FeatureManager.getInstance().get("whiteFileCheck") == null || !Bugly.SDK_IS_DEV.equals(FeatureManager.getInstance().get("whiteFileCheck").toString())) && !TextUtils.isEmpty(str)) {
                InputStream inputStream = null;
                try {
                    try {
                        String strMd5Hex = CryptUtil.md5Hex(str);
                        if (TextUtils.isEmpty(strMd5Hex)) {
                            this.f13331e = true;
                            return;
                        }
                        InputStream inputStreamOpen = this.f13329a.getAssets().open(strMd5Hex);
                        this.f13331e = false;
                        if (inputStreamOpen != null) {
                            try {
                                inputStreamOpen.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                    } catch (Exception unused) {
                        this.f13331e = true;
                        if (0 != 0) {
                            try {
                                inputStream.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                            }
                        }
                    }
                } catch (Throwable th) {
                    if (0 != 0) {
                        try {
                            inputStream.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            try {
                com.mobile.auth.gatewayauth.a.a(th2);
            } catch (Throwable th3) {
                com.mobile.auth.gatewayauth.a.a(th3);
            }
        }
    }

    protected synchronized <T> boolean a(String str, com.mobile.auth.gatewayauth.manager.base.a<T> aVar, long j) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (aVar != null && aVar.b() != null && aVar.b().equals(str) && aVar.d() - j > jCurrentTimeMillis) {
                return true;
            }
            if (aVar != null) {
                this.f13330d.a("ExpiredTime:", String.valueOf(aVar.d()), "|threshold:", String.valueOf(j), "|currTime:", String.valueOf(jCurrentTimeMillis));
            }
            return false;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return false;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return false;
            }
        }
    }

    public synchronized String b() {
        try {
            Future future = this.f13332f;
            if (future != null) {
                try {
                    future.get();
                    this.f13332f = null;
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                } catch (ExecutionException e3) {
                    e3.printStackTrace();
                }
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
        return this.c;
    }

    public String b(String str) {
        if (str == null) {
            return Constant.VENDOR_UNKNOWN;
        }
        byte b = -1;
        try {
            int iHashCode = str.hashCode();
            if (iHashCode != -1350608857) {
                if (iHashCode != 95009260) {
                    if (iHashCode == 880617272 && str.equals(Constant.VENDOR_CMCC)) {
                        b = 0;
                    }
                } else if (str.equals(Constant.VENDOR_CUCC)) {
                    b = 1;
                }
            } else if (str.equals(Constant.VENDOR_CTCC)) {
                b = 2;
            }
            if (b == 0) {
                return Constant.CMCC;
            }
            if (b != 1) {
                return b != 2 ? Constant.VENDOR_UNKNOWN : Constant.CTCC;
            }
            return Constant.CUCC;
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

    public String c() {
        try {
            return com.mobile.auth.gatewayauth.utils.c.b(this.f13329a);
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

    public String c(String str) {
        try {
            return Constant.ACTION_SDK + b(str).toLowerCase() + Constant.ACTION_SDK_PRE_LOGIN_CODE;
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

    @SafeProtector
    public native TokenRet checkEnvSafe(ResultCodeProcessor resultCodeProcessor);

    public String d(String str) {
        try {
            return Constant.ACTION_SDK + b(str).toLowerCase() + Constant.ACTION_SDK_PRE_AUTH_CODE;
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

    public boolean d() {
        try {
            return com.mobile.auth.gatewayauth.utils.c.g(this.f13329a);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return false;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return false;
            }
        }
    }

    @SafeProtector
    protected native synchronized String decryptContent(String str);

    public String e(String str) {
        try {
            return Constant.ACTION_SDK + b(str).toLowerCase() + Constant.ACTION_SDK_LOGIN_CODE;
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

    public boolean e() {
        try {
            return com.mobile.auth.gatewayauth.utils.c.f(this.f13329a);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return false;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return false;
            }
        }
    }

    @SafeProtector
    protected native synchronized String encryptContent(String str);

    public String f() {
        try {
            return com.mobile.auth.gatewayauth.utils.c.c(this.f13329a);
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

    public String f(String str) {
        try {
            return Constant.ACTION_SDK + b(str).toLowerCase() + Constant.ACTION_SDK_LOGIN_TOKEN;
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

    public Context g() {
        try {
            return this.f13329a;
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

    public String g(String str) {
        try {
            return Constant.ACTION_SDK + b(str).toLowerCase() + Constant.ACTION_SDK_AUTH_TOKEN;
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

    @SafeProtector
    public native CacheKey getSimCacheKey(boolean z, String str);

    @SafeProtector
    public native CacheKey getVendorCacheKey(String str);

    public String h(String str) {
        try {
            return b(str).toLowerCase() + Constant.ACTION_AUTH_PAGE_LOGIN;
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

    public String i(String str) {
        try {
            return b(str).toLowerCase() + Constant.ACTION_AUTH_PAGE_RETURN;
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

    public String j(String str) {
        try {
            return b(str).toLowerCase() + Constant.ACTION_AUTH_PAGE_SWITCH;
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

    public String k(String str) {
        try {
            return b(str).toLowerCase() + Constant.ACTION_AUTH_PAGE_PROTOCOL;
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

    public String l(String str) {
        try {
            return b(str).toLowerCase() + Constant.ACTION_AUTH_PAGE_START;
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

    @SafeProtector
    @SuppressLint({"MissingPermission"})
    public native void setupWifi();
}
