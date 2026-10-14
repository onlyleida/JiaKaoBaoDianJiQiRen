package com.loc;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile b f13017a = b.Unknow;
    private static volatile d b = d.Unknow;
    private static volatile String c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile String f13018d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile long f13019e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile a f13020f = a.Unknow;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile long f13021g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static volatile String f13022h = "";
    private static volatile String i = "";
    private static volatile long j = 0;
    private static volatile long k = 0;
    private static volatile boolean l = false;

    public enum a {
        Unknow(-1),
        NotAgree(0),
        DidAgree(1);


        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f13027d;

        a(int i) {
            this.f13027d = i;
        }

        public static a a(int i) {
            a aVar = NotAgree;
            if (i == aVar.a()) {
                return aVar;
            }
            a aVar2 = DidAgree;
            return i == aVar2.a() ? aVar2 : Unknow;
        }

        public final int a() {
            return this.f13027d;
        }
    }

    public enum b {
        Unknow(-1),
        NotContain(0),
        DidContain(1);


        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f13030d;

        b(int i) {
            this.f13030d = i;
        }

        public static b a(int i) {
            b bVar = NotContain;
            if (i == bVar.a()) {
                return bVar;
            }
            b bVar2 = DidContain;
            return i == bVar2.a() ? bVar2 : Unknow;
        }

        public final int a() {
            return this.f13030d;
        }
    }

    public enum c {
        SuccessCode(0),
        ShowUnknowCode(555570),
        ShowNoShowCode(555571),
        InfoUnknowCode(555572),
        InfoNotContainCode(555573),
        AgreeUnknowCode(555574),
        AgreeNotAgreeCode(555575),
        InvaildUserKeyCode(10001),
        IllegalArgument(20001);

        private final int j;

        c(int i) {
            this.j = i;
        }

        public final int a() {
            return this.j;
        }
    }

    public enum d {
        Unknow(-1),
        NotShow(0),
        DidShow(1);


        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f13039d;

        d(int i) {
            this.f13039d = i;
        }

        public static d a(int i) {
            d dVar = NotShow;
            if (i == dVar.a()) {
                return dVar;
            }
            d dVar2 = DidShow;
            return i == dVar2.a() ? dVar2 : Unknow;
        }

        public final int a() {
            return this.f13039d;
        }
    }

    public static synchronized t a(final Context context, v vVar) {
        boolean z;
        t tVar = null;
        try {
            if (context == null || vVar == null) {
                return new t(c.IllegalArgument, vVar);
            }
            if (!l) {
                d(context);
                l = true;
            }
            if (b != d.DidShow) {
                if (b == d.Unknow) {
                    tVar = new t(c.ShowUnknowCode, vVar);
                } else if (b == d.NotShow) {
                    tVar = new t(c.ShowNoShowCode, vVar);
                }
                z = false;
            } else {
                z = true;
            }
            if (z && f13017a != b.DidContain) {
                if (f13017a == b.Unknow) {
                    tVar = new t(c.InfoUnknowCode, vVar);
                } else if (f13017a == b.NotContain) {
                    tVar = new t(c.InfoNotContainCode, vVar);
                }
                z = false;
            }
            if (z && f13020f != a.DidAgree) {
                if (f13020f == a.Unknow) {
                    tVar = new t(c.AgreeUnknowCode, vVar);
                } else if (f13020f == a.NotAgree) {
                    tVar = new t(c.AgreeNotAgreeCode, vVar);
                }
                z = false;
            }
            if (k != j) {
                final long j2 = j;
                k = j;
                try {
                    final JSONObject jSONObject = new JSONObject();
                    jSONObject.put("privacyInfo", f13017a.a());
                    jSONObject.put("privacyShow", b.a());
                    jSONObject.put("showTime", f13019e);
                    jSONObject.put("show2SDK", c);
                    jSONObject.put("show2SDKVer", f13018d);
                    jSONObject.put("privacyAgree", f13020f.a());
                    jSONObject.put("agreeTime", f13021g);
                    jSONObject.put("agree2SDK", f13022h);
                    jSONObject.put("agree2SDKVer", i);
                    ci.a().b(new cj() { // from class: com.loc.s.2
                        @Override // com.loc.cj
                        public final void a() {
                            s.c(context);
                            s.a(context, jSONObject, j2);
                            if (s.b(context, jSONObject)) {
                                s.b(context, s.b(j2));
                            } else {
                                s.a(context, s.b(j2));
                            }
                        }
                    });
                } catch (Throwable unused) {
                }
            }
            String strF = k.f(context);
            if (strF == null || strF.length() <= 0) {
                tVar = new t(c.InvaildUserKeyCode, vVar);
                Log.e(vVar.a(), String.format("获取apikey失败：\nerrorCode : %d\n原因：%s", Integer.valueOf(tVar.f13040a.a()), tVar.b));
            }
            if (z) {
                tVar = new t(c.SuccessCode, vVar);
            } else {
                Log.e(vVar.a(), String.format("隐私合规校验失败：\nerrorCode : %d\n原因：%s", Integer.valueOf(tVar.f13040a.a()), tVar.b));
            }
            return tVar;
        } catch (Throwable th) {
            throw th;
        }
    }

    private static ArrayList<File> a(String str) {
        ArrayList<File> arrayList = new ArrayList<>();
        if (str != null && str.length() != 0) {
            File file = new File(str);
            if (!file.exists()) {
                return arrayList;
            }
            File[] fileArrListFiles = file.listFiles();
            for (File file2 : fileArrListFiles) {
                if (file2.isFile()) {
                    arrayList.add(file2);
                }
            }
        }
        return arrayList;
    }

    static /* synthetic */ void a(Context context) {
        String[] strArrSplit;
        try {
            for (File file : a(f(context))) {
                try {
                    String name = file.getName();
                    if (name.endsWith("-privacy.data") && (((strArrSplit = name.split("-")) != null || strArrSplit.length == 2) && Long.parseLong(strArrSplit[0]) > 0)) {
                        FileInputStream fileInputStream = new FileInputStream(file);
                        byte[] bArr = new byte[fileInputStream.available()];
                        fileInputStream.read(bArr);
                        if (b(context, new JSONObject(new String(au.b(context, bArr))))) {
                            file.delete();
                        }
                    } else {
                        file.delete();
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    private static synchronized void a(Context context, a aVar, v vVar) {
        if (context == null || vVar == null) {
            return;
        }
        if (!l) {
            d(context);
            l = true;
        }
        if (aVar != f13020f) {
            f13020f = aVar;
            f13022h = vVar.a();
            i = vVar.b();
            long jCurrentTimeMillis = System.currentTimeMillis();
            f13021g = jCurrentTimeMillis;
            j = jCurrentTimeMillis;
            c(context);
        }
    }

    private static synchronized void a(Context context, d dVar, b bVar, v vVar) {
        Boolean bool = Boolean.TRUE;
        synchronized (s.class) {
            if (context == null || vVar == null) {
                return;
            }
            if (!l) {
                d(context);
                l = true;
            }
            Boolean bool2 = Boolean.FALSE;
            if (dVar != b) {
                b = dVar;
                bool2 = bool;
            }
            if (bVar != f13017a) {
                f13017a = bVar;
            } else {
                bool = bool2;
            }
            if (bool.booleanValue()) {
                c = vVar.a();
                f13018d = vVar.b();
                long jCurrentTimeMillis = System.currentTimeMillis();
                f13019e = jCurrentTimeMillis;
                j = jCurrentTimeMillis;
                c(context);
            }
        }
    }

    static /* synthetic */ void a(Context context, String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        try {
            File file = new File(e(context) + "/" + str);
            if (file.exists()) {
                File file2 = new File(f(context) + "/" + str);
                if (!file2.getParentFile().exists()) {
                    file2.getParentFile().mkdirs();
                }
                file.renameTo(file2);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    static /* synthetic */ void a(Context context, JSONObject jSONObject, long j2) {
        FileOutputStream fileOutputStream = null;
        try {
            byte[] bArrA = au.a(context, jSONObject.toString().getBytes());
            String strB = b(j2);
            File file = new File(e(context) + "/" + strB);
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                fileOutputStream2.write(bArrA);
                try {
                    fileOutputStream2.close();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            } catch (Throwable th2) {
                fileOutputStream = fileOutputStream2;
                th = th2;
                try {
                    th.printStackTrace();
                } finally {
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th3) {
                            th3.printStackTrace();
                        }
                    }
                }
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public static void a(Context context, boolean z, v vVar) {
        a(context, z ? a.DidAgree : a.NotAgree, vVar);
    }

    public static void a(Context context, boolean z, boolean z2, v vVar) {
        a(context, z2 ? d.DidShow : d.NotShow, z ? b.DidContain : b.NotContain, vVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(long j2) {
        return String.format("%d-%s", Long.valueOf(j2), "privacy.data");
    }

    static /* synthetic */ void b(Context context, String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        try {
            File file = new File(e(context) + "/" + str);
            if (file.exists()) {
                file.delete();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(Context context, JSONObject jSONObject) {
        try {
            ao aoVar = new ao();
            aoVar.b = context;
            aoVar.f12527a = jSONObject;
            new bf();
            bl blVarA = bf.a(aoVar);
            if (blVarA == null) {
                return false;
            }
            JSONObject jSONObject2 = new JSONObject(w.a(blVarA.f12619a));
            return jSONObject2.has("status") && jSONObject2.getInt("status") == 1;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void c(Context context) {
        if (context == null) {
            return;
        }
        if (!l) {
            d(context);
            l = true;
        }
        try {
            au.a(context, "AMap.privacy.data", "AMap.privacy.data", String.format("%d&%d&%d&%s&%s&%d&%d&%s&%s&%d&%d", Integer.valueOf(f13017a.a()), Integer.valueOf(b.a()), Long.valueOf(f13019e), c, f13018d, Integer.valueOf(f13020f.a()), Long.valueOf(f13021g), f13022h, i, Long.valueOf(j), Long.valueOf(k)));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private static void d(final Context context) {
        if (context == null) {
            return;
        }
        final ArrayList<File> arrayListA = a(e(context));
        ci.a().b(new cj() { // from class: com.loc.s.1
            @Override // com.loc.cj
            public final void a() {
                Iterator it = arrayListA.iterator();
                while (it.hasNext()) {
                    s.a(context, ((File) it.next()).getName());
                }
                s.a(context);
            }
        });
        String strA = null;
        try {
            strA = au.a(context, "AMap.privacy.data", "AMap.privacy.data");
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (strA == null) {
            return;
        }
        String[] strArrSplit = strA.split("&");
        if (strArrSplit.length != 11) {
            return;
        }
        try {
            f13017a = b.a(Integer.parseInt(strArrSplit[0]));
            b = d.a(Integer.parseInt(strArrSplit[1]));
            f13019e = Long.parseLong(strArrSplit[2]);
            f13018d = strArrSplit[3];
            f13018d = strArrSplit[4];
            f13020f = a.a(Integer.parseInt(strArrSplit[5]));
            f13021g = Long.parseLong(strArrSplit[6]);
            f13022h = strArrSplit[7];
            i = strArrSplit[8];
            j = Long.parseLong(strArrSplit[9]);
            k = Long.parseLong(strArrSplit[10]);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    private static String e(Context context) {
        return context.getFilesDir().getAbsolutePath() + "/AMap/Privacy/Upload";
    }

    private static String f(Context context) {
        return context.getFilesDir().getAbsolutePath() + "/AMap/Privacy/Reload";
    }
}
