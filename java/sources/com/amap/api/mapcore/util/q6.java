package com.amap.api.mapcore.util;

import android.content.Context;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class q6 {

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static q6 f11105a = new q6();
    }

    private static m5 a(String str, List<m5> list) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (int i = 0; list != null && i < list.size(); i++) {
            m5 m5Var = list.get(i);
            if (m5Var != null) {
                String[] strArrK = m5Var.k();
                for (String str2 : strArrK) {
                    if (!TextUtils.isEmpty(strArrK[i]) && str.contains(str2)) {
                        return m5Var;
                    }
                }
            }
        }
        return null;
    }

    private JSONArray b(String str) {
        if (str == null) {
            str = "";
        }
        String[] strArr = {"AMapPboRenderThread", "GLThread", "AMapGlRenderThread", "AMapThreadUtil", "GNaviMap", "main"};
        JSONArray jSONArray = new JSONArray();
        for (Thread thread : Thread.getAllStackTraces().keySet()) {
            if (thread != null && !str.equals(thread.getName())) {
                for (int i = 0; i < 6; i++) {
                    String str2 = strArr[i];
                    String name = thread.getName();
                    if (((TextUtils.isEmpty(str2) || TextUtils.isEmpty(name) || (!str2.contains(name) && !name.contains(str2))) ? false : true) && c(thread) != null) {
                        jSONArray.put(c(thread));
                    }
                }
            }
        }
        return jSONArray;
    }

    private static JSONObject c(Thread thread) {
        if (thread == null || thread.getStackTrace() == null) {
            return null;
        }
        StackTraceElement[] stackTrace = thread.getStackTrace();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("threadId", thread.getId());
            jSONObject.put("threadName", thread.getName());
            jSONObject.put("threadGroup", thread.getThreadGroup());
            StringBuffer stringBuffer = new StringBuffer();
            for (StackTraceElement stackTraceElement : stackTrace) {
                stringBuffer.append(stackTraceElement);
                stringBuffer.append("<br />");
            }
            jSONObject.put("stacks", stringBuffer.toString());
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    public final boolean d(Context context, String str, String str2, List<m5> list, boolean z, m5 m5Var) {
        String string = "";
        if (str2 != null) {
            Iterator<Thread> it = Thread.getAllStackTraces().keySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    string = null;
                    break;
                }
                Thread next = it.next();
                if (next != null && !TextUtils.isEmpty(next.getName()) && (str2.contains(next.getName()) || next.getName().contains(str2))) {
                    StackTraceElement[] stackTrace = next.getStackTrace();
                    if (stackTrace == null) {
                        break;
                    }
                    StringBuffer stringBuffer = new StringBuffer();
                    for (StackTraceElement stackTraceElement : stackTrace) {
                        stringBuffer.append("at ");
                        stringBuffer.append(stackTraceElement);
                        stringBuffer.append("<br />");
                    }
                    string = stringBuffer.toString();
                    break;
                }
            }
        }
        m5 m5VarA = a(string, list);
        if (z && m5VarA == null) {
            return false;
        }
        String str3 = str + "<br />" + string;
        JSONArray jSONArrayB = b(str2);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("crashStack", str3);
            jSONObject.put("backStacks", jSONArrayB);
        } catch (Throwable unused) {
        }
        String string2 = jSONObject.toString();
        if (TextUtils.isEmpty(string2)) {
            return false;
        }
        try {
            if (z || m5VarA != null) {
                e6.i(context, m5VarA, string2, "NATIVE_CRASH_CLS_NAME", "NATIVE_CRASH_MHD_NAME");
                return true;
            }
            e6.n(context, m5Var, string2, "NATIVE_APP_CRASH_CLS_NAME", "NATIVE_CRASH_MHD_NAME");
            return true;
        } catch (Throwable unused2) {
        }
    }
}
