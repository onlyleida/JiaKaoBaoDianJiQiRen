package com.tencent.bugly.proguard;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static o f13896a = null;
    private static p b = null;
    private static boolean c = false;

    private o(Context context, List<com.tencent.bugly.a> list) {
        b = new p(context, list);
    }

    private synchronized boolean b(q qVar) {
        ContentValues contentValuesD;
        if (qVar == null) {
            return false;
        }
        try {
            SQLiteDatabase writableDatabase = b.getWritableDatabase();
            if (writableDatabase == null || (contentValuesD = d(qVar)) == null) {
                return false;
            }
            long jReplace = writableDatabase.replace("t_pf", "_id", contentValuesD);
            if (jReplace < 0) {
                return false;
            }
            y.c("[Database] insert %s success.", "t_pf");
            qVar.f13905a = jReplace;
            return true;
        } catch (Throwable th) {
            try {
                if (!y.a(th)) {
                    th.printStackTrace();
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static ContentValues c(q qVar) {
        if (qVar == null) {
            return null;
        }
        try {
            ContentValues contentValues = new ContentValues();
            long j = qVar.f13905a;
            if (j > 0) {
                contentValues.put("_id", Long.valueOf(j));
            }
            contentValues.put("_tp", Integer.valueOf(qVar.b));
            contentValues.put("_pc", qVar.c);
            contentValues.put("_th", qVar.f13906d);
            contentValues.put("_tm", Long.valueOf(qVar.f13907e));
            byte[] bArr = qVar.f13909g;
            if (bArr != null) {
                contentValues.put("_dt", bArr);
            }
            return contentValues;
        } catch (Throwable th) {
            if (!y.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    private static ContentValues d(q qVar) {
        if (qVar != null && !ab.a(qVar.f13908f)) {
            try {
                ContentValues contentValues = new ContentValues();
                long j = qVar.f13905a;
                if (j > 0) {
                    contentValues.put("_id", Long.valueOf(j));
                }
                contentValues.put("_tp", qVar.f13908f);
                contentValues.put("_tm", Long.valueOf(qVar.f13907e));
                byte[] bArr = qVar.f13909g;
                if (bArr != null) {
                    contentValues.put("_dt", bArr);
                }
                return contentValues;
            } catch (Throwable th) {
                if (!y.a(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    public static synchronized o a(Context context, List<com.tencent.bugly.a> list) {
        if (f13896a == null) {
            f13896a = new o(context, list);
        }
        return f13896a;
    }

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

        public a(int i, n nVar) {
            this.f13897a = i;
            this.b = nVar;
        }

        public final void a(boolean z, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6) {
            this.f13899e = z;
            this.c = str;
            this.f13900f = strArr;
            this.f13901g = str2;
            this.f13902h = strArr2;
            this.i = str3;
            this.j = str4;
            this.k = str5;
            this.l = str6;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            switch (this.f13897a) {
                case 1:
                    o.this.a(this.c, this.f13898d, this.b);
                    break;
                case 2:
                    o.this.a(this.c, this.m, this.n, this.b);
                    break;
                case 3:
                    Cursor cursorA = o.this.a(this.f13899e, this.c, this.f13900f, this.f13901g, this.f13902h, this.i, this.j, this.k, this.l, this.b);
                    if (cursorA != null) {
                        cursorA.close();
                    }
                    break;
                case 4:
                    o.this.a(this.o, this.p, this.q, this.b);
                    break;
                case 5:
                    o.this.a(this.o, this.b);
                    break;
                case 6:
                    o.this.a(this.o, this.p, this.b);
                    break;
            }
        }

        public final void a(int i, String str, byte[] bArr) {
            this.o = i;
            this.p = str;
            this.q = bArr;
        }
    }

    public static synchronized o a() {
        return f13896a;
    }

    public final long a(String str, ContentValues contentValues, n nVar, boolean z) {
        return a(str, contentValues, (n) null);
    }

    private synchronized List<q> c(int i) {
        Cursor cursorQuery;
        try {
            SQLiteDatabase writableDatabase = b.getWritableDatabase();
            if (writableDatabase != null) {
                String str = "_id = " + i;
                cursorQuery = writableDatabase.query("t_pf", null, str, null, null, null, null);
                if (cursorQuery == null) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
                try {
                    StringBuilder sb = new StringBuilder();
                    ArrayList arrayList = new ArrayList();
                    while (cursorQuery.moveToNext()) {
                        q qVarB = b(cursorQuery);
                        if (qVarB != null) {
                            arrayList.add(qVarB);
                        } else {
                            try {
                                String string = cursorQuery.getString(cursorQuery.getColumnIndex("_tp"));
                                sb.append(" or _tp");
                                sb.append(" = ");
                                sb.append(string);
                            } catch (Throwable unused) {
                                y.d("[Database] unknown id.", new Object[0]);
                            }
                        }
                    }
                    if (sb.length() > 0) {
                        sb.append(" and _id");
                        sb.append(" = ");
                        sb.append(i);
                        y.d("[Database] deleted %s illegal data %d.", "t_pf", Integer.valueOf(writableDatabase.delete("t_pf", str.substring(4), null)));
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return arrayList;
                } catch (Throwable th) {
                    th = th;
                    try {
                        if (!y.a(th)) {
                            th.printStackTrace();
                        }
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    } catch (Throwable th2) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        throw th2;
                    }
                }
            }
        } catch (Throwable th3) {
            th = th3;
            cursorQuery = null;
        }
        return null;
    }

    public final Cursor a(String str, String[] strArr, String str2, String[] strArr2, n nVar, boolean z) {
        return a(false, str, strArr, str2, (String[]) null, (String) null, (String) null, (String) null, (String) null, (n) null, true);
    }

    public final Cursor a(boolean z, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6, n nVar, boolean z2) {
        if (!z2) {
            a aVar = new a(3, nVar);
            aVar.a(false, str, strArr, str2, strArr2, null, null, str5, str6);
            x.a().a(aVar);
            return null;
        }
        return a(false, str, strArr, str2, strArr2, null, null, str5, str6, nVar);
    }

    public final synchronized void b(int i) {
        String str;
        SQLiteDatabase writableDatabase = b.getWritableDatabase();
        if (writableDatabase != null) {
            if (i >= 0) {
                try {
                    str = "_tp = " + i;
                } catch (Throwable th) {
                    if (y.a(th)) {
                        return;
                    }
                    th.printStackTrace();
                    return;
                }
            } else {
                str = null;
            }
            y.c("[Database] deleted %s data %d", "t_lr", Integer.valueOf(writableDatabase.delete("t_lr", str, null)));
        }
    }

    public final int a(String str, String str2, String[] strArr, n nVar, boolean z) {
        return a(str, str2, (String[]) null, (n) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized long a(String str, ContentValues contentValues, n nVar) {
        long j;
        j = -1;
        try {
            SQLiteDatabase writableDatabase = b.getWritableDatabase();
            if (writableDatabase != null && contentValues != null) {
                long jReplace = writableDatabase.replace(str, "_id", contentValues);
                if (jReplace >= 0) {
                    y.c("[Database] insert %s success.", str);
                } else {
                    y.d("[Database] replace %s error.", str);
                }
                j = jReplace;
            }
        } catch (Throwable th) {
            try {
                if (!y.a(th)) {
                    th.printStackTrace();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return j;
    }

    private static q b(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            q qVar = new q();
            qVar.f13905a = cursor.getLong(cursor.getColumnIndex("_id"));
            qVar.f13907e = cursor.getLong(cursor.getColumnIndex("_tm"));
            qVar.f13908f = cursor.getString(cursor.getColumnIndex("_tp"));
            qVar.f13909g = cursor.getBlob(cursor.getColumnIndex("_dt"));
            return qVar;
        } catch (Throwable th) {
            if (!y.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized Cursor a(boolean z, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6, n nVar) {
        Cursor cursorQuery;
        cursorQuery = null;
        try {
            SQLiteDatabase writableDatabase = b.getWritableDatabase();
            if (writableDatabase != null) {
                cursorQuery = writableDatabase.query(z, str, strArr, str2, strArr2, str3, str4, str5, str6);
            }
        } catch (Throwable th) {
            try {
                if (!y.a(th)) {
                    th.printStackTrace();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return cursorQuery;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized int a(String str, String str2, String[] strArr, n nVar) {
        int iDelete;
        iDelete = 0;
        try {
            SQLiteDatabase writableDatabase = b.getWritableDatabase();
            if (writableDatabase != null) {
                iDelete = writableDatabase.delete(str, str2, strArr);
            }
        } catch (Throwable th) {
            try {
                if (!y.a(th)) {
                    th.printStackTrace();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iDelete;
    }

    public final boolean a(int i, String str, byte[] bArr, n nVar, boolean z) {
        if (!z) {
            a aVar = new a(4, null);
            aVar.a(i, str, bArr);
            x.a().a(aVar);
            return true;
        }
        return a(i, str, bArr, (n) null);
    }

    public final Map<String, byte[]> a(int i, n nVar, boolean z) {
        return a(i, (n) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i, String str, byte[] bArr, n nVar) {
        try {
            q qVar = new q();
            qVar.f13905a = i;
            qVar.f13908f = str;
            qVar.f13907e = System.currentTimeMillis();
            qVar.f13909g = bArr;
            return b(qVar);
        } catch (Throwable th) {
            if (!y.a(th)) {
                th.printStackTrace();
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, byte[]> a(int i, n nVar) {
        HashMap map = null;
        try {
            List<q> listC = c(i);
            if (listC == null) {
                return null;
            }
            HashMap map2 = new HashMap();
            try {
                for (q qVar : listC) {
                    byte[] bArr = qVar.f13909g;
                    if (bArr != null) {
                        map2.put(qVar.f13908f, bArr);
                    }
                }
                return map2;
            } catch (Throwable th) {
                th = th;
                map = map2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        if (y.a(th)) {
            return map;
        }
        th.printStackTrace();
        return map;
    }

    public final synchronized boolean a(q qVar) {
        ContentValues contentValuesC;
        if (qVar == null) {
            return false;
        }
        try {
            SQLiteDatabase writableDatabase = b.getWritableDatabase();
            if (writableDatabase == null || (contentValuesC = c(qVar)) == null) {
                return false;
            }
            long jReplace = writableDatabase.replace("t_lr", "_id", contentValuesC);
            if (jReplace < 0) {
                return false;
            }
            y.c("[Database] insert %s success.", "t_lr");
            qVar.f13905a = jReplace;
            return true;
        } catch (Throwable th) {
            try {
                if (!y.a(th)) {
                    th.printStackTrace();
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00aa A[Catch: all -> 0x00b3, TRY_LEAVE, TryCatch #1 {all -> 0x00b3, blocks: (B:36:0x00a4, B:38:0x00aa), top: B:52:0x00a4, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00af A[Catch: all -> 0x00bc, TRY_ENTER, TryCatch #4 {, blocks: (B:3:0x0001, B:14:0x0031, B:31:0x009b, B:40:0x00af, B:43:0x00b6, B:44:0x00b9, B:36:0x00a4, B:38:0x00aa), top: B:58:0x0001, inners: #1 }] */
    public final synchronized List<q> a(int i) {
        String str;
        Cursor cursor;
        SQLiteDatabase writableDatabase = b.getWritableDatabase();
        if (writableDatabase != null) {
            if (i >= 0) {
                try {
                    str = "_tp = " + i;
                } catch (Throwable th) {
                    th = th;
                    cursor = null;
                    try {
                        if (!y.a(th)) {
                            th.printStackTrace();
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                        return null;
                    } catch (Throwable th2) {
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th2;
                    }
                }
            } else {
                str = null;
            }
            Cursor cursorQuery = writableDatabase.query("t_lr", null, str, null, null, null, null);
            if (cursorQuery == null) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return null;
            }
            try {
                StringBuilder sb = new StringBuilder();
                ArrayList arrayList = new ArrayList();
                while (cursorQuery.moveToNext()) {
                    q qVarA = a(cursorQuery);
                    if (qVarA != null) {
                        arrayList.add(qVarA);
                    } else {
                        try {
                            long j = cursorQuery.getLong(cursorQuery.getColumnIndex("_id"));
                            sb.append(" or _id");
                            sb.append(" = ");
                            sb.append(j);
                        } catch (Throwable unused) {
                            y.d("[Database] unknown id.", new Object[0]);
                        }
                    }
                }
                String string = sb.toString();
                if (string.length() > 0) {
                    y.d("[Database] deleted %s illegal data %d", "t_lr", Integer.valueOf(writableDatabase.delete("t_lr", string.substring(4), null)));
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return arrayList;
            } catch (Throwable th3) {
                cursor = cursorQuery;
                th = th3;
                if (!y.a(th)) {
                    th.printStackTrace();
                }
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0076 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void a(java.util.List<com.tencent.bugly.proguard.q> r5) {
        /*
            r4 = this;
            monitor-enter(r4)
            if (r5 == 0) goto L79
            int r0 = r5.size()     // Catch: java.lang.Throwable -> L76
            if (r0 != 0) goto La
            goto L79
        La:
            com.tencent.bugly.proguard.p r0 = com.tencent.bugly.proguard.o.b     // Catch: java.lang.Throwable -> L76
            android.database.sqlite.SQLiteDatabase r0 = r0.getWritableDatabase()     // Catch: java.lang.Throwable -> L76
            if (r0 == 0) goto L74
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L76
            r1.<init>()     // Catch: java.lang.Throwable -> L76
            java.util.Iterator r5 = r5.iterator()     // Catch: java.lang.Throwable -> L76
        L1b:
            boolean r2 = r5.hasNext()     // Catch: java.lang.Throwable -> L76
            if (r2 == 0) goto L37
            java.lang.Object r2 = r5.next()     // Catch: java.lang.Throwable -> L76
            com.tencent.bugly.proguard.q r2 = (com.tencent.bugly.proguard.q) r2     // Catch: java.lang.Throwable -> L76
            java.lang.String r3 = " or _id"
            r1.append(r3)     // Catch: java.lang.Throwable -> L76
            java.lang.String r3 = " = "
            r1.append(r3)     // Catch: java.lang.Throwable -> L76
            long r2 = r2.f13905a     // Catch: java.lang.Throwable -> L76
            r1.append(r2)     // Catch: java.lang.Throwable -> L76
            goto L1b
        L37:
            java.lang.String r5 = r1.toString()     // Catch: java.lang.Throwable -> L76
            int r2 = r5.length()     // Catch: java.lang.Throwable -> L76
            if (r2 <= 0) goto L46
            r2 = 4
            java.lang.String r5 = r5.substring(r2)     // Catch: java.lang.Throwable -> L76
        L46:
            r2 = 0
            r1.setLength(r2)     // Catch: java.lang.Throwable -> L76
            java.lang.String r1 = "t_lr"
            r3 = 0
            int r5 = r0.delete(r1, r5, r3)     // Catch: java.lang.Throwable -> L66
            java.lang.String r0 = "[Database] deleted %s data %d"
            r1 = 2
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L66
            java.lang.String r3 = "t_lr"
            r1[r2] = r3     // Catch: java.lang.Throwable -> L66
            r2 = 1
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Throwable -> L66
            r1[r2] = r5     // Catch: java.lang.Throwable -> L66
            com.tencent.bugly.proguard.y.c(r0, r1)     // Catch: java.lang.Throwable -> L66
            monitor-exit(r4)
            return
        L66:
            r5 = move-exception
            boolean r0 = com.tencent.bugly.proguard.y.a(r5)     // Catch: java.lang.Throwable -> L72
            if (r0 != 0) goto L70
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L72
        L70:
            monitor-exit(r4)
            return
        L72:
            r5 = move-exception
            throw r5     // Catch: java.lang.Throwable -> L76
        L74:
            monitor-exit(r4)
            return
        L76:
            r5 = move-exception
            monitor-exit(r4)
            throw r5
        L79:
            monitor-exit(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.o.a(java.util.List):void");
    }

    private static q a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            q qVar = new q();
            qVar.f13905a = cursor.getLong(cursor.getColumnIndex("_id"));
            qVar.b = cursor.getInt(cursor.getColumnIndex("_tp"));
            qVar.c = cursor.getString(cursor.getColumnIndex("_pc"));
            qVar.f13906d = cursor.getString(cursor.getColumnIndex("_th"));
            qVar.f13907e = cursor.getLong(cursor.getColumnIndex("_tm"));
            qVar.f13909g = cursor.getBlob(cursor.getColumnIndex("_dt"));
            return qVar;
        } catch (Throwable th) {
            if (!y.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean a(int i, String str, n nVar) {
        boolean z;
        String str2;
        z = false;
        try {
            SQLiteDatabase writableDatabase = b.getWritableDatabase();
            if (writableDatabase != null) {
                if (ab.a(str)) {
                    str2 = "_id = " + i;
                } else {
                    str2 = "_id = " + i + " and _tp = \"" + str + "\"";
                }
                int iDelete = writableDatabase.delete("t_pf", str2, null);
                y.c("[Database] deleted %s data %d", "t_pf", Integer.valueOf(iDelete));
                if (iDelete > 0) {
                    z = true;
                }
            }
        } catch (Throwable th) {
            try {
                if (!y.a(th)) {
                    th.printStackTrace();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z;
    }
}
