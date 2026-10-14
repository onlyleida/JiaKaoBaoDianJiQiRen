package cn.mucang.android.core.webview.core;

import cn.mucang.android.core.api.verify.ErrorDialogParams;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import com.alibaba.fastjson.JSONObject;
import com.amap.api.maps.model.MyLocationStyle;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f2720a;
    private WeakReference<MucangWebView> b;
    private final Map<String, a> c;

    public interface a {
        String a(Map<String, String> map);
    }

    public d(String str) {
        this.c = new HashMap();
        if (n0.e(str)) {
            throw new IllegalArgumentException("spaceName must not be null.");
        }
        this.f2720a = str;
    }

    public static String f(String str, int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("success", (Object) Boolean.FALSE);
            jSONObject.put(MyLocationStyle.ERROR_CODE, (Object) Integer.valueOf(i));
            jSONObject.put(ErrorDialogParams.EXTRA_MESSAGE, (Object) str);
        } catch (Exception e2) {
            t.c("默认替换", e2);
        }
        return jSONObject.toJSONString();
    }

    public static String j(Object obj, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("data", obj);
            jSONObject.put("success", (Object) Boolean.TRUE);
            jSONObject.put(ErrorDialogParams.EXTRA_MESSAGE, (Object) str);
        } catch (Exception e2) {
            t.c("默认替换", e2);
        }
        return jSONObject.toJSONString();
    }

    public static String k(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("success", (Object) Boolean.TRUE);
            jSONObject.put(ErrorDialogParams.EXTRA_MESSAGE, (Object) str);
        } catch (Exception e2) {
            t.c("默认替换", e2);
        }
        return jSONObject.toJSONString();
    }

    public void a(String str, a aVar) {
        if (n0.e(str)) {
            throw new IllegalArgumentException("functionName must not be null.");
        }
        if (!"core.luban.mucang.cn".equals(this.f2720a) && !str.startsWith("/")) {
            str = "/" + str;
        }
        this.c.put(str, aVar);
    }

    void b(MucangWebView mucangWebView) {
        this.b = new WeakReference<>(mucangWebView);
    }

    String c(String str, Map<String, String> map) {
        a aVarH = h(str);
        if (aVarH == null) {
            return null;
        }
        return aVarH.a(map);
    }

    public void d(String str, String str2) {
        if (n0.e(str)) {
            throw new IllegalArgumentException("functionName must not be null.");
        }
        if (!this.c.containsKey(str)) {
            a(str, null);
        }
        if (str2 != null) {
            MucangWebView mucangWebView = this.b.get();
            if (mucangWebView == null) {
                throw new RuntimeException("You should use JsBridge(String spaceName, MucangWebView webView) outside of HTML5Fragment and HTML5Activity.");
            }
            mucangWebView.getProtocolHandler().b("http://listener.luban.mucang.cn/" + str, str2);
        }
    }

    public void e(d dVar) {
        for (Map.Entry<String, a> entry : dVar.c.entrySet()) {
            if (!this.c.containsKey(entry.getKey())) {
                this.c.put(entry.getKey(), entry.getValue());
            }
        }
    }

    public List<String> g() {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.c.keySet().iterator();
        while (it.hasNext()) {
            arrayList.add(this.f2720a + it.next());
        }
        return arrayList;
    }

    a h(String str) {
        return this.c.get(str);
    }

    String i() {
        return this.f2720a;
    }

    public d(String str, MucangWebView mucangWebView) {
        this(str);
        this.b = new WeakReference<>(mucangWebView);
        mucangWebView.f(this);
    }
}
