package com.tencent.bugly.proguard;

import android.content.ContentValues;
import android.database.Cursor;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SimpleDateFormat f13911a;
    private final r b;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final t f13913a = new t(0);
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f13914a;
        private long b;
        private String c;

        public final long b() {
            return this.b;
        }

        public final String c() {
            return this.c;
        }

        public final String toString() {
            return "SLAData{uuid='" + this.f13914a + "', time=" + this.b + ", data='" + this.c + "'}";
        }

        public final String a() {
            return this.f13914a;
        }

        public final void b(String str) {
            this.c = str;
        }

        public final void a(String str) {
            this.f13914a = str;
        }

        public final void a(long j) {
            this.b = j;
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f13915a;
        private String b;
        private long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f13916d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f13917e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f13918f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f13919g;

        public c(String str, String str2, long j, boolean z, long j2, String str3, String str4) {
            this.f13915a = str;
            this.b = str2;
            this.c = j;
            this.f13916d = z;
            this.f13917e = j2;
            this.f13918f = str3;
            this.f13919g = str4;
        }

        public final String b() {
            return this.b;
        }

        public final long c() {
            return this.c;
        }

        public final boolean d() {
            return this.f13916d;
        }

        public final long e() {
            return this.f13917e;
        }

        public final String f() {
            return this.f13918f;
        }

        public final String g() {
            return this.f13919g;
        }

        public final String a() {
            return this.f13915a;
        }

        public c() {
        }
    }

    /* synthetic */ t(byte b2) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(List<b> list) {
        if (list == null || list.isEmpty()) {
            y.c("sla batch report data is empty", new Object[0]);
            return;
        }
        y.c("sla batch report list size:%s", Integer.valueOf(list.size()));
        if (list.size() > 30) {
            list = list.subList(0, 29);
        }
        ArrayList arrayList = new ArrayList();
        Iterator<b> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().c());
        }
        Pair<Integer, String> pairA = this.b.a(arrayList);
        y.c("sla batch report result, rspCode:%s rspMsg:%s", pairA.first, pairA.second);
        if (((Integer) pairA.first).intValue() == 200) {
            e(list);
        }
    }

    private static void d(List<b> list) {
        for (b bVar : list) {
            y.c("sla save id:%s time:%s msg:%s", bVar.a(), Long.valueOf(bVar.b()), bVar.c());
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("_id", bVar.a());
                contentValues.put("_tm", Long.valueOf(bVar.b()));
                contentValues.put("_dt", bVar.c());
                o.a().a("t_sla", contentValues, (n) null, true);
            } catch (Throwable th) {
                y.b(th);
            }
        }
    }

    private void e(List<b> list) {
        if (list == null || list.isEmpty()) {
            y.c("sla batch delete list is null", new Object[0]);
            return;
        }
        y.c("sla batch delete list size:%s", Integer.valueOf(list.size()));
        try {
            String str = "_id in (" + a(",", list) + ")";
            y.c("sla batch delete where:%s", str);
            o.a().a("t_sla", str, (String[]) null, (n) null, true);
        } catch (Throwable th) {
            y.b(th);
        }
    }

    public final void b() {
        List<b> listC = c();
        if (listC == null || listC.isEmpty()) {
            y.c("sla local data is null", new Object[0]);
            return;
        }
        y.c("sla load local data list size:%s", Integer.valueOf(listC.size()));
        Iterator<b> it = listC.iterator();
        ArrayList arrayList = new ArrayList();
        while (it.hasNext()) {
            b next = it.next();
            if (next.b() < ab.b() - 604800000) {
                y.c("sla local data is expired:%s", next.c());
                arrayList.add(next);
                it.remove();
            }
        }
        e(arrayList);
        b(listC);
    }

    private t() {
        this.f13911a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS", Locale.US);
        this.b = new r();
    }

    public static t a() {
        return a.f13913a;
    }

    public final void a(c cVar) {
        if (cVar != null && !TextUtils.isEmpty(cVar.b())) {
            y.c("sla report single event", new Object[0]);
            a(Collections.singletonList(cVar));
        } else {
            y.d("sla report event is null", new Object[0]);
        }
    }

    public final void a(List<c> list) {
        if (list != null && !list.isEmpty()) {
            y.c("sla batch report event size:%s", Integer.valueOf(list.size()));
            ArrayList arrayList = new ArrayList();
            for (c cVar : list) {
                b bVar = null;
                if (cVar == null || TextUtils.isEmpty(cVar.b())) {
                    y.d("sla convert event is null", new Object[0]);
                } else {
                    com.tencent.bugly.crashreport.common.info.a aVarB = com.tencent.bugly.crashreport.common.info.a.b();
                    if (aVarB == null) {
                        y.d("sla convert failed because ComInfoManager is null", new Object[0]);
                    } else {
                        String str = "&app_version=" + aVarB.i + "&app_name=" + aVarB.j + "&app_bundle_id=" + aVarB.c + "&client_type=android&user_id=" + aVarB.g() + "&sdk_version=" + aVarB.f13693f + "&event_code=" + cVar.b() + "&event_result=" + (cVar.d() ? 1 : 0) + "&event_time=" + this.f13911a.format(new Date(cVar.c())) + "&event_cost=" + cVar.e() + "&device_id=" + aVarB.k() + "&debug=" + (aVarB.t ? 1 : 0) + "&param_0=" + cVar.f() + "&param_1=" + cVar.a() + "&param_2=ext&param_4=" + aVarB.f();
                        if (!TextUtils.isEmpty(cVar.f13919g)) {
                            str = str + "&param_3=" + cVar.f13919g;
                        }
                        y.c("sla convert eventId:%s eventType:%s, eventTime:%s success:%s cost:%s from:%s uploadMsg:", cVar.a(), cVar.b(), Long.valueOf(cVar.c()), Boolean.valueOf(cVar.d()), Long.valueOf(cVar.e()), cVar.f(), cVar.g());
                        String str2 = cVar.a() + "-" + cVar.b();
                        b bVar2 = new b();
                        bVar2.a(str2);
                        bVar2.a(cVar.c());
                        bVar2.b(str);
                        bVar = bVar2;
                    }
                }
                if (bVar != null) {
                    arrayList.add(bVar);
                }
            }
            d(arrayList);
            b(arrayList);
            return;
        }
        y.d("sla batch report event is null", new Object[0]);
    }

    private static List<b> c() {
        Cursor cursorA = o.a().a(false, "t_sla", new String[]{"_id", "_tm", "_dt"}, (String) null, (String[]) null, (String) null, (String) null, "_tm", "30", (n) null, true);
        if (cursorA == null) {
            return null;
        }
        if (cursorA.getCount() <= 0) {
            cursorA.close();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        while (cursorA.moveToNext()) {
            try {
                b bVar = new b();
                bVar.a(cursorA.getString(cursorA.getColumnIndex("_id")));
                bVar.a(cursorA.getLong(cursorA.getColumnIndex("_tm")));
                bVar.b(cursorA.getString(cursorA.getColumnIndex("_dt")));
                y.c(bVar.toString(), new Object[0]);
                arrayList.add(bVar);
            } catch (Throwable th) {
                try {
                    y.b(th);
                } finally {
                    cursorA.close();
                }
            }
        }
        return arrayList;
    }

    private void b(final List<b> list) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            x.a().a(new Runnable() { // from class: com.tencent.bugly.proguard.t.1
                @Override // java.lang.Runnable
                public final void run() {
                    t.this.c(list);
                }
            });
        } else {
            c(list);
        }
    }

    private static String a(String str, Iterable<b> iterable) {
        Iterator<b> it = iterable.iterator();
        if (!it.hasNext()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("'");
        sb.append(it.next().f13914a);
        sb.append("'");
        while (it.hasNext()) {
            sb.append(str);
            sb.append("'");
            sb.append(it.next().f13914a);
            sb.append("'");
        }
        return sb.toString();
    }
}
