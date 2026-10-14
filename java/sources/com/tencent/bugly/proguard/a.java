package com.tencent.bugly.proguard;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import com.tencent.bugly.crashreport.biz.UserInfoBean;
import com.tencent.bugly.crashreport.common.info.AppInfo;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import java.lang.reflect.Array;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Proxy f13803e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected HashMap<String, HashMap<String, byte[]>> f13804a = new HashMap<>();
    protected String b;
    h c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private HashMap<String, Object> f13805d;

    a() {
        new HashMap();
        this.f13805d = new HashMap<>();
        this.b = "GBK";
        this.c = new h();
    }

    public static void a(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            f13803e = null;
        } else {
            f13803e = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(str, i));
        }
    }

    public static Proxy b() {
        return f13803e;
    }

    public static ao b(byte[] bArr) {
        if (bArr != null) {
            try {
                d dVar = new d();
                dVar.c();
                dVar.a("utf-8");
                dVar.a(bArr);
                Object objB = dVar.b("detail", new ao());
                if (ao.class.isInstance(objB)) {
                    return (ao) ao.class.cast(objB);
                }
                return null;
            } catch (Throwable th) {
                if (!y.b(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    public static boolean a(ActivityManager activityManager) {
        boolean z;
        if (activityManager != null) {
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
            if (runningAppProcesses == null) {
                y.c("running proc info list is empty, my proc not running.", new Object[0]);
            } else {
                int iMyPid = Process.myPid();
                Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        y.c("proc not in running proc info list, my proc not running.", new Object[0]);
                    } else if (it.next().pid == iMyPid) {
                        y.c("my proc is running.", new Object[0]);
                    }
                }
            }
            z = false;
            return z && a(activityManager, 0L) != null;
        }
        y.c("is proc running, ActivityManager is null", new Object[0]);
        z = true;
        if (z) {
            return false;
        }
    }

    public static void a(InetAddress inetAddress, int i) {
        if (inetAddress == null) {
            f13803e = null;
        } else {
            f13803e = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(inetAddress, i));
        }
    }

    public void a(String str) {
        this.b = str;
    }

    public static ar a(UserInfoBean userInfoBean) {
        if (userInfoBean == null) {
            return null;
        }
        ar arVar = new ar();
        arVar.f13858a = userInfoBean.f13670e;
        arVar.f13860e = userInfoBean.j;
        arVar.f13859d = userInfoBean.c;
        arVar.c = userInfoBean.f13669d;
        arVar.f13862g = userInfoBean.o == 1;
        int i = userInfoBean.b;
        if (i == 1) {
            arVar.b = (byte) 1;
        } else if (i == 2) {
            arVar.b = (byte) 4;
        } else if (i == 3) {
            arVar.b = (byte) 2;
        } else if (i == 4) {
            arVar.b = (byte) 3;
        } else if (i != 8) {
            if (i < 10 || i >= 20) {
                y.e("unknown uinfo type %d ", Integer.valueOf(i));
                return null;
            }
            arVar.b = (byte) i;
        } else {
            arVar.b = (byte) 8;
        }
        HashMap map = new HashMap();
        arVar.f13861f = map;
        if (userInfoBean.p >= 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(userInfoBean.p);
            map.put("C01", sb.toString());
        }
        if (userInfoBean.q >= 0) {
            Map<String, String> map2 = arVar.f13861f;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(userInfoBean.q);
            map2.put("C02", sb2.toString());
        }
        Map<String, String> map3 = userInfoBean.r;
        if (map3 != null && map3.size() > 0) {
            for (Map.Entry<String, String> entry : userInfoBean.r.entrySet()) {
                arVar.f13861f.put("C03_" + entry.getKey(), entry.getValue());
            }
        }
        Map<String, String> map4 = userInfoBean.s;
        if (map4 != null && map4.size() > 0) {
            for (Map.Entry<String, String> entry2 : userInfoBean.s.entrySet()) {
                arVar.f13861f.put("C04_" + entry2.getKey(), entry2.getValue());
            }
        }
        Map<String, String> map5 = arVar.f13861f;
        StringBuilder sb3 = new StringBuilder();
        sb3.append(!userInfoBean.l);
        map5.put("A36", sb3.toString());
        Map<String, String> map6 = arVar.f13861f;
        StringBuilder sb4 = new StringBuilder();
        sb4.append(userInfoBean.f13672g);
        map6.put("F02", sb4.toString());
        Map<String, String> map7 = arVar.f13861f;
        StringBuilder sb5 = new StringBuilder();
        sb5.append(userInfoBean.f13673h);
        map7.put("F03", sb5.toString());
        arVar.f13861f.put("F04", userInfoBean.j);
        Map<String, String> map8 = arVar.f13861f;
        StringBuilder sb6 = new StringBuilder();
        sb6.append(userInfoBean.i);
        map8.put("F05", sb6.toString());
        arVar.f13861f.put("F06", userInfoBean.m);
        Map<String, String> map9 = arVar.f13861f;
        StringBuilder sb7 = new StringBuilder();
        sb7.append(userInfoBean.k);
        map9.put("F10", sb7.toString());
        y.c("summary type %d vm:%d", Byte.valueOf(arVar.b), Integer.valueOf(arVar.f13861f.size()));
        return arVar;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x005d  */
    /* JADX WARN: Code duplicated, block: B:23:0x0065  */
    /* JADX WARN: Code duplicated, block: B:27:0x0076 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x0087 A[LOOP:0: B:7:0x001e->B:32:0x0087, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:35:0x006a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0078 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x0099 A[SYNTHETIC] */
    public static ActivityManager.ProcessErrorStateInfo a(ActivityManager activityManager, long j) {
        ActivityManager.ProcessErrorStateInfo next;
        int i;
        int i2;
        if (activityManager == null) {
            y.c("get anr state, ActivityManager is null", new Object[0]);
            return null;
        }
        y.c("get anr state, timeout:%d", Long.valueOf(j));
        long j2 = j / 500;
        int i3 = 0;
        while (true) {
            List<ActivityManager.ProcessErrorStateInfo> processesInErrorState = activityManager.getProcessesInErrorState();
            if (processesInErrorState == null || processesInErrorState.isEmpty()) {
                y.c("error state info list is null", new Object[0]);
            } else {
                int iMyPid = Process.myPid();
                Iterator<ActivityManager.ProcessErrorStateInfo> it = processesInErrorState.iterator();
                while (true) {
                    if (it.hasNext()) {
                        next = it.next();
                        if (next.pid == iMyPid) {
                            y.c("found current proc in the error state", new Object[0]);
                            break;
                        }
                    } else {
                        y.c("current proc not in the error state", new Object[0]);
                    }
                }
                if (next == null) {
                    y.c("found proc state is null", new Object[0]);
                } else {
                    i = next.condition;
                    if (i == 2) {
                        y.c("found proc state is anr! proc:%s", next.processName);
                        return next;
                    }
                    if (i == 1) {
                        y.c("found proc state is crashed!", new Object[0]);
                        return null;
                    }
                }
                i2 = i3 + 1;
                if (i3 < j2) {
                    y.c("try the %s times:", Integer.valueOf(i2));
                    ab.b(500L);
                    i3 = i2;
                } else {
                    ActivityManager.ProcessErrorStateInfo processErrorStateInfo = new ActivityManager.ProcessErrorStateInfo();
                    processErrorStateInfo.pid = Process.myPid();
                    processErrorStateInfo.processName = AppInfo.a(Process.myPid());
                    processErrorStateInfo.shortMsg = "Find process anr, but unable to get anr message.";
                    return processErrorStateInfo;
                }
            }
            next = null;
            if (next == null) {
                y.c("found proc state is null", new Object[0]);
            } else {
                i = next.condition;
                if (i == 2) {
                    y.c("found proc state is anr! proc:%s", next.processName);
                    return next;
                }
                if (i == 1) {
                    y.c("found proc state is crashed!", new Object[0]);
                    return null;
                }
            }
            i2 = i3 + 1;
            if (i3 < j2) {
                y.c("try the %s times:", Integer.valueOf(i2));
                ab.b(500L);
                i3 = i2;
            } else {
                ActivityManager.ProcessErrorStateInfo processErrorStateInfo2 = new ActivityManager.ProcessErrorStateInfo();
                processErrorStateInfo2.pid = Process.myPid();
                processErrorStateInfo2.processName = AppInfo.a(Process.myPid());
                processErrorStateInfo2.shortMsg = "Find process anr, but unable to get anr message.";
                return processErrorStateInfo2;
            }
        }
    }

    public static String a(ArrayList<String> arrayList) {
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        while (true) {
            String str = "map";
            if (i < arrayList.size()) {
                String str2 = arrayList.get(i);
                if (str2.equals("java.lang.Integer") || str2.equals("int")) {
                    str = "int32";
                } else if (str2.equals("java.lang.Boolean") || str2.equals("boolean")) {
                    str = "bool";
                } else if (str2.equals("java.lang.Byte") || str2.equals("byte")) {
                    str = "char";
                } else if (str2.equals("java.lang.Double") || str2.equals("double")) {
                    str = "double";
                } else if (str2.equals("java.lang.Float") || str2.equals("float")) {
                    str = "float";
                } else if (str2.equals("java.lang.Long") || str2.equals("long")) {
                    str = "int64";
                } else if (str2.equals("java.lang.Short") || str2.equals("short")) {
                    str = "short";
                } else {
                    if (str2.equals("java.lang.Character")) {
                        throw new IllegalArgumentException("can not support java.lang.Character");
                    }
                    if (str2.equals("java.lang.String")) {
                        str = "string";
                    } else if (str2.equals("java.util.List")) {
                        str = "list";
                    } else if (!str2.equals("java.util.Map")) {
                        str = str2;
                    }
                }
                arrayList.set(i, str);
                i++;
            } else {
                Collections.reverse(arrayList);
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    String str3 = arrayList.get(i2);
                    if (str3.equals("list")) {
                        int i3 = i2 - 1;
                        arrayList.set(i3, "<" + arrayList.get(i3));
                        arrayList.set(0, arrayList.get(0) + ">");
                    } else if (str3.equals("map")) {
                        int i4 = i2 - 1;
                        arrayList.set(i4, "<" + arrayList.get(i4) + ",");
                        arrayList.set(0, arrayList.get(0) + ">");
                    } else if (str3.equals("Array")) {
                        int i5 = i2 - 1;
                        arrayList.set(i5, "<" + arrayList.get(i5));
                        arrayList.set(0, arrayList.get(0) + ">");
                    }
                }
                Collections.reverse(arrayList);
                Iterator<String> it = arrayList.iterator();
                while (it.hasNext()) {
                    stringBuffer.append(it.next());
                }
                return stringBuffer.toString();
            }
        }
    }

    public <T> void a(String str, T t) {
        if (str == null) {
            throw new IllegalArgumentException("put key can not is null");
        }
        if (t != null) {
            if (!(t instanceof Set)) {
                i iVar = new i();
                iVar.a(this.b);
                iVar.a(t, 0);
                byte[] bArrA = k.a(iVar.a());
                HashMap<String, byte[]> map = new HashMap<>(1);
                ArrayList<String> arrayList = new ArrayList<>(1);
                a(arrayList, t);
                map.put(a(arrayList), bArrA);
                this.f13805d.remove(str);
                this.f13804a.put(str, map);
                return;
            }
            throw new IllegalArgumentException("can not support Set");
        }
        throw new IllegalArgumentException("put value can not is null");
    }

    public static as a(List<UserInfoBean> list, int i) {
        com.tencent.bugly.crashreport.common.info.a aVarB;
        if (list == null || list.size() == 0 || (aVarB = com.tencent.bugly.crashreport.common.info.a.b()) == null) {
            return null;
        }
        aVarB.s();
        as asVar = new as();
        asVar.b = aVarB.f13691d;
        asVar.c = aVarB.k();
        ArrayList<ar> arrayList = new ArrayList<>();
        Iterator<UserInfoBean> it = list.iterator();
        while (it.hasNext()) {
            ar arVarA = a(it.next());
            if (arVarA != null) {
                arrayList.add(arVarA);
            }
        }
        asVar.f13867d = arrayList;
        HashMap map = new HashMap();
        asVar.f13868e = map;
        StringBuilder sb = new StringBuilder();
        aVarB.getClass();
        map.put("A7", sb.toString());
        asVar.f13868e.put("A6", com.tencent.bugly.crashreport.common.info.a.r());
        asVar.f13868e.put("A5", aVarB.q());
        Map<String, String> map2 = asVar.f13868e;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(aVarB.o());
        map2.put("A2", sb2.toString());
        Map<String, String> map3 = asVar.f13868e;
        StringBuilder sb3 = new StringBuilder();
        sb3.append(aVarB.o());
        map3.put("A1", sb3.toString());
        asVar.f13868e.put("A24", aVarB.f13694g);
        Map<String, String> map4 = asVar.f13868e;
        StringBuilder sb4 = new StringBuilder();
        sb4.append(aVarB.p());
        map4.put("A17", sb4.toString());
        asVar.f13868e.put("A15", aVarB.u());
        Map<String, String> map5 = asVar.f13868e;
        StringBuilder sb5 = new StringBuilder();
        sb5.append(aVarB.v());
        map5.put("A13", sb5.toString());
        asVar.f13868e.put("F08", aVarB.u);
        asVar.f13868e.put("F09", aVarB.v);
        Map<String, String> mapC = aVarB.C();
        if (mapC != null && mapC.size() > 0) {
            for (Map.Entry<String, String> entry : mapC.entrySet()) {
                asVar.f13868e.put("C04_" + entry.getKey(), entry.getValue());
            }
        }
        if (i != 1) {
            if (i != 2) {
                y.e("unknown up type %d ", Integer.valueOf(i));
                return null;
            }
            asVar.f13866a = (byte) 2;
        } else {
            asVar.f13866a = (byte) 1;
        }
        return asVar;
    }

    public static <T extends j> T a(byte[] bArr, Class<T> cls) {
        if (bArr != null && bArr.length > 0) {
            try {
                T tNewInstance = cls.newInstance();
                h hVar = new h(bArr);
                hVar.a("utf-8");
                tNewInstance.a(hVar);
                return tNewInstance;
            } catch (Throwable th) {
                if (!y.b(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    public static an a(Context context, int i, byte[] bArr) {
        String str;
        com.tencent.bugly.crashreport.common.info.a aVarB = com.tencent.bugly.crashreport.common.info.a.b();
        StrategyBean strategyBeanC = com.tencent.bugly.crashreport.common.strategy.a.a().c();
        if (aVarB != null && strategyBeanC != null) {
            try {
                an anVar = new an();
                synchronized (aVarB) {
                    anVar.f13839a = 1;
                    anVar.b = aVarB.f();
                    anVar.c = aVarB.c;
                    anVar.f13840d = aVarB.i;
                    anVar.f13841e = aVarB.k;
                    anVar.f13842f = aVarB.f13693f;
                    anVar.f13843g = i;
                    if (bArr == null) {
                        bArr = "".getBytes();
                    }
                    anVar.f13844h = bArr;
                    anVar.i = aVarB.l();
                    anVar.j = aVarB.f13694g;
                    anVar.k = new HashMap();
                    anVar.l = aVarB.e();
                    anVar.m = strategyBeanC.n;
                    anVar.o = aVarB.k();
                    anVar.p = com.tencent.bugly.crashreport.common.info.b.b(context);
                    anVar.q = System.currentTimeMillis();
                    anVar.r = aVarB.m();
                    anVar.s = aVarB.k();
                    anVar.t = anVar.p;
                    aVarB.getClass();
                    anVar.n = "com.tencent.bugly";
                    anVar.k.put("A26", aVarB.w());
                    Map<String, String> map = anVar.k;
                    StringBuilder sb = new StringBuilder();
                    sb.append(com.tencent.bugly.crashreport.common.info.a.H());
                    map.put("A62", sb.toString());
                    Map<String, String> map2 = anVar.k;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(com.tencent.bugly.crashreport.common.info.a.I());
                    map2.put("A63", sb2.toString());
                    Map<String, String> map3 = anVar.k;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(aVarB.z);
                    map3.put("F11", sb3.toString());
                    Map<String, String> map4 = anVar.k;
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(aVarB.y);
                    map4.put("F12", sb4.toString());
                    anVar.k.put("D3", aVarB.j);
                    List<com.tencent.bugly.a> list = com.tencent.bugly.b.b;
                    if (list != null) {
                        for (com.tencent.bugly.a aVar : list) {
                            String str2 = aVar.versionKey;
                            if (str2 != null && (str = aVar.version) != null) {
                                anVar.k.put(str2, str);
                            }
                        }
                    }
                    anVar.k.put("G15", ab.c("G15", ""));
                    anVar.k.put("G10", ab.c("G10", ""));
                    anVar.k.put("D4", ab.c("D4", "0"));
                }
                Map<String, String> mapB = aVarB.B();
                if (mapB != null) {
                    for (Map.Entry<String, String> entry : mapB.entrySet()) {
                        if (!TextUtils.isEmpty(entry.getValue())) {
                            anVar.k.put(entry.getKey(), entry.getValue());
                        }
                    }
                }
                return anVar;
            } catch (Throwable th) {
                if (!y.b(th)) {
                    th.printStackTrace();
                }
                return null;
            }
        }
        y.e("Can not create request pkg for parameters is invalid.", new Object[0]);
        return null;
    }

    private void a(ArrayList<String> arrayList, Object obj) {
        if (obj.getClass().isArray()) {
            if (obj.getClass().getComponentType().toString().equals("byte")) {
                if (Array.getLength(obj) > 0) {
                    arrayList.add("java.util.List");
                    a(arrayList, Array.get(obj, 0));
                    return;
                } else {
                    arrayList.add("Array");
                    arrayList.add("?");
                    return;
                }
            }
            throw new IllegalArgumentException("only byte[] is supported");
        }
        if (!(obj instanceof Array)) {
            if (obj instanceof List) {
                arrayList.add("java.util.List");
                List list = (List) obj;
                if (list.size() > 0) {
                    a(arrayList, list.get(0));
                    return;
                } else {
                    arrayList.add("?");
                    return;
                }
            }
            if (obj instanceof Map) {
                arrayList.add("java.util.Map");
                Map map = (Map) obj;
                if (map.size() > 0) {
                    Object next = map.keySet().iterator().next();
                    Object obj2 = map.get(next);
                    arrayList.add(next.getClass().getName());
                    a(arrayList, obj2);
                    return;
                }
                arrayList.add("?");
                arrayList.add("?");
                return;
            }
            arrayList.add(obj.getClass().getName());
            return;
        }
        throw new IllegalArgumentException("can not support Array, please use List");
    }

    public byte[] a() {
        i iVar = new i(0);
        iVar.a(this.b);
        iVar.a((Map) this.f13804a, 0);
        return k.a(iVar.a());
    }

    public static byte[] a(Object obj) {
        try {
            d dVar = new d();
            dVar.c();
            dVar.a("utf-8");
            dVar.a(1);
            dVar.b("RqdServer");
            dVar.c("sync");
            dVar.a("detail", obj);
            return dVar.a();
        } catch (Throwable th) {
            if (y.b(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }

    public void a(byte[] bArr) {
        this.c.a(bArr);
        this.c.a(this.b);
        HashMap map = new HashMap(1);
        HashMap map2 = new HashMap(1);
        map2.put("", new byte[0]);
        map.put("", map2);
        this.f13804a = this.c.a((Map) map, 0, false);
    }

    public static byte[] a(j jVar) {
        try {
            i iVar = new i();
            iVar.a("utf-8");
            jVar.a(iVar);
            return iVar.b();
        } catch (Throwable th) {
            if (y.b(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }
}
