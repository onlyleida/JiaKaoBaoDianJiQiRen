package com.mobile.auth.g;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.mobile.auth.k.f;
import com.mobile.auth.k.k;
import com.mobile.auth.k.t;
import com.tencent.connect.common.Constants;
import java.lang.reflect.Method;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f13177a;
    private static long b;
    private C0254b c = null;

    public static class a extends Exception {
        public a(String str) {
            super(str);
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.g.b$b, reason: collision with other inner class name */
    public static class C0254b {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f13183h;
        private int i;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f13178a = "";
        private String b = "";
        private String c = "";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f13179d = "";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f13180e = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f13181f = -1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f13182g = -1;
        private String j = "";
        private String k = "";
        private int l = -1;
        private int m = -1;

        public String a() {
            return this.c;
        }

        public String a(int i) {
            if (this.f13181f == i) {
                return this.f13178a;
            }
            return this.f13182g == i ? this.b : "";
        }

        protected void a(String str) {
            if (str != null) {
                this.c = str;
            }
        }

        protected void a(boolean z) {
        }

        public String b() {
            return this.f13179d;
        }

        protected void b(int i) {
            this.l = i;
        }

        protected void b(String str) {
            if (str != null) {
                this.f13179d = str;
            }
        }

        protected void b(boolean z) {
            this.f13180e = z;
        }

        public String c() {
            return this.k;
        }

        protected void c(int i) {
            this.f13181f = i;
        }

        protected void c(String str) {
            if (str != null) {
                this.j = str;
            }
        }

        protected void d(int i) {
            this.f13182g = i;
        }

        protected void d(String str) {
            this.k = str;
        }

        public boolean d() {
            return this.f13180e;
        }

        public int e() {
            return this.l;
        }

        protected void e(int i) {
        }

        public int f() {
            return this.f13181f;
        }

        protected void f(int i) {
        }

        public int g() {
            return this.f13182g;
        }

        public String g(int i) {
            if (this.f13181f == i) {
                return this.c;
            }
            return this.f13182g == i ? this.f13179d : "";
        }

        public int h() {
            if (!TextUtils.isEmpty(this.f13179d) && !TextUtils.isEmpty(this.c)) {
                return 2;
            }
            if (TextUtils.isEmpty(this.j) || TextUtils.isEmpty(this.k)) {
                return (TextUtils.isEmpty(this.c) && TextUtils.isEmpty(this.f13179d) && TextUtils.isEmpty(this.j) && TextUtils.isEmpty(this.k)) ? 0 : 1;
            }
            return 2;
        }

        public String h(int i) {
            if (this.f13181f == i) {
                return this.j;
            }
            return this.f13182g == i ? this.k : "";
        }
    }

    private b() {
    }

    @SuppressLint({"NewApi"})
    private SubscriptionInfo a(Object obj, String str, Object[] objArr) throws a {
        return (SubscriptionInfo) a(obj, str, objArr, null);
    }

    @SuppressLint({"NewApi"})
    private SubscriptionInfo a(List<SubscriptionInfo> list, int i) {
        SubscriptionInfo subscriptionInfo = list.get(0);
        for (SubscriptionInfo subscriptionInfo2 : list) {
            if (subscriptionInfo2.getSimSlotIndex() == i) {
                subscriptionInfo = subscriptionInfo2;
            }
        }
        return subscriptionInfo;
    }

    public static b a() {
        if (f13177a == null) {
            f13177a = new b();
        }
        return f13177a;
    }

    private Object a(Object obj, String str, Object[] objArr, Class[] clsArr) throws a {
        try {
            Class<?> cls = Class.forName(obj.getClass().getName());
            return (objArr == null || clsArr == null) ? cls.getMethod(str, new Class[0]).invoke(obj, new Object[0]) : cls.getMethod(str, clsArr).invoke(obj, objArr);
        } catch (Exception unused) {
            f.a("UMCTelephonyManagement", str + " 反射出错");
            throw new a(str);
        }
    }

    private String a(TelephonyManager telephonyManager, String str, int i) throws a {
        Object objA = a(telephonyManager, str, new Object[]{Integer.valueOf(i)}, new Class[]{Integer.TYPE});
        if (objA != null) {
            return objA.toString();
        }
        return null;
    }

    private String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        f.b("UMCTelephonyManagement", "operatorChina = " + str);
        if (str.contains("中国移动")) {
            return "46000";
        }
        if (str.contains("中国联通")) {
            return "46001";
        }
        return str.contains("中国电信") ? "46003" : "";
    }

    @SuppressLint({"NewApi", "MissingPermission"})
    private void a(List<SubscriptionInfo> list, TelephonyManager telephonyManager) {
        SubscriptionInfo subscriptionInfoA;
        int size = list != null ? list.size() : 0;
        if (size == 1) {
            subscriptionInfoA = list.get(0);
        } else if (size <= 1) {
            return;
        } else {
            subscriptionInfoA = a(list, 0);
        }
        this.c.f13178a = subscriptionInfoA.getIccId();
        this.c.c(subscriptionInfoA.getSimSlotIndex());
        this.c.e(subscriptionInfoA.getSubscriptionId());
        C0254b c0254b = this.c;
        c0254b.j = b(c0254b.f13178a);
        f.b("UMCTelephonyManagement", "readSim1Info1 iccid1 = " + this.c.f13178a);
        if (this.c.l == -1 && this.c.m == subscriptionInfoA.getSubscriptionId()) {
            this.c.l = subscriptionInfoA.getSimSlotIndex();
            f.b("UMCTelephonyManagement", "readSim1Info1 dataSlotId = " + this.c.l);
        }
        if (t.e()) {
            int simSlotIndex = com.mobile.auth.g.a.a() == 0 ? subscriptionInfoA.getSimSlotIndex() : subscriptionInfoA.getSubscriptionId();
            try {
                try {
                    try {
                        this.c.a(a(telephonyManager, "getSubscriberId", subscriptionInfoA.getSubscriptionId()));
                    } catch (a unused) {
                        this.c.a(telephonyManager.getSubscriberId());
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } catch (a unused2) {
                this.c.a(a(telephonyManager, "getSubscriberIdGemini", simSlotIndex));
            }
            try {
                try {
                    this.c.c(a(telephonyManager, "getSimOperator", subscriptionInfoA.getSubscriptionId()));
                } catch (a unused3) {
                    this.c.c(telephonyManager.getSimOperator());
                }
            } catch (a unused4) {
                this.c.c(a(telephonyManager, "getSimOperatorGemini", simSlotIndex));
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:9:0x0036  */
    private String b(String str) {
        if (TextUtils.isEmpty(str) && str.length() < 6) {
            return "";
        }
        String strSubstring = str.substring(0, 6);
        f.b("UMCTelephonyManagement", "operatorFlag = " + strSubstring);
        strSubstring.hashCode();
        switch (strSubstring) {
            case "898600":
            case "898602":
            case "898604":
            case "898607":
                return "46000";
            case "898601":
            case "898606":
            case "898609":
                return "46001";
            case "898603":
            case "898611":
                return "46003";
            default:
                return "";
        }
    }

    /* JADX WARN: Code duplicated, block: B:82:0x0272 A[PHI: r12
      0x0272: PHI (r12v4 android.database.Cursor) = (r12v3 android.database.Cursor), (r12v6 android.database.Cursor) binds: [B:81:0x0270, B:76:0x0266] A[DONT_GENERATE, DONT_INLINE]] */
    private void b(Context context) {
        f.b("UMCTelephonyManagement", "readSimInfoDbStart");
        Uri uri = Uri.parse("content://telephony/siminfo");
        ContentResolver contentResolver = context.getContentResolver();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = contentResolver.query(uri, new String[]{"_id", "icc_id", "sim_id", "mcc", "mnc", "carrier_name"}, "sim_id>=?", new String[]{"0"}, null);
                if (cursorQuery != null) {
                    while (cursorQuery.moveToNext()) {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndex("icc_id"));
                        int i = cursorQuery.getInt(cursorQuery.getColumnIndex("sim_id"));
                        int i2 = cursorQuery.getInt(cursorQuery.getColumnIndex("_id"));
                        String string2 = cursorQuery.getString(cursorQuery.getColumnIndex("mcc"));
                        String string3 = cursorQuery.getString(cursorQuery.getColumnIndex("mnc"));
                        String string4 = cursorQuery.getString(cursorQuery.getColumnIndex("carrier_name"));
                        if (this.c.l == -1 && this.c.m != -1 && this.c.m == i2) {
                            this.c.l = i;
                            f.b("UMCTelephonyManagement", "通过读取sim db获取数据流量卡的卡槽值：" + i);
                        }
                        if (this.c.l == i && !t.d()) {
                            this.c.m = i2;
                        }
                        if (i == 0) {
                            this.c.f13178a = string;
                            this.c.f13183h = i2;
                            if (this.c.f13181f == -1) {
                                this.c.f13181f = i;
                            }
                            if (TextUtils.isEmpty(this.c.j) && !TextUtils.isEmpty(string4)) {
                                String strA = a(string4);
                                if (!TextUtils.isEmpty(strA)) {
                                    this.c.j = strA;
                                }
                            }
                            if (TextUtils.isEmpty(this.c.j)) {
                                String strB = b(string);
                                if (!TextUtils.isEmpty(strB)) {
                                    this.c.j = strB;
                                }
                            }
                            if (TextUtils.isEmpty(this.c.j) && !TextUtils.isEmpty(string2) && !TextUtils.isEmpty(string3)) {
                                if (string3.length() == 1) {
                                    string3 = "0" + string3;
                                }
                                this.c.j = string2 + string3;
                            }
                        } else if (i == 1) {
                            this.c.b = string;
                            this.c.i = i2;
                            if (this.c.f13182g == -1) {
                                this.c.f13182g = i;
                            }
                            if (TextUtils.isEmpty(this.c.k) && !TextUtils.isEmpty(string4)) {
                                String strA2 = a(string4);
                                if (!TextUtils.isEmpty(strA2)) {
                                    this.c.k = strA2;
                                }
                            }
                            if (TextUtils.isEmpty(this.c.k)) {
                                String strB2 = b(string);
                                if (!TextUtils.isEmpty(strB2)) {
                                    this.c.k = strB2;
                                }
                            }
                            if (TextUtils.isEmpty(this.c.k) && !TextUtils.isEmpty(string2) && !TextUtils.isEmpty(string3)) {
                                if (string3.length() == 1) {
                                    string3 = "0" + string3;
                                }
                                this.c.k = string2 + string3;
                            }
                        }
                        f.b("UMCTelephonyManagement", "icc_id-->" + string);
                        f.b("UMCTelephonyManagement", "sim_id-->" + i);
                        f.b("UMCTelephonyManagement", "subId或者说是_id->" + i2);
                        f.b("UMCTelephonyManagement", "mcc_string--->" + string3);
                        f.b("UMCTelephonyManagement", "mnc_string--->" + string2);
                        f.b("UMCTelephonyManagement", "carrier_name----->" + string4);
                        f.b("UMCTelephonyManagement", "---------------------------------");
                    }
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } catch (Exception unused) {
                f.a("UMCTelephonyManagement", "readSimInfoDb error");
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            }
            f.b("UMCTelephonyManagement", "readSimInfoDbEnd");
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    private void b(Context context, boolean z) {
        int i = Build.VERSION.SDK_INT;
        if (i < 22) {
            this.c.l = -1;
            return;
        }
        SubscriptionManager subscriptionManagerFrom = SubscriptionManager.from(context.getApplicationContext());
        if (subscriptionManagerFrom != null) {
            if (z) {
                try {
                    SubscriptionInfo subscriptionInfoA = a(subscriptionManagerFrom, "getDefaultDataSubscriptionInfo", (Object[]) null);
                    if (subscriptionInfoA != null) {
                        this.c.l = subscriptionInfoA.getSimSlotIndex();
                        this.c.m = subscriptionInfoA.getSubscriptionId();
                        f.b("UMCTelephonyManagement", "getDefaultDataSubscriptionInfo适配成功: dataSlotId即sim_id = " + this.c.l);
                        f.b("UMCTelephonyManagement", "getDefaultDataSubscriptionInfo适配成功: dataSubId = " + this.c.m);
                        return;
                    }
                } catch (Exception unused) {
                    f.a("UMCTelephonyManagement", "readDefaultDataSubId-->getDefaultDataSubscriptionInfo 反射出错");
                }
            }
            try {
                if (this.c.l == -1 && i >= 24) {
                    this.c.m = SubscriptionManager.getDefaultDataSubscriptionId();
                    f.b("UMCTelephonyManagement", "android 7.0及以上手机getDefaultDataSubscriptionId适配成功: dataSubId = " + this.c.m);
                    return;
                }
            } catch (Exception unused2) {
                f.a("UMCTelephonyManagement", "android 7.0及以上手机getDefaultDataSubscriptionId适配失败");
            }
            try {
                Method method = subscriptionManagerFrom.getClass().getMethod("getDefaultDataSubId", new Class[0]);
                if (method != null) {
                    this.c.m = ((Integer) method.invoke(subscriptionManagerFrom, new Object[0])).intValue();
                    f.b("UMCTelephonyManagement", "android 7.0以下手机getDefaultDataSubId适配成功: dataSubId = " + this.c.m);
                    return;
                }
            } catch (Exception unused3) {
                f.a("UMCTelephonyManagement", "readDefaultDataSubId-->getDefaultDataSubId 反射出错");
            }
            try {
                Method method2 = subscriptionManagerFrom.getClass().getMethod("getDefaultDataSubscriptionId", new Class[0]);
                if (method2 != null) {
                    this.c.m = ((Integer) method2.invoke(subscriptionManagerFrom, new Object[0])).intValue();
                    f.b("UMCTelephonyManagement", "反射getDefaultDataSubscriptionId适配成功: dataSubId = " + this.c.m);
                }
            } catch (Exception unused4) {
                f.a("UMCTelephonyManagement", "getDefaultDataSubscriptionId-->getDefaultDataSubscriptionId 反射出错");
            }
        }
    }

    @SuppressLint({"NewApi"})
    private void b(List<SubscriptionInfo> list, TelephonyManager telephonyManager) {
        if ((list != null ? list.size() : 0) > 1) {
            SubscriptionInfo subscriptionInfoA = a(list, 1);
            this.c.d(subscriptionInfoA.getSimSlotIndex());
            this.c.f(subscriptionInfoA.getSubscriptionId());
            this.c.b = subscriptionInfoA.getIccId();
            C0254b c0254b = this.c;
            c0254b.k = b(c0254b.b);
            f.b("UMCTelephonyManagement", "readSim1Info2 iccid2 = " + this.c.b);
            if (this.c.l == -1 && this.c.m == subscriptionInfoA.getSubscriptionId()) {
                this.c.l = subscriptionInfoA.getSimSlotIndex();
                f.b("UMCTelephonyManagement", "readSim1Info2 dataSlotId = " + this.c.l);
            }
            if (t.e()) {
                int subscriptionId = com.mobile.auth.g.a.a() != 0 ? subscriptionInfoA.getSubscriptionId() : 1;
                try {
                    try {
                        this.c.b(a(telephonyManager, "getSubscriberId", subscriptionInfoA.getSubscriptionId()));
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                } catch (a unused) {
                    this.c.b(a(telephonyManager, "getSubscriberIdGemini", subscriptionId));
                }
                try {
                    try {
                        this.c.d(a(telephonyManager, "getSimOperator", subscriptionInfoA.getSubscriptionId()));
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                } catch (a unused2) {
                    this.c.d(a(telephonyManager, "getSimOperatorGemini", subscriptionId));
                }
            }
        }
    }

    private boolean b(TelephonyManager telephonyManager, String str, int i) throws a {
        Object objA = a(telephonyManager, str, new Object[]{Integer.valueOf(i)}, new Class[]{Integer.TYPE});
        return objA != null && Integer.parseInt(objA.toString()) == 5;
    }

    @SuppressLint({"NewApi"})
    private void c(Context context) {
        List<SubscriptionInfo> listE;
        TelephonyManager telephonyManager = (TelephonyManager) context.getApplicationContext().getSystemService("phone");
        if (telephonyManager == null || (listE = e(context)) == null || listE.size() <= 0) {
            return;
        }
        a(listE, telephonyManager);
        b(listE, telephonyManager);
    }

    @SuppressLint({"MissingPermission"})
    private void d(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getApplicationContext().getSystemService("phone");
        this.c.c(0);
        this.c.d(1);
        this.c.b(-1);
        try {
            try {
                try {
                    try {
                        try {
                            this.c.a(a(telephonyManager, "getSubscriberId", 0));
                            this.c.b(a(telephonyManager, "getSubscriberId", 1));
                        } catch (a unused) {
                            this.c.a(telephonyManager.getSubscriberId());
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                } catch (a unused2) {
                    this.c.a(a(telephonyManager, "getSubscriberIdGemini", 0));
                    this.c.b(a(telephonyManager, "getSubscriberIdGemini", 1));
                }
                this.c.a(b(telephonyManager, "getSimState", 0));
                this.c.b(b(telephonyManager, "getSimState", 1));
            } catch (a unused3) {
                this.c.a(b(telephonyManager, "getSimStateGemini", 0));
                this.c.b(b(telephonyManager, "getSimStateGemini", 1));
            }
        } catch (a unused4) {
            this.c.a(telephonyManager.getSimState() == 5);
        }
        try {
            try {
                this.c.c(a(telephonyManager, "getSimOperator", 0));
                this.c.d(a(telephonyManager, "getSimOperator", 1));
            } catch (a unused5) {
                this.c.c(telephonyManager.getSimOperator());
            }
        } catch (a unused6) {
            this.c.c(a(telephonyManager, "getSimOperatorGemini", 0));
            this.c.d(a(telephonyManager, "getSimOperatorGemini", 1));
        }
        if (TextUtils.isEmpty(this.c.a()) && !TextUtils.isEmpty(this.c.b())) {
            C0254b c0254b = this.c;
            c0254b.a(c0254b.b());
            this.c.b("");
            C0254b c0254b2 = this.c;
            c0254b2.c(c0254b2.g());
            this.c.d(-1);
            C0254b c0254b3 = this.c;
            c0254b3.a(c0254b3.d());
            this.c.b(false);
            C0254b c0254b4 = this.c;
            c0254b4.c(c0254b4.c());
            this.c.d("");
        } else {
            if (TextUtils.isEmpty(this.c.a()) || !TextUtils.isEmpty(this.c.b())) {
                if (TextUtils.isEmpty(this.c.a()) && TextUtils.isEmpty(this.c.b())) {
                    this.c.c(-1);
                    this.c.d(-1);
                    this.c.a(false);
                    this.c.b(false);
                    this.c.b(-1);
                    return;
                }
                return;
            }
            this.c.b(false);
            this.c.d(-1);
        }
        C0254b c0254b5 = this.c;
        c0254b5.b(c0254b5.f());
    }

    @SuppressLint({"NewApi", "MissingPermission"})
    private List<SubscriptionInfo> e(Context context) {
        SubscriptionManager subscriptionManagerFrom = SubscriptionManager.from(context.getApplicationContext());
        if (subscriptionManagerFrom != null) {
            return subscriptionManagerFrom.getActiveSubscriptionInfoList();
        }
        return null;
    }

    @SuppressLint({"MissingPermission"})
    private int f(Context context) {
        TelephonyManager telephonyManager;
        if (!k.a(context, "android.permission.READ_PHONE_STATE") || (telephonyManager = (TelephonyManager) context.getApplicationContext().getSystemService("phone")) == null) {
            return -1;
        }
        if (!t.e()) {
            return telephonyManager.getDataNetworkType();
        }
        try {
            Method method = telephonyManager.getClass().getMethod("getDataNetworkType", Integer.TYPE);
            f.b("UMCTelephonyManagement", "data dataNetworkType defaultDataSubId = " + this.c.m);
            int iIntValue = ((Integer) method.invoke(telephonyManager, Integer.valueOf(this.c.m))).intValue();
            f.b("UMCTelephonyManagement", "data dataNetworkType ---------" + iIntValue);
            if (iIntValue != 0 || Build.VERSION.SDK_INT < 24) {
                return iIntValue;
            }
            f.b("UMCTelephonyManagement", "data dataNetworkType ---->=N " + iIntValue);
            return telephonyManager.getDataNetworkType();
        } catch (Exception e2) {
            f.a("UMCTelephonyManagement", "data dataNetworkType ----反射出错-----");
            e2.printStackTrace();
            return -1;
        }
    }

    public String a(Context context) {
        switch (f(context)) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                return "1";
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
            case 17:
                return "2";
            case 13:
            case 18:
            case 19:
                return "3";
            case 20:
                return Constants.VIA_TO_TYPE_QZONE;
            default:
                return "0";
        }
    }

    public void a(Context context, boolean z) {
        int i = Build.VERSION.SDK_INT;
        if (System.currentTimeMillis() - b < DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
            return;
        }
        this.c = new C0254b();
        if (t.b(context)) {
            b(context, z);
            if (t.d() && t.e()) {
                f.b("UMCTelephonyManagement", "华为手机兼容性处理");
                if (this.c.m == 0 || this.c.m == 1) {
                    C0254b c0254b = this.c;
                    c0254b.l = c0254b.m;
                }
            }
            if (z) {
                try {
                    if (i >= 22) {
                        c(context);
                    } else {
                        d(context);
                    }
                } catch (Exception unused) {
                    f.a("UMCTelephonyManagement", "read sim info error");
                }
            }
            if (i >= 21) {
                b(context);
            }
            b = System.currentTimeMillis();
        }
    }

    public C0254b b() {
        C0254b c0254b = this.c;
        return c0254b == null ? new C0254b() : c0254b;
    }
}
