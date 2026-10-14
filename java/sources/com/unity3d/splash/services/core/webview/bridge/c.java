package com.unity3d.splash.services.core.webview.bridge;

import com.unity3d.splash.services.core.log.DeviceLog;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import org.json.JSONException;

/* JADX INFO: loaded from: classes6.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static HashMap f14428a;

    private static Method a(String str, String str2, Object[] objArr) throws NoSuchMethodException {
        if (!f14428a.containsKey(str)) {
            throw new NoSuchMethodException();
        }
        HashMap map = (HashMap) f14428a.get(str);
        if (map.containsKey(str2)) {
            return (Method) ((HashMap) map.get(str2)).get(Integer.valueOf(Arrays.deepHashCode(b(objArr))));
        }
        throw new NoSuchMethodException();
    }

    private static Class[] b(Object[] objArr) {
        Class[] clsArr = objArr == null ? new Class[1] : new Class[objArr.length + 1];
        if (objArr != null) {
            for (int i = 0; i < objArr.length; i++) {
                clsArr[i] = objArr[i].getClass();
            }
        }
        clsArr[clsArr.length - 1] = WebViewCallback.class;
        return clsArr;
    }

    private static Object[] c(Object[] objArr, WebViewCallback webViewCallback) {
        Object[] objArr2;
        if (objArr != null) {
            objArr2 = new Object[objArr.length + (webViewCallback != null ? 1 : 0)];
        } else {
            if (webViewCallback == null) {
                return null;
            }
            objArr2 = new Object[1];
        }
        if (objArr != null) {
            System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
        }
        if (webViewCallback != null) {
            objArr2[objArr2.length - 1] = webViewCallback;
        }
        return objArr2;
    }

    public static void d(String str, String str2, Object[] objArr) {
        try {
            com.unity3d.splash.services.core.webview.b.e().c(str).b(str2, c(objArr, null));
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException | JSONException e2) {
            DeviceLog.e("Error while invoking method");
            throw e2;
        }
    }

    public static void e(String str, String str2, Object[] objArr, WebViewCallback webViewCallback) throws Exception {
        try {
            try {
                a(str, str2, objArr).invoke(null, c(objArr, webViewCallback));
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException | JSONException e2) {
                webViewCallback.a(WebViewBridgeError.INVOCATION_FAILED, str, str2, objArr, e2.getMessage());
                throw e2;
            }
        } catch (NoSuchMethodException | JSONException e3) {
            webViewCallback.a(WebViewBridgeError.METHOD_NOT_FOUND, str, str2, objArr);
            throw e3;
        }
    }

    public static void f(Class[] clsArr) {
        if (clsArr == null) {
            return;
        }
        f14428a = new HashMap();
        for (Class cls : clsArr) {
            if (cls != null && (cls.getPackage().getName().startsWith("com.unity3d.splash.services") || cls.getPackage().getName().startsWith("com.unity3d.splash.test"))) {
                HashMap map = new HashMap();
                for (Method method : cls.getMethods()) {
                    if (method.getAnnotation(e.class) != null) {
                        String name = method.getName();
                        HashMap map2 = map.containsKey(name) ? (HashMap) map.get(name) : new HashMap();
                        map2.put(Integer.valueOf(Arrays.deepHashCode(method.getParameterTypes())), method);
                        map.put(name, map2);
                    }
                }
                f14428a.put(cls.getName(), map);
            }
        }
    }
}
