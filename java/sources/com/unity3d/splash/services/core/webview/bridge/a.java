package com.unity3d.splash.services.core.webview.bridge;

import com.unity3d.splash.services.core.log.DeviceLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
public class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicInteger f14424d = new AtomicInteger(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Map f14425e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ArrayList f14426a;
    private ArrayList b;
    private int c = f14424d.getAndIncrement();

    public a() {
        if (f14425e == null) {
            f14425e = new HashMap();
        }
        f14425e.put(Integer.valueOf(this.c), this);
    }

    public static synchronized a c(int i) {
        Map map = f14425e;
        if (map == null || !map.containsKey(Integer.valueOf(i))) {
            return null;
        }
        return (a) f14425e.get(Integer.valueOf(i));
    }

    public void a(String str, String str2, Object[] objArr, WebViewCallback webViewCallback) {
        if (this.f14426a == null) {
            this.f14426a = new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        arrayList.add(str2);
        arrayList.add(objArr);
        arrayList.add(webViewCallback);
        this.f14426a.add(arrayList);
    }

    public int b() {
        return this.c;
    }

    public ArrayList d() {
        return this.b;
    }

    public boolean e() {
        ArrayList arrayList = this.f14426a;
        if (arrayList == null || arrayList.size() <= 0) {
            return false;
        }
        ArrayList arrayList2 = (ArrayList) this.f14426a.remove(0);
        String str = (String) arrayList2.get(0);
        String str2 = (String) arrayList2.get(1);
        Object[] objArr = (Object[]) arrayList2.get(2);
        try {
            c.e(str, str2, objArr, (WebViewCallback) arrayList2.get(3));
        } catch (Exception e2) {
            DeviceLog.f(String.format("Error handling invocation %s.%s(%s)", str, str2, Arrays.toString(objArr)), e2);
        }
        return true;
    }

    public void f() {
        f14425e.remove(Integer.valueOf(b()));
        com.unity3d.splash.services.core.webview.b.e().g(this);
    }

    public void g(CallbackStatus callbackStatus, Enum r3, Object... objArr) {
        if (this.b == null) {
            this.b = new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(callbackStatus);
        arrayList.add(r3);
        arrayList.add(objArr);
        this.b.add(arrayList);
    }
}
