package com.tencent.bugly.proguard;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f13890a = System.currentTimeMillis();
    private static m b;
    private Context c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private SharedPreferences f13893f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map<Integer, Map<String, l>> f13892e = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f13891d = com.tencent.bugly.crashreport.common.info.a.b().f13691d;

    private m(Context context) {
        this.c = context;
        this.f13893f = context.getSharedPreferences("crashrecord", 0);
    }

    static /* synthetic */ boolean b(l lVar, l lVar2) {
        String str = lVar.f13887e;
        if (str != null && !str.equalsIgnoreCase(lVar2.f13887e)) {
            return true;
        }
        String str2 = lVar.f13888f;
        return !(str2 == null || str2.equalsIgnoreCase(lVar2.f13888f)) || lVar.f13886d <= 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:18:0x0046 A[Catch: all -> 0x005c, Exception -> 0x005e, PHI: r6
      0x0046: PHI (r6v10 java.io.ObjectInputStream) = (r6v9 java.io.ObjectInputStream), (r6v11 java.io.ObjectInputStream) binds: [B:17:0x0044, B:22:0x0052] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x005e, blocks: (B:4:0x0003, B:10:0x0034, B:18:0x0046, B:26:0x0058, B:27:0x005b), top: B:37:0x0003, outer: #4 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v6 */
    public synchronized <T extends List<?>> T c(int i) {
        ObjectInputStream objectInputStream;
        try {
            File dir = this.c.getDir("crashrecord", 0);
            StringBuilder sb = new StringBuilder();
            sb.append(i);
            File file = new File(dir, sb.toString());
            ObjectInputStream objectInputStreamExists = file.exists();
            try {
                if (objectInputStreamExists == 0) {
                    return null;
                }
                try {
                    objectInputStream = new ObjectInputStream(new FileInputStream(file));
                    try {
                        T t = (T) objectInputStream.readObject();
                        objectInputStream.close();
                        return t;
                    } catch (IOException unused) {
                        y.a("open record file error", new Object[0]);
                        if (objectInputStream != null) {
                            objectInputStream.close();
                        }
                        return null;
                    } catch (ClassNotFoundException unused2) {
                        y.a("get object error", new Object[0]);
                        if (objectInputStream != null) {
                            objectInputStream.close();
                        }
                        return null;
                    }
                } catch (IOException unused3) {
                    objectInputStream = null;
                } catch (ClassNotFoundException unused4) {
                    objectInputStream = null;
                } catch (Throwable th) {
                    th = th;
                    objectInputStreamExists = 0;
                    if (objectInputStreamExists != 0) {
                        objectInputStreamExists.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused5) {
            y.e("readCrashRecord error", new Object[0]);
        }
    }

    static /* synthetic */ boolean a(l lVar, l lVar2) {
        String str;
        return lVar.f13889g == lVar2.f13889g && (str = lVar.b) != null && str.equalsIgnoreCase(lVar2.b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean b(int i) {
        try {
            List<l> listC = c(i);
            if (listC == null) {
                return false;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (l lVar : listC) {
                String str = lVar.b;
                if (str != null && str.equalsIgnoreCase(this.f13891d) && lVar.f13886d > 0) {
                    arrayList.add(lVar);
                }
                if (lVar.c + 86400000 < jCurrentTimeMillis) {
                    arrayList2.add(lVar);
                }
            }
            Collections.sort(arrayList);
            if (arrayList.size() >= 2) {
                if (arrayList.size() <= 0 || ((l) arrayList.get(arrayList.size() - 1)).c + 86400000 >= jCurrentTimeMillis) {
                    return true;
                }
                listC.clear();
                a(i, listC);
                return false;
            }
            listC.removeAll(arrayList2);
            a(i, listC);
            return false;
        } catch (Exception unused) {
            y.e("isFrequentCrash failed", new Object[0]);
            return false;
        }
    }

    public static synchronized m a(Context context) {
        if (b == null) {
            b = new m(context);
        }
        return b;
    }

    public static synchronized m a() {
        return b;
    }

    public final void a(int i, final int i2) {
        final int i3 = 1004;
        x.a().a(new Runnable() { // from class: com.tencent.bugly.proguard.m.1
            @Override // java.lang.Runnable
            public final void run() {
                l lVar;
                try {
                    if (TextUtils.isEmpty(m.this.f13891d)) {
                        return;
                    }
                    List<l> listC = m.this.c(i3);
                    if (listC == null) {
                        listC = new ArrayList();
                    }
                    if (m.this.f13892e.get(Integer.valueOf(i3)) == null) {
                        m.this.f13892e.put(Integer.valueOf(i3), new HashMap());
                    }
                    if (((Map) m.this.f13892e.get(Integer.valueOf(i3))).get(m.this.f13891d) == null) {
                        lVar = new l();
                        lVar.f13885a = i3;
                        lVar.f13889g = m.f13890a;
                        lVar.b = m.this.f13891d;
                        lVar.f13888f = com.tencent.bugly.crashreport.common.info.a.b().i;
                        lVar.f13887e = com.tencent.bugly.crashreport.common.info.a.b().f13693f;
                        lVar.c = System.currentTimeMillis();
                        lVar.f13886d = i2;
                        ((Map) m.this.f13892e.get(Integer.valueOf(i3))).put(m.this.f13891d, lVar);
                    } else {
                        lVar = (l) ((Map) m.this.f13892e.get(Integer.valueOf(i3))).get(m.this.f13891d);
                        lVar.f13886d = i2;
                    }
                    ArrayList arrayList = new ArrayList();
                    boolean z = false;
                    for (l lVar2 : listC) {
                        if (m.a(lVar2, lVar)) {
                            z = true;
                            lVar2.f13886d = lVar.f13886d;
                        }
                        if (m.b(lVar2, lVar)) {
                            arrayList.add(lVar2);
                        }
                    }
                    listC.removeAll(arrayList);
                    if (!z) {
                        listC.add(lVar);
                    }
                    m.this.a(i3, listC);
                } catch (Exception unused) {
                    y.e("saveCrashRecord failed", new Object[0]);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:27:0x004f A[Catch: all -> 0x0053, Exception -> 0x0055, TRY_ENTER, TryCatch #4 {Exception -> 0x0055, blocks: (B:7:0x0006, B:11:0x002d, B:21:0x0046, B:27:0x004f, B:28:0x0052), top: B:36:0x0006, outer: #2 }] */
    public synchronized <T extends List<?>> void a(int i, T t) {
        ObjectOutputStream objectOutputStream;
        Throwable th;
        IOException e2;
        if (t == null) {
            return;
        }
        try {
            File dir = this.c.getDir("crashrecord", 0);
            StringBuilder sb = new StringBuilder();
            sb.append(i);
            try {
                objectOutputStream = new ObjectOutputStream(new FileOutputStream(new File(dir, sb.toString())));
                try {
                    try {
                        objectOutputStream.writeObject(t);
                        objectOutputStream.close();
                    } catch (IOException e3) {
                        e2 = e3;
                        e2.printStackTrace();
                        y.a("open record file error", new Object[0]);
                        if (objectOutputStream == null) {
                        } else {
                            objectOutputStream.close();
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (objectOutputStream != null) {
                        objectOutputStream.close();
                    }
                    throw th;
                }
            } catch (IOException e4) {
                objectOutputStream = null;
                e2 = e4;
            } catch (Throwable th3) {
                objectOutputStream = null;
                th = th3;
                if (objectOutputStream != null) {
                    objectOutputStream.close();
                }
                throw th;
            }
        } catch (Exception unused) {
            y.e("writeCrashRecord error", new Object[0]);
        }
    }

    public final synchronized boolean a(final int i) {
        boolean z;
        z = true;
        try {
            z = this.f13893f.getBoolean(i + "_" + this.f13891d, true);
            x.a().a(new Runnable() { // from class: com.tencent.bugly.proguard.m.2
                @Override // java.lang.Runnable
                public final void run() {
                    boolean zB = m.this.b(i);
                    m.this.f13893f.edit().putBoolean(i + "_" + m.this.f13891d, !zB).commit();
                }
            });
        } catch (Exception unused) {
            y.e("canInit error", new Object[0]);
            return z;
        }
        return z;
    }
}
