package com.tencent.bugly.crashreport.crash;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.Pair;
import com.mobile.auth.BuildConfig;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.common.info.PlugInBean;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.ai;
import com.tencent.bugly.proguard.ak;
import com.tencent.bugly.proguard.al;
import com.tencent.bugly.proguard.am;
import com.tencent.bugly.proguard.an;
import com.tencent.bugly.proguard.n;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.q;
import com.tencent.bugly.proguard.t;
import com.tencent.bugly.proguard.u;
import com.tencent.bugly.proguard.v;
import com.tencent.bugly.proguard.y;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f13747a;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Map<Integer, Pair<String, String>> f13748g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final ArrayList<a> f13749h = null;
    private static final Map<Integer, Integer> i = null;
    private static final Map<Integer, String> j = null;
    private static final Map<Integer, String> k = null;
    private Context b;
    private v c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.tencent.bugly.crashreport.common.strategy.a f13750d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private n f13751e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private BuglyStrategy.a f13752f;

    static abstract class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f13755a;

        /* synthetic */ a(int r1, byte r2) {
            this(r1);
        }

        static /* synthetic */ boolean a(a r0, CrashDetailBean r1) {
            if (r0.f13755a != r1.b) goto L6;
            return true;
        L6:
            return false;
        }

        abstract boolean a();

        private a(int r1) {
            this.f13755a = r1;
        }
    }

    /* JADX INFO: renamed from: com.tencent.bugly.crashreport.crash.b$b, reason: collision with other inner class name */
    static class C0282b extends a {
        /* synthetic */ C0282b(byte r1) {
            this();
        }

        @Override // com.tencent.bugly.crashreport.crash.b.a
        final boolean a() {
            return com.tencent.bugly.crashreport.crash.c.a().r();
        }

        private C0282b() {
            super(3, 0);
        }
    }

    static class c extends a {
        /* synthetic */ c(byte r1) {
            this();
        }

        @Override // com.tencent.bugly.crashreport.crash.b.a
        final boolean a() {
            return true;
        }

        private c() {
            super(7, 0);
        }
    }

    static class d extends a {
        /* synthetic */ d(byte r1) {
            this();
        }

        @Override // com.tencent.bugly.crashreport.crash.b.a
        final boolean a() {
            return true;
        }

        private d() {
            super(2, 0);
        }
    }

    static class e extends a {
        /* synthetic */ e(byte r1) {
            this();
        }

        @Override // com.tencent.bugly.crashreport.crash.b.a
        final boolean a() {
            return com.tencent.bugly.crashreport.crash.c.a().q();
        }

        private e() {
            byte r0 = 0;
            super(r0, r0);
        }
    }

    static class f extends a {
        /* synthetic */ f(byte r1) {
            this();
        }

        @Override // com.tencent.bugly.crashreport.crash.b.a
        final boolean a() {
            return com.tencent.bugly.crashreport.crash.c.a().t();
        }

        private f() {
            super(5, 0);
        }
    }

    static class g extends a {
        /* synthetic */ g(byte r1) {
            this();
        }

        @Override // com.tencent.bugly.crashreport.crash.b.a
        final boolean a() {
            return com.tencent.bugly.crashreport.crash.c.a().u();
        }

        private g() {
            super(6, 0);
        }
    }

    static class h extends a {
        /* synthetic */ h(byte r1) {
            this();
        }

        @Override // com.tencent.bugly.crashreport.crash.b.a
        final boolean a() {
            return com.tencent.bugly.crashreport.crash.c.a().q();
        }

        private h() {
            super(1, 0);
        }
    }

    static class i extends a {
        /* synthetic */ i(byte r1) {
            this();
        }

        @Override // com.tencent.bugly.crashreport.crash.b.a
        final boolean a() {
            return com.tencent.bugly.crashreport.crash.c.a().s();
        }

        private i() {
            super(4, 0);
        }
    }

    static {
        f13748g = new AnonymousClass1();
        f13749h = new AnonymousClass2();
        i = new AnonymousClass3();
        j = new AnonymousClass4();
        k = new AnonymousClass5();
    }

    public b(int r1, Context r2, v r3, o r4, com.tencent.bugly.crashreport.common.strategy.a r5, BuglyStrategy.a r6, n r7) {
        f13747a = r1;
        this.b = r2;
        this.c = r3;
        this.f13750d = r5;
        this.f13752f = r6;
        this.f13751e = r7;
    }

    static /* synthetic */ void a(b r14, List r15, boolean r16, long r17, String r19, String r20) {
        if (r15 != null) goto L4;
        return;
    L4:
        if (r15.isEmpty() == true) goto L19;
        ArrayList r0 = new ArrayList();
        Iterator r1 = r15.iterator();
    L7:
        if (r1.hasNext() == false) goto L11;
        CrashDetailBean r2 = (CrashDetailBean) r1.next();
        String r6 = k.get(Integer.valueOf(r2.b));
        if (TextUtils.isEmpty(r6) == true) goto L7;
        r0.add(new t.c(r2.c, r6, r2.r, r16, r17, r19, r20));
        goto L7
    L11:
        t.a().a(r0);
        return;
    }

    private static void b(CrashDetailBean r6, List<com.tencent.bugly.crashreport.crash.a> r7) {
        StringBuilder r0 = new StringBuilder(64);
        Iterator<com.tencent.bugly.crashreport.crash.a> r8 = r7.iterator();
    L4:
        if (r8.hasNext() == false) goto L12;
        com.tencent.bugly.crashreport.crash.a r1 = r8.next();
        if (r1.f13722e == true) goto L4;
        if (r1.f13721d == true) goto L4;
        String r2 = r6.s;
        StringBuilder r3 = new StringBuilder();
        r3.append(r1.b);
        if (r2.contains(r3.toString()) == true) goto L4;
        r6.t++;
        r0.append(r1.b);
        r0.append("\n");
        goto L4
    L12:
        r6.s += r0.toString();
    }

    private static ContentValues f(CrashDetailBean r7) {
        if (r7 != null) goto L23;
        return null;
    L23:
        ContentValues r1 = new ContentValues();     // Catch: Throwable -> L18
        long r2 = r7.f13714a;     // Catch: Throwable -> L18
        if (r2 <= 0) goto L8;
        r1.put("_id", Long.valueOf(r2));     // Catch: Throwable -> L18
    L8:
        r1.put("_tm", Long.valueOf(r7.r));     // Catch: Throwable -> L18
        r1.put("_s1", r7.u);     // Catch: Throwable -> L18
        int r4 = 1;
        if (r7.f13715d == false) goto L11;
        int r3 = 1;
    L12:
        r1.put("_up", Integer.valueOf(r3));     // Catch: Throwable -> L18
        if (r7.j == true) goto L16;
        r4 = 0;
    L16:
        r1.put("_me", Integer.valueOf(r4));     // Catch: Throwable -> L18
        r1.put("_uc", Integer.valueOf(r7.l));     // Catch: Throwable -> L18
        r1.put("_dt", ab.a(r7));     // Catch: Throwable -> L18
        return r1;
    L11:
        r3 = 0;
    L18:
        th = move-exception;
        if (y.a(th) == true) goto L22;
        th.printStackTrace();
    L22:
        return null;
    }

    private static String g(CrashDetailBean r4) {
        Pair<String, String> r1 = f13748g.get(Integer.valueOf(r4.b));     // Catch: Exception -> L13
        if (r1 != null) goto L8;
        y.e("crash type error! %d", new Object[]{Integer.valueOf(r4.b)});     // Catch: Exception -> L13
        return "";
    L8:
        if (r4.j == false) goto L12;
        return (String) r1.first;
    L12:
        return (String) r1.second;
    L13:
        e = move-exception;
        y.a(e);
        return "";
    }

    private static ArrayList<ai> h(CrashDetailBean r4) {
        Map<String, PlugInBean> r0 = r4.f13719h;
        if (r0 != null) goto L5;
        return null;
    L5:
        if (r0.isEmpty() == true) goto L15;
        ArrayList<ai> r1 = new ArrayList(r4.f13719h.size());
        Iterator<Map.Entry<String, PlugInBean>> r5 = r4.f13719h.entrySet().iterator();
    L9:
        if (r5.hasNext() == false) goto L11;
        Map.Entry<String, PlugInBean> r2 = r5.next();
        ai r3 = new ai();
        r3.f13826a = r2.getValue().f13689a;
        r3.b = r2.getValue().c;
        r3.c = r2.getValue().b;
        r1.add(r3);
        goto L9
    L11:
        return r1;
    L15:
        return null;
    }

    public final void c(CrashDetailBean r3) {
        int r0 = r3.b;
        if (r0 == 0) goto L16;
        if (r0 == 1) goto L13;
        if (r0 != 3) goto L19;
        if (com.tencent.bugly.crashreport.crash.c.a().r() == true) goto L19;
        return;
    L19:
        if (this.f13751e == null) goto L22;
        y.c("Calling 'onCrashHandleEnd' of RQD crash listener.", new Object[0]);
        int r4 = r3.b;
        return;
    L22:
        return;
    L13:
        if (com.tencent.bugly.crashreport.crash.c.a().q() == true) goto L19;
        return;
    L16:
        if (com.tencent.bugly.crashreport.crash.c.a().q() == true) goto L19;
    }

    public final void d(CrashDetailBean r9) {
        if (r9 != null) goto L5;
        return;
    L5:
        if (this.f13752f == null) goto L7;
    L9:
        Iterator<a> r0 = f13749h.iterator();
    L11:
        if (r0.hasNext() == false) goto L15;
        a r1 = r0.next();
        if (a.a(r1, r9) == false) goto L11;
        boolean r2 = r1.a();
    L16:
        if (r2 == true) goto L57;
        y.c("Should not call back.", new Object[0]);
        return;
    L57:
        Map<Integer, Integer> r3 = i;     // Catch: Throwable -> L52
        if (r3.containsKey(Integer.valueOf(r9.b)) == true) goto L24;
        y.d("Cannot get crash type for crashBean type:" + r9.b, new Object[0]);     // Catch: Throwable -> L52
        return;
    L24:
        int r4 = r3.get(Integer.valueOf(r9.b)).intValue();     // Catch: Throwable -> L52
        int r5 = r9.b;     // Catch: Throwable -> L52
        byte[] r6 = null;
        if (this.f13751e == null) goto L30;
        y.c("Calling 'onCrashHandleStart' of RQD crash listener.", new Object[0]);     // Catch: Throwable -> L52
        y.c("Calling 'getCrashExtraMessage' of RQD crash listener.", new Object[0]);     // Catch: Throwable -> L52
        n r7 = this.f13751e;     // Catch: Throwable -> L52
        String r8 = r9.n;     // Catch: Throwable -> L52
        String r10 = r9.p;     // Catch: Throwable -> L52
        String r11 = r9.q;     // Catch: Throwable -> L52
        long r12 = r9.r;     // Catch: Throwable -> L52
        String r13 = r7.b();     // Catch: Throwable -> L52
        if (r13 == null) goto L32;
        Map<String, String> r14 = new HashMap(1);     // Catch: Throwable -> L52
        r14.put("userData", r13);     // Catch: Throwable -> L52
    L33:
        a(r9, r14);     // Catch: Throwable -> L52
        y.a("[crash callback] start user's callback:onCrashHandleStart2GetExtraDatas()", new Object[0]);     // Catch: Throwable -> L52
        if (this.f13751e == null) goto L37;
        y.c("Calling 'getCrashExtraData' of RQD crash listener.", new Object[0]);     // Catch: Throwable -> L52
        n r15 = this.f13751e;     // Catch: Throwable -> L52
        String r16 = r9.n;     // Catch: Throwable -> L52
        String r17 = r9.p;     // Catch: Throwable -> L52
        String r18 = r9.q;     // Catch: Throwable -> L52
        long r19 = r9.r;     // Catch: Throwable -> L52
        r6 = r15.a();     // Catch: Throwable -> L52
    L39:
        if (r6 != null) goto L42;
        y.d("extra user byte is null. CrashBean won't have userExtraByteDatas.", new Object[0]);     // Catch: Throwable -> L52
    L47:
        if (this.f13751e == null) goto L61;
        y.c("Calling 'onCrashSaving' of RQD crash listener.", new Object[0]);     // Catch: Throwable -> L52
        n r20 = this.f13751e;     // Catch: Throwable -> L52
        String r21 = r9.n;     // Catch: Throwable -> L52
        String r22 = r9.o;     // Catch: Throwable -> L52
        String r23 = r9.p;     // Catch: Throwable -> L52
        String r24 = r9.q;     // Catch: Throwable -> L52
        long r25 = r9.r;     // Catch: Throwable -> L52
        String r26 = r9.m;     // Catch: Throwable -> L52
        String r27 = r9.f13716e;     // Catch: Throwable -> L52
        String r28 = r9.c;     // Catch: Throwable -> L52
        String r29 = r9.A;     // Catch: Throwable -> L52
        String r30 = r9.B;     // Catch: Throwable -> L52
        if (r20.c() == true) goto L62;
        y.d("Crash listener 'onCrashSaving' return 'false' thus will not handle this crash.", new Object[0]);     // Catch: Throwable -> L52
        return;
    L62:
        return;
    L61:
        return;
    L42:
        if (r6.length > 100000) goto L44;
        r9.X = r6;     // Catch: Throwable -> L52
    L45:
        y.a("add extra bytes %d ", new Object[]{Integer.valueOf(r6.length)});     // Catch: Throwable -> L52
        goto L47
    L44:
        y.d("extra bytes size %d is over limit %d will drop over part", new Object[]{Integer.valueOf(r6.length), 100000});     // Catch: Throwable -> L52
        r9.X = Arrays.copyOf(r6, 100000);     // Catch: Throwable -> L52
        goto L45
    L37:
        if (this.f13752f == null) goto L39;
        y.c("Calling 'onCrashHandleStart2GetExtraDatas' of Bugly crash listener.", new Object[0]);     // Catch: Throwable -> L52
        r6 = this.f13752f.onCrashHandleStart2GetExtraDatas(r4, r9.n, r9.o, r9.q);     // Catch: Throwable -> L52
    L32:
        r14 = null;
        goto L33
    L30:
        if (this.f13752f == null) goto L32;
        y.c("Calling 'onCrashHandleStart' of Bugly crash listener.", new Object[0]);     // Catch: Throwable -> L52
        r14 = this.f13752f.onCrashHandleStart(r4, r9.n, r9.o, r9.q);     // Catch: Throwable -> L52
    L52:
        th = move-exception;
        y.d("crash handle callback something wrong! %s", new Object[]{th.getClass().getName()});
        if (y.a(th) == true) goto L63;
        th.printStackTrace();
        return;
    L63:
        return;
    L15:
        r2 = false;
        goto L16
    L7:
        if (this.f13751e != null) goto L9;
    }

    public final void e(CrashDetailBean r8) {
        if (r8 != null) goto L4;
        return;
    L4:
        ContentValues r0 = f(r8);
        if (r0 == null) goto L10;
        long r1 = o.a().a("t_cr", r0, null, true);
        if (r1 < 0) goto L11;
        y.c("insert %s success!", new Object[]{"t_cr"});
        r8.f13714a = r1;
        return;
    L11:
        return;
    }

    private static List<com.tencent.bugly.crashreport.crash.a> a(List<com.tencent.bugly.crashreport.crash.a> r9) {
        if (r9 != null) goto L4;
        return null;
    L4:
        if (r9.size() == 0) goto L24;
        long r0 = System.currentTimeMillis();
        ArrayList r2 = new ArrayList();
        Iterator<com.tencent.bugly.crashreport.crash.a> r10 = r9.iterator();
    L8:
        if (r10.hasNext() == false) goto L14;
        com.tencent.bugly.crashreport.crash.a r3 = r10.next();
        if (r3.f13721d == false) goto L8;
        if (r3.b > (r0 - 86400000)) goto L8;
        r2.add(r3);
        goto L8
    L14:
        return r2;
    L24:
        return null;
    }

    private static void e(List<CrashDetailBean> r6) {
        if (r6 == null) goto L23;
    L15:
        th = move-exception;
        if (y.a(th) == true) goto L25;
        th.printStackTrace();
        return;
    L25:
        return;
    L4:
        if (r6.size() == 0) goto L24;
        StringBuilder r0 = new StringBuilder();     // Catch: Throwable -> L15
        Iterator<CrashDetailBean> r7 = r6.iterator();     // Catch: Throwable -> L15
    L8:
        if (r7.hasNext() == false) goto L10;
        CrashDetailBean r1 = r7.next();     // Catch: Throwable -> L15
        r0.append(" or _id");     // Catch: Throwable -> L15
        r0.append(" = ");     // Catch: Throwable -> L15
        r0.append(r1.f13714a);     // Catch: Throwable -> L15
        goto L8
    L10:
        String r8 = r0.toString();     // Catch: Throwable -> L15
        if (r8.length() <= 0) goto L13;
        r8 = r8.substring(4);     // Catch: Throwable -> L15
    L13:
        r0.setLength(0);     // Catch: Throwable -> L15
        y.c("deleted %s data %d", new Object[]{"t_cr", Integer.valueOf(o.a().a("t_cr", r8, null, null, true))});     // Catch: Throwable -> L15
        return;
    L24:
        return;
    }

    private List<CrashDetailBean> c(List<com.tencent.bugly.crashreport.crash.a> r15) {
        if (r15 != null) goto L5;
    L53:
        return null;
    L5:
        if (r15.size() == 0) goto L53;
        StringBuilder r1 = new StringBuilder();
        r1.append("_id in ");
        r1.append("(");
        Iterator<com.tencent.bugly.crashreport.crash.a> r16 = r15.iterator();
    L9:
        if (r16.hasNext() == false) goto L12;
        r1.append(r16.next().f13720a);
        r1.append(",");
        goto L9
    L12:
        if (r1.toString().contains(",") == false) goto L14;
        r1 = new StringBuilder(r1.substring(0, r1.lastIndexOf(",")));
    L14:
        r1.append(")");
        String r9 = r1.toString();
        r1.setLength(0);
        Cursor r6 = o.a().a("t_cr", null, r9, null, null, true);     // Catch: Throwable -> L41
        if (r6 != null) goto L58;
        if (r6 == null) goto L19;
        r6.close();
    L19:
        return null;
    L58:
        ArrayList r7 = new ArrayList();     // Catch: Throwable -> L39
        r1.append("_id in ");     // Catch: Throwable -> L39
        r1.append("(");     // Catch: Throwable -> L39
        int r2 = 0;
    L22:
        if (r6.moveToNext() == false) goto L31;
        CrashDetailBean r3 = a(r6);     // Catch: Throwable -> L39
        if (r3 != null) goto L25;
        r1.append(r6.getLong(r6.getColumnIndex("_id")));     // Catch: Throwable -> L29
        r1.append(",");     // Catch: Throwable -> L29
    L28:
        r2 = r2 + 1;
    L29:
        y.d("unknown id!", new Object[0]);     // Catch: Throwable -> L39
        goto L22
    L25:
        r7.add(r3);     // Catch: Throwable -> L39
        goto L22
    L31:
        if (r1.toString().contains(",") == false) goto L33;
        r1 = new StringBuilder(r1.substring(0, r1.lastIndexOf(",")));     // Catch: Throwable -> L39
    L33:
        r1.append(")");     // Catch: Throwable -> L39
        String r10 = r1.toString();     // Catch: Throwable -> L39
        if (r2 <= 0) goto L36;
        y.d("deleted %s illegal data %d", new Object[]{"t_cr", Integer.valueOf(o.a().a("t_cr", r10, null, null, true))});     // Catch: Throwable -> L39
    L36:
        if (r6 == null) goto L38;
        r6.close();
    L38:
        return r7;
    L39:
        th = th;
    L56:
    L49:
        th = move-exception;
        if (r6 == null) goto L52;
        r6.close();
    L52:
        throw th;
    L44:
        if (y.a(th) == true) goto L46;
        th.printStackTrace();     // Catch: Throwable -> L49
    L46:
        if (r6 == null) goto L48;
        r6.close();
    L48:
        return null;
    L41:
        th = th;
        r6 = null;
        goto L56
    }

    public final boolean b(CrashDetailBean r18) {
        if (r18 != null) goto L6;
        y.d("CrashBean is null, won't handle.", new Object[0]);
        return true;
    L6:
        String r0 = r18.q;
        String r4 = com.tencent.bugly.crashreport.crash.c.n;
        if (r4 != null) goto L9;
    L13:
        boolean r1 = false;
    L14:
        if (r1 == false) goto L17;
        return true;
    L17:
        if (a(r18.q) == false) goto L20;
        return true;
    L20:
        if (r18.b == 2) goto L22;
        q r2 = new q();
        r2.b = 1;
        r2.c = r18.A;
        r2.f13906d = r18.B;
        r2.f13907e = r18.r;
        o.a().b(1);
        o.a().a(r2);
        y.b("[crash] a crash occur, handling...", new Object[0]);
    L23:
        List<com.tencent.bugly.crashreport.crash.a> r5 = b();
        List<com.tencent.bugly.crashreport.crash.a> r6 = new ArrayList(10);
        if (r5 == null) goto L40;
        if (r5.size() <= 0) goto L40;
        r6.addAll(a(r5));
        r5.removeAll(r6);
        if (r5.size() <= 20) goto L37;
        StringBuilder r3 = new StringBuilder();
        r3.append("_id in ");
        r3.append("(");
        r3.append("SELECT _id");
        r3.append(" FROM t_cr");
        r3.append(" order by _id");
        r3.append(" limit 5");
        r3.append(")");
        String r10 = r3.toString();
        r3.setLength(0);
        y.c("deleted first record %s data %d", new Object[]{"t_cr", Integer.valueOf(o.a().a("t_cr", r10, null, null, true))});     // Catch: Throwable -> L32
    L32:
        th = move-exception;
        if (y.a(th) == true) goto L37;
        th.printStackTrace();
    L37:
        if (b(r18, r5, r6) == false) goto L40;
        return true;
    L40:
        e(r18);
        String r9 = j.get(Integer.valueOf(r18.b));
        if (TextUtils.isEmpty(r9) == true) goto L43;
        t.a().a(new t.c(r18.c, r9, r18.r, true, 0, "realtime", null));
    L43:
        d(r6);
        y.b("[crash] save crash success", new Object[0]);
        return false;
    L22:
        y.b("[crash] a caught exception occur, handling...", new Object[0]);
        goto L23
    L9:
        if (r4.isEmpty() == true) goto L13;
        y.c("Crash filter for crash stack is: %s", new Object[]{com.tencent.bugly.crashreport.crash.c.n});
        if (r0.contains(com.tencent.bugly.crashreport.crash.c.n) == false) goto L13;
        y.d("This crash contains the filter string set. It will not be record and upload.", new Object[0]);
        r1 = true;
        goto L14
    }

    private CrashDetailBean a(List<com.tencent.bugly.crashreport.crash.a> r7, CrashDetailBean r8) {
        if (r7 != null) goto L4;
    L28:
        return r8;
    L4:
        if (r7.isEmpty() == true) goto L28;
        CrashDetailBean r0 = null;
        ArrayList r1 = new ArrayList(10);
        Iterator<com.tencent.bugly.crashreport.crash.a> r2 = r7.iterator();
    L8:
        if (r2.hasNext() == false) goto L13;
        com.tencent.bugly.crashreport.crash.a r3 = r2.next();
        if (r3.f13722e == false) goto L8;
        r1.add(r3);
        goto L8
    L13:
        if (r1.isEmpty() == true) goto L20;
        List<CrashDetailBean> r4 = c(r1);
        if (r4 == null) goto L20;
        if (r4.isEmpty() == true) goto L20;
        Collections.sort(r4);
        r0 = r4.get(0);
        a(r0, r4);
    L20:
        if (r0 != null) goto L22;
        r8.j = true;
        r8.t = 0;
        r8.s = "";
        r0 = r8;
    L22:
        b(r0, r7);
        if (r0.r == r8.r) goto L27;
        String r9 = r0.s;
        StringBuilder r5 = new StringBuilder();
        r5.append(r8.r);
        if (r9.contains(r5.toString()) == true) goto L27;
        r0.t++;
        r0.s += r8.r + "\n";
    L27:
        return r0;
    }

    private static void d(List<com.tencent.bugly.crashreport.crash.a> r9) {
        if (r9 != null) goto L4;
        return;
    L4:
        if (r9.size() == 0) goto L23;
        StringBuilder r0 = new StringBuilder();
        r0.append("_id in ");
        r0.append("(");
        Iterator<com.tencent.bugly.crashreport.crash.a> r10 = r9.iterator();
    L8:
        if (r10.hasNext() == false) goto L10;
        r0.append(r10.next().f13720a);
        r0.append(",");
        goto L8
    L10:
        StringBuilder r11 = new StringBuilder(r0.substring(0, r0.lastIndexOf(",")));
        r11.append(")");
        String r5 = r11.toString();
        r11.setLength(0);
        y.c("deleted %s data %d", new Object[]{"t_cr", Integer.valueOf(o.a().a("t_cr", r5, null, null, true))});     // Catch: Throwable -> L13
        return;
    L13:
        th = move-exception;
        if (y.a(th) == true) goto L22;
        th.printStackTrace();
        return;
    L22:
        return;
    }

    private static void a(CrashDetailBean r9, List<CrashDetailBean> r10) {
        StringBuilder r0 = new StringBuilder(128);
        int r2 = 1;
    L4:
        if (r2 >= r10.size()) goto L16;
        String r3 = r10.get(r2).s;
        if (r3 == null) goto L15;
        String[] r4 = r3.split("\n");
        if (r4 == null) goto L15;
        int r5 = r4.length;
        int r6 = 0;
    L10:
        if (r6 >= r5) goto L15;
        String r7 = r4[r6];
        if (r9.s.contains(r7) == true) goto L14;
        r9.t++;
        r0.append(r7);
        r0.append("\n");
    L14:
        r6 = r6 + 1;
    L15:
        r2 = r2 + 1;
        goto L4
    L16:
        r9.s += r0.toString();
    }

    private boolean b(CrashDetailBean r9, List<com.tencent.bugly.crashreport.crash.a> r10, List<com.tencent.bugly.crashreport.crash.a> r11) {
        int r0 = r9.b;
        if (r0 == 0) goto L7;
        if (r0 == 1) goto L7;
        boolean r3 = false;
    L9:
        if (r0 != 3) goto L11;
        boolean r1 = true;
    L13:
        if (com.tencent.bugly.b.c == true) goto L18;
        if (r1 == true) goto L17;
        if (r3 == true) goto L17;
        boolean r2 = true;
    L19:
        if (r2 == true) goto L21;
        return false;
    L21:
        ArrayList r4 = new ArrayList(10);
        if (a(r9, r10, r4) == false) goto L36;
    L25:
        y.a("same crash occur too much do merged!", new Object[0]);     // Catch: Exception -> L33
        CrashDetailBean r12 = a(r4, r9);     // Catch: Exception -> L33
        Iterator<com.tencent.bugly.crashreport.crash.a> r13 = r4.iterator();     // Catch: Exception -> L33
    L27:
        if (r13.hasNext() == false) goto L31;
        com.tencent.bugly.crashreport.crash.a r5 = r13.next();     // Catch: Exception -> L33
        if (r5.f13720a == r12.f13714a) goto L27;
        r11.add(r5);     // Catch: Exception -> L33
        goto L27
    L31:
        e(r12);     // Catch: Exception -> L33
        d(r11);     // Catch: Exception -> L33
        y.b("[crash] save crash success. For this device crash many times, it will not upload crashes immediately", new Object[0]);     // Catch: Exception -> L33
        return true;
    L33:
        e = move-exception;
        y.a(e);
        y.d("Failed to merge crash.", new Object[0]);
    L35:
        return false;
    L36:
        if (r4.size() < com.tencent.bugly.crashreport.crash.c.c) goto L35;
    L17:
        r2 = com.tencent.bugly.crashreport.crash.c.f13757d;
        goto L19
    L18:
        r2 = false;
        goto L19
    L11:
        r1 = false;
    L7:
        r3 = true;
        goto L9
    }

    public final boolean a(CrashDetailBean r1) {
        return b(r1);
    }

    private static boolean a(String r5) {
        String r0 = com.tencent.bugly.crashreport.crash.c.o;
        if (r0 != null) goto L5;
    L12:
        return false;
    L5:
        if (r0.isEmpty() == true) goto L12;
        y.c("Crash regular filter for crash stack is: %s", new Object[]{com.tencent.bugly.crashreport.crash.c.o});     // Catch: Exception -> L10
        if (Pattern.compile(com.tencent.bugly.crashreport.crash.c.o).matcher(r5).find() == false) goto L12;
        y.d("This crash matches the regular filter string set. It will not be record and upload.", new Object[0]);     // Catch: Exception -> L10
        return true;
    L10:
        e = move-exception;
        y.a(e);
        y.d("Failed to compile " + com.tencent.bugly.crashreport.crash.c.o, new Object[0]);
        goto L12
    }

    private void b(List<com.tencent.bugly.crashreport.crash.a> r14) {
        List<CrashDetailBean> r15 = c(r14);
        if (r15 != null) goto L5;
        return;
    L5:
        if (r15.isEmpty() == true) goto L21;
        ArrayList r0 = new ArrayList();
        Iterator<CrashDetailBean> r16 = r15.iterator();
    L9:
        if (r16.hasNext() == false) goto L13;
        CrashDetailBean r1 = r16.next();
        String r5 = k.get(Integer.valueOf(r1.b));
        if (TextUtils.isEmpty(r5) == true) goto L9;
        y.c("find expired data,crashId:%s eventType:%s", new Object[]{r1.c, r5});
        r0.add(new t.c(r1.c, r5, r1.r, false, 0, "expired", null));
        goto L9
    L13:
        t.a().a(r0);
        return;
    }

    private static void c(ArrayList<ak> r4, String r5) {
        if (ab.a(r5) == true) goto L11;
        ak r0 = new ak((byte) 1, "crashInfos.txt", r5.getBytes("utf-8"));     // Catch: Exception -> L6
        y.c("attach crash infos", new Object[0]);     // Catch: Exception -> L6
        r4.add(r0);     // Catch: Exception -> L6
        return;
    L6:
        e = move-exception;
        e.printStackTrace();
        y.a(e);
        return;
    }

    private static boolean a(CrashDetailBean r4, List<com.tencent.bugly.crashreport.crash.a> r5, List<com.tencent.bugly.crashreport.crash.a> r6) {
        Iterator<com.tencent.bugly.crashreport.crash.a> r7 = r5.iterator();
        boolean r0 = false;
    L4:
        if (r7.hasNext() == false) goto L11;
        com.tencent.bugly.crashreport.crash.a r1 = r7.next();
        if (r4.u.equals(r1.c) == false) goto L4;
        if (r1.f13722e == false) goto L10;
        r0 = true;
    L10:
        r6.add(r1);
        goto L4
    L11:
        return r0;
    }

    public final List<CrashDetailBean> a() {
        StrategyBean r1 = com.tencent.bugly.crashreport.common.strategy.a.a().c();
        if (r1 != null) goto L7;
        y.d("have not synced remote!", new Object[0]);
        return null;
    L7:
        if (r1.f13699e == true) goto L10;
        y.d("Crashreport remote closed, please check your APP ID correct and Version available, then uninstall and reinstall your app.", new Object[0]);
        y.b("[init] WARNING! Crashreport closed by server, please check your APP ID correct and Version available, then uninstall and reinstall your app.", new Object[0]);
        return null;
    L10:
        long r4 = System.currentTimeMillis();
        long r6 = ab.b();
        List<com.tencent.bugly.crashreport.crash.a> r2 = b();
        y.c("Size of crash list loaded from DB: %s", new Object[]{Integer.valueOf(r2.size())});
        if (r2 != null) goto L13;
    L51:
        return null;
    L13:
        if (r2.size() <= 0) goto L51;
        ArrayList r3 = new ArrayList();
        List<com.tencent.bugly.crashreport.crash.a> r5 = new ArrayList();
        r3.addAll(a(r2));
        r2.removeAll(r3);
        Iterator<com.tencent.bugly.crashreport.crash.a> r8 = r2.iterator();
    L17:
        if (r8.hasNext() == false) goto L34;
        com.tencent.bugly.crashreport.crash.a r9 = r8.next();
        long r10 = r9.b;
        if (r10 < (r6 - com.tencent.bugly.crashreport.crash.c.f13760g)) goto L20;
        if (r9.f13721d == true) goto L24;
        if (r9.f13723f < 3) goto L17;
        if (r10 >= (r4 - 86400000)) goto L17;
        r8.remove();
        r3.add(r9);
        goto L17
    L24:
        if (r10 >= (r4 - 86400000)) goto L25;
        if (r9.f13722e == true) goto L17;
        r8.remove();
        r3.add(r9);
        goto L17
    L25:
        r8.remove();
        goto L17
    L20:
        r5.add(r9);
        r8.remove();
        r3.add(r9);
        goto L17
    L34:
        b(r5);
        if (r3.size() <= 0) goto L37;
        d(r3);
    L37:
        ArrayList r7 = new ArrayList();
        List<CrashDetailBean> r11 = c(r2);
        if (r11 == null) goto L48;
        if (r11.size() <= 0) goto L48;
        String r12 = com.tencent.bugly.crashreport.common.info.a.b().i;
        Iterator<CrashDetailBean> r13 = r11.iterator();
    L43:
        if (r13.hasNext() == false) goto L48;
        CrashDetailBean r14 = r13.next();
        if (r12.equals(r14.f13717f) == true) goto L43;
        r13.remove();
        r7.add(r14);
    L48:
        if (r7.size() <= 0) goto L50;
        e(r7);
    L50:
        return r11;
    }

    private static com.tencent.bugly.crashreport.crash.a b(Cursor r5) {
        if (r5 != null) goto L19;
        return null;
    L19:
        com.tencent.bugly.crashreport.crash.a r1 = new com.tencent.bugly.crashreport.crash.a();     // Catch: Throwable -> L14
        r1.f13720a = r5.getLong(r5.getColumnIndex("_id"));     // Catch: Throwable -> L14
        r1.b = r5.getLong(r5.getColumnIndex("_tm"));     // Catch: Throwable -> L14
        r1.c = r5.getString(r5.getColumnIndex("_s1"));     // Catch: Throwable -> L14
        boolean r3 = false;
        if (r5.getInt(r5.getColumnIndex("_up")) != 1) goto L8;
        boolean r2 = true;
    L9:
        r1.f13721d = r2;     // Catch: Throwable -> L14
        if (r5.getInt(r5.getColumnIndex("_me")) != 1) goto L12;
        r3 = true;
    L12:
        r1.f13722e = r3;     // Catch: Throwable -> L14
        r1.f13723f = r5.getInt(r5.getColumnIndex("_uc"));     // Catch: Throwable -> L14
        return r1;
    L8:
        r2 = false;
    L14:
        th = move-exception;
        if (y.a(th) == true) goto L18;
        th.printStackTrace();
    L18:
        return null;
    }

    private List<com.tencent.bugly.crashreport.crash.a> b() {
        ArrayList r1 = new ArrayList();
        Cursor r2 = null;
        Cursor r3 = o.a().a("t_cr", new String[]{"_id", "_tm", "_s1", "_up", "_me", "_uc"}, null, null, null, true);     // Catch: Throwable -> L35
        if (r3 != null) goto L46;
        if (r3 == null) goto L7;
        r3.close();
    L7:
        return null;
    L46:
    L33:
        th = th;
        r2 = r3;
    L48:
    L42:
        th = move-exception;
        if (r2 == null) goto L45;
        r2.close();
    L45:
        throw th;
    L37:
        if (y.a(th) == true) goto L39;
        th.printStackTrace();     // Catch: Throwable -> L42
    L39:
        if (r2 == null) goto L41;
        r2.close();
    L41:
        return r1;
    L9:
        if (r3.getCount() > 0) goto L13;
        if (r3 == null) goto L12;
        r3.close();
    L12:
        return r1;
    L13:
        StringBuilder r0 = new StringBuilder();     // Catch: Throwable -> L33
        r0.append("_id in ");     // Catch: Throwable -> L33
        r0.append("(");     // Catch: Throwable -> L33
        int r4 = 0;
    L16:
        if (r3.moveToNext() == false) goto L25;
        com.tencent.bugly.crashreport.crash.a r5 = b(r3);     // Catch: Throwable -> L33
        if (r5 != null) goto L19;
        r0.append(r3.getLong(r3.getColumnIndex("_id")));     // Catch: Throwable -> L23
        r0.append(",");     // Catch: Throwable -> L23
    L22:
        r4 = r4 + 1;
    L23:
        y.d("unknown id!", new Object[0]);     // Catch: Throwable -> L33
        goto L16
    L19:
        r1.add(r5);     // Catch: Throwable -> L33
        goto L16
    L25:
        if (r0.toString().contains(",") == false) goto L27;
        r0 = new StringBuilder(r0.substring(0, r0.lastIndexOf(",")));     // Catch: Throwable -> L33
    L27:
        r0.append(")");     // Catch: Throwable -> L33
        String r8 = r0.toString();     // Catch: Throwable -> L33
        r0.setLength(0);     // Catch: Throwable -> L33
        if (r4 <= 0) goto L30;
        y.d("deleted %s illegal data %d", new Object[]{"t_cr", Integer.valueOf(o.a().a("t_cr", r8, null, null, true))});     // Catch: Throwable -> L33
    L30:
        if (r3 == null) goto L32;
        r3.close();
    L32:
        return r1;
    L35:
        th = th;
        goto L48
    }

    private static void b(ArrayList<ak> r4, String r5) {
        if (r5 == null) goto L10;
        r4.add(new ak((byte) 1, "jniLog.txt", r5.getBytes("utf-8")));     // Catch: Exception -> L5
        return;
    L5:
        e = move-exception;
        e.printStackTrace();
        y.a(e);
        return;
    }

    private static void b(ArrayList<ak> r2, CrashDetailBean r3, Context r4) {
        if (r3.b == 1) goto L5;
        return;
    L5:
        String r5 = r3.v;
        if (r5 == null) goto L17;
        ak r6 = a("tomb.zip", r4, r5);     // Catch: Exception -> L11
        if (r6 == null) goto L16;
        y.c("attach tombs", new Object[0]);     // Catch: Exception -> L11
        r2.add(r6);     // Catch: Exception -> L11
        return;
    L16:
        return;
    L11:
        e = move-exception;
        y.a(e);
        return;
    }

    public final void a(CrashDetailBean r9, long r10, boolean r12) {
        if (com.tencent.bugly.crashreport.crash.c.l == false) goto L10;
        y.a("try to upload right now", new Object[0]);
        ArrayList r2 = new ArrayList();
        r2.add(r9);
        if (r9.b != 7) goto L7;
        boolean r6 = true;
    L8:
        a(r2, 3000, r12, r6, r12);
        return;
    L7:
        r6 = false;
        goto L8
    L10:
        y.a("do not upload spot crash right now, crash would be uploaded when app next start", new Object[0]);
    }

    private static void b(ArrayList<ak> r3, byte[] r4) {
        if (r4 != null) goto L4;
        return;
    L4:
        if (r4.length <= 0) goto L13;
        r3.add(new ak((byte) 1, "userExtraByteData", r4));     // Catch: Exception -> L7
        y.c("attach extraData", new Object[0]);     // Catch: Exception -> L7
        return;
    L7:
        e = move-exception;
        y.a(e);
        return;
    }

    /* JADX WARN: Type inference failed for: r2v11, types: [com.tencent.bugly.proguard.ai, com.tencent.bugly.proguard.aj] */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v2 */
    public final void a(final List<CrashDetailBean> r20, long r21, final boolean r23, boolean r24, boolean r25) {
        int r8 = 0;
        if (com.tencent.bugly.crashreport.common.info.a.a(this.b).f13692e == true) goto L6;
        y.d("warn: not upload process", new Object[0]);
        return;
    L6:
        v r0 = this.c;
        if (r0 != null) goto L10;
        y.d("warn: upload manager is null", new Object[0]);
        return;
    L10:
        if (r25 == false) goto L12;
    L15:
        StrategyBean r1 = this.f13750d.c();
        if (r1.f13699e == true) goto L19;
        y.d("remote report is disable!", new Object[0]);
        y.b("[crash] server closed bugly in this app. please check your appid if is correct, and re-install it", new Object[0]);
        return;
    L19:
        if (r20 != null) goto L21;
    L77:
        y.d("warn: crashList is null or crashList num is 0", new Object[0]);
        return;
    L21:
        if (r20.size() == 0) goto L77;
        int r9 = 1;
        String r13 = r1.q;     // Catch: Throwable -> L72
        String r14 = StrategyBean.b;     // Catch: Throwable -> L72
        Context r2 = this.b;     // Catch: Throwable -> L72
        com.tencent.bugly.crashreport.common.info.a r3 = com.tencent.bugly.crashreport.common.info.a.b();     // Catch: Throwable -> L72
        ?? r4 = 0;
        if (r2 == null) goto L55;
        if (r20 == null) goto L55;
        if (r20.size() == 0) goto L55;
        if (r3 == null) goto L55;
        am r5 = new am();     // Catch: Throwable -> L72
        r5.f13838a = new ArrayList();     // Catch: Throwable -> L72
        Iterator<CrashDetailBean> r6 = r20.iterator();     // Catch: Throwable -> L72
    L33:
        if (r6.hasNext() == false) goto L54;
        CrashDetailBean r7 = r6.next();     // Catch: Throwable -> L72
        ArrayList<al> r10 = r5.f13838a;     // Catch: Throwable -> L72
        if (r2 == null) goto L52;
        if (r7 == null) goto L52;
        if (r3 == null) goto L52;
        al r11 = new al();     // Catch: Throwable -> L72
        r11.f13832a = g(r7);     // Catch: Throwable -> L72
        r11.b = r7.r;     // Catch: Throwable -> L72
        r11.c = r7.n;     // Catch: Throwable -> L72
        r11.f13833d = r7.o;     // Catch: Throwable -> L72
        r11.f13834e = r7.p;     // Catch: Throwable -> L72
        r11.f13836g = r7.q;     // Catch: Throwable -> L72
        r11.f13837h = r7.z;     // Catch: Throwable -> L72
        r11.i = r7.c;     // Catch: Throwable -> L72
        r11.j = r4;     // Catch: Throwable -> L72
        r11.l = r7.m;     // Catch: Throwable -> L72
        r11.m = r7.f13716e;     // Catch: Throwable -> L72
        r11.f13835f = r7.B;     // Catch: Throwable -> L72
        r11.n = r4;     // Catch: Throwable -> L72
        r11.p = h(r7);     // Catch: Throwable -> L72
        Object[] r12 = new Object[r9];     // Catch: Throwable -> L72
        r12[r8] = r11.o;     // Catch: Throwable -> L72
        y.c("libInfo %s", r12);     // Catch: Throwable -> L72
        ArrayList<ak> r15 = new ArrayList(20);     // Catch: Throwable -> L72
        a(r15, r7);     // Catch: Throwable -> L72
        a(r15, r7.w);     // Catch: Throwable -> L72
        b(r15, r7.x);     // Catch: Throwable -> L72
        c(r15, r7.Y);     // Catch: Throwable -> L72
        a(r15, r7.Z, r2);     // Catch: Throwable -> L72
        a(r15, r7.y);     // Catch: Throwable -> L72
        a(r15, r7, r2);     // Catch: Throwable -> L72
        b(r15, r7, r2);     // Catch: Throwable -> L72
        a(r15, r3.B);     // Catch: Throwable -> L72
        b(r15, r7.X);     // Catch: Throwable -> L72
        r11.q = r15;     // Catch: Throwable -> L72
        if (r7.j == false) goto L42;
        r11.k = r7.t;     // Catch: Throwable -> L72
    L42:
        r11.r = a(r7, r3);     // Catch: Throwable -> L72
        r11.s = new HashMap();     // Catch: Throwable -> L72
        Map<String, String> r16 = r7.R;     // Catch: Throwable -> L72
        if (r16 != null) goto L45;
    L47:
        Map<String, String> r17 = r11.s;     // Catch: Throwable -> L72
        y.c("pss:" + r7.I + " vss:" + r7.J + " javaHeap:" + r7.K, new Object[r8]);     // Catch: Throwable -> L72
        StringBuilder r18 = new StringBuilder();     // Catch: Throwable -> L72
        r18.append(r7.I);     // Catch: Throwable -> L72
        r17.put("SDK_UPLOAD_U1", r18.toString());     // Catch: Throwable -> L72
        StringBuilder r19 = new StringBuilder();     // Catch: Throwable -> L72
        r19.append(r7.J);     // Catch: Throwable -> L72
        r17.put("SDK_UPLOAD_U2", r19.toString());     // Catch: Throwable -> L72
        StringBuilder r22 = new StringBuilder();     // Catch: Throwable -> L72
        r22.append(r7.K);     // Catch: Throwable -> L72
        r17.put("SDK_UPLOAD_U3", r22.toString());     // Catch: Throwable -> L72
        Object[] r26 = new Object[12];     // Catch: Throwable -> L72
        r26[r8] = r7.n;     // Catch: Throwable -> L72
        r26[1] = r7.c;     // Catch: Throwable -> L72
        r26[2] = r3.e();     // Catch: Throwable -> L72
        r26[3] = Long.valueOf((r7.r - r7.P) / 1000);     // Catch: Throwable -> L72
        r26[4] = Boolean.valueOf(r7.k);     // Catch: Throwable -> L72
        r26[5] = Boolean.valueOf(r7.Q);     // Catch: Throwable -> L72
        r26[6] = Boolean.valueOf(r7.j);     // Catch: Throwable -> L72
        if (r7.b != 1) goto L50;
        boolean r110 = true;
    L51:
        r26[7] = Boolean.valueOf(r110);     // Catch: Throwable -> L72
        r26[8] = Integer.valueOf(r7.t);     // Catch: Throwable -> L72
        r26[9] = r7.s;     // Catch: Throwable -> L72
        r26[10] = Boolean.valueOf(r7.f13715d);     // Catch: Throwable -> L72
        r26[11] = Integer.valueOf(r11.r.size());     // Catch: Throwable -> L72
        y.c("%s rid:%s sess:%s ls:%ds isR:%b isF:%b isM:%b isN:%b mc:%d ,%s ,isUp:%b ,vm:%d", r26);     // Catch: Throwable -> L72
        al r111 = r11;
    L53:
        r10.add(r111);     // Catch: Throwable -> L72
        r5 = r5;
        r4 = 0;
        r8 = 0;
        r9 = 1;
        goto L33
    L50:
        r110 = false;
        goto L51
    L45:
        if (r16.size() <= 0) goto L47;
        r11.s.putAll(r7.R);     // Catch: Throwable -> L72
        Object[] r112 = new Object[r9];     // Catch: Throwable -> L72
        r112[r8] = Integer.valueOf(r11.s.size());     // Catch: Throwable -> L72
        y.a("setted message size %d", r112);     // Catch: Throwable -> L72
    L52:
        y.d("enExp args == null", new Object[0]);     // Catch: Throwable -> L72
        r111 = null;
        goto L53
    L54:
        am r27 = r5;
        int r28 = 0;
    L56:
        if (r27 != null) goto L59;
        y.d("create eupPkg fail!", new Object[r28]);     // Catch: Throwable -> L72
        return;
    L59:
        byte[] r29 = com.tencent.bugly.proguard.a.a(r27);     // Catch: Throwable -> L72
        if (r29 != null) goto L63;
        y.d("send encode fail!", new Object[0]);     // Catch: Throwable -> L72
        return;
    L63:
        an r113 = com.tencent.bugly.proguard.a.a(this.b, 830, r29);     // Catch: Throwable -> L72
        if (r113 != null) goto L67;
        y.d("request package is null.", new Object[0]);     // Catch: Throwable -> L72
        return;
    L67:
        final long r30 = System.currentTimeMillis();     // Catch: Throwable -> L72
        u r114 = new AnonymousClass6(this, r30, r20, r23);     // Catch: Throwable -> L72
        if (r23 == false) goto L70;
        this.c.a(f13747a, r113, r13, r14, r114, r21, r24);     // Catch: Throwable -> L72
        return;
    L70:
        this.c.a(f13747a, r113, r13, r14, r114, false);     // Catch: Throwable -> L72
        return;
    L55:
        r28 = 0;
        y.d("enEXPPkg args == null!", new Object[0]);     // Catch: Throwable -> L72
        r27 = null;
    L72:
        th = move-exception;
        y.e("req cr error %s", new Object[]{th.toString()});
        if (y.b(th) == true) goto L84;
        th.printStackTrace();
        return;
    L84:
        return;
    L12:
        if (r0.b(com.tencent.bugly.crashreport.crash.c.f13756a) == true) goto L15;
        y.d("warn: not crashHappen or not should upload", new Object[0]);
    }

    public static void a(boolean r9, List<CrashDetailBean> r10) {
        if (r10 != null) goto L5;
    L15:
        if (r9 == true) goto L20;
        y.b("[crash] upload fail.", new Object[0]);
        return;
    L20:
        return;
    L5:
        if (r10.size() <= 0) goto L15;
        y.c("up finish update state %b", new Object[]{Boolean.valueOf(r9)});
        Iterator<CrashDetailBean> r2 = r10.iterator();
    L8:
        if (r2.hasNext() == false) goto L10;
        CrashDetailBean r3 = r2.next();
        y.c("pre uid:%s uc:%d re:%b me:%b", new Object[]{r3.c, Integer.valueOf(r3.l), Boolean.valueOf(r3.f13715d), Boolean.valueOf(r3.j)});
        int r5 = r3.l + 1;
        r3.l = r5;
        r3.f13715d = r9;
        y.c("set uid:%s uc:%d re:%b me:%b", new Object[]{r3.c, Integer.valueOf(r5), Boolean.valueOf(r3.f13715d), Boolean.valueOf(r3.j)});
        goto L8
    L10:
        Iterator<CrashDetailBean> r4 = r10.iterator();
    L12:
        if (r4.hasNext() == false) goto L14;
        com.tencent.bugly.crashreport.crash.c.a().a(r4.next());
        goto L12
    L14:
        y.c("update state size %d", new Object[]{Integer.valueOf(r10.size())});
        goto L15
    }

    private static CrashDetailBean a(Cursor r4) {
        if (r4 != null) goto L17;
        return null;
    L17:
        byte[] r1 = r4.getBlob(r4.getColumnIndex("_dt"));     // Catch: Throwable -> L12
        if (r1 != null) goto L8;
        return null;
    L8:
        long r2 = r4.getLong(r4.getColumnIndex("_id"));     // Catch: Throwable -> L12
        CrashDetailBean r5 = (CrashDetailBean) ab.a(r1, CrashDetailBean.CREATOR);     // Catch: Throwable -> L12
        if (r5 == null) goto L11;
        r5.f13714a = r2;     // Catch: Throwable -> L12
    L11:
        return r5;
    L12:
        th = move-exception;
        if (y.a(th) == true) goto L16;
        th.printStackTrace();
    L16:
        return null;
    }

    private static ak a(String r6, Context r7, String r8) {
        if (r8 == null) goto L58;
        if (r7 == null) goto L58;
        y.c("zip %s", new Object[]{r8});
        File r4 = new File(r8);
        File r9 = new File(r7.getCacheDir(), r6);
        if (ab.a(r4, r9, 5000) == true) goto L10;
        y.d("zip fail!", new Object[0]);
        return null;
    L10:
        ByteArrayOutputStream r10 = new ByteArrayOutputStream();
        FileInputStream r11 = new FileInputStream(r9);     // Catch: Throwable -> L30
        byte[] r5 = new byte[4096];     // Catch: Throwable -> L28
    L14:
        int r12 = r11.read(r5);     // Catch: Throwable -> L28
        if (r12 <= 0) goto L17;
        r10.write(r5, 0, r12);     // Catch: Throwable -> L28
        r10.flush();     // Catch: Throwable -> L28
        goto L14
    L17:
        byte[] r13 = r10.toByteArray();     // Catch: Throwable -> L28
        y.c("read bytes :%d", new Object[]{Integer.valueOf(r13.length)});     // Catch: Throwable -> L28
        ak r3 = new ak((byte) 2, r9.getName(), r13);     // Catch: Throwable -> L28
        r11.close();     // Catch: IOException -> L20
    L25:
        if (r9.exists() == false) goto L27;
        y.c("del tmp", new Object[0]);
        r9.delete();
    L27:
        return r3;
    L20:
        e = move-exception;
        if (y.a(e) == true) goto L25;
        e.printStackTrace();
    L28:
        th = th;
    L64:
    L46:
        th = move-exception;
        if (r11 == null) goto L55;
        r11.close();     // Catch: IOException -> L50
    L50:
        e = move-exception;
        if (y.a(e) == true) goto L55;
        e.printStackTrace();
    L55:
        if (r9.exists() == false) goto L57;
        y.c("del tmp", new Object[0]);
        r9.delete();
    L57:
        throw th;
    L33:
        if (y.a(th) == true) goto L35;
        th.printStackTrace();     // Catch: Throwable -> L46
    L35:
        if (r11 == null) goto L43;
        r11.close();     // Catch: IOException -> L38
    L38:
        e = move-exception;
        if (y.a(e) == true) goto L43;
        e.printStackTrace();
    L43:
        if (r9.exists() == false) goto L45;
        y.c("del tmp", new Object[0]);
        r9.delete();
    L45:
        return null;
    L30:
        th = th;
        r11 = null;
    L58:
        y.d("rqdp{  createZipAttachment sourcePath == null || context == null ,pls check}", new Object[0]);
        return null;
    }

    public static void a(String r7, String r8, String r9, String r10, String r11, CrashDetailBean r12) {
        com.tencent.bugly.crashreport.common.info.a r0 = com.tencent.bugly.crashreport.common.info.a.b();
        if (r0 != null) goto L5;
        return;
    L5:
        y.e("#++++++++++Record By Bugly++++++++++#", new Object[0]);
        y.e("# You can use Bugly(http:\\\\bugly.qq.com) to get more Crash Detail!", new Object[0]);
        y.e("# PKG NAME: %s", new Object[]{r0.c});
        y.e("# APP VER: %s", new Object[]{r0.i});
        y.e("# SDK VER: %s", new Object[]{r0.f13693f});
        y.e("# LAUNCH TIME: %s", new Object[]{ab.a(new Date(com.tencent.bugly.crashreport.common.info.a.b().f13690a))});
        y.e("# CRASH TYPE: %s", new Object[]{r7});
        y.e("# CRASH TIME: %s", new Object[]{r8});
        y.e("# CRASH PROCESS: %s", new Object[]{r9});
        y.e("# CRASH FOREGROUND: %s", new Object[]{Boolean.valueOf(r0.a())});
        y.e("# CRASH THREAD: %s", new Object[]{r10});
        if (r12 == null) goto L22;
        y.e("# REPORT ID: %s", new Object[]{r12.c});
        Object[] r13 = new Object[2];
        r13[0] = r0.l();
        if (r0.v().booleanValue() == false) goto L10;
        String r14 = "ROOTED";
    L11:
        r13[1] = r14;
        y.e("# CRASH DEVICE: %s %s", r13);
        y.e("# RUNTIME AVAIL RAM:%d ROM:%d SD:%d", new Object[]{Long.valueOf(r12.C), Long.valueOf(r12.D), Long.valueOf(r12.E)});
        y.e("# RUNTIME TOTAL RAM:%d ROM:%d SD:%d", new Object[]{Long.valueOf(r12.F), Long.valueOf(r12.G), Long.valueOf(r12.H)});
        if (ab.a(r12.N) == true) goto L15;
        y.e("# EXCEPTION FIRED BY %s %s", new Object[]{r12.N, r12.M});
        goto L22
    L15:
        if (r12.b != 3) goto L22;
        Object[] r15 = new Object[1];
        if (r12.S != null) goto L19;
        String r16 = BuildConfig.COMMON_MODULE_COMMIT_ID;
    L20:
        r15[0] = r16;
        y.e("# EXCEPTION ANR MESSAGE:\n %s", r15);
        goto L22
    L19:
        r16 = r12.S.get("BUGLY_CR_01");
        goto L20
    L10:
        r14 = "UNROOT";
    L22:
        if (ab.a(r11) == true) goto L24;
        y.e("# CRASH STACK: ", new Object[0]);
        y.e(r11, new Object[0]);
    L24:
        y.e("#++++++++++++++++++++++++++++++++++++++++++#", new Object[0]);
    }

    private static void a(CrashDetailBean r7, Map<String, String> r8) {
        if (r8 != null) goto L5;
    L23:
        y.d("extra map is empty. CrashBean won't have userDatas.", new Object[0]);
        return;
    L5:
        if (r8.isEmpty() == true) goto L23;
        r7.R = new LinkedHashMap(r8.size());
        Iterator<Map.Entry<String, String>> r9 = r8.entrySet().iterator();
    L9:
        if (r9.hasNext() == false) goto L22;
        Map.Entry<String, String> r1 = r9.next();
        if (ab.a(r1.getKey()) == true) goto L9;
        String r2 = r1.getKey();
        if (r2.length() <= 100) goto L16;
        r2 = r2.substring(0, 100);
        y.d("setted key length is over limit %d substring to %s", new Object[]{100, r2});
    L16:
        if (ab.a(r1.getValue()) == false) goto L18;
    L20:
        String r3 = r1.getValue();
    L21:
        r7.R.put(r2, r3);
        y.a("add setted key %s value size:%d", new Object[]{r2, Integer.valueOf(r3.length())});
        goto L9
    L18:
        if (r1.getValue().length() <= 100000) goto L20;
        r3 = r1.getValue().substring(r1.getValue().length() - 100000);
        y.d("setted %s value length is over limit %d substring", new Object[]{r2, 100000});
        goto L21
    }

    private static void a(ArrayList<ak> r4, CrashDetailBean r5) {
        if (r5.j == true) goto L5;
        return;
    L5:
        String r0 = r5.s;
        if (r0 != null) goto L8;
        return;
    L8:
        if (r0.length() <= 0) goto L17;
        r4.add(new ak((byte) 1, "alltimes.txt", r5.s.getBytes("utf-8")));     // Catch: Exception -> L11
        return;
    L11:
        e = move-exception;
        e.printStackTrace();
        y.a(e);
        return;
    }

    private static void a(ArrayList<ak> r4, String r5) {
        if (r5 == null) goto L10;
        r4.add(new ak((byte) 1, "log.txt", r5.getBytes("utf-8")));     // Catch: Exception -> L5
        return;
    L5:
        e = move-exception;
        e.printStackTrace();
        y.a(e);
        return;
    }

    private static void a(ArrayList<ak> r1, String r2, Context r3) {
        if (r2 == null) goto L13;
        ak r4 = a("backupRecord.zip", r3, r2);     // Catch: Exception -> L7
        if (r4 == null) goto L12;
        y.c("attach backup record", new Object[0]);     // Catch: Exception -> L7
        r1.add(r4);     // Catch: Exception -> L7
        return;
    L12:
        return;
    L7:
        e = move-exception;
        y.a(e);
        return;
    }

    private static void a(ArrayList<ak> r3, byte[] r4) {
        if (r4 != null) goto L4;
        return;
    L4:
        if (r4.length <= 0) goto L13;
        ak r0 = new ak((byte) 2, "buglylog.zip", r4);     // Catch: Exception -> L7
        y.c("attach user log", new Object[0]);     // Catch: Exception -> L7
        r3.add(r0);     // Catch: Exception -> L7
        return;
    L7:
        e = move-exception;
        y.a(e);
        return;
    }

    private static void a(ArrayList<ak> r7, CrashDetailBean r8, Context r9) {
        if (r8.b == 3) goto L5;
        return;
    L5:
        y.c("crashBean.anrMessages:%s", new Object[]{r8.S});
        Map<String, String> r2 = r8.S;     // Catch: Exception -> L20
        if (r2 != null) goto L9;
    L14:
        String r10 = r8.v;     // Catch: Exception -> L20
        if (r10 == null) goto L25;
        ak r11 = a("trace.zip", r9, r10);     // Catch: Exception -> L20
        if (r11 == null) goto L26;
        y.c("attach traces", new Object[0]);     // Catch: Exception -> L20
        r7.add(r11);     // Catch: Exception -> L20
        return;
    L26:
        return;
    L25:
        return;
    L9:
        if (r2.containsKey("BUGLY_CR_01") == false) goto L14;
        if (TextUtils.isEmpty(r8.S.get("BUGLY_CR_01")) == true) goto L13;
        r7.add(new ak((byte) 1, "anrMessage.txt", r8.S.get("BUGLY_CR_01").getBytes("utf-8")));     // Catch: Exception -> L20
        y.c("attach anr message", new Object[0]);     // Catch: Exception -> L20
    L13:
        r8.S.remove("BUGLY_CR_01");     // Catch: Exception -> L20
    L20:
        e = move-exception;
        e.printStackTrace();
        y.a(e);
    }

    private static void a(ArrayList<ak> r4, List<String> r5) {
        if (r5 != null) goto L4;
        return;
    L4:
        if (r5.isEmpty() == true) goto L17;
        StringBuilder r0 = new StringBuilder();
        Iterator<String> r6 = r5.iterator();
    L7:
        if (r6.hasNext() == false) goto L14;
        r0.append(r6.next());
        goto L7
    L14:
        r4.add(new ak((byte) 1, "martianlog.txt", r0.toString().getBytes("utf-8")));     // Catch: Exception -> L11
        y.c("attach pageTracingList", new Object[0]);     // Catch: Exception -> L11
        return;
    L11:
        e = move-exception;
        e.printStackTrace();
        return;
    }

    private static Map<String, String> a(CrashDetailBean r6, com.tencent.bugly.crashreport.common.info.a r7) {
        HashMap r0 = new HashMap(30);
        StringBuilder r2 = new StringBuilder();     // Catch: Exception -> L15
        r2.append(r6.C);     // Catch: Exception -> L15
        r0.put("A9", r2.toString());     // Catch: Exception -> L15
        StringBuilder r3 = new StringBuilder();     // Catch: Exception -> L15
        r3.append(r6.D);     // Catch: Exception -> L15
        r0.put("A11", r3.toString());     // Catch: Exception -> L15
        StringBuilder r4 = new StringBuilder();     // Catch: Exception -> L15
        r4.append(r6.E);     // Catch: Exception -> L15
        r0.put("A10", r4.toString());     // Catch: Exception -> L15
        r0.put("A23", r6.f13717f);     // Catch: Exception -> L15
        StringBuilder r5 = new StringBuilder();     // Catch: Exception -> L15
        r7.getClass();     // Catch: Exception -> L15
        r0.put("A7", r5.toString());     // Catch: Exception -> L15
        r0.put("A6", com.tencent.bugly.crashreport.common.info.a.r());     // Catch: Exception -> L15
        r0.put("A5", r7.q());     // Catch: Exception -> L15
        r0.put("A22", r7.k());     // Catch: Exception -> L15
        StringBuilder r8 = new StringBuilder();     // Catch: Exception -> L15
        r8.append(r6.G);     // Catch: Exception -> L15
        r0.put("A2", r8.toString());     // Catch: Exception -> L15
        StringBuilder r9 = new StringBuilder();     // Catch: Exception -> L15
        r9.append(r6.F);     // Catch: Exception -> L15
        r0.put("A1", r9.toString());     // Catch: Exception -> L15
        r0.put("A24", r7.f13694g);     // Catch: Exception -> L15
        StringBuilder r10 = new StringBuilder();     // Catch: Exception -> L15
        r10.append(r6.H);     // Catch: Exception -> L15
        r0.put("A17", r10.toString());     // Catch: Exception -> L15
        r0.put("A25", r7.k());     // Catch: Exception -> L15
        r0.put("A15", r7.u());     // Catch: Exception -> L15
        StringBuilder r11 = new StringBuilder();     // Catch: Exception -> L15
        r11.append(r7.v());     // Catch: Exception -> L15
        r0.put("A13", r11.toString());     // Catch: Exception -> L15
        r0.put("A34", r6.A);     // Catch: Exception -> L15
        if (r7.w == null) goto L6;
        r0.put("productIdentify", r7.w);     // Catch: Exception -> L15
    L6:
        r0.put("A26", URLEncoder.encode(r6.L, "utf-8"));     // Catch: Exception -> L15
        boolean r12 = true;
        if (r6.b != 1) goto L9;
        r0.put("A27", r6.N);     // Catch: Exception -> L15
        r0.put("A28", r6.M);     // Catch: Exception -> L15
        StringBuilder r13 = new StringBuilder();     // Catch: Exception -> L15
        r13.append(r6.k);     // Catch: Exception -> L15
        r0.put("A29", r13.toString());     // Catch: Exception -> L15
    L9:
        r0.put("A30", r6.O);     // Catch: Exception -> L15
        StringBuilder r14 = new StringBuilder();     // Catch: Exception -> L15
        r14.append(r6.P);     // Catch: Exception -> L15
        r0.put("A18", r14.toString());     // Catch: Exception -> L15
        StringBuilder r15 = new StringBuilder();     // Catch: Exception -> L15
        if (r6.Q == false) goto L13;
        r12 = false;
    L13:
        r15.append(r12);     // Catch: Exception -> L15
        r0.put("A36", r15.toString());     // Catch: Exception -> L15
        StringBuilder r16 = new StringBuilder();     // Catch: Exception -> L15
        r16.append(r7.p);     // Catch: Exception -> L15
        r0.put("F02", r16.toString());     // Catch: Exception -> L15
        StringBuilder r17 = new StringBuilder();     // Catch: Exception -> L15
        r17.append(r7.q);     // Catch: Exception -> L15
        r0.put("F03", r17.toString());     // Catch: Exception -> L15
        r0.put("F04", r7.e());     // Catch: Exception -> L15
        StringBuilder r18 = new StringBuilder();     // Catch: Exception -> L15
        r18.append(r7.r);     // Catch: Exception -> L15
        r0.put("F05", r18.toString());     // Catch: Exception -> L15
        r0.put("F06", r7.o);     // Catch: Exception -> L15
        r0.put("F08", r7.u);     // Catch: Exception -> L15
        r0.put("F09", r7.v);     // Catch: Exception -> L15
        StringBuilder r19 = new StringBuilder();     // Catch: Exception -> L15
        r19.append(r7.s);     // Catch: Exception -> L15
        r0.put("F10", r19.toString());     // Catch: Exception -> L15
        a(r0, r6);     // Catch: Exception -> L15
    L17:
        return r0;
    L15:
        e = move-exception;
        e.printStackTrace();
        y.a(e);
        goto L17
    }

    private static void a(Map<String, String> r4, CrashDetailBean r5) {
        if (r5.T < 0) goto L6;
        StringBuilder r0 = new StringBuilder();
        r0.append(r5.T);
        r4.put("C01", r0.toString());
    L6:
        if (r5.U < 0) goto L8;
        StringBuilder r1 = new StringBuilder();
        r1.append(r5.U);
        r4.put("C02", r1.toString());
    L8:
        Map<String, String> r2 = r5.V;
        if (r2 != null) goto L11;
    L16:
        Map<String, String> r3 = r5.W;
        if (r3 != null) goto L19;
        return;
    L19:
        if (r3.size() <= 0) goto L27;
        Iterator<Map.Entry<String, String>> r6 = r5.W.entrySet().iterator();
    L22:
        if (r6.hasNext() == false) goto L28;
        Map.Entry<String, String> r7 = r6.next();
        r4.put("C04_" + r7.getKey(), r7.getValue());
        goto L22
    L28:
        return;
    L27:
        return;
    L11:
        if (r2.size() <= 0) goto L16;
        Iterator<Map.Entry<String, String>> r8 = r5.V.entrySet().iterator();
    L14:
        if (r8.hasNext() == false) goto L16;
        Map.Entry<String, String> r9 = r8.next();
        r4.put("C03_" + r9.getKey(), r9.getValue());
        goto L14
    }
}
