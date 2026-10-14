package com.tencent.bugly.crashreport.biz;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.an;
import com.tencent.bugly.proguard.as;
import com.tencent.bugly.proguard.j;
import com.tencent.bugly.proguard.n;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.u;
import com.tencent.bugly.proguard.v;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.y;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f13674a;
    private long b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f13675d;

    /* JADX INFO: renamed from: com.tencent.bugly.crashreport.biz.a$2, reason: invalid class name */
    final class AnonymousClass2 implements Runnable {
        AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                a.this.c();
            } catch (Throwable th) {
                y.a(th);
            }
        }
    }

    /* JADX INFO: renamed from: com.tencent.bugly.crashreport.biz.a$a, reason: collision with other inner class name */
    class RunnableC0271a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f13678a;
        private UserInfoBean b;

        public RunnableC0271a(UserInfoBean userInfoBean, boolean z) {
            this.b = userInfoBean;
            this.f13678a = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                UserInfoBean userInfoBean = this.b;
                if (userInfoBean != null) {
                    a.a(a.this, userInfoBean);
                    y.c("[UserInfo] Record user info.", new Object[0]);
                    a.a(a.this, this.b, false);
                }
                if (this.f13678a) {
                    a aVar = a.this;
                    x xVarA = x.a();
                    if (xVarA != null) {
                        xVarA.a(aVar.new AnonymousClass2());
                    }
                }
            } catch (Throwable th) {
                if (y.a(th)) {
                    return;
                }
                th.printStackTrace();
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis < a.this.b) {
                x.a().a(a.this.new b(), (a.this.b - jCurrentTimeMillis) + DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
            } else {
                a.this.a(3, false, 0L);
                a.this.a();
            }
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f13680a;

        public c(long j) {
            this.f13680a = 21600000L;
            this.f13680a = j;
        }

        @Override // java.lang.Runnable
        public final void run() {
            a aVar = a.this;
            x xVarA = x.a();
            if (xVarA != null) {
                xVarA.a(aVar.new AnonymousClass2());
            }
            a aVar2 = a.this;
            long j = this.f13680a;
            x.a().a(aVar2.new c(j), j);
        }
    }

    public a(Context context, boolean z) {
        this.f13675d = true;
        this.f13674a = context;
        this.f13675d = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:30:0x006a A[Catch: all -> 0x00eb, TryCatch #0 {, blocks: (B:3:0x0001, B:21:0x002b, B:23:0x003e, B:25:0x004f, B:28:0x0064, B:30:0x006a, B:32:0x006f, B:35:0x0076, B:39:0x008e, B:41:0x0094, B:44:0x009d, B:46:0x00a3, B:49:0x00ac, B:51:0x00b6, B:54:0x00bf, B:58:0x00dd, B:61:0x00e2, B:26:0x005e, B:6:0x0009, B:9:0x0010, B:12:0x0017, B:14:0x001d), top: B:67:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x008b  */
    /* JADX WARN: Code duplicated, block: B:38:0x008d  */
    /* JADX WARN: Code duplicated, block: B:41:0x0094 A[Catch: all -> 0x00eb, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:21:0x002b, B:23:0x003e, B:25:0x004f, B:28:0x0064, B:30:0x006a, B:32:0x006f, B:35:0x0076, B:39:0x008e, B:41:0x0094, B:44:0x009d, B:46:0x00a3, B:49:0x00ac, B:51:0x00b6, B:54:0x00bf, B:58:0x00dd, B:61:0x00e2, B:26:0x005e, B:6:0x0009, B:9:0x0010, B:12:0x0017, B:14:0x001d), top: B:67:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x009d A[Catch: all -> 0x00eb, TRY_ENTER, TryCatch #0 {, blocks: (B:3:0x0001, B:21:0x002b, B:23:0x003e, B:25:0x004f, B:28:0x0064, B:30:0x006a, B:32:0x006f, B:35:0x0076, B:39:0x008e, B:41:0x0094, B:44:0x009d, B:46:0x00a3, B:49:0x00ac, B:51:0x00b6, B:54:0x00bf, B:58:0x00dd, B:61:0x00e2, B:26:0x005e, B:6:0x0009, B:9:0x0010, B:12:0x0017, B:14:0x001d), top: B:67:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00a3 A[Catch: all -> 0x00eb, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:21:0x002b, B:23:0x003e, B:25:0x004f, B:28:0x0064, B:30:0x006a, B:32:0x006f, B:35:0x0076, B:39:0x008e, B:41:0x0094, B:44:0x009d, B:46:0x00a3, B:49:0x00ac, B:51:0x00b6, B:54:0x00bf, B:58:0x00dd, B:61:0x00e2, B:26:0x005e, B:6:0x0009, B:9:0x0010, B:12:0x0017, B:14:0x001d), top: B:67:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00ac A[Catch: all -> 0x00eb, TRY_ENTER, TryCatch #0 {, blocks: (B:3:0x0001, B:21:0x002b, B:23:0x003e, B:25:0x004f, B:28:0x0064, B:30:0x006a, B:32:0x006f, B:35:0x0076, B:39:0x008e, B:41:0x0094, B:44:0x009d, B:46:0x00a3, B:49:0x00ac, B:51:0x00b6, B:54:0x00bf, B:58:0x00dd, B:61:0x00e2, B:26:0x005e, B:6:0x0009, B:9:0x0010, B:12:0x0017, B:14:0x001d), top: B:67:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00b6 A[Catch: all -> 0x00eb, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:21:0x002b, B:23:0x003e, B:25:0x004f, B:28:0x0064, B:30:0x006a, B:32:0x006f, B:35:0x0076, B:39:0x008e, B:41:0x0094, B:44:0x009d, B:46:0x00a3, B:49:0x00ac, B:51:0x00b6, B:54:0x00bf, B:58:0x00dd, B:61:0x00e2, B:26:0x005e, B:6:0x0009, B:9:0x0010, B:12:0x0017, B:14:0x001d), top: B:67:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00bf A[Catch: all -> 0x00eb, TRY_ENTER, TryCatch #0 {, blocks: (B:3:0x0001, B:21:0x002b, B:23:0x003e, B:25:0x004f, B:28:0x0064, B:30:0x006a, B:32:0x006f, B:35:0x0076, B:39:0x008e, B:41:0x0094, B:44:0x009d, B:46:0x00a3, B:49:0x00ac, B:51:0x00b6, B:54:0x00bf, B:58:0x00dd, B:61:0x00e2, B:26:0x005e, B:6:0x0009, B:9:0x0010, B:12:0x0017, B:14:0x001d), top: B:67:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x00da  */
    /* JADX WARN: Code duplicated, block: B:57:0x00dc  */
    public synchronized void c() {
        v vVarA;
        com.tencent.bugly.crashreport.common.strategy.a aVarA;
        boolean z;
        int i;
        as asVarA;
        byte[] bArrA;
        an anVarA;
        boolean z2;
        if (this.f13675d && (vVarA = v.a()) != null && (aVarA = com.tencent.bugly.crashreport.common.strategy.a.a()) != null && (!aVarA.b() || vVarA.b(1001))) {
            String str = com.tencent.bugly.crashreport.common.info.a.a(this.f13674a).f13691d;
            ArrayList arrayList = new ArrayList();
            final List<UserInfoBean> listA = a(str);
            if (listA != null) {
                a(listA, arrayList);
                b(listA, arrayList);
                int iA = a(listA, 600000L);
                if (iA > 15) {
                    y.d("[UserInfo] Upload user info too many times in 10 min: %d", Integer.valueOf(iA));
                    z = false;
                }
                if (arrayList.size() > 0) {
                    a(arrayList);
                }
                if (z && listA.size() != 0) {
                    y.c("[UserInfo] Upload user info(size: %d)", Integer.valueOf(listA.size()));
                    if (this.c == 1) {
                        i = 1;
                    } else {
                        i = 2;
                    }
                    asVarA = com.tencent.bugly.proguard.a.a(listA, i);
                    if (asVarA == null) {
                        y.d("[UserInfo] Failed to create UserInfoPackage.", new Object[0]);
                        return;
                    }
                    bArrA = com.tencent.bugly.proguard.a.a((j) asVarA);
                    if (bArrA == null) {
                        y.d("[UserInfo] Failed to encode data.", new Object[0]);
                        return;
                    }
                    anVarA = com.tencent.bugly.proguard.a.a(this.f13674a, 840, bArrA);
                    if (anVarA == null) {
                        y.d("[UserInfo] Request package is null.", new Object[0]);
                        return;
                    }
                    u uVar = new u() { // from class: com.tencent.bugly.crashreport.biz.a.1
                        @Override // com.tencent.bugly.proguard.u
                        public final void a(boolean z3, String str2) {
                            if (z3) {
                                y.c("[UserInfo] Successfully uploaded user info.", new Object[0]);
                                long jCurrentTimeMillis = System.currentTimeMillis();
                                for (UserInfoBean userInfoBean : listA) {
                                    userInfoBean.f13671f = jCurrentTimeMillis;
                                    a.a(a.this, userInfoBean, true);
                                }
                            }
                        }
                    };
                    String str2 = com.tencent.bugly.crashreport.common.strategy.a.a().c().p;
                    String str3 = StrategyBean.f13697a;
                    v vVarA2 = v.a();
                    if (this.c == 1) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    vVarA2.a(1001, anVarA, str2, str3, uVar, z2);
                    return;
                }
                y.c("[UserInfo] There is no user info in local database.", new Object[0]);
            }
            listA = new ArrayList<>();
            z = true;
            if (arrayList.size() > 0) {
                a(arrayList);
            }
            if (z) {
                y.c("[UserInfo] Upload user info(size: %d)", Integer.valueOf(listA.size()));
                if (this.c == 1) {
                    i = 1;
                } else {
                    i = 2;
                }
                asVarA = com.tencent.bugly.proguard.a.a(listA, i);
                if (asVarA == null) {
                    y.d("[UserInfo] Failed to create UserInfoPackage.", new Object[0]);
                    return;
                }
                bArrA = com.tencent.bugly.proguard.a.a((j) asVarA);
                if (bArrA == null) {
                    y.d("[UserInfo] Failed to encode data.", new Object[0]);
                    return;
                }
                anVarA = com.tencent.bugly.proguard.a.a(this.f13674a, 840, bArrA);
                if (anVarA == null) {
                    y.d("[UserInfo] Request package is null.", new Object[0]);
                    return;
                }
                u uVar2 = new u() { // from class: com.tencent.bugly.crashreport.biz.a.1
                    @Override // com.tencent.bugly.proguard.u
                    public final void a(boolean z3, String str4) {
                        if (z3) {
                            y.c("[UserInfo] Successfully uploaded user info.", new Object[0]);
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            for (UserInfoBean userInfoBean : listA) {
                                userInfoBean.f13671f = jCurrentTimeMillis;
                                a.a(a.this, userInfoBean, true);
                            }
                        }
                    }
                };
                String str4 = com.tencent.bugly.crashreport.common.strategy.a.a().c().p;
                String str5 = StrategyBean.f13697a;
                v vVarA3 = v.a();
                if (this.c == 1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                vVarA3.a(1001, anVarA, str4, str5, uVar2, z2);
                return;
            }
            y.c("[UserInfo] There is no user info in local database.", new Object[0]);
        }
    }

    static /* synthetic */ void a(a aVar, UserInfoBean userInfoBean) {
        com.tencent.bugly.crashreport.common.info.a aVarB;
        if (userInfoBean == null || (aVarB = com.tencent.bugly.crashreport.common.info.a.b()) == null) {
            return;
        }
        userInfoBean.j = aVarB.e();
    }

    private static void b(List<UserInfoBean> list, List<UserInfoBean> list2) {
        Iterator<UserInfoBean> it = list.iterator();
        while (it.hasNext()) {
            UserInfoBean next = it.next();
            if (next.f13671f != -1) {
                it.remove();
                if (next.f13670e < ab.b()) {
                    list2.add(next);
                }
            }
        }
    }

    static /* synthetic */ void a(a aVar, UserInfoBean userInfoBean, boolean z) {
        List<UserInfoBean> listA;
        if (userInfoBean != null) {
            if (!z && userInfoBean.b != 1 && (listA = aVar.a(com.tencent.bugly.crashreport.common.info.a.a(aVar.f13674a).f13691d)) != null && listA.size() >= 20) {
                y.a("[UserInfo] There are too many user info in local: %d", Integer.valueOf(listA.size()));
                return;
            }
            long jA = o.a().a("t_ui", a(userInfoBean), (n) null, true);
            if (jA >= 0) {
                y.c("[Database] insert %s success with ID: %d", "t_ui", Long.valueOf(jA));
                userInfoBean.f13668a = jA;
            }
        }
    }

    public final void a(int i, boolean z, long j) {
        com.tencent.bugly.crashreport.common.strategy.a aVarA = com.tencent.bugly.crashreport.common.strategy.a.a();
        if (aVarA != null && !aVarA.c().f13700f && i != 1 && i != 3) {
            y.e("UserInfo is disable", new Object[0]);
            return;
        }
        if (i == 1 || i == 3) {
            this.c++;
        }
        com.tencent.bugly.crashreport.common.info.a aVarA2 = com.tencent.bugly.crashreport.common.info.a.a(this.f13674a);
        UserInfoBean userInfoBean = new UserInfoBean();
        userInfoBean.b = i;
        userInfoBean.c = aVarA2.f13691d;
        userInfoBean.f13669d = aVarA2.g();
        userInfoBean.f13670e = System.currentTimeMillis();
        userInfoBean.f13671f = -1L;
        userInfoBean.n = aVarA2.i;
        userInfoBean.o = i == 1 ? 1 : 0;
        userInfoBean.l = aVarA2.a();
        userInfoBean.m = aVarA2.o;
        userInfoBean.f13672g = aVarA2.p;
        userInfoBean.f13673h = aVarA2.q;
        userInfoBean.i = aVarA2.r;
        userInfoBean.k = aVarA2.s;
        userInfoBean.r = aVarA2.x();
        userInfoBean.s = aVarA2.C();
        userInfoBean.p = aVarA2.D();
        userInfoBean.q = aVarA2.E();
        x.a().a(new RunnableC0271a(userInfoBean, z), 0L);
    }

    public final void b() {
        x xVarA = x.a();
        if (xVarA != null) {
            xVarA.a(new AnonymousClass2());
        }
    }

    public final void a() {
        this.b = ab.b() + 86400000;
        x.a().a(new b(), (this.b - System.currentTimeMillis()) + DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
    }

    private static void a(List<UserInfoBean> list, List<UserInfoBean> list2) {
        int size = list.size() - 20;
        if (size > 0) {
            int i = 0;
            while (i < list.size() - 1) {
                int i2 = i + 1;
                for (int i3 = i2; i3 < list.size(); i3++) {
                    if (list.get(i).f13670e > list.get(i3).f13670e) {
                        UserInfoBean userInfoBean = list.get(i);
                        list.set(i, list.get(i3));
                        list.set(i3, userInfoBean);
                    }
                }
                i = i2;
            }
            for (int i4 = 0; i4 < size; i4++) {
                list2.add(list.get(i4));
            }
        }
    }

    private static int a(List<UserInfoBean> list, long j) {
        int i;
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i2 = 0;
        for (UserInfoBean userInfoBean : list) {
            if (userInfoBean.f13670e > jCurrentTimeMillis - 600000 && ((i = userInfoBean.b) == 1 || i == 4 || i == 3)) {
                i2++;
            }
        }
        return i2;
    }

    public final List<UserInfoBean> a(String str) {
        Cursor cursorA;
        String str2;
        try {
            if (ab.a(str)) {
                str2 = null;
            } else {
                str2 = "_pc = '" + str + "'";
            }
            cursorA = o.a().a("t_ui", null, str2, null, null, true);
            if (cursorA == null) {
                if (cursorA != null) {
                    cursorA.close();
                }
                return null;
            }
            try {
                StringBuilder sb = new StringBuilder();
                ArrayList arrayList = new ArrayList();
                while (cursorA.moveToNext()) {
                    UserInfoBean userInfoBeanA = a(cursorA);
                    if (userInfoBeanA != null) {
                        arrayList.add(userInfoBeanA);
                    } else {
                        try {
                            long j = cursorA.getLong(cursorA.getColumnIndex("_id"));
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
                    y.d("[Database] deleted %s error data %d", "t_ui", Integer.valueOf(o.a().a("t_ui", string.substring(4), (String[]) null, (n) null, true)));
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

    private static void a(List<UserInfoBean> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size() && i < 50; i++) {
            UserInfoBean userInfoBean = list.get(i);
            sb.append(" or _id");
            sb.append(" = ");
            sb.append(userInfoBean.f13668a);
        }
        String string = sb.toString();
        if (string.length() > 0) {
            string = string.substring(4);
        }
        String str = string;
        sb.setLength(0);
        try {
            y.c("[Database] deleted %s data %d", "t_ui", Integer.valueOf(o.a().a("t_ui", str, (String[]) null, (n) null, true)));
        } catch (Throwable th) {
            if (y.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    private static ContentValues a(UserInfoBean userInfoBean) {
        if (userInfoBean == null) {
            return null;
        }
        try {
            ContentValues contentValues = new ContentValues();
            long j = userInfoBean.f13668a;
            if (j > 0) {
                contentValues.put("_id", Long.valueOf(j));
            }
            contentValues.put("_tm", Long.valueOf(userInfoBean.f13670e));
            contentValues.put("_ut", Long.valueOf(userInfoBean.f13671f));
            contentValues.put("_tp", Integer.valueOf(userInfoBean.b));
            contentValues.put("_pc", userInfoBean.c);
            contentValues.put("_dt", ab.a(userInfoBean));
            return contentValues;
        } catch (Throwable th) {
            if (!y.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    private static UserInfoBean a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            byte[] blob = cursor.getBlob(cursor.getColumnIndex("_dt"));
            if (blob == null) {
                return null;
            }
            long j = cursor.getLong(cursor.getColumnIndex("_id"));
            UserInfoBean userInfoBean = (UserInfoBean) ab.a(blob, UserInfoBean.CREATOR);
            if (userInfoBean != null) {
                userInfoBean.f13668a = j;
            }
            return userInfoBean;
        } catch (Throwable th) {
            if (!y.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }
}
