package com.mobile.auth.q;

import android.content.Context;
import android.os.Handler;
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
    protected static final String f13553a = null;
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
        final /* synthetic */ a b;

        AnonymousClass3(a r1, f r2) {
            this.b = r1;
            this.f13561a = r2;
        }

        @Override // com.mobile.auth.k.u.a
        protected void a() {
            a.d(this.b).b("caller", "com.cmic.sso.sdk.activity.LoginAuthActivity;");     // Catch: Throwable -> L4
            this.f13561a.a(a.d(this.b), String.valueOf(3), new AnonymousClass1(this));     // Catch: Throwable -> L4
            return;
        L4:
            th = move-exception;
            com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L7
            return;
        L7:
            th = move-exception;
            com.mobile.auth.gatewayauth.a.a(th);
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.q.a$a, reason: collision with other inner class name */
    private class RunnableC0275a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ a f13565a;
        private com.cmic.sso.sdk.a b;
        private volatile boolean c;

        RunnableC0275a(a r1, com.cmic.sso.sdk.a r2) {
            this.f13565a = r1;
            this.c = false;
            this.b = r2;
        }

        private synchronized boolean a() {
            monitor-enter(this);
            boolean r0 = this.c;     // Catch: Throwable -> L7
            this.c = true;     // Catch: Throwable -> L7
            boolean r1 = !r0;
            monitor-exit(this);
            return r1;
        L7:
            th = move-exception;
            com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L12
            return false;
        L12:
            th = move-exception;
            com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L16
            return false;
        L16:
            th = move-exception;
            throw th;
        }

        static /* synthetic */ boolean a(RunnableC0275a r1) {
            return r1.a();
        L4:
            th = move-exception;
            com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L8
            return false;
        L8:
            th = move-exception;
            com.mobile.auth.gatewayauth.a.a(th);
            return false;
        }

        @Override // java.lang.Runnable
        public void run() {
        L11:
            th = move-exception;
            com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L14
            return;
        L14:
            th = move-exception;
            com.mobile.auth.gatewayauth.a.a(th);
            return;
        L3:
            if (a() == false) goto L23;
            JSONObject r5 = new JSONObject();     // Catch: Throwable -> L11
            r5.put("resultCode", "200023");     // Catch: JSONException -> L7 Throwable -> L11
            r5.put("resultString", "登录超时");     // Catch: JSONException -> L7 Throwable -> L11
        L9:
            com.cmic.sso.sdk.a r4 = this.b;     // Catch: Throwable -> L11
            a.a(this.f13565a).a("200023", "登录超时", r4, r5, null);     // Catch: Throwable -> L11
            return;
        L7:
            e = move-exception;
            e.printStackTrace();     // Catch: Throwable -> L11
            goto L9
        }
    }

    static {
        f13553a = LoginAuthActivity.class.getSimpleName();
    }

    public a(Context r2) {
        this.b = com.mobile.auth.e.a.a(r2);
        this.f13554d = r2.getApplicationContext();
        this.f13558h = new Handler(this.f13554d.getMainLooper());
    }

    static /* synthetic */ com.mobile.auth.e.a a(a r1) {
        return r1.b;
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    }

    public static a a(Context r2) {
    L16:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L20
        return null;
    L20:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    L3:
        if (c != null) goto L15;
        monitor-enter(a.class);     // Catch: Throwable -> L16
    L11:
        th = move-exception;
        throw th;     // Catch: Throwable -> L16
    L7:
        if (c != null) goto L9;
        c = new a(r2);     // Catch: Throwable -> L11
    L9:
        monitor-exit(a.class);     // Catch: Throwable -> L11
    L15:
        return c;
    }

    static /* synthetic */ String a(a r0, String r1) {
        r0.f13557g = r1;     // Catch: Throwable -> L4
        return r1;
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    }

    private void a(f r10, String r11, com.cmic.sso.sdk.a r12, g r13) {
        Method r1 = null;
        r1 = f.class.getDeclaredMethod("a", new Class[]{String.class, com.cmic.sso.sdk.a.class, g.class});     // Catch: Throwable -> L5 InvocationTargetException -> L7 IllegalAccessException -> L11 NoSuchMethodException -> L13
        r1.setAccessible(true);     // Catch: Throwable -> L5 InvocationTargetException -> L7 IllegalAccessException -> L11 NoSuchMethodException -> L13
        r1.invoke(r10, new Object[]{r11, r12, r13});     // Catch: Throwable -> L5 InvocationTargetException -> L7 IllegalAccessException -> L11 NoSuchMethodException -> L13
    L9:
        r1.setAccessible(false);     // Catch: Throwable -> L16
    L32:
        return;
    L5:
        th = move-exception;
        r1.setAccessible(false);     // Catch: Throwable -> L16
        throw th;     // Catch: Throwable -> L16
    L11:
        e = move-exception;
        e.printStackTrace();     // Catch: Throwable -> L5
    L13:
        e = move-exception;
        e.printStackTrace();     // Catch: Throwable -> L5
    L7:
        e = move-exception;
        e.printStackTrace();     // Catch: Throwable -> L5
    L16:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L22
        return;
    L22:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
    }

    static /* synthetic */ void a(a r0, String r1, com.cmic.sso.sdk.a r2, b r3) {
        r0.a(r1, r2, r3);     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
    }

    static /* synthetic */ void a(a r0, String r1, String r2, com.cmic.sso.sdk.a r3, JSONObject r4) {
        r0.a(r1, r2, r3, r4);     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
    }

    private void a(String r5, com.cmic.sso.sdk.a r6, final b r7) {
        final RunnableC0275a r0 = new RunnableC0275a(this, r6);     // Catch: Throwable -> L4
        this.f13558h.postDelayed(r0, a());     // Catch: Throwable -> L4
        r6.b("authTypeInput", r5);     // Catch: Throwable -> L4
        g r1 = new AnonymousClass4(this, r0, r7);     // Catch: Throwable -> L4
        a(c(), r5, r6, r1);     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
    }

    private void a(String r9, String r10, com.cmic.sso.sdk.a r11, JSONObject r12) {
        this.f13558h.removeCallbacksAndMessages(null);     // Catch: Throwable -> L25
        if ("103000".equals(r9) == false) goto L14;
        if (this.b != null) goto L9;
        return;
    L9:
        if (i.c(r11.c("traceId")) != null) goto L11;
        return;
    L11:
        this.b.a(r9, r10, r11, r12, null, true);     // Catch: Throwable -> L25
        return;
    L14:
        if ("200020".equals(r9) == true) goto L16;
        this.b.a(r9, r10, r11, r12, null, true);     // Catch: Throwable -> L25
        return;
    L16:
        if (this.b != null) goto L19;
        return;
    L19:
        if (i.c(r11.c("traceId")) == null) goto L22;
        this.b.a(r9, r10, r11, r12, null);     // Catch: Throwable -> L25
        return;
    L22:
        com.mobile.auth.k.f.a(f13553a, "CallbackResult:未知错误");     // Catch: Throwable -> L25
        return;
    L25:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L28
        return;
    L28:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
    }

    private boolean a(com.mobile.auth.e.a r13, com.cmic.sso.sdk.a r14, String r15, String r16, String r17, int r18, e r19) {
        Method r2 = null;
        r2 = com.mobile.auth.e.a.class.getDeclaredMethod("a", new Class[]{com.cmic.sso.sdk.a.class, String.class, String.class, String.class, Integer.TYPE, e.class});     // Catch: Throwable -> L7 InvocationTargetException -> L9 IllegalAccessException -> L13 NoSuchMethodException -> L18
        r2.setAccessible(true);     // Catch: Throwable -> L7 InvocationTargetException -> L9 IllegalAccessException -> L13 NoSuchMethodException -> L18
        boolean r0 = ((Boolean) r2.invoke(r13, new Object[]{r14, r15, r16, r17, Integer.valueOf(r18), r19})).booleanValue();     // Catch: Throwable -> L7 InvocationTargetException -> L9 IllegalAccessException -> L13 NoSuchMethodException -> L18
        if (r2 == null) goto L6;
        r2.setAccessible(false);     // Catch: Throwable -> L22
    L6:
        return r0;
    L13:
        e = move-exception;
        e.printStackTrace();     // Catch: Throwable -> L7
        if (r2 == null) goto L24;
    L16:
        r2.setAccessible(false);     // Catch: Throwable -> L22
    L24:
        return false;
    L18:
        e = move-exception;
        e.printStackTrace();     // Catch: Throwable -> L7
        if (r2 == null) goto L24;
    L9:
        e = move-exception;
        e.printStackTrace();     // Catch: Throwable -> L7
        if (r2 == null) goto L24;
    L7:
        th = move-exception;
        if (r2 == null) goto L27;
        r2.setAccessible(false);     // Catch: Throwable -> L22
    L27:
        throw th;     // Catch: Throwable -> L22
    L22:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L30
        return false;
    L30:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return false;
    }

    static /* synthetic */ boolean a(a r0, com.mobile.auth.e.a r1, com.cmic.sso.sdk.a r2, String r3, String r4, String r5, int r6, e r7) {
        return r0.a(r1, r2, r3, r4, r5, r6, r7);
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L8
        return false;
    L8:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return false;
    }

    static /* synthetic */ String b(a r1) {
        return r1.i;
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    }

    private f c() {
    L34:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L37
        return null;
    L37:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    L4:
        if (this.f13555e != null) goto L33;
        Field r2 = com.mobile.auth.e.a.class.getDeclaredField("b");     // Catch: Throwable -> L16 IllegalAccessException -> L18 NoSuchFieldException -> L23
    L46:
        r2.setAccessible(true);     // Catch: IllegalAccessException -> L12 NoSuchFieldException -> L14 Throwable -> L28
        this.f13555e = (f) r2.get(this.b);     // Catch: IllegalAccessException -> L12 NoSuchFieldException -> L14 Throwable -> L28
        if (r2 == null) goto L43;
    L10:
        r2.setAccessible(false);     // Catch: Throwable -> L34
    L43:
        goto L33
    L12:
        e = e;
    L20:
        e.printStackTrace();     // Catch: Throwable -> L28
        if (r2 == null) goto L43;
    L14:
        e = e;
    L25:
        e.printStackTrace();     // Catch: Throwable -> L28
        if (r2 == null) goto L43;
    L28:
        th = th;
    L29:
        if (r2 == null) goto L31;
        r2.setAccessible(false);     // Catch: Throwable -> L34
    L31:
        throw th;     // Catch: Throwable -> L34
    L18:
        e = e;
        r2 = null;
    L23:
        e = e;
        r2 = null;
    L16:
        th = th;
        r2 = null;
    L33:
        return this.f13555e;
    }

    static /* synthetic */ String c(a r1) {
        return r1.j;
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    }

    static /* synthetic */ com.cmic.sso.sdk.a d(a r1) {
        return r1.f13556f;
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    }

    private String d() {
        Method r0 = null;
        Method r2 = com.mobile.auth.e.a.class.getDeclaredMethod("e", new Class[0]);     // Catch: Throwable -> L15 InvocationTargetException -> L17 IllegalAccessException -> L22 NoSuchMethodException -> L28
    L49:
        r2.setAccessible(true);     // Catch: InvocationTargetException -> L9 IllegalAccessException -> L11 NoSuchMethodException -> L13 Throwable -> L36
        String r3 = (String) r2.invoke(this.b, new Object[0]);     // Catch: InvocationTargetException -> L9 IllegalAccessException -> L11 NoSuchMethodException -> L13 Throwable -> L36
        if (r2 == null) goto L8;
        r2.setAccessible(false);     // Catch: Throwable -> L33
    L8:
        return r3;
    L11:
        e = e;
    L24:
        e.printStackTrace();     // Catch: Throwable -> L36
        if (r2 == null) goto L35;
    L26:
        r2.setAccessible(false);     // Catch: Throwable -> L33
    L35:
        return null;
    L13:
        e = e;
    L30:
        e.printStackTrace();     // Catch: Throwable -> L36
        if (r2 == null) goto L35;
    L9:
        e = e;
    L19:
        e.printStackTrace();     // Catch: Throwable -> L36
        if (r2 == null) goto L35;
    L33:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L42
        return null;
    L42:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    L22:
        e = e;
        r2 = null;
    L28:
        e = e;
        r2 = null;
    L17:
        e = e;
        r2 = null;
    L15:
        th = th;
    L37:
        if (0 == 0) goto L39;
        r0.setAccessible(false);     // Catch: Throwable -> L33
    L39:
        throw th;     // Catch: Throwable -> L33
    L36:
        th = th;
        goto L37
    }

    static /* synthetic */ String e(a r1) {
        return r1.f13557g;
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    }

    static /* synthetic */ Handler f(a r1) {
        return r1.f13558h;
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    }

    public long a() {
        return this.b.b();
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L8
        return -1;
    L8:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return -1;
    }

    public void a(long r2) {
        this.b.a(r2);     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
    }

    public void a(e r9) {
        b r7 = new b(r9);     // Catch: Throwable -> L8
        if (i.a(this.f13557g) == true) goto L5;
        i.a(this.f13557g, r7);     // Catch: Throwable -> L8
        this.f13556f = i.d(this.f13557g);     // Catch: Throwable -> L8
    L6:
        u.a(new AnonymousClass3(this, f.a(this.f13554d)));     // Catch: Throwable -> L8
        return;
    L5:
        com.cmic.sso.sdk.a r2 = new com.cmic.sso.sdk.a(0);     // Catch: Throwable -> L8
        this.f13556f = r2;     // Catch: Throwable -> L8
        a(this.b, r2, this.i, this.j, "loginAuth", 1, r7);     // Catch: Throwable -> L8
    L8:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L11
        return;
    L11:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
    }

    public void a(e r7, int r8) {
        final b r5 = new b(r7);     // Catch: Throwable -> L4
        final com.cmic.sso.sdk.a r4 = new com.cmic.sso.sdk.a(64);     // Catch: Throwable -> L4
        r4.b("SDKRequestCode", r8);     // Catch: Throwable -> L4
        r4.b("serviceType", "login");     // Catch: Throwable -> L4
        r4.b("caller", d());     // Catch: Throwable -> L4
        r4.b("methodTimes", System.currentTimeMillis());     // Catch: Throwable -> L4
        final Context r2 = this.f13554d;     // Catch: Throwable -> L4
        u.a(new AnonymousClass1(this, r2, r4, r4, r5));     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
    }

    public void a(String r1) {
        this.i = r1;     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
    }

    public void b() {
        this.b.c();     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
    }

    public void b(e r7, int r8) {
        final b r5 = new b(r7);     // Catch: Throwable -> L4
        final com.cmic.sso.sdk.a r4 = new com.cmic.sso.sdk.a(64);     // Catch: Throwable -> L4
        r4.b("SDKRequestCode", r8);     // Catch: Throwable -> L4
        r4.b("serviceType", "authentication");     // Catch: Throwable -> L4
        r4.b("methodTimes", System.currentTimeMillis());     // Catch: Throwable -> L4
        final Context r2 = this.f13554d;     // Catch: Throwable -> L4
        u.a(new AnonymousClass2(this, r2, r4, r4, r5));     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
    }

    public void b(String r1) {
        this.j = r1;     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
    }
}
