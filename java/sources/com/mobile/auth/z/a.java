package com.mobile.auth.z;

import android.content.Context;
import android.text.TextUtils;
import com.mobile.auth.ab.c;
import com.mobile.auth.ab.d;
import com.tencent.open.SocialConstants;
import java.net.URLDecoder;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ScheduledExecutorService f13612a;
    private b b;
    private String c;

    static /* synthetic */ b a(a aVar) {
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

    static /* synthetic */ b a(a aVar, b bVar) {
        try {
            aVar.b = bVar;
            return bVar;
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

    private void a() {
        try {
            ScheduledExecutorService scheduledExecutorService = this.f13612a;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdownNow();
                this.f13612a = null;
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    private void a(final Context context, int i) {
        try {
            c.a(context, "1002", "");
            this.c = com.mobile.auth.y.a.a();
            com.mobile.auth.aa.b.a().a(context, i, this.c, new com.mobile.auth.aa.c() { // from class: com.mobile.auth.z.a.2
                @Override // com.mobile.auth.aa.c
                public void a(int i2, String str) {
                    b bVarA;
                    try {
                        synchronized (a.this) {
                            if (a.a(a.this) == null) {
                                return;
                            }
                            a.b(a.this);
                            if (i2 == 1) {
                                try {
                                    JSONObject jSONObject = new JSONObject(str);
                                    String strOptString = jSONObject.optString("code");
                                    String strOptString2 = jSONObject.optString(SocialConstants.PARAM_SEND_MSG);
                                    String strOptString3 = jSONObject.optString("data");
                                    if ("0".equals(strOptString)) {
                                        String strDecode = URLDecoder.decode(com.mobile.auth.y.a.b(strOptString3, a.c(a.this)), "UTF-8");
                                        c.a(context, "1003", new JSONObject(strDecode).optString("accessCode"));
                                        a.a(a.this).a(strOptString2, strDecode);
                                    } else {
                                        c.a(context, "1004", "");
                                        a.a(a.this).b(strOptString2, strOptString3);
                                    }
                                } catch (Exception unused) {
                                    bVarA = a.a(a.this);
                                    str = "PC数据解析异常(" + str + ")";
                                    bVarA.a(str);
                                }
                                a.a(a.this, (b) null);
                            }
                            if (TextUtils.isEmpty(str)) {
                                bVarA = a.a(a.this);
                                str = "网络请求失败";
                            } else {
                                bVarA = a.a(a.this);
                            }
                            bVarA.a(str);
                            a.a(a.this, (b) null);
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

    static /* synthetic */ void b(a aVar) {
        try {
            aVar.a();
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    static /* synthetic */ String c(a aVar) {
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

    public void a(final Context context, int i, int i2, com.mobile.auth.x.a aVar) {
        try {
            b bVar = new b();
            this.b = bVar;
            bVar.a(aVar);
            try {
                a();
                ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1);
                this.f13612a = scheduledExecutorServiceNewScheduledThreadPool;
                scheduledExecutorServiceNewScheduledThreadPool.schedule(new Runnable() { // from class: com.mobile.auth.z.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            synchronized (a.this) {
                                try {
                                    if (a.a(a.this) != null) {
                                        c.a(context, "1005", "");
                                        a.a(a.this).a("请求超时");
                                        a.a(a.this, (b) null);
                                        a.b(a.this);
                                    }
                                } catch (Throwable th) {
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
                }, i, TimeUnit.MILLISECONDS);
                a(context, i2);
            } catch (Exception e2) {
                d.b(e2.getMessage());
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }
}
