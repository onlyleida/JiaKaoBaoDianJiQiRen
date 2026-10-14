package com.tencent.bugly.proguard;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static o f13896a = null;
    private static p b = null;
    private static boolean c = false;

    class a extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f13897a;
        private n b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ContentValues f13898d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f13899e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String[] f13900f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f13901g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String[] f13902h;
        private String i;
        private String j;
        private String k;
        private String l;
        private String m;
        private String[] n;
        private int o;
        private String p;
        private byte[] q;
        private /* synthetic */ o r;

        public a(o r1, int r2, n r3) {
            this.r = r1;
            this.f13897a = r2;
            this.b = r3;
        }

        public final void a(boolean r1, String r2, String[] r3, String r4, String[] r5, String r6, String r7, String r8, String r9) {
            this.f13899e = r1;
            this.c = r2;
            this.f13900f = r3;
            this.f13901g = r4;
            this.f13902h = r5;
            this.i = r6;
            this.j = r7;
            this.k = r8;
            this.l = r9;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            switch(this.f13897a) {
                case 1: goto L16;
                case 2: goto L14;
                case 3: goto L10;
                case 4: goto L8;
                case 5: goto L6;
                case 6: goto L5;
                default: goto L20;
            };
        L5:
            o.a(this.r, this.o, this.p, this.b);
            return;
        L6:
            o.a(this.r, this.o, this.b);
            return;
        L8:
            o.a(this.r, this.o, this.p, this.q, this.b);
            return;
        L10:
            Cursor r1 = o.a(this.r, this.f13899e, this.c, this.f13900f, this.f13901g, this.f13902h, this.i, this.j, this.k, this.l, this.b);
            if (r1 == null) goto L19;
            r1.close();
            return;
        L19:
            return;
        L14:
            o.a(this.r, this.c, this.m, this.n, this.b);
            return;
        L16:
            o.a(this.r, this.c, this.f13898d, this.b);
            return;
        }

        public final void a(int r1, String r2, byte[] r3) {
            this.o = r1;
            this.p = r2;
            this.q = r3;
        }
    }

    static {
    }

    private o(Context r2, List<com.tencent.bugly.a> r3) {
        b = new p(r2, r3);
    }

    static /* synthetic */ int a(o r0, String r1, String r2, String[] r3, n r4) {
        return r0.a(r1, r2, r3, r4);
    }

    private synchronized boolean b(q r8) {
        monitor-enter(this);
        if (r8 != null) goto L35;
        monitor-exit(this);
        return false;
    L35:
        SQLiteDatabase r1 = b.getWritableDatabase();     // Catch: Throwable -> L20
        if (r1 == null) goto L18;
        ContentValues r2 = d(r8);     // Catch: Throwable -> L20
        if (r2 == null) goto L18;
        long r3 = r1.replace("t_pf", "_id", r2);     // Catch: Throwable -> L20
        if (r3 < 0) goto L16;
        y.c("[Database] insert %s success.", new Object[]{"t_pf"});     // Catch: Throwable -> L20
        r8.f13905a = r3;     // Catch: Throwable -> L20
        monitor-exit(this);
        return true;
    L16:
        monitor-exit(this);
        return false;
    L18:
        monitor-exit(this);
        return false;
    L20:
        th = move-exception;
    L26:
        th = move-exception;
        throw th;     // Catch: Throwable -> L28
    L28:
        th = move-exception;
        throw th;
    L22:
        if (y.a(th) == true) goto L25;
        th.printStackTrace();     // Catch: Throwable -> L26
    L25:
        return false;
    }

    private static ContentValues c(q r7) {
        if (r7 != null) goto L17;
        return null;
    L17:
        ContentValues r1 = new ContentValues();     // Catch: Throwable -> L12
        long r2 = r7.f13905a;     // Catch: Throwable -> L12
        if (r2 <= 0) goto L8;
        r1.put("_id", Long.valueOf(r2));     // Catch: Throwable -> L12
    L8:
        r1.put("_tp", Integer.valueOf(r7.b));     // Catch: Throwable -> L12
        r1.put("_pc", r7.c);     // Catch: Throwable -> L12
        r1.put("_th", r7.f13906d);     // Catch: Throwable -> L12
        r1.put("_tm", Long.valueOf(r7.f13907e));     // Catch: Throwable -> L12
        byte[] r8 = r7.f13909g;     // Catch: Throwable -> L12
        if (r8 == null) goto L11;
        r1.put("_dt", r8);     // Catch: Throwable -> L12
    L11:
        return r1;
    L12:
        th = move-exception;
        if (y.a(th) == true) goto L16;
        th.printStackTrace();
    L16:
        return null;
    }

    private static ContentValues d(q r7) {
        if (r7 != null) goto L5;
    L18:
        return null;
    L5:
        if (ab.a(r7.f13908f) == true) goto L18;
        ContentValues r1 = new ContentValues();     // Catch: Throwable -> L14
        long r2 = r7.f13905a;     // Catch: Throwable -> L14
        if (r2 <= 0) goto L10;
        r1.put("_id", Long.valueOf(r2));     // Catch: Throwable -> L14
    L10:
        r1.put("_tp", r7.f13908f);     // Catch: Throwable -> L14
        r1.put("_tm", Long.valueOf(r7.f13907e));     // Catch: Throwable -> L14
        byte[] r8 = r7.f13909g;     // Catch: Throwable -> L14
        if (r8 == null) goto L13;
        r1.put("_dt", r8);     // Catch: Throwable -> L14
    L13:
        return r1;
    L14:
        th = move-exception;
        if (y.a(th) == true) goto L18;
        th.printStackTrace();
        goto L18
    }

    static /* synthetic */ long a(o r0, String r1, ContentValues r2, n r3) {
        return r0.a(r1, r2, r3);
    }

    static /* synthetic */ Cursor a(o r0, boolean r1, String r2, String[] r3, String r4, String[] r5, String r6, String r7, String r8, String r9, n r10) {
        return r0.a(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10);
    }

    static /* synthetic */ Map a(o r0, int r1, n r2) {
        return r0.a(r1, r2);
    }

    static /* synthetic */ boolean a(o r0, int r1, String r2, n r3) {
        return r0.a(r1, r2, r3);
    }

    static /* synthetic */ boolean a(o r0, int r1, String r2, byte[] r3, n r4) {
        return r0.a(r1, r2, r3, r4);
    }

    public static synchronized o a(Context r2, List<com.tencent.bugly.a> r3) {
        monitor-enter(o.class);
    L10:
        th = move-exception;
        throw th;
    L5:
        if (f13896a != null) goto L7;
        f13896a = new o(r2, r3);     // Catch: Throwable -> L10
    L7:
        o r4 = f13896a;     // Catch: Throwable -> L10
        monitor-exit(o.class);
        return r4;
    }

    public static synchronized o a() {
        monitor-enter(o.class);
        o r1 = f13896a;     // Catch: Throwable -> L7
        monitor-exit(o.class);
        return r1;
    L7:
        th = move-exception;
        throw th;
    }

    public final long a(String r1, ContentValues r2, n r3, boolean r4) {
        return a(r1, r2, null);
    }

    private synchronized List<q> c(int r12) {
        monitor-enter(this);
        SQLiteDatabase r1 = b.getWritableDatabase();     // Catch: Throwable -> L31
        if (r1 == null) goto L38;
        String r10 = "_id = " + r12;     // Catch: Throwable -> L31
        Cursor r2 = r1.query("t_pf", null, r10, null, null, null, null);     // Catch: Throwable -> L31
        if (r2 != null) goto L49;
        if (r2 == null) goto L10;
        r2.close();     // Catch: Throwable -> L44
    L10:
        monitor-exit(this);
        return null;
    L49:
        StringBuilder r3 = new StringBuilder();     // Catch: Throwable -> L29
        ArrayList r4 = new ArrayList();     // Catch: Throwable -> L29
    L14:
        if (r2.moveToNext() == false) goto L23;
        q r5 = b(r2);     // Catch: Throwable -> L29
        if (r5 != null) goto L17;
        String r6 = r2.getString(r2.getColumnIndex("_tp"));     // Catch: Throwable -> L21
        r3.append(" or _tp");     // Catch: Throwable -> L21
        r3.append(" = ");     // Catch: Throwable -> L21
        r3.append(r6);     // Catch: Throwable -> L21
    L21:
        y.d("[Database] unknown id.", new Object[0]);     // Catch: Throwable -> L29
        goto L14
    L17:
        r4.add(r5);     // Catch: Throwable -> L29
        goto L14
    L23:
        if (r3.length() <= 0) goto L25;
        r3.append(" and _id");     // Catch: Throwable -> L29
        r3.append(" = ");     // Catch: Throwable -> L29
        r3.append(r12);     // Catch: Throwable -> L29
        y.d("[Database] deleted %s illegal data %d.", new Object[]{"t_pf", Integer.valueOf(r1.delete("t_pf", r10.substring(4), null))});     // Catch: Throwable -> L29
    L25:
        if (r2 == null) goto L27;
        r2.close();     // Catch: Throwable -> L44
    L27:
        monitor-exit(this);
        return r4;
    L29:
        th = th;
    L53:
    L40:
        th = move-exception;
        if (r2 == null) goto L43;
        r2.close();     // Catch: Throwable -> L44
    L43:
        throw th;     // Catch: Throwable -> L44
    L34:
        if (y.a(th) == true) goto L36;
        th.printStackTrace();     // Catch: Throwable -> L40
    L36:
        if (r2 == null) goto L38;
        r2.close();     // Catch: Throwable -> L44
    L38:
        monitor-exit(this);
        return null;
    L31:
        th = th;
        r2 = null;
    L44:
        th = move-exception;
        throw th;
    }

    public final Cursor a(String r13, String[] r14, String r15, String[] r16, n r17, boolean r18) {
        return a(false, r13, r14, r15, null, null, null, null, null, null, true);
    }

    public final Cursor a(boolean r23, String r24, String[] r25, String r26, String[] r27, String r28, String r29, String r30, String r31, n r32, boolean r33) {
        if (r33 == true) goto L6;
        a r10 = new a(this, 3, r32);
        r10.a(false, r24, r25, r26, r27, null, null, r30, r31);
        x.a().a(r10);
        return null;
    L6:
        return a(false, r24, r25, r26, r27, null, null, r30, r31, r32);
    }

    public final synchronized void b(int r5) {
        monitor-enter(this);
        SQLiteDatabase r0 = b.getWritableDatabase();     // Catch: Throwable -> L23
        if (r0 != null) goto L6;
        monitor-exit(this);
        return;
    L6:
        if (r5 >= 0) goto L29;
        String r6 = null;
    L11:
        y.c("[Database] deleted %s data %d", new Object[]{"t_lr", Integer.valueOf(r0.delete("t_lr", r6, null))});     // Catch: Throwable -> L8
        monitor-exit(this);
        return;
    L8:
        th = move-exception;
    L19:
        th = move-exception;
        throw th;     // Catch: Throwable -> L23
    L15:
        if (y.a(th) == true) goto L31;
        th.printStackTrace();     // Catch: Throwable -> L19
    L18:
        return;
    L31:
        return;
    L29:
        r6 = "_tp = " + r5;     // Catch: Throwable -> L8
    L23:
        th = move-exception;
        throw th;
    }

    public final int a(String r1, String r2, String[] r3, n r4, boolean r5) {
        return a(r1, r2, null, null);
    }

    private synchronized long a(String r9, ContentValues r10, n r11) {
        monitor-enter(this);
        long r0 = -1;
        SQLiteDatabase r2 = b.getWritableDatabase();     // Catch: Throwable -> L12
        if (r2 == null) goto L16;
        if (r10 == null) goto L16;
        long r3 = r2.replace(r9, "_id", r10);     // Catch: Throwable -> L12
        if (r3 < 0) goto L10;
        y.c("[Database] insert %s success.", new Object[]{r9});     // Catch: Throwable -> L12
    L11:
        r0 = r3;
        goto L16
    L10:
        y.d("[Database] replace %s error.", new Object[]{r9});     // Catch: Throwable -> L12
    L16:
        monitor-exit(this);
        return r0;
    L12:
        th = move-exception;
    L18:
        th = move-exception;
        throw th;     // Catch: Throwable -> L20
    L20:
        th = move-exception;
        throw th;
    L14:
        if (y.a(th) == true) goto L16;
        th.printStackTrace();     // Catch: Throwable -> L18
        goto L16
    }

    private static q b(Cursor r4) {
        if (r4 != null) goto L12;
        return null;
    L12:
        q r1 = new q();     // Catch: Throwable -> L7
        r1.f13905a = r4.getLong(r4.getColumnIndex("_id"));     // Catch: Throwable -> L7
        r1.f13907e = r4.getLong(r4.getColumnIndex("_tm"));     // Catch: Throwable -> L7
        r1.f13908f = r4.getString(r4.getColumnIndex("_tp"));     // Catch: Throwable -> L7
        r1.f13909g = r4.getBlob(r4.getColumnIndex("_dt"));     // Catch: Throwable -> L7
        return r1;
    L7:
        th = move-exception;
        if (y.a(th) == true) goto L11;
        th.printStackTrace();
    L11:
        return null;
    }

    private synchronized Cursor a(boolean r13, String r14, String[] r15, String r16, String[] r17, String r18, String r19, String r20, String r21, n r22) {
        monitor-enter(this);
        Cursor r1 = null;
        SQLiteDatabase r2 = b.getWritableDatabase();     // Catch: Throwable -> L8
        if (r2 == null) goto L12;
        r1 = r2.query(r13, r14, r15, r16, r17, r18, r19, r20, r21);     // Catch: Throwable -> L8
    L12:
        monitor-exit(this);
        return r1;
    L8:
        th = move-exception;
    L14:
        th = move-exception;
        throw th;     // Catch: Throwable -> L16
    L16:
        th = move-exception;
        throw th;
    L10:
        if (y.a(th) == true) goto L12;
        th.printStackTrace();     // Catch: Throwable -> L14
        goto L12
    }

    private synchronized int a(String r3, String r4, String[] r5, n r6) {
        monitor-enter(this);
        int r0 = 0;
        SQLiteDatabase r1 = b.getWritableDatabase();     // Catch: Throwable -> L8
        if (r1 == null) goto L12;
        r0 = r1.delete(r3, r4, r5);     // Catch: Throwable -> L8
    L12:
        monitor-exit(this);
        return r0;
    L8:
        th = move-exception;
    L14:
        th = move-exception;
        throw th;     // Catch: Throwable -> L16
    L16:
        th = move-exception;
        throw th;
    L10:
        if (y.a(th) == true) goto L12;
        th.printStackTrace();     // Catch: Throwable -> L14
        goto L12
    }

    public final boolean a(int r2, String r3, byte[] r4, n r5, boolean r6) {
        if (r6 == true) goto L7;
        a r7 = new a(this, 4, null);
        r7.a(r2, r3, r4);
        x.a().a(r7);
        return true;
    L7:
        return a(r2, r3, r4, null);
    }

    public final Map<String, byte[]> a(int r1, n r2, boolean r3) {
        return a(r1, null);
    }

    private boolean a(int r4, String r5, byte[] r6, n r7) {
        q r0 = new q();     // Catch: Throwable -> L4
        r0.f13905a = r4;     // Catch: Throwable -> L4
        r0.f13908f = r5;     // Catch: Throwable -> L4
        r0.f13907e = System.currentTimeMillis();     // Catch: Throwable -> L4
        r0.f13909g = r6;     // Catch: Throwable -> L4
        return b(r0);
    L4:
        th = move-exception;
    L10:
        th = move-exception;
        throw th;
    L6:
        if (y.a(th) == true) goto L8;
        th.printStackTrace();     // Catch: Throwable -> L10
    L8:
        return false;
    }

    private Map<String, byte[]> a(int r4, n r5) {
        HashMap r0 = null;
        List<q> r6 = c(r4);     // Catch: Throwable -> L16
        if (r6 == null) goto L34;
        HashMap r1 = new HashMap();     // Catch: Throwable -> L16
        Iterator<q> r7 = r6.iterator();     // Catch: Throwable -> L14
    L8:
        if (r7.hasNext() == false) goto L35;
        q r2 = r7.next();     // Catch: Throwable -> L14
        byte[] r3 = r2.f13909g;     // Catch: Throwable -> L14
        if (r3 == null) goto L8;
        r1.put(r2.f13908f, r3);     // Catch: Throwable -> L14
        goto L8
    L35:
        return r1;
    L14:
        th = th;
        r0 = r1;
    L23:
    L21:
        th = move-exception;
        throw th;
    L18:
        if (y.a(th) == true) goto L36;
        th.printStackTrace();     // Catch: Throwable -> L21
        return r0;
    L36:
        return r0;
    L34:
        return null;
    L16:
        th = th;
        goto L23
    }

    public final synchronized boolean a(q r8) {
        monitor-enter(this);
        if (r8 != null) goto L35;
        monitor-exit(this);
        return false;
    L35:
        SQLiteDatabase r1 = b.getWritableDatabase();     // Catch: Throwable -> L20
        if (r1 == null) goto L18;
        ContentValues r2 = c(r8);     // Catch: Throwable -> L20
        if (r2 == null) goto L18;
        long r3 = r1.replace("t_lr", "_id", r2);     // Catch: Throwable -> L20
        if (r3 < 0) goto L16;
        y.c("[Database] insert %s success.", new Object[]{"t_lr"});     // Catch: Throwable -> L20
        r8.f13905a = r3;     // Catch: Throwable -> L20
        monitor-exit(this);
        return true;
    L16:
        monitor-exit(this);
        return false;
    L18:
        monitor-exit(this);
        return false;
    L20:
        th = move-exception;
    L26:
        th = move-exception;
        throw th;     // Catch: Throwable -> L28
    L28:
        th = move-exception;
        throw th;
    L22:
        if (y.a(th) == true) goto L25;
        th.printStackTrace();     // Catch: Throwable -> L26
    L25:
        return false;
    }

    public final synchronized List<q> a(int r12) {
        monitor-enter(this);
        SQLiteDatabase r0 = b.getWritableDatabase();     // Catch: Throwable -> L47
        if (r0 == null) goto L45;
        if (r12 >= 0) goto L56;
        String r4 = null;
    L11:
        Cursor r13 = r0.query("t_lr", null, r4, null, null, null, null);     // Catch: Throwable -> L8
        if (r13 != null) goto L50;
        if (r13 == null) goto L15;
        r13.close();     // Catch: Throwable -> L47
    L15:
        monitor-exit(this);
        return null;
    L50:
        StringBuilder r1 = new StringBuilder();     // Catch: Throwable -> L34
        ArrayList r2 = new ArrayList();     // Catch: Throwable -> L34
    L19:
        if (r13.moveToNext() == false) goto L27;
        q r3 = a(r13);     // Catch: Throwable -> L34
        if (r3 != null) goto L22;
        long r5 = r13.getLong(r13.getColumnIndex("_id"));     // Catch: Throwable -> L26
        r1.append(" or _id");     // Catch: Throwable -> L26
        r1.append(" = ");     // Catch: Throwable -> L26
        r1.append(r5);     // Catch: Throwable -> L26
    L26:
        y.d("[Database] unknown id.", new Object[0]);     // Catch: Throwable -> L34
        goto L19
    L22:
        r2.add(r3);     // Catch: Throwable -> L34
        goto L19
    L27:
        String r6 = r1.toString();     // Catch: Throwable -> L34
        if (r6.length() <= 0) goto L30;
        y.d("[Database] deleted %s illegal data %d", new Object[]{"t_lr", Integer.valueOf(r0.delete("t_lr", r6.substring(4), null))});     // Catch: Throwable -> L34
    L30:
        if (r13 == null) goto L32;
        r13.close();     // Catch: Throwable -> L47
    L32:
        monitor-exit(this);
        return r2;
    L34:
        th = move-exception;
        Cursor r7 = r13;
        th = th;
    L52:
    L41:
        th = move-exception;
        if (r7 == null) goto L44;
        r7.close();     // Catch: Throwable -> L47
    L44:
        throw th;     // Catch: Throwable -> L47
    L37:
        if (y.a(th) == true) goto L39;
        th.printStackTrace();     // Catch: Throwable -> L41
    L39:
        if (r7 == null) goto L45;
        r7.close();     // Catch: Throwable -> L47
    L8:
        th = th;
        r7 = null;
        goto L52
    L56:
        r4 = "_tp = " + r12;     // Catch: Throwable -> L8
    L45:
        monitor-exit(this);
        return null;
    L47:
        th = move-exception;
        throw th;
    }

    public final synchronized void a(List<q> r5) {
        monitor-enter(this);
        if (r5 != null) goto L39;
    L33:
        monitor-exit(this);
        return;
    L39:
    L30:
        th = move-exception;
        throw th;
    L5:
        if (r5.size() == 0) goto L33;
        SQLiteDatabase r0 = b.getWritableDatabase();     // Catch: Throwable -> L30
        if (r0 == null) goto L28;
        StringBuilder r1 = new StringBuilder();     // Catch: Throwable -> L30
        Iterator<q> r6 = r5.iterator();     // Catch: Throwable -> L30
    L11:
        if (r6.hasNext() == false) goto L13;
        q r2 = r6.next();     // Catch: Throwable -> L30
        r1.append(" or _id");     // Catch: Throwable -> L30
        r1.append(" = ");     // Catch: Throwable -> L30
        r1.append(r2.f13905a);     // Catch: Throwable -> L30
        goto L11
    L13:
        String r7 = r1.toString();     // Catch: Throwable -> L30
        if (r7.length() <= 0) goto L16;
        r7 = r7.substring(4);     // Catch: Throwable -> L30
    L16:
        r1.setLength(0);     // Catch: Throwable -> L30
        y.c("[Database] deleted %s data %d", new Object[]{"t_lr", Integer.valueOf(r0.delete("t_lr", r7, null))});     // Catch: Throwable -> L20
        monitor-exit(this);
        return;
    L20:
        th = move-exception;
    L26:
        th = move-exception;
        throw th;     // Catch: Throwable -> L30
    L22:
        if (y.a(th) == true) goto L42;
        th.printStackTrace();     // Catch: Throwable -> L26
    L25:
        return;
    L42:
        return;
    L28:
        monitor-exit(this);
    }

    private static q a(Cursor r4) {
        if (r4 != null) goto L12;
        return null;
    L12:
        q r1 = new q();     // Catch: Throwable -> L7
        r1.f13905a = r4.getLong(r4.getColumnIndex("_id"));     // Catch: Throwable -> L7
        r1.b = r4.getInt(r4.getColumnIndex("_tp"));     // Catch: Throwable -> L7
        r1.c = r4.getString(r4.getColumnIndex("_pc"));     // Catch: Throwable -> L7
        r1.f13906d = r4.getString(r4.getColumnIndex("_th"));     // Catch: Throwable -> L7
        r1.f13907e = r4.getLong(r4.getColumnIndex("_tm"));     // Catch: Throwable -> L7
        r1.f13909g = r4.getBlob(r4.getColumnIndex("_dt"));     // Catch: Throwable -> L7
        return r1;
    L7:
        th = move-exception;
        if (y.a(th) == true) goto L11;
        th.printStackTrace();
    L11:
        return null;
    }

    private synchronized boolean a(int r5, String r6, n r7) {
        monitor-enter(this);
        boolean r0 = false;
        SQLiteDatabase r1 = b.getWritableDatabase();     // Catch: Throwable -> L13
        if (r1 != null) goto L7;
    L17:
        monitor-exit(this);
        return r0;
    L7:
        if (ab.a(r6) == false) goto L9;
        String r8 = "_id = " + r5;     // Catch: Throwable -> L13
    L10:
        int r9 = r1.delete("t_pf", r8, null);     // Catch: Throwable -> L13
        y.c("[Database] deleted %s data %d", new Object[]{"t_pf", Integer.valueOf(r9)});     // Catch: Throwable -> L13
        if (r9 <= 0) goto L17;
        r0 = true;
        goto L17
    L9:
        r8 = "_id = " + r5 + " and _tp = \"" + r6 + "\"";     // Catch: Throwable -> L13
    L13:
        th = move-exception;
    L19:
        th = move-exception;
        throw th;     // Catch: Throwable -> L21
    L21:
        th = move-exception;
        throw th;
    L15:
        if (y.a(th) == true) goto L17;
        th.printStackTrace();     // Catch: Throwable -> L19
        goto L17
    }
}
