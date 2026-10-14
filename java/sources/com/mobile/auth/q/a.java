package com.mobile.auth.q;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.cmic.sso.sdk.activity.LoginAuthActivity;
import com.mobile.auth.e.e;
import com.mobile.auth.e.f;
import com.mobile.auth.e.g;
import com.mobile.auth.k.i;
import com.mobile.auth.k.u;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static final String f13553a = LoginAuthActivity.class.getSimpleName();
    private static volatile a c;
    private com.mobile.auth.e.a b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f13554d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private f f13555e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.cmic.sso.sdk.a f13556f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f13557g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Handler f13558h;
    private String i;
    private String j;

    /* JADX INFO: renamed from: com.mobile.auth.q.a$3, reason: invalid class name */
    class AnonymousClass3 extends u.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ f f13561a;

        AnonymousClass3(f fVar) {
            this.f13561a = fVar;
        }

        @Override // com.mobile.auth.k.u.a
        protected void a() {
            try {
                a.d(a.this).b("caller", "com.cmic.sso.sdk.activity.LoginAuthActivity;");
                this.f13561a.a(a.d(a.this), String.valueOf(3), new g() { // from class: com.mobile.auth.q.a.3.1
                    @Override // com.mobile.auth.e.g
                    public void a(final String str, String str2, final com.cmic.sso.sdk.a aVar, JSONObject jSONObject) {
                        try {
                            if ("103000".equals(str)) {
                                AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                anonymousClass3.f13561a.a(a.d(a.this), new g() { // from class: com.mobile.auth.q.a.3.1.1
                                    @Override // com.mobile.auth.e.g
                                    public void a(String str3, String str4, com.cmic.sso.sdk.a aVar2, JSONObject jSONObject2) {
                                        try {
                                            long jB = aVar.b("loginTime");
                                            if (jB != 0) {
                                                aVar.b("loginTime", System.currentTimeMillis() - jB);
                                            }
                                            com.mobile.auth.k.c.a((!"103000".equals(str) || TextUtils.isEmpty(aVar.c("phonescrip"))) ? "authClickFailed" : "authClickSuccess");
                                            a.a(a.this, str3, str4, aVar2, jSONObject2);
                                            i.b(a.e(a.this));
                                        } catch (Throwable th) {
                                            try {
                                                com.mobile.auth.gatewayauth.a.a(th);
                                            } catch (Throwable th2) {
                                                com.mobile.auth.gatewayauth.a.a(th2);
                                            }
                                        }
                                    }
                                });
                            } else {
                                a.a(a.this, str, str2, aVar, jSONObject);
                                i.b(a.e(a.this));
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
    }

    /* JADX INFO: renamed from: com.mobile.auth.q.a$a, reason: collision with other inner class name */
    private class RunnableC0267a implements Runnable {
        private com.cmic.sso.sdk.a b;
        private volatile boolean c = false;

        RunnableC0267a(com.cmic.sso.sdk.a aVar) {
            this.b = aVar;
        }

        private synchronized boolean a() {
            boolean z;
            try {
                z = this.c;
                this.c = true;
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return false;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return false;
                }
            }
            return !z;
        }

        static /* synthetic */ boolean a(RunnableC0267a runnableC0267a) {
            try {
                return runnableC0267a.a();
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

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (a()) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("resultCode", "200023");
                        jSONObject.put("resultString", "登录超时");
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                    a.a(a.this).a("200023", "登录超时", this.b, jSONObject, null);
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

    public a(Context context) {
        this.b = com.mobile.auth.e.a.a(context);
        this.f13554d = context.getApplicationContext();
        this.f13558h = new Handler(this.f13554d.getMainLooper());
    }

    static /* synthetic */ com.mobile.auth.e.a a(a aVar) {
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

    public static a a(Context context) {
        try {
            if (c == null) {
                synchronized (a.class) {
                    if (c == null) {
                        c = new a(context);
                    }
                }
            }
            return c;
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

    static /* synthetic */ String a(a aVar, String str) {
        try {
            aVar.f13557g = str;
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

    /* JADX WARN: Bottom block not found for handler: all -> 0x003e */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004c, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.mobile.auth.e.f r10, java.lang.String r11, com.cmic.sso.sdk.a r12, com.mobile.auth.e.g r13) {
        /*
            r9 = this;
            r0 = 0
            r1 = 0
            java.lang.Class<com.mobile.auth.e.f> r2 = com.mobile.auth.e.f.class
            java.lang.String r3 = "a"
            r4 = 3
            java.lang.Class[] r5 = new java.lang.Class[r4]     // Catch: java.lang.Throwable -> L2a java.lang.reflect.InvocationTargetException -> L2c java.lang.IllegalAccessException -> L34 java.lang.NoSuchMethodException -> L39
            java.lang.Class<java.lang.String> r6 = java.lang.String.class
            r5[r0] = r6     // Catch: java.lang.Throwable -> L2a java.lang.reflect.InvocationTargetException -> L2c java.lang.IllegalAccessException -> L34 java.lang.NoSuchMethodException -> L39
            java.lang.Class<com.cmic.sso.sdk.a> r6 = com.cmic.sso.sdk.a.class
            r7 = 1
            r5[r7] = r6     // Catch: java.lang.Throwable -> L2a java.lang.reflect.InvocationTargetException -> L2c java.lang.IllegalAccessException -> L34 java.lang.NoSuchMethodException -> L39
            java.lang.Class<com.mobile.auth.e.g> r6 = com.mobile.auth.e.g.class
            r8 = 2
            r5[r8] = r6     // Catch: java.lang.Throwable -> L2a java.lang.reflect.InvocationTargetException -> L2c java.lang.IllegalAccessException -> L34 java.lang.NoSuchMethodException -> L39
            java.lang.reflect.Method r1 = r2.getDeclaredMethod(r3, r5)     // Catch: java.lang.Throwable -> L2a java.lang.reflect.InvocationTargetException -> L2c java.lang.IllegalAccessException -> L34 java.lang.NoSuchMethodException -> L39
            r1.setAccessible(r7)     // Catch: java.lang.Throwable -> L2a java.lang.reflect.InvocationTargetException -> L2c java.lang.IllegalAccessException -> L34 java.lang.NoSuchMethodException -> L39
            java.lang.Object[] r2 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> L2a java.lang.reflect.InvocationTargetException -> L2c java.lang.IllegalAccessException -> L34 java.lang.NoSuchMethodException -> L39
            r2[r0] = r11     // Catch: java.lang.Throwable -> L2a java.lang.reflect.InvocationTargetException -> L2c java.lang.IllegalAccessException -> L34 java.lang.NoSuchMethodException -> L39
            r2[r7] = r12     // Catch: java.lang.Throwable -> L2a java.lang.reflect.InvocationTargetException -> L2c java.lang.IllegalAccessException -> L34 java.lang.NoSuchMethodException -> L39
            r2[r8] = r13     // Catch: java.lang.Throwable -> L2a java.lang.reflect.InvocationTargetException -> L2c java.lang.IllegalAccessException -> L34 java.lang.NoSuchMethodException -> L39
            r1.invoke(r10, r2)     // Catch: java.lang.Throwable -> L2a java.lang.reflect.InvocationTargetException -> L2c java.lang.IllegalAccessException -> L34 java.lang.NoSuchMethodException -> L39
            goto L30
        L2a:
            r10 = move-exception
            goto L40
        L2c:
            r10 = move-exception
            r10.printStackTrace()     // Catch: java.lang.Throwable -> L2a
        L30:
            r1.setAccessible(r0)     // Catch: java.lang.Throwable -> L3e
            goto L4c
        L34:
            r10 = move-exception
            r10.printStackTrace()     // Catch: java.lang.Throwable -> L2a
            goto L30
        L39:
            r10 = move-exception
            r10.printStackTrace()     // Catch: java.lang.Throwable -> L2a
            goto L30
        L3e:
            r10 = move-exception
            goto L44
        L40:
            r1.setAccessible(r0)     // Catch: java.lang.Throwable -> L3e
            throw r10     // Catch: java.lang.Throwable -> L3e
        L44:
            com.mobile.auth.gatewayauth.a.a(r10)     // Catch: java.lang.Throwable -> L48
            goto L4c
        L48:
            r10 = move-exception
            com.mobile.auth.gatewayauth.a.a(r10)
        L4c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mobile.auth.q.a.a(com.mobile.auth.e.f, java.lang.String, com.cmic.sso.sdk.a, com.mobile.auth.e.g):void");
    }

    static /* synthetic */ void a(a aVar, String str, com.cmic.sso.sdk.a aVar2, b bVar) {
        try {
            aVar.a(str, aVar2, bVar);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    static /* synthetic */ void a(a aVar, String str, String str2, com.cmic.sso.sdk.a aVar2, JSONObject jSONObject) {
        try {
            aVar.a(str, str2, aVar2, jSONObject);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    private void a(String str, com.cmic.sso.sdk.a aVar, final b bVar) {
        try {
            final RunnableC0267a runnableC0267a = new RunnableC0267a(aVar);
            this.f13558h.postDelayed(runnableC0267a, a());
            aVar.b("authTypeInput", str);
            a(c(), str, aVar, new g() { // from class: com.mobile.auth.q.a.4
                @Override // com.mobile.auth.e.g
                public void a(String str2, String str3, com.cmic.sso.sdk.a aVar2, JSONObject jSONObject) {
                    try {
                        if (RunnableC0267a.a(runnableC0267a)) {
                            a.f(a.this).removeCallbacks(runnableC0267a);
                            bVar.a().put("securityphone", aVar2.a("securityphone", ""));
                            if (1 != aVar2.a("logintype") || !"显示登录取号成功".equals(str3) || i.a(aVar2.c("traceId"))) {
                                a.a(a.this).a(str2, str3, aVar2, jSONObject, null);
                                return;
                            }
                            String strC = aVar2.c("traceId");
                            a.a(a.this, strC);
                            i.a(strC, aVar2);
                            JSONObject jSONObject2 = new JSONObject();
                            try {
                                jSONObject2.put("resultCode", str2);
                                jSONObject2.put("authType", aVar2.a("authType", ""));
                                jSONObject2.put("authTypeDes", aVar2.a("authTypeDes", ""));
                                jSONObject2.put("openId", aVar2.a("openId", ""));
                                jSONObject2.put("token", aVar2.a("token", ""));
                                jSONObject2.put("traceId", aVar2.a("traceId", ""));
                            } catch (JSONException e2) {
                                e2.printStackTrace();
                            }
                            e eVarC = i.c(strC);
                            if (eVarC != null) {
                                eVarC.a(aVar2.a("SDKRequestCode"), jSONObject2);
                            }
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

    private void a(String str, String str2, com.cmic.sso.sdk.a aVar, JSONObject jSONObject) {
        try {
            this.f13558h.removeCallbacksAndMessages(null);
            if ("103000".equals(str)) {
                if (this.b == null || i.c(aVar.c("traceId")) == null) {
                    return;
                }
                this.b.a(str, str2, aVar, jSONObject, (Throwable) null, true);
                return;
            }
            if (!"200020".equals(str)) {
                this.b.a(str, str2, aVar, jSONObject, (Throwable) null, true);
            } else {
                if (this.b == null) {
                    return;
                }
                if (i.c(aVar.c("traceId")) != null) {
                    this.b.a(str, str2, aVar, jSONObject, null);
                } else {
                    com.mobile.auth.k.f.a(f13553a, "CallbackResult:未知错误");
                }
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x005b A[Catch: all -> 0x0066, PHI: r2
      0x005b: PHI (r2v5 java.lang.reflect.Method) = (r2v3 java.lang.reflect.Method), (r2v4 java.lang.reflect.Method), (r2v6 java.lang.reflect.Method) binds: [B:12:0x0054, B:20:0x0063, B:15:0x0059] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0066, blocks: (B:5:0x0048, B:26:0x006b, B:27:0x006e, B:16:0x005b, B:3:0x0004, B:10:0x004f, B:14:0x0056, B:19:0x0060), top: B:35:0x0004, inners: #5 }] */
    private boolean a(com.mobile.auth.e.a aVar, com.cmic.sso.sdk.a aVar2, String str, String str2, String str3, int i, e eVar) {
        Method declaredMethod = null;
        try {
            try {
                try {
                    declaredMethod = com.mobile.auth.e.a.class.getDeclaredMethod("a", com.cmic.sso.sdk.a.class, String.class, String.class, String.class, Integer.TYPE, e.class);
                    declaredMethod.setAccessible(true);
                    boolean zBooleanValue = ((Boolean) declaredMethod.invoke(aVar, aVar2, str, str2, str3, Integer.valueOf(i), eVar)).booleanValue();
                    if (declaredMethod != null) {
                        declaredMethod.setAccessible(false);
                    }
                    return zBooleanValue;
                } catch (IllegalAccessException e2) {
                    e2.printStackTrace();
                    if (declaredMethod != null) {
                        declaredMethod.setAccessible(false);
                    }
                    return false;
                } catch (NoSuchMethodException e3) {
                    e3.printStackTrace();
                    if (declaredMethod != null) {
                        declaredMethod.setAccessible(false);
                    }
                    return false;
                } catch (InvocationTargetException e4) {
                    e4.printStackTrace();
                    if (declaredMethod != null) {
                        declaredMethod.setAccessible(false);
                    }
                    return false;
                }
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return false;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return false;
                }
            }
        } catch (Throwable th3) {
            if (declaredMethod != null) {
                declaredMethod.setAccessible(false);
            }
            throw th3;
        }
    }

    static /* synthetic */ boolean a(a aVar, com.mobile.auth.e.a aVar2, com.cmic.sso.sdk.a aVar3, String str, String str2, String str3, int i, e eVar) {
        try {
            return aVar.a(aVar2, aVar3, str, str2, str3, i, eVar);
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

    static /* synthetic */ String b(a aVar) {
        try {
            return aVar.i;
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

    /* JADX WARN: Code duplicated, block: B:30:0x003c A[Catch: all -> 0x0043, TRY_ENTER, TryCatch #0 {all -> 0x0043, blocks: (B:3:0x0001, B:10:0x001e, B:30:0x003c, B:31:0x003f, B:32:0x0040), top: B:40:0x0001 }] */
    private f c() {
        Field declaredField;
        try {
            if (this.f13555e == null) {
                try {
                    try {
                        declaredField = com.mobile.auth.e.a.class.getDeclaredField("b");
                        try {
                            declaredField.setAccessible(true);
                            this.f13555e = (f) declaredField.get(this.b);
                            if (declaredField != null) {
                                declaredField.setAccessible(false);
                            }
                        } catch (IllegalAccessException e2) {
                            e = e2;
                            e.printStackTrace();
                            if (declaredField != null) {
                            }
                            return this.f13555e;
                        } catch (NoSuchFieldException e3) {
                            e = e3;
                            e.printStackTrace();
                            if (declaredField != null) {
                            }
                            return this.f13555e;
                        }
                    } catch (Throwable th) {
                        th = th;
                        if (declaredField != null) {
                            declaredField.setAccessible(false);
                        }
                        throw th;
                    }
                } catch (IllegalAccessException e4) {
                    e = e4;
                    declaredField = null;
                } catch (NoSuchFieldException e5) {
                    e = e5;
                    declaredField = null;
                } catch (Throwable th2) {
                    th = th2;
                    declaredField = null;
                    if (declaredField != null) {
                        declaredField.setAccessible(false);
                    }
                    throw th;
                }
            }
            return this.f13555e;
        } catch (Throwable th3) {
            try {
                com.mobile.auth.gatewayauth.a.a(th3);
                return null;
            } catch (Throwable th4) {
                com.mobile.auth.gatewayauth.a.a(th4);
                return null;
            }
        }
    }

    static /* synthetic */ String c(a aVar) {
        try {
            return aVar.j;
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

    static /* synthetic */ com.cmic.sso.sdk.a d(a aVar) {
        try {
            return aVar.f13556f;
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

    /* JADX WARN: Code duplicated, block: B:26:0x0038 A[Catch: all -> 0x0044, PHI: r2
      0x0038: PHI (r2v7 java.lang.reflect.Method) = (r2v5 java.lang.reflect.Method), (r2v6 java.lang.reflect.Method), (r2v8 java.lang.reflect.Method) binds: [B:21:0x0030, B:31:0x0041, B:25:0x0036] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0044, blocks: (B:7:0x001c, B:26:0x0038, B:38:0x004a, B:39:0x004d), top: B:47:0x0002 }] */
    private String d() {
        Method declaredMethod;
        Method method = null;
        try {
            try {
                try {
                    declaredMethod = com.mobile.auth.e.a.class.getDeclaredMethod("e", new Class[0]);
                    try {
                        declaredMethod.setAccessible(true);
                        String str = (String) declaredMethod.invoke(this.b, new Object[0]);
                        if (declaredMethod != null) {
                            declaredMethod.setAccessible(false);
                        }
                        return str;
                    } catch (IllegalAccessException e2) {
                        e = e2;
                        e.printStackTrace();
                        if (declaredMethod != null) {
                            declaredMethod.setAccessible(false);
                        }
                        return null;
                    } catch (NoSuchMethodException e3) {
                        e = e3;
                        e.printStackTrace();
                        if (declaredMethod != null) {
                            declaredMethod.setAccessible(false);
                        }
                        return null;
                    } catch (InvocationTargetException e4) {
                        e = e4;
                        e.printStackTrace();
                        if (declaredMethod != null) {
                            declaredMethod.setAccessible(false);
                        }
                        return null;
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
            } catch (IllegalAccessException e5) {
                e = e5;
                declaredMethod = null;
            } catch (NoSuchMethodException e6) {
                e = e6;
                declaredMethod = null;
            } catch (InvocationTargetException e7) {
                e = e7;
                declaredMethod = null;
            } catch (Throwable th3) {
                th = th3;
                if (0 != 0) {
                    method.setAccessible(false);
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    static /* synthetic */ String e(a aVar) {
        try {
            return aVar.f13557g;
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

    static /* synthetic */ Handler f(a aVar) {
        try {
            return aVar.f13558h;
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

    public long a() {
        try {
            return this.b.b();
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return -1L;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return -1L;
            }
        }
    }

    public void a(long j) {
        try {
            this.b.a(j);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void a(e eVar) {
        try {
            b bVar = new b(eVar);
            if (i.a(this.f13557g)) {
                com.cmic.sso.sdk.a aVar = new com.cmic.sso.sdk.a(0);
                this.f13556f = aVar;
                a(this.b, aVar, this.i, this.j, "loginAuth", 1, bVar);
            } else {
                i.a(this.f13557g, bVar);
                this.f13556f = i.d(this.f13557g);
            }
            u.a(new AnonymousClass3(f.a(this.f13554d)));
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void a(e eVar, int i) {
        try {
            final b bVar = new b(eVar);
            final com.cmic.sso.sdk.a aVar = new com.cmic.sso.sdk.a(64);
            aVar.b("SDKRequestCode", i);
            aVar.b("serviceType", "login");
            aVar.b("caller", d());
            aVar.b("methodTimes", System.currentTimeMillis());
            u.a(new u.a(this.f13554d, aVar) { // from class: com.mobile.auth.q.a.1
                @Override // com.mobile.auth.k.u.a
                protected void a() {
                    try {
                        a aVar2 = a.this;
                        if (a.a(aVar2, a.a(aVar2), aVar, a.b(a.this), a.c(a.this), "loginAuth", 1, bVar)) {
                            com.mobile.auth.k.f.a("AuthnHelper", "超时时间：" + a.this.a());
                            a.a(a.this, String.valueOf(3), aVar, bVar);
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

    public void a(String str) {
        try {
            this.i = str;
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
            this.b.c();
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void b(e eVar, int i) {
        try {
            final b bVar = new b(eVar);
            final com.cmic.sso.sdk.a aVar = new com.cmic.sso.sdk.a(64);
            aVar.b("SDKRequestCode", i);
            aVar.b("serviceType", "authentication");
            aVar.b("methodTimes", System.currentTimeMillis());
            u.a(new u.a(this.f13554d, aVar) { // from class: com.mobile.auth.q.a.2
                @Override // com.mobile.auth.k.u.a
                protected void a() {
                    try {
                        a aVar2 = a.this;
                        if (a.a(aVar2, a.a(aVar2), aVar, a.b(a.this), a.c(a.this), "mobileAuth", 0, bVar)) {
                            com.mobile.auth.k.f.a("AuthnHelper", "超时时间：" + a.this.a());
                            a.a(a.this, String.valueOf(3), aVar, bVar);
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

    public void b(String str) {
        try {
            this.j = str;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }
}
