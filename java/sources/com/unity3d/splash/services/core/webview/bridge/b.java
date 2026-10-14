package com.unity3d.splash.services.core.webview.bridge;

import com.unity3d.splash.services.core.log.DeviceLog;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Method f14427a;
    private String b;

    static {
        new AtomicInteger(0);
    }

    public String a() {
        return this.b;
    }

    public void b(String str, Object... objArr) {
        Object[] array;
        try {
            CallbackStatus callbackStatusValueOf = CallbackStatus.valueOf(str);
            if (objArr == null) {
                array = new Object[]{callbackStatusValueOf};
            } else {
                ArrayList arrayList = new ArrayList(Arrays.asList(objArr));
                arrayList.add(0, callbackStatusValueOf);
                array = arrayList.toArray();
            }
            this.f14427a.invoke(null, array);
            com.unity3d.splash.services.core.webview.b.e().j(this);
        } catch (Exception e2) {
            DeviceLog.e("Illegal status");
            com.unity3d.splash.services.core.webview.b.e().j(this);
            throw e2;
        }
    }
}
