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
import com.tencent.bugly.proguard.j;
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
    private static final Map<Integer, Pair<String, String>> f13748g = new HashMap<Integer, Pair<String, String>>() { // from class: com.tencent.bugly.crashreport.crash.b.1
        {
            put(3, new Pair("203", "103"));
            put(7, new Pair("208", "108"));
            put(0, new Pair("200", "100"));
            put(1, new Pair("201", "101"));
            put(2, new Pair("202", "102"));
            put(4, new Pair("204", "104"));
            put(6, new Pair("206", "106"));
            put(5, new Pair("207", "107"));
        }
    };

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final ArrayList<a> f13749h = new ArrayList<a>() { // from class: com.tencent.bugly.crashreport.crash.b.2
        {
            byte b = 0;
            add(new C0274b(b));
            add(new c(b));
            add(new d(b));
            add(new e(b));
            add(new h(b));
            add(new i(b));
            add(new f(b));
            add(new g(b));
        }
    };
    private static final Map<Integer, Integer> i = new HashMap<Integer, Integer>() { // from class: com.tencent.bugly.crashreport.crash.b.3
        {
            put(3, 4);
            put(7, 7);
            put(2, 1);
            put(0, 0);
            put(1, 2);
            put(4, 3);
            put(5, 5);
            put(6, 6);
        }
    };
    private static final Map<Integer, String> j = new HashMap<Integer, String>() { // from class: com.tencent.bugly.crashreport.crash.b.4
        {
            put(3, "BuglyAnrCrash");
            put(0, "BuglyJavaCrash");
            put(1, "BuglyNativeCrash");
        }
    };
    private static final Map<Integer, String> k = new HashMap<Integer, String>() { // from class: com.tencent.bugly.crashreport.crash.b.5
        {
            put(3, "BuglyAnrCrashReport");
            put(0, "BuglyJavaCrashReport");
            put(1, "BuglyNativeCrashReport");
        }
    };
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

        /* synthetic */ a(int i, byte b) {
            this(i);
        }

        static /* synthetic */ boolean a(a aVar, CrashDetailBean crashDetailBean) {
            return aVar.f13755a == crashDetailBean.b;
        }

        abstract boolean a();

        private a(int i) {
            this.f13755a = i;
        }
    }

    /* JADX INFO: renamed from: com.tencent.bugly.crashreport.crash.b$b, reason: collision with other inner class name */
    static class C0274b extends a {
        /* synthetic */ C0274b(byte b) {
            this();
        }

        @Override // com.tencent.bugly.crashreport.crash.b.a
        final boolean a() {
            return com.tencent.bugly.crashreport.crash.c.a().r();
        }

        private C0274b() {
            super(3, (byte) 0);
        }
    }

    static class c extends a {
        /* synthetic */ c(byte b) {
            this();
        }

        @Override // com.tencent.bugly.crashreport.crash.b.a
        final boolean a() {
            return true;
        }

        private c() {
            super(7, (byte) 0);
        }
    }

    static class d extends a {
        /* synthetic */ d(byte b) {
            this();
        }

        @Override // com.tencent.bugly.crashreport.crash.b.a
        final boolean a() {
            return true;
        }

        private d() {
            super(2, (byte) 0);
        }
    }

    static class e extends a {
        /* synthetic */ e(byte b) {
            this();
        }

        @Override // com.tencent.bugly.crashreport.crash.b.a
        final boolean a() {
            return com.tencent.bugly.crashreport.crash.c.a().q();
        }

        /* JADX WARN: Illegal instructions before constructor call */
        private e() {
            byte b = 0;
            super(b, b);
        }
    }

    static class f extends a {
        /* synthetic */ f(byte b) {
            this();
        }

        @Override // com.tencent.bugly.crashreport.crash.b.a
        final boolean a() {
            return com.tencent.bugly.crashreport.crash.c.a().t();
        }

        private f() {
            super(5, (byte) 0);
        }
    }

    static class g extends a {
        /* synthetic */ g(byte b) {
            this();
        }

        @Override // com.tencent.bugly.crashreport.crash.b.a
        final boolean a() {
            return com.tencent.bugly.crashreport.crash.c.a().u();
        }

        private g() {
            super(6, (byte) 0);
        }
    }

    static class h extends a {
        /* synthetic */ h(byte b) {
            this();
        }

        @Override // com.tencent.bugly.crashreport.crash.b.a
        final boolean a() {
            return com.tencent.bugly.crashreport.crash.c.a().q();
        }

        private h() {
            super(1, (byte) 0);
        }
    }

    static class i extends a {
        /* synthetic */ i(byte b) {
            this();
        }

        @Override // com.tencent.bugly.crashreport.crash.b.a
        final boolean a() {
            return com.tencent.bugly.crashreport.crash.c.a().s();
        }

        private i() {
            super(4, (byte) 0);
        }
    }

    public b(int i2, Context context, v vVar, o oVar, com.tencent.bugly.crashreport.common.strategy.a aVar, BuglyStrategy.a aVar2, n nVar) {
        f13747a = i2;
        this.b = context;
        this.c = vVar;
        this.f13750d = aVar;
        this.f13752f = aVar2;
        this.f13751e = nVar;
    }

    static /* synthetic */ void a(b bVar, List list, boolean z, long j2, String str, String str2) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CrashDetailBean crashDetailBean = (CrashDetailBean) it.next();
            String str3 = k.get(Integer.valueOf(crashDetailBean.b));
            if (!TextUtils.isEmpty(str3)) {
                arrayList.add(new t.c(crashDetailBean.c, str3, crashDetailBean.r, z, j2, str, str2));
            }
        }
        t.a().a(arrayList);
    }

    private static void b(CrashDetailBean crashDetailBean, List<com.tencent.bugly.crashreport.crash.a> list) {
        StringBuilder sb = new StringBuilder(64);
        for (com.tencent.bugly.crashreport.crash.a aVar : list) {
            if (!aVar.f13722e && !aVar.f13721d) {
                String str = crashDetailBean.s;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(aVar.b);
                if (!str.contains(sb2.toString())) {
                    crashDetailBean.t++;
                    sb.append(aVar.b);
                    sb.append("\n");
                }
            }
        }
        crashDetailBean.s += sb.toString();
    }

    private static ContentValues f(CrashDetailBean crashDetailBean) {
        if (crashDetailBean == null) {
            return null;
        }
        try {
            ContentValues contentValues = new ContentValues();
            long j2 = crashDetailBean.f13714a;
            if (j2 > 0) {
                contentValues.put("_id", Long.valueOf(j2));
            }
            contentValues.put("_tm", Long.valueOf(crashDetailBean.r));
            contentValues.put("_s1", crashDetailBean.u);
            int i2 = 1;
            contentValues.put("_up", Integer.valueOf(crashDetailBean.f13715d ? 1 : 0));
            if (!crashDetailBean.j) {
                i2 = 0;
            }
            contentValues.put("_me", Integer.valueOf(i2));
            contentValues.put("_uc", Integer.valueOf(crashDetailBean.l));
            contentValues.put("_dt", ab.a(crashDetailBean));
            return contentValues;
        } catch (Throwable th) {
            if (!y.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    private static String g(CrashDetailBean crashDetailBean) {
        try {
            Pair<String, String> pair = f13748g.get(Integer.valueOf(crashDetailBean.b));
            if (pair != null) {
                return crashDetailBean.j ? (String) pair.first : (String) pair.second;
            }
            y.e("crash type error! %d", Integer.valueOf(crashDetailBean.b));
            return "";
        } catch (Exception e2) {
            y.a(e2);
            return "";
        }
    }

    private static ArrayList<ai> h(CrashDetailBean crashDetailBean) {
        Map<String, PlugInBean> map = crashDetailBean.f13719h;
        if (map == null || map.isEmpty()) {
            return null;
        }
        ArrayList<ai> arrayList = new ArrayList<>(crashDetailBean.f13719h.size());
        for (Map.Entry<String, PlugInBean> entry : crashDetailBean.f13719h.entrySet()) {
            ai aiVar = new ai();
            aiVar.f13826a = entry.getValue().f13689a;
            aiVar.b = entry.getValue().c;
            aiVar.c = entry.getValue().b;
            arrayList.add(aiVar);
        }
        return arrayList;
    }

    public final void c(CrashDetailBean crashDetailBean) {
        int i2 = crashDetailBean.b;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 == 3 && !com.tencent.bugly.crashreport.crash.c.a().r()) {
                    return;
                }
            } else if (!com.tencent.bugly.crashreport.crash.c.a().q()) {
                return;
            }
        } else if (!com.tencent.bugly.crashreport.crash.c.a().q()) {
            return;
        }
        if (this.f13751e != null) {
            y.c("Calling 'onCrashHandleEnd' of RQD crash listener.", new Object[0]);
            int i3 = crashDetailBean.b;
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00b2  */
    public final void d(CrashDetailBean crashDetailBean) {
        boolean zA;
        Map<String, String> mapOnCrashHandleStart;
        if (crashDetailBean == null) {
            return;
        }
        if (this.f13752f == null && this.f13751e == null) {
            return;
        }
        Iterator<a> it = f13749h.iterator();
        while (true) {
            if (!it.hasNext()) {
                zA = false;
                break;
            }
            a next = it.next();
            if (a.a(next, crashDetailBean)) {
                zA = next.a();
                break;
            }
        }
        if (!zA) {
            y.c("Should not call back.", new Object[0]);
            return;
        }
        try {
            Map<Integer, Integer> map = i;
            if (!map.containsKey(Integer.valueOf(crashDetailBean.b))) {
                y.d("Cannot get crash type for crashBean type:" + crashDetailBean.b, new Object[0]);
                return;
            }
            int iIntValue = map.get(Integer.valueOf(crashDetailBean.b)).intValue();
            int i2 = crashDetailBean.b;
            byte[] bArrOnCrashHandleStart2GetExtraDatas = null;
            if (this.f13751e != null) {
                y.c("Calling 'onCrashHandleStart' of RQD crash listener.", new Object[0]);
                y.c("Calling 'getCrashExtraMessage' of RQD crash listener.", new Object[0]);
                n nVar = this.f13751e;
                String str = crashDetailBean.n;
                String str2 = crashDetailBean.p;
                String str3 = crashDetailBean.q;
                long j2 = crashDetailBean.r;
                String strB = nVar.b();
                if (strB != null) {
                    mapOnCrashHandleStart = new HashMap<>(1);
                    mapOnCrashHandleStart.put("userData", strB);
                } else {
                    mapOnCrashHandleStart = null;
                }
            } else if (this.f13752f != null) {
                y.c("Calling 'onCrashHandleStart' of Bugly crash listener.", new Object[0]);
                mapOnCrashHandleStart = this.f13752f.onCrashHandleStart(iIntValue, crashDetailBean.n, crashDetailBean.o, crashDetailBean.q);
            } else {
                mapOnCrashHandleStart = null;
            }
            a(crashDetailBean, mapOnCrashHandleStart);
            y.a("[crash callback] start user's callback:onCrashHandleStart2GetExtraDatas()", new Object[0]);
            if (this.f13751e != null) {
                y.c("Calling 'getCrashExtraData' of RQD crash listener.", new Object[0]);
                n nVar2 = this.f13751e;
                String str4 = crashDetailBean.n;
                String str5 = crashDetailBean.p;
                String str6 = crashDetailBean.q;
                long j3 = crashDetailBean.r;
                bArrOnCrashHandleStart2GetExtraDatas = nVar2.a();
            } else if (this.f13752f != null) {
                y.c("Calling 'onCrashHandleStart2GetExtraDatas' of Bugly crash listener.", new Object[0]);
                bArrOnCrashHandleStart2GetExtraDatas = this.f13752f.onCrashHandleStart2GetExtraDatas(iIntValue, crashDetailBean.n, crashDetailBean.o, crashDetailBean.q);
            }
            if (bArrOnCrashHandleStart2GetExtraDatas == null) {
                y.d("extra user byte is null. CrashBean won't have userExtraByteDatas.", new Object[0]);
            } else {
                if (bArrOnCrashHandleStart2GetExtraDatas.length <= 100000) {
                    crashDetailBean.X = bArrOnCrashHandleStart2GetExtraDatas;
                } else {
                    y.d("extra bytes size %d is over limit %d will drop over part", Integer.valueOf(bArrOnCrashHandleStart2GetExtraDatas.length), 100000);
                    crashDetailBean.X = Arrays.copyOf(bArrOnCrashHandleStart2GetExtraDatas, 100000);
                }
                y.a("add extra bytes %d ", Integer.valueOf(bArrOnCrashHandleStart2GetExtraDatas.length));
            }
            if (this.f13751e != null) {
                y.c("Calling 'onCrashSaving' of RQD crash listener.", new Object[0]);
                n nVar3 = this.f13751e;
                String str7 = crashDetailBean.n;
                String str8 = crashDetailBean.o;
                String str9 = crashDetailBean.p;
                String str10 = crashDetailBean.q;
                long j4 = crashDetailBean.r;
                String str11 = crashDetailBean.m;
                String str12 = crashDetailBean.f13716e;
                String str13 = crashDetailBean.c;
                String str14 = crashDetailBean.A;
                String str15 = crashDetailBean.B;
                if (nVar3.c()) {
                    return;
                }
                y.d("Crash listener 'onCrashSaving' return 'false' thus will not handle this crash.", new Object[0]);
            }
        } catch (Throwable th) {
            y.d("crash handle callback something wrong! %s", th.getClass().getName());
            if (y.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    public final void e(CrashDetailBean crashDetailBean) {
        ContentValues contentValuesF;
        if (crashDetailBean == null || (contentValuesF = f(crashDetailBean)) == null) {
            return;
        }
        long jA = o.a().a("t_cr", contentValuesF, (n) null, true);
        if (jA >= 0) {
            y.c("insert %s success!", "t_cr");
            crashDetailBean.f13714a = jA;
        }
    }

    private static List<com.tencent.bugly.crashreport.crash.a> a(List<com.tencent.bugly.crashreport.crash.a> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        ArrayList arrayList = new ArrayList();
        for (com.tencent.bugly.crashreport.crash.a aVar : list) {
            if (aVar.f13721d && aVar.b <= jCurrentTimeMillis - 86400000) {
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    private static void e(List<CrashDetailBean> list) {
        if (list != null) {
            try {
                if (list.size() == 0) {
                    return;
                }
                StringBuilder sb = new StringBuilder();
                for (CrashDetailBean crashDetailBean : list) {
                    sb.append(" or _id");
                    sb.append(" = ");
                    sb.append(crashDetailBean.f13714a);
                }
                String string = sb.toString();
                if (string.length() > 0) {
                    string = string.substring(4);
                }
                sb.setLength(0);
                y.c("deleted %s data %d", "t_cr", Integer.valueOf(o.a().a("t_cr", string, (String[]) null, (n) null, true)));
            } catch (Throwable th) {
                if (y.a(th)) {
                    return;
                }
                th.printStackTrace();
            }
        }
    }

    private List<CrashDetailBean> c(List<com.tencent.bugly.crashreport.crash.a> list) {
        Cursor cursorA;
        if (list == null || list.size() == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("_id in ");
        sb.append("(");
        Iterator<com.tencent.bugly.crashreport.crash.a> it = list.iterator();
        while (it.hasNext()) {
            sb.append(it.next().f13720a);
            sb.append(",");
        }
        if (sb.toString().contains(",")) {
            sb = new StringBuilder(sb.substring(0, sb.lastIndexOf(",")));
        }
        sb.append(")");
        String string = sb.toString();
        sb.setLength(0);
        try {
            cursorA = o.a().a("t_cr", null, string, null, null, true);
            if (cursorA == null) {
                if (cursorA != null) {
                    cursorA.close();
                }
                return null;
            }
            try {
                ArrayList arrayList = new ArrayList();
                sb.append("_id in ");
                sb.append("(");
                int i2 = 0;
                while (cursorA.moveToNext()) {
                    CrashDetailBean crashDetailBeanA = a(cursorA);
                    if (crashDetailBeanA != null) {
                        arrayList.add(crashDetailBeanA);
                    } else {
                        try {
                            sb.append(cursorA.getLong(cursorA.getColumnIndex("_id")));
                            sb.append(",");
                            i2++;
                        } catch (Throwable unused) {
                            y.d("unknown id!", new Object[0]);
                        }
                    }
                }
                if (sb.toString().contains(",")) {
                    sb = new StringBuilder(sb.substring(0, sb.lastIndexOf(",")));
                }
                sb.append(")");
                String string2 = sb.toString();
                if (i2 > 0) {
                    y.d("deleted %s illegal data %d", "t_cr", Integer.valueOf(o.a().a("t_cr", string2, (String[]) null, (n) null, true)));
                }
                if (cursorA != null) {
                    cursorA.close();
                }
                return arrayList;
            } catch (Throwable th) {
                th = th;
                try {
                    if (!y.a(th)) {
                        th.printStackTrace();
                    }
                    return null;
                } finally {
                    if (cursorA != null) {
                        cursorA.close();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            cursorA = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0036  */
    public final boolean b(CrashDetailBean crashDetailBean) {
        boolean z;
        if (crashDetailBean == null) {
            y.d("CrashBean is null, won't handle.", new Object[0]);
            return true;
        }
        String str = crashDetailBean.q;
        String str2 = com.tencent.bugly.crashreport.crash.c.n;
        if (str2 == null || str2.isEmpty()) {
            z = false;
        } else {
            y.c("Crash filter for crash stack is: %s", com.tencent.bugly.crashreport.crash.c.n);
            if (str.contains(com.tencent.bugly.crashreport.crash.c.n)) {
                y.d("This crash contains the filter string set. It will not be record and upload.", new Object[0]);
                z = true;
            } else {
                z = false;
            }
        }
        if (z || a(crashDetailBean.q)) {
            return true;
        }
        if (crashDetailBean.b != 2) {
            q qVar = new q();
            qVar.b = 1;
            qVar.c = crashDetailBean.A;
            qVar.f13906d = crashDetailBean.B;
            qVar.f13907e = crashDetailBean.r;
            o.a().b(1);
            o.a().a(qVar);
            y.b("[crash] a crash occur, handling...", new Object[0]);
        } else {
            y.b("[crash] a caught exception occur, handling...", new Object[0]);
        }
        List<com.tencent.bugly.crashreport.crash.a> listB = b();
        List<com.tencent.bugly.crashreport.crash.a> arrayList = new ArrayList<>(10);
        if (listB != null && listB.size() > 0) {
            arrayList.addAll(a(listB));
            listB.removeAll(arrayList);
            if (listB.size() > 20) {
                StringBuilder sb = new StringBuilder();
                sb.append("_id in ");
                sb.append("(");
                sb.append("SELECT _id");
                sb.append(" FROM t_cr");
                sb.append(" order by _id");
                sb.append(" limit 5");
                sb.append(")");
                String string = sb.toString();
                sb.setLength(0);
                try {
                    y.c("deleted first record %s data %d", "t_cr", Integer.valueOf(o.a().a("t_cr", string, (String[]) null, (n) null, true)));
                } catch (Throwable th) {
                    if (!y.a(th)) {
                        th.printStackTrace();
                    }
                }
            }
            if (b(crashDetailBean, listB, arrayList)) {
                return true;
            }
        }
        e(crashDetailBean);
        String str3 = j.get(Integer.valueOf(crashDetailBean.b));
        if (!TextUtils.isEmpty(str3)) {
            t.a().a(new t.c(crashDetailBean.c, str3, crashDetailBean.r, true, 0L, "realtime", null));
        }
        d(arrayList);
        y.b("[crash] save crash success", new Object[0]);
        return false;
    }

    private CrashDetailBean a(List<com.tencent.bugly.crashreport.crash.a> list, CrashDetailBean crashDetailBean) {
        List<CrashDetailBean> listC;
        if (list == null || list.isEmpty()) {
            return crashDetailBean;
        }
        CrashDetailBean crashDetailBean2 = null;
        ArrayList arrayList = new ArrayList(10);
        for (com.tencent.bugly.crashreport.crash.a aVar : list) {
            if (aVar.f13722e) {
                arrayList.add(aVar);
            }
        }
        if (!arrayList.isEmpty() && (listC = c(arrayList)) != null && !listC.isEmpty()) {
            Collections.sort(listC);
            crashDetailBean2 = listC.get(0);
            a(crashDetailBean2, listC);
        }
        if (crashDetailBean2 == null) {
            crashDetailBean.j = true;
            crashDetailBean.t = 0;
            crashDetailBean.s = "";
            crashDetailBean2 = crashDetailBean;
        }
        b(crashDetailBean2, list);
        if (crashDetailBean2.r != crashDetailBean.r) {
            String str = crashDetailBean2.s;
            StringBuilder sb = new StringBuilder();
            sb.append(crashDetailBean.r);
            if (!str.contains(sb.toString())) {
                crashDetailBean2.t++;
                crashDetailBean2.s += crashDetailBean.r + "\n";
            }
        }
        return crashDetailBean2;
    }

    private static void d(List<com.tencent.bugly.crashreport.crash.a> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("_id in ");
        sb.append("(");
        Iterator<com.tencent.bugly.crashreport.crash.a> it = list.iterator();
        while (it.hasNext()) {
            sb.append(it.next().f13720a);
            sb.append(",");
        }
        StringBuilder sb2 = new StringBuilder(sb.substring(0, sb.lastIndexOf(",")));
        sb2.append(")");
        String string = sb2.toString();
        sb2.setLength(0);
        try {
            y.c("deleted %s data %d", "t_cr", Integer.valueOf(o.a().a("t_cr", string, (String[]) null, (n) null, true)));
        } catch (Throwable th) {
            if (y.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    private static void a(CrashDetailBean crashDetailBean, List<CrashDetailBean> list) {
        String[] strArrSplit;
        StringBuilder sb = new StringBuilder(128);
        for (int i2 = 1; i2 < list.size(); i2++) {
            String str = list.get(i2).s;
            if (str != null && (strArrSplit = str.split("\n")) != null) {
                for (String str2 : strArrSplit) {
                    if (!crashDetailBean.s.contains(str2)) {
                        crashDetailBean.t++;
                        sb.append(str2);
                        sb.append("\n");
                    }
                }
            }
        }
        crashDetailBean.s += sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0036, code lost:
    
        if (r0.size() >= com.tencent.bugly.crashreport.crash.c.c) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean b(com.tencent.bugly.crashreport.crash.CrashDetailBean r9, java.util.List<com.tencent.bugly.crashreport.crash.a> r10, java.util.List<com.tencent.bugly.crashreport.crash.a> r11) {
        /*
            r8 = this;
            int r0 = r9.b
            r1 = 1
            r2 = 0
            if (r0 == 0) goto Lb
            if (r0 != r1) goto L9
            goto Lb
        L9:
            r3 = 0
            goto Lc
        Lb:
            r3 = 1
        Lc:
            r4 = 3
            if (r0 != r4) goto L11
            r0 = 1
            goto L12
        L11:
            r0 = 0
        L12:
            boolean r4 = com.tencent.bugly.b.c
            if (r4 != 0) goto L1f
            if (r0 != 0) goto L1c
            if (r3 != 0) goto L1c
            r0 = 1
            goto L20
        L1c:
            boolean r0 = com.tencent.bugly.crashreport.crash.c.f13757d
            goto L20
        L1f:
            r0 = 0
        L20:
            if (r0 != 0) goto L23
            return r2
        L23:
            java.util.ArrayList r0 = new java.util.ArrayList
            r3 = 10
            r0.<init>(r3)
            boolean r10 = a(r9, r10, r0)
            if (r10 != 0) goto L38
            int r10 = r0.size()     // Catch: java.lang.Exception -> L6d
            int r3 = com.tencent.bugly.crashreport.crash.c.c     // Catch: java.lang.Exception -> L6d
            if (r10 < r3) goto L78
        L38:
            java.lang.String r10 = "same crash occur too much do merged!"
            java.lang.Object[] r3 = new java.lang.Object[r2]     // Catch: java.lang.Exception -> L6d
            com.tencent.bugly.proguard.y.a(r10, r3)     // Catch: java.lang.Exception -> L6d
            com.tencent.bugly.crashreport.crash.CrashDetailBean r9 = r8.a(r0, r9)     // Catch: java.lang.Exception -> L6d
            java.util.Iterator r10 = r0.iterator()     // Catch: java.lang.Exception -> L6d
        L47:
            boolean r0 = r10.hasNext()     // Catch: java.lang.Exception -> L6d
            if (r0 == 0) goto L5f
            java.lang.Object r0 = r10.next()     // Catch: java.lang.Exception -> L6d
            com.tencent.bugly.crashreport.crash.a r0 = (com.tencent.bugly.crashreport.crash.a) r0     // Catch: java.lang.Exception -> L6d
            long r3 = r0.f13720a     // Catch: java.lang.Exception -> L6d
            long r5 = r9.f13714a     // Catch: java.lang.Exception -> L6d
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L47
            r11.add(r0)     // Catch: java.lang.Exception -> L6d
            goto L47
        L5f:
            r8.e(r9)     // Catch: java.lang.Exception -> L6d
            d(r11)     // Catch: java.lang.Exception -> L6d
            java.lang.String r9 = "[crash] save crash success. For this device crash many times, it will not upload crashes immediately"
            java.lang.Object[] r10 = new java.lang.Object[r2]     // Catch: java.lang.Exception -> L6d
            com.tencent.bugly.proguard.y.b(r9, r10)     // Catch: java.lang.Exception -> L6d
            return r1
        L6d:
            r9 = move-exception
            com.tencent.bugly.proguard.y.a(r9)
            java.lang.Object[] r9 = new java.lang.Object[r2]
            java.lang.String r10 = "Failed to merge crash."
            com.tencent.bugly.proguard.y.d(r10, r9)
        L78:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.crash.b.b(com.tencent.bugly.crashreport.crash.CrashDetailBean, java.util.List, java.util.List):boolean");
    }

    public final boolean a(CrashDetailBean crashDetailBean) {
        return b(crashDetailBean);
    }

    private static boolean a(String str) {
        String str2 = com.tencent.bugly.crashreport.crash.c.o;
        if (str2 != null && !str2.isEmpty()) {
            try {
                y.c("Crash regular filter for crash stack is: %s", com.tencent.bugly.crashreport.crash.c.o);
                if (Pattern.compile(com.tencent.bugly.crashreport.crash.c.o).matcher(str).find()) {
                    y.d("This crash matches the regular filter string set. It will not be record and upload.", new Object[0]);
                    return true;
                }
            } catch (Exception e2) {
                y.a(e2);
                y.d("Failed to compile " + com.tencent.bugly.crashreport.crash.c.o, new Object[0]);
            }
        }
        return false;
    }

    private void b(List<com.tencent.bugly.crashreport.crash.a> list) {
        List<CrashDetailBean> listC = c(list);
        if (listC == null || listC.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (CrashDetailBean crashDetailBean : listC) {
            String str = k.get(Integer.valueOf(crashDetailBean.b));
            if (!TextUtils.isEmpty(str)) {
                y.c("find expired data,crashId:%s eventType:%s", crashDetailBean.c, str);
                arrayList.add(new t.c(crashDetailBean.c, str, crashDetailBean.r, false, 0L, "expired", null));
            }
        }
        t.a().a(arrayList);
    }

    private static void c(ArrayList<ak> arrayList, String str) {
        if (ab.a(str)) {
            return;
        }
        try {
            ak akVar = new ak((byte) 1, "crashInfos.txt", str.getBytes("utf-8"));
            y.c("attach crash infos", new Object[0]);
            arrayList.add(akVar);
        } catch (Exception e2) {
            e2.printStackTrace();
            y.a(e2);
        }
    }

    private static boolean a(CrashDetailBean crashDetailBean, List<com.tencent.bugly.crashreport.crash.a> list, List<com.tencent.bugly.crashreport.crash.a> list2) {
        boolean z = false;
        for (com.tencent.bugly.crashreport.crash.a aVar : list) {
            if (crashDetailBean.u.equals(aVar.c)) {
                if (aVar.f13722e) {
                    z = true;
                }
                list2.add(aVar);
            }
        }
        return z;
    }

    public final List<CrashDetailBean> a() {
        StrategyBean strategyBeanC = com.tencent.bugly.crashreport.common.strategy.a.a().c();
        if (strategyBeanC == null) {
            y.d("have not synced remote!", new Object[0]);
            return null;
        }
        if (!strategyBeanC.f13699e) {
            y.d("Crashreport remote closed, please check your APP ID correct and Version available, then uninstall and reinstall your app.", new Object[0]);
            y.b("[init] WARNING! Crashreport closed by server, please check your APP ID correct and Version available, then uninstall and reinstall your app.", new Object[0]);
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jB = ab.b();
        List<com.tencent.bugly.crashreport.crash.a> listB = b();
        y.c("Size of crash list loaded from DB: %s", Integer.valueOf(listB.size()));
        if (listB == null || listB.size() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        List<com.tencent.bugly.crashreport.crash.a> arrayList2 = new ArrayList<>();
        arrayList.addAll(a(listB));
        listB.removeAll(arrayList);
        Iterator<com.tencent.bugly.crashreport.crash.a> it = listB.iterator();
        while (it.hasNext()) {
            com.tencent.bugly.crashreport.crash.a next = it.next();
            long j2 = next.b;
            if (j2 < jB - com.tencent.bugly.crashreport.crash.c.f13760g) {
                arrayList2.add(next);
                it.remove();
                arrayList.add(next);
            } else if (next.f13721d) {
                if (j2 >= jCurrentTimeMillis - 86400000) {
                    it.remove();
                } else if (!next.f13722e) {
                    it.remove();
                    arrayList.add(next);
                }
            } else if (next.f13723f >= 3 && j2 < jCurrentTimeMillis - 86400000) {
                it.remove();
                arrayList.add(next);
            }
        }
        b(arrayList2);
        if (arrayList.size() > 0) {
            d(arrayList);
        }
        ArrayList arrayList3 = new ArrayList();
        List<CrashDetailBean> listC = c(listB);
        if (listC != null && listC.size() > 0) {
            String str = com.tencent.bugly.crashreport.common.info.a.b().i;
            Iterator<CrashDetailBean> it2 = listC.iterator();
            while (it2.hasNext()) {
                CrashDetailBean next2 = it2.next();
                if (!str.equals(next2.f13717f)) {
                    it2.remove();
                    arrayList3.add(next2);
                }
            }
        }
        if (arrayList3.size() > 0) {
            e(arrayList3);
        }
        return listC;
    }

    private static com.tencent.bugly.crashreport.crash.a b(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            com.tencent.bugly.crashreport.crash.a aVar = new com.tencent.bugly.crashreport.crash.a();
            aVar.f13720a = cursor.getLong(cursor.getColumnIndex("_id"));
            aVar.b = cursor.getLong(cursor.getColumnIndex("_tm"));
            aVar.c = cursor.getString(cursor.getColumnIndex("_s1"));
            aVar.f13721d = cursor.getInt(cursor.getColumnIndex("_up")) == 1;
            aVar.f13722e = cursor.getInt(cursor.getColumnIndex("_me")) == 1;
            aVar.f13723f = cursor.getInt(cursor.getColumnIndex("_uc"));
            return aVar;
        } catch (Throwable th) {
            if (!y.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    private List<com.tencent.bugly.crashreport.crash.a> b() {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            Cursor cursorA = o.a().a("t_cr", new String[]{"_id", "_tm", "_s1", "_up", "_me", "_uc"}, null, null, null, true);
            if (cursorA == null) {
                if (cursorA != null) {
                    cursorA.close();
                }
                return null;
            }
            try {
                if (cursorA.getCount() <= 0) {
                    if (cursorA != null) {
                        cursorA.close();
                    }
                    return arrayList;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("_id in ");
                sb.append("(");
                int i2 = 0;
                while (cursorA.moveToNext()) {
                    com.tencent.bugly.crashreport.crash.a aVarB = b(cursorA);
                    if (aVarB != null) {
                        arrayList.add(aVarB);
                    } else {
                        try {
                            sb.append(cursorA.getLong(cursorA.getColumnIndex("_id")));
                            sb.append(",");
                            i2++;
                        } catch (Throwable unused) {
                            y.d("unknown id!", new Object[0]);
                        }
                    }
                }
                if (sb.toString().contains(",")) {
                    sb = new StringBuilder(sb.substring(0, sb.lastIndexOf(",")));
                }
                sb.append(")");
                String string = sb.toString();
                sb.setLength(0);
                if (i2 > 0) {
                    y.d("deleted %s illegal data %d", "t_cr", Integer.valueOf(o.a().a("t_cr", string, (String[]) null, (n) null, true)));
                }
                if (cursorA != null) {
                    cursorA.close();
                }
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursor = cursorA;
                try {
                    if (!y.a(th)) {
                        th.printStackTrace();
                    }
                    return arrayList;
                } finally {
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static void b(ArrayList<ak> arrayList, String str) {
        if (str != null) {
            try {
                arrayList.add(new ak((byte) 1, "jniLog.txt", str.getBytes("utf-8")));
            } catch (Exception e2) {
                e2.printStackTrace();
                y.a(e2);
            }
        }
    }

    private static void b(ArrayList<ak> arrayList, CrashDetailBean crashDetailBean, Context context) {
        String str;
        if (crashDetailBean.b == 1 && (str = crashDetailBean.v) != null) {
            try {
                ak akVarA = a("tomb.zip", context, str);
                if (akVarA != null) {
                    y.c("attach tombs", new Object[0]);
                    arrayList.add(akVarA);
                }
            } catch (Exception e2) {
                y.a(e2);
            }
        }
    }

    public final void a(CrashDetailBean crashDetailBean, long j2, boolean z) {
        if (com.tencent.bugly.crashreport.crash.c.l) {
            y.a("try to upload right now", new Object[0]);
            ArrayList arrayList = new ArrayList();
            arrayList.add(crashDetailBean);
            a(arrayList, 3000L, z, crashDetailBean.b == 7, z);
            return;
        }
        y.a("do not upload spot crash right now, crash would be uploaded when app next start", new Object[0]);
    }

    private static void b(ArrayList<ak> arrayList, byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        try {
            arrayList.add(new ak((byte) 1, "userExtraByteData", bArr));
            y.c("attach extraData", new Object[0]);
        } catch (Exception e2) {
            y.a(e2);
        }
    }

    /* JADX WARN: Type inference failed for: r2v11, types: [com.tencent.bugly.proguard.ai, com.tencent.bugly.proguard.aj] */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v2 */
    public final void a(final List<CrashDetailBean> list, long j2, final boolean z, boolean z2, boolean z3) {
        int i2;
        am amVar;
        al alVar;
        int i3 = 0;
        if (!com.tencent.bugly.crashreport.common.info.a.a(this.b).f13692e) {
            y.d("warn: not upload process", new Object[0]);
            return;
        }
        v vVar = this.c;
        if (vVar == null) {
            y.d("warn: upload manager is null", new Object[0]);
            return;
        }
        if (!z3 && !vVar.b(com.tencent.bugly.crashreport.crash.c.f13756a)) {
            y.d("warn: not crashHappen or not should upload", new Object[0]);
            return;
        }
        StrategyBean strategyBeanC = this.f13750d.c();
        if (!strategyBeanC.f13699e) {
            y.d("remote report is disable!", new Object[0]);
            y.b("[crash] server closed bugly in this app. please check your appid if is correct, and re-install it", new Object[0]);
            return;
        }
        if (list != null && list.size() != 0) {
            int i4 = 1;
            try {
                String str = strategyBeanC.q;
                String str2 = StrategyBean.b;
                Context context = this.b;
                com.tencent.bugly.crashreport.common.info.a aVarB = com.tencent.bugly.crashreport.common.info.a.b();
                ?? r2 = 0;
                if (context == null || list == null || list.size() == 0 || aVarB == null) {
                    i2 = 0;
                    y.d("enEXPPkg args == null!", new Object[0]);
                    amVar = null;
                } else {
                    am amVar2 = new am();
                    amVar2.f13838a = new ArrayList<>();
                    for (CrashDetailBean crashDetailBean : list) {
                        ArrayList<al> arrayList = amVar2.f13838a;
                        if (context == null || crashDetailBean == null || aVarB == null) {
                            y.d("enExp args == null", new Object[0]);
                            alVar = null;
                        } else {
                            al alVar2 = new al();
                            alVar2.f13832a = g(crashDetailBean);
                            alVar2.b = crashDetailBean.r;
                            alVar2.c = crashDetailBean.n;
                            alVar2.f13833d = crashDetailBean.o;
                            alVar2.f13834e = crashDetailBean.p;
                            alVar2.f13836g = crashDetailBean.q;
                            alVar2.f13837h = crashDetailBean.z;
                            alVar2.i = crashDetailBean.c;
                            alVar2.j = r2;
                            alVar2.l = crashDetailBean.m;
                            alVar2.m = crashDetailBean.f13716e;
                            alVar2.f13835f = crashDetailBean.B;
                            alVar2.n = r2;
                            alVar2.p = h(crashDetailBean);
                            Object[] objArr = new Object[i4];
                            objArr[i3] = alVar2.o;
                            y.c("libInfo %s", objArr);
                            ArrayList<ak> arrayList2 = new ArrayList<>(20);
                            a(arrayList2, crashDetailBean);
                            a(arrayList2, crashDetailBean.w);
                            b(arrayList2, crashDetailBean.x);
                            c(arrayList2, crashDetailBean.Y);
                            a(arrayList2, crashDetailBean.Z, context);
                            a(arrayList2, crashDetailBean.y);
                            a(arrayList2, crashDetailBean, context);
                            b(arrayList2, crashDetailBean, context);
                            a(arrayList2, aVarB.B);
                            b(arrayList2, crashDetailBean.X);
                            alVar2.q = arrayList2;
                            if (crashDetailBean.j) {
                                alVar2.k = crashDetailBean.t;
                            }
                            alVar2.r = a(crashDetailBean, aVarB);
                            alVar2.s = new HashMap();
                            Map<String, String> map = crashDetailBean.R;
                            if (map != null && map.size() > 0) {
                                alVar2.s.putAll(crashDetailBean.R);
                                Object[] objArr2 = new Object[i4];
                                objArr2[i3] = Integer.valueOf(alVar2.s.size());
                                y.a("setted message size %d", objArr2);
                            }
                            Map<String, String> map2 = alVar2.s;
                            y.c("pss:" + crashDetailBean.I + " vss:" + crashDetailBean.J + " javaHeap:" + crashDetailBean.K, new Object[i3]);
                            StringBuilder sb = new StringBuilder();
                            sb.append(crashDetailBean.I);
                            map2.put("SDK_UPLOAD_U1", sb.toString());
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(crashDetailBean.J);
                            map2.put("SDK_UPLOAD_U2", sb2.toString());
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(crashDetailBean.K);
                            map2.put("SDK_UPLOAD_U3", sb3.toString());
                            Object[] objArr3 = new Object[12];
                            objArr3[i3] = crashDetailBean.n;
                            objArr3[1] = crashDetailBean.c;
                            objArr3[2] = aVarB.e();
                            objArr3[3] = Long.valueOf((crashDetailBean.r - crashDetailBean.P) / 1000);
                            objArr3[4] = Boolean.valueOf(crashDetailBean.k);
                            objArr3[5] = Boolean.valueOf(crashDetailBean.Q);
                            objArr3[6] = Boolean.valueOf(crashDetailBean.j);
                            objArr3[7] = Boolean.valueOf(crashDetailBean.b == 1);
                            objArr3[8] = Integer.valueOf(crashDetailBean.t);
                            objArr3[9] = crashDetailBean.s;
                            objArr3[10] = Boolean.valueOf(crashDetailBean.f13715d);
                            objArr3[11] = Integer.valueOf(alVar2.r.size());
                            y.c("%s rid:%s sess:%s ls:%ds isR:%b isF:%b isM:%b isN:%b mc:%d ,%s ,isUp:%b ,vm:%d", objArr3);
                            alVar = alVar2;
                        }
                        arrayList.add(alVar);
                        amVar2 = amVar2;
                        r2 = 0;
                        i3 = 0;
                        i4 = 1;
                    }
                    amVar = amVar2;
                    i2 = 0;
                }
                if (amVar == null) {
                    y.d("create eupPkg fail!", new Object[i2]);
                    return;
                }
                byte[] bArrA = com.tencent.bugly.proguard.a.a((j) amVar);
                if (bArrA == null) {
                    y.d("send encode fail!", new Object[0]);
                    return;
                }
                an anVarA = com.tencent.bugly.proguard.a.a(this.b, 830, bArrA);
                if (anVarA == null) {
                    y.d("request package is null.", new Object[0]);
                    return;
                }
                final long jCurrentTimeMillis = System.currentTimeMillis();
                u uVar = new u() { // from class: com.tencent.bugly.crashreport.crash.b.6
                    @Override // com.tencent.bugly.proguard.u
                    public final void a(boolean z4, String str3) {
                        b.a(b.this, list, z4, System.currentTimeMillis() - jCurrentTimeMillis, z ? "realtime" : "cache", str3);
                        b.a(z4, (List<CrashDetailBean>) list);
                    }
                };
                if (z) {
                    this.c.a(f13747a, anVarA, str, str2, uVar, j2, z2);
                    return;
                } else {
                    this.c.a(f13747a, anVarA, str, str2, uVar, false);
                    return;
                }
            } catch (Throwable th) {
                y.e("req cr error %s", th.toString());
                if (y.b(th)) {
                    return;
                }
                th.printStackTrace();
                return;
            }
        }
        y.d("warn: crashList is null or crashList num is 0", new Object[0]);
    }

    public static void a(boolean z, List<CrashDetailBean> list) {
        if (list != null && list.size() > 0) {
            y.c("up finish update state %b", Boolean.valueOf(z));
            for (CrashDetailBean crashDetailBean : list) {
                y.c("pre uid:%s uc:%d re:%b me:%b", crashDetailBean.c, Integer.valueOf(crashDetailBean.l), Boolean.valueOf(crashDetailBean.f13715d), Boolean.valueOf(crashDetailBean.j));
                int i2 = crashDetailBean.l + 1;
                crashDetailBean.l = i2;
                crashDetailBean.f13715d = z;
                y.c("set uid:%s uc:%d re:%b me:%b", crashDetailBean.c, Integer.valueOf(i2), Boolean.valueOf(crashDetailBean.f13715d), Boolean.valueOf(crashDetailBean.j));
            }
            Iterator<CrashDetailBean> it = list.iterator();
            while (it.hasNext()) {
                com.tencent.bugly.crashreport.crash.c.a().a(it.next());
            }
            y.c("update state size %d", Integer.valueOf(list.size()));
        }
        if (z) {
            return;
        }
        y.b("[crash] upload fail.", new Object[0]);
    }

    private static CrashDetailBean a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            byte[] blob = cursor.getBlob(cursor.getColumnIndex("_dt"));
            if (blob == null) {
                return null;
            }
            long j2 = cursor.getLong(cursor.getColumnIndex("_id"));
            CrashDetailBean crashDetailBean = (CrashDetailBean) ab.a(blob, CrashDetailBean.CREATOR);
            if (crashDetailBean != null) {
                crashDetailBean.f13714a = j2;
            }
            return crashDetailBean;
        } catch (Throwable th) {
            if (!y.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    private static ak a(String str, Context context, String str2) {
        FileInputStream fileInputStream;
        if (str2 != null && context != null) {
            y.c("zip %s", str2);
            File file = new File(str2);
            File file2 = new File(context.getCacheDir(), str);
            if (!ab.a(file, file2, 5000)) {
                y.d("zip fail!", new Object[0]);
                return null;
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                fileInputStream = new FileInputStream(file2);
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i2 = fileInputStream.read(bArr);
                        if (i2 <= 0) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, i2);
                        byteArrayOutputStream.flush();
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    y.c("read bytes :%d", Integer.valueOf(byteArray.length));
                    ak akVar = new ak((byte) 2, file2.getName(), byteArray);
                    try {
                        fileInputStream.close();
                    } catch (IOException e2) {
                        if (!y.a(e2)) {
                            e2.printStackTrace();
                        }
                    }
                    if (file2.exists()) {
                        y.c("del tmp", new Object[0]);
                        file2.delete();
                    }
                    return akVar;
                } catch (Throwable th) {
                    th = th;
                    try {
                        if (!y.a(th)) {
                            th.printStackTrace();
                        }
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e3) {
                                if (!y.a(e3)) {
                                    e3.printStackTrace();
                                }
                            }
                        }
                        if (file2.exists()) {
                            y.c("del tmp", new Object[0]);
                        }
                        return null;
                    } finally {
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e4) {
                                if (!y.a(e4)) {
                                    e4.printStackTrace();
                                }
                            }
                        }
                        if (file2.exists()) {
                            y.c("del tmp", new Object[0]);
                            file2.delete();
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = null;
            }
        } else {
            y.d("rqdp{  createZipAttachment sourcePath == null || context == null ,pls check}", new Object[0]);
            return null;
        }
    }

    public static void a(String str, String str2, String str3, String str4, String str5, CrashDetailBean crashDetailBean) {
        String str6;
        com.tencent.bugly.crashreport.common.info.a aVarB = com.tencent.bugly.crashreport.common.info.a.b();
        if (aVarB == null) {
            return;
        }
        y.e("#++++++++++Record By Bugly++++++++++#", new Object[0]);
        y.e("# You can use Bugly(http:\\\\bugly.qq.com) to get more Crash Detail!", new Object[0]);
        y.e("# PKG NAME: %s", aVarB.c);
        y.e("# APP VER: %s", aVarB.i);
        y.e("# SDK VER: %s", aVarB.f13693f);
        y.e("# LAUNCH TIME: %s", ab.a(new Date(com.tencent.bugly.crashreport.common.info.a.b().f13690a)));
        y.e("# CRASH TYPE: %s", str);
        y.e("# CRASH TIME: %s", str2);
        y.e("# CRASH PROCESS: %s", str3);
        y.e("# CRASH FOREGROUND: %s", Boolean.valueOf(aVarB.a()));
        y.e("# CRASH THREAD: %s", str4);
        if (crashDetailBean != null) {
            y.e("# REPORT ID: %s", crashDetailBean.c);
            Object[] objArr = new Object[2];
            objArr[0] = aVarB.l();
            objArr[1] = aVarB.v().booleanValue() ? "ROOTED" : "UNROOT";
            y.e("# CRASH DEVICE: %s %s", objArr);
            y.e("# RUNTIME AVAIL RAM:%d ROM:%d SD:%d", Long.valueOf(crashDetailBean.C), Long.valueOf(crashDetailBean.D), Long.valueOf(crashDetailBean.E));
            y.e("# RUNTIME TOTAL RAM:%d ROM:%d SD:%d", Long.valueOf(crashDetailBean.F), Long.valueOf(crashDetailBean.G), Long.valueOf(crashDetailBean.H));
            if (!ab.a(crashDetailBean.N)) {
                y.e("# EXCEPTION FIRED BY %s %s", crashDetailBean.N, crashDetailBean.M);
            } else if (crashDetailBean.b == 3) {
                Object[] objArr2 = new Object[1];
                if (crashDetailBean.S == null) {
                    str6 = BuildConfig.COMMON_MODULE_COMMIT_ID;
                } else {
                    str6 = crashDetailBean.S.get("BUGLY_CR_01");
                }
                objArr2[0] = str6;
                y.e("# EXCEPTION ANR MESSAGE:\n %s", objArr2);
            }
        }
        if (!ab.a(str5)) {
            y.e("# CRASH STACK: ", new Object[0]);
            y.e(str5, new Object[0]);
        }
        y.e("#++++++++++++++++++++++++++++++++++++++++++#", new Object[0]);
    }

    private static void a(CrashDetailBean crashDetailBean, Map<String, String> map) {
        String value;
        if (map != null && !map.isEmpty()) {
            crashDetailBean.R = new LinkedHashMap(map.size());
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (!ab.a(entry.getKey())) {
                    String key = entry.getKey();
                    if (key.length() > 100) {
                        key = key.substring(0, 100);
                        y.d("setted key length is over limit %d substring to %s", 100, key);
                    }
                    if (!ab.a(entry.getValue()) && entry.getValue().length() > 100000) {
                        value = entry.getValue().substring(entry.getValue().length() - 100000);
                        y.d("setted %s value length is over limit %d substring", key, 100000);
                    } else {
                        value = entry.getValue();
                    }
                    crashDetailBean.R.put(key, value);
                    y.a("add setted key %s value size:%d", key, Integer.valueOf(value.length()));
                }
            }
            return;
        }
        y.d("extra map is empty. CrashBean won't have userDatas.", new Object[0]);
    }

    private static void a(ArrayList<ak> arrayList, CrashDetailBean crashDetailBean) {
        String str;
        if (crashDetailBean.j && (str = crashDetailBean.s) != null && str.length() > 0) {
            try {
                arrayList.add(new ak((byte) 1, "alltimes.txt", crashDetailBean.s.getBytes("utf-8")));
            } catch (Exception e2) {
                e2.printStackTrace();
                y.a(e2);
            }
        }
    }

    private static void a(ArrayList<ak> arrayList, String str) {
        if (str != null) {
            try {
                arrayList.add(new ak((byte) 1, "log.txt", str.getBytes("utf-8")));
            } catch (Exception e2) {
                e2.printStackTrace();
                y.a(e2);
            }
        }
    }

    private static void a(ArrayList<ak> arrayList, String str, Context context) {
        if (str != null) {
            try {
                ak akVarA = a("backupRecord.zip", context, str);
                if (akVarA != null) {
                    y.c("attach backup record", new Object[0]);
                    arrayList.add(akVarA);
                }
            } catch (Exception e2) {
                y.a(e2);
            }
        }
    }

    private static void a(ArrayList<ak> arrayList, byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        try {
            ak akVar = new ak((byte) 2, "buglylog.zip", bArr);
            y.c("attach user log", new Object[0]);
            arrayList.add(akVar);
        } catch (Exception e2) {
            y.a(e2);
        }
    }

    private static void a(ArrayList<ak> arrayList, CrashDetailBean crashDetailBean, Context context) {
        ak akVarA;
        if (crashDetailBean.b != 3) {
            return;
        }
        y.c("crashBean.anrMessages:%s", crashDetailBean.S);
        try {
            Map<String, String> map = crashDetailBean.S;
            if (map != null && map.containsKey("BUGLY_CR_01")) {
                if (!TextUtils.isEmpty(crashDetailBean.S.get("BUGLY_CR_01"))) {
                    arrayList.add(new ak((byte) 1, "anrMessage.txt", crashDetailBean.S.get("BUGLY_CR_01").getBytes("utf-8")));
                    y.c("attach anr message", new Object[0]);
                }
                crashDetailBean.S.remove("BUGLY_CR_01");
            }
            String str = crashDetailBean.v;
            if (str == null || (akVarA = a("trace.zip", context, str)) == null) {
                return;
            }
            y.c("attach traces", new Object[0]);
            arrayList.add(akVarA);
        } catch (Exception e2) {
            e2.printStackTrace();
            y.a(e2);
        }
    }

    private static void a(ArrayList<ak> arrayList, List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
        }
        try {
            arrayList.add(new ak((byte) 1, "martianlog.txt", sb.toString().getBytes("utf-8")));
            y.c("attach pageTracingList", new Object[0]);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static Map<String, String> a(CrashDetailBean crashDetailBean, com.tencent.bugly.crashreport.common.info.a aVar) {
        HashMap map = new HashMap(30);
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(crashDetailBean.C);
            map.put("A9", sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(crashDetailBean.D);
            map.put("A11", sb2.toString());
            StringBuilder sb3 = new StringBuilder();
            sb3.append(crashDetailBean.E);
            map.put("A10", sb3.toString());
            map.put("A23", crashDetailBean.f13717f);
            StringBuilder sb4 = new StringBuilder();
            aVar.getClass();
            map.put("A7", sb4.toString());
            map.put("A6", com.tencent.bugly.crashreport.common.info.a.r());
            map.put("A5", aVar.q());
            map.put("A22", aVar.k());
            StringBuilder sb5 = new StringBuilder();
            sb5.append(crashDetailBean.G);
            map.put("A2", sb5.toString());
            StringBuilder sb6 = new StringBuilder();
            sb6.append(crashDetailBean.F);
            map.put("A1", sb6.toString());
            map.put("A24", aVar.f13694g);
            StringBuilder sb7 = new StringBuilder();
            sb7.append(crashDetailBean.H);
            map.put("A17", sb7.toString());
            map.put("A25", aVar.k());
            map.put("A15", aVar.u());
            StringBuilder sb8 = new StringBuilder();
            sb8.append(aVar.v());
            map.put("A13", sb8.toString());
            map.put("A34", crashDetailBean.A);
            if (aVar.w != null) {
                map.put("productIdentify", aVar.w);
            }
            map.put("A26", URLEncoder.encode(crashDetailBean.L, "utf-8"));
            boolean z = true;
            if (crashDetailBean.b == 1) {
                map.put("A27", crashDetailBean.N);
                map.put("A28", crashDetailBean.M);
                StringBuilder sb9 = new StringBuilder();
                sb9.append(crashDetailBean.k);
                map.put("A29", sb9.toString());
            }
            map.put("A30", crashDetailBean.O);
            StringBuilder sb10 = new StringBuilder();
            sb10.append(crashDetailBean.P);
            map.put("A18", sb10.toString());
            StringBuilder sb11 = new StringBuilder();
            if (crashDetailBean.Q) {
                z = false;
            }
            sb11.append(z);
            map.put("A36", sb11.toString());
            StringBuilder sb12 = new StringBuilder();
            sb12.append(aVar.p);
            map.put("F02", sb12.toString());
            StringBuilder sb13 = new StringBuilder();
            sb13.append(aVar.q);
            map.put("F03", sb13.toString());
            map.put("F04", aVar.e());
            StringBuilder sb14 = new StringBuilder();
            sb14.append(aVar.r);
            map.put("F05", sb14.toString());
            map.put("F06", aVar.o);
            map.put("F08", aVar.u);
            map.put("F09", aVar.v);
            StringBuilder sb15 = new StringBuilder();
            sb15.append(aVar.s);
            map.put("F10", sb15.toString());
            a(map, crashDetailBean);
        } catch (Exception e2) {
            e2.printStackTrace();
            y.a(e2);
        }
        return map;
    }

    private static void a(Map<String, String> map, CrashDetailBean crashDetailBean) {
        if (crashDetailBean.T >= 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(crashDetailBean.T);
            map.put("C01", sb.toString());
        }
        if (crashDetailBean.U >= 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(crashDetailBean.U);
            map.put("C02", sb2.toString());
        }
        Map<String, String> map2 = crashDetailBean.V;
        if (map2 != null && map2.size() > 0) {
            for (Map.Entry<String, String> entry : crashDetailBean.V.entrySet()) {
                map.put("C03_" + entry.getKey(), entry.getValue());
            }
        }
        Map<String, String> map3 = crashDetailBean.W;
        if (map3 == null || map3.size() <= 0) {
            return;
        }
        for (Map.Entry<String, String> entry2 : crashDetailBean.W.entrySet()) {
            map.put("C04_" + entry2.getKey(), entry2.getValue());
        }
    }
}
