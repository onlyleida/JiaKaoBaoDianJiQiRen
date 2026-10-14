package com.mobile.auth.o;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.mobile.auth.gatewayauth.manager.d;
import com.mobile.auth.gatewayauth.model.ConfigRule;
import com.mobile.auth.gatewayauth.model.pns_vendor_query.LimitedInfo;
import com.mobile.auth.gatewayauth.model.pns_vendor_query.UploadRB;
import com.mobile.auth.gatewayauth.utils.f;
import com.mobile.auth.v.b;
import com.mobile.auth.v.c;
import com.nirvana.tools.logger.ACMLogger;
import com.nirvana.tools.logger.ACMMonitor;
import com.nirvana.tools.logger.model.ACMLimitConfig;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile a f13522a;
    private ACMLogger b;
    private ACMMonitor c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f13523d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.mobile.auth.v.a f13524e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.mobile.auth.v.a f13525f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private d f13526g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private HandlerThread f13527h;
    private Handler i;

    private a() {
        this.f13523d = false;
        this.f13527h = null;
        this.i = null;
        HandlerThread handlerThread = new HandlerThread("PnsLoggerThread");
        this.f13527h = handlerThread;
        handlerThread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.mobile.auth.o.a.1
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
            }
        });
        this.f13527h.start();
        this.i = new Handler(this.f13527h.getLooper());
    }

    public a(final Context context) {
        this();
        this.i.post(new Runnable() { // from class: com.mobile.auth.o.a.8
            @Override // java.lang.Runnable
            public void run() {
                try {
                    a.a(a.this, new c());
                    b bVar = new b();
                    a.a(a.this).a(bVar);
                    a.b(a.this, new com.mobile.auth.v.d());
                    a.b(a.this).a(bVar);
                    a.a(a.this, new ACMLogger(context, a.a(a.this)));
                    a.a(a.this, new ACMMonitor(context, a.b(a.this)));
                    a.c(a.this).setUploadType(1);
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

    public static a a(Context context) {
        try {
            if (f13522a == null) {
                synchronized (a.class) {
                    if (f13522a == null && context != null) {
                        f13522a = new a(context);
                    }
                }
            }
            return f13522a;
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

    static /* synthetic */ com.mobile.auth.v.a a(a aVar) {
        try {
            return aVar.f13524e;
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

    static /* synthetic */ com.mobile.auth.v.a a(a aVar, com.mobile.auth.v.a aVar2) {
        try {
            aVar.f13524e = aVar2;
            return aVar2;
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

    static /* synthetic */ ACMLogger a(a aVar, ACMLogger aCMLogger) {
        try {
            aVar.b = aCMLogger;
            return aCMLogger;
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

    static /* synthetic */ ACMMonitor a(a aVar, ACMMonitor aCMMonitor) {
        try {
            aVar.c = aCMMonitor;
            return aCMMonitor;
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

    static /* synthetic */ String a(a aVar, String[] strArr) {
        try {
            return aVar.f(strArr);
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

    static /* synthetic */ boolean a(a aVar, boolean z) {
        try {
            aVar.f13523d = z;
            return z;
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

    static /* synthetic */ com.mobile.auth.v.a b(a aVar) {
        try {
            return aVar.f13525f;
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

    static /* synthetic */ com.mobile.auth.v.a b(a aVar, com.mobile.auth.v.a aVar2) {
        try {
            aVar.f13525f = aVar2;
            return aVar2;
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

    static /* synthetic */ ACMMonitor c(a aVar) {
        try {
            return aVar.c;
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

    static /* synthetic */ boolean d(a aVar) {
        try {
            return aVar.f13523d;
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

    static /* synthetic */ d e(a aVar) {
        try {
            return aVar.f13526g;
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

    static /* synthetic */ ACMLogger f(a aVar) {
        try {
            return aVar.b;
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

    private String f(String... strArr) {
        if (strArr != null) {
            try {
                if (strArr.length != 0) {
                    if (strArr.length == 1) {
                        return strArr[0];
                    }
                    StringBuilder sb = new StringBuilder();
                    for (String str : strArr) {
                        sb.append(str);
                    }
                    return sb.toString();
                }
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return null;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                }
            }
        }
        return null;
    }

    public void a() {
        try {
            this.i.post(new Runnable() { // from class: com.mobile.auth.o.a.4
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (a.d(a.this)) {
                            return;
                        }
                        a.c(a.this).uploadManual();
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void a(final long j, final long j2, final int i) {
        try {
            this.i.post(new Runnable() { // from class: com.mobile.auth.o.a.14
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (a.d(a.this)) {
                            return;
                        }
                        a.f(a.this).uploadLog(j, j2, i);
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void a(d dVar) {
        try {
            this.f13526g = dVar;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void a(final ConfigRule configRule) {
        try {
            this.i.post(new Runnable() { // from class: com.mobile.auth.o.a.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ConfigRule configRule2 = configRule;
                        if (configRule2 != null && configRule2.getSls() != null) {
                            ACMLimitConfig aCMLimitConfigBuild = ACMLimitConfig.newACMLimitConfig().isLimited("true".equals(configRule.getSls().getIs_limited())).limitCount(configRule.getSls().getLimit_count()).limitHours(configRule.getSls().getLimit_time_hour()).build();
                            if ("true".equals(configRule.getIs_sls_demoted()) || "true".equals(configRule.getIs_demoted())) {
                                a.a(a.this, true);
                            } else {
                                a.a(a.this, false);
                            }
                            if (a.d(a.this)) {
                                a.c(a.this).setUploadEnabled(false);
                                a.f(a.this).setUploadEnabled(false);
                            } else {
                                a.c(a.this).setUploadEnabled(true);
                                a.f(a.this).setUploadEnabled(true);
                            }
                            a.c(a.this).setLimitConfig(aCMLimitConfigBuild);
                            a.f(a.this).setLimitConfig(aCMLimitConfigBuild);
                        }
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void a(final UploadRB uploadRB) {
        try {
            this.i.post(new Runnable() { // from class: com.mobile.auth.o.a.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        UploadRB uploadRB2 = uploadRB;
                        if (uploadRB2 != null && uploadRB2.getAlibaba_aliqin_psc_info_upload_response() != null && uploadRB.getAlibaba_aliqin_psc_info_upload_response().getResult() != null && uploadRB.getAlibaba_aliqin_psc_info_upload_response().getResult().getModule() != null && uploadRB.getAlibaba_aliqin_psc_info_upload_response().getResult().getModule().getLimited_info() != null) {
                            LimitedInfo limited_info = uploadRB.getAlibaba_aliqin_psc_info_upload_response().getResult().getModule().getLimited_info();
                            ACMLimitConfig aCMLimitConfigBuild = ACMLimitConfig.newACMLimitConfig().isLimited("true".equals(limited_info.getIs_limited())).limitCount(limited_info.getLimit_count()).limitHours(limited_info.getLimit_time_hour()).build();
                            a.c(a.this).setLimitConfig(aCMLimitConfigBuild);
                            a.f(a.this).setLimitConfig(aCMLimitConfigBuild);
                        }
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void a(final String str, final int i) {
        try {
            this.i.post(new Runnable() { // from class: com.mobile.auth.o.a.7
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        a.this.b("CacheMonitor:", str, "\n Urgency ", String.valueOf(i));
                        if (a.d(a.this)) {
                            return;
                        }
                        a.c(a.this).monitor(str, i);
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void a(final String... strArr) {
        try {
            this.i.post(new Runnable() { // from class: com.mobile.auth.o.a.9
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        String strA = a.a(a.this, strArr);
                        f.d(strA);
                        if (a.d(a.this)) {
                            return;
                        }
                        a.f(a.this).info(a.e(a.this).a(strA, 3));
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void b() {
        try {
            this.i.post(new Runnable() { // from class: com.mobile.auth.o.a.5
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (a.d(a.this)) {
                            return;
                        }
                        a.c(a.this).uploadFailed();
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void b(final String... strArr) {
        try {
            this.i.post(new Runnable() { // from class: com.mobile.auth.o.a.10
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        String strA = a.a(a.this, strArr);
                        f.a(strA);
                        if (a.d(a.this)) {
                            return;
                        }
                        a.f(a.this).debug(a.e(a.this).a(strA, 2));
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void c() {
        try {
            this.i.post(new Runnable() { // from class: com.mobile.auth.o.a.6
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (a.d(a.this)) {
                            return;
                        }
                        a.f(a.this).uploadFailed();
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void c(final String... strArr) {
        try {
            this.i.post(new Runnable() { // from class: com.mobile.auth.o.a.11
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        String strA = a.a(a.this, strArr);
                        f.b(strA);
                        if (a.d(a.this)) {
                            return;
                        }
                        a.f(a.this).warning(a.e(a.this).a(strA, 4));
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void d(final String... strArr) {
        try {
            this.i.post(new Runnable() { // from class: com.mobile.auth.o.a.12
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        String strA = a.a(a.this, strArr);
                        f.c(strA);
                        if (a.d(a.this)) {
                            return;
                        }
                        a.f(a.this).error(a.e(a.this).a(strA, 5));
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void e(final String... strArr) {
        try {
            this.i.post(new Runnable() { // from class: com.mobile.auth.o.a.13
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        String strA = a.a(a.this, strArr);
                        f.c(strA);
                        if (a.d(a.this)) {
                            return;
                        }
                        a.f(a.this).crash(a.e(a.this).a(strA, 6));
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }
}
