package cn.mucang.android.core.webview.core;

import android.net.Uri;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private i f2732a;
    private final List<String> b = new ArrayList();
    private Map<String, List<String>> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<String, d> f2733d;

    private void g(String str, String str2, String str3) {
        String strF = f(str, str2, str3);
        if (strF == null) {
            return;
        }
        c(str2, strF);
    }

    private boolean j(String str) {
        try {
            return JSON.parseObject(str).containsKey("success");
        } catch (Exception unused) {
            return false;
        }
    }

    private void m(String str) {
        if (j(str)) {
            return;
        }
        if (MucangConfig.v()) {
            u.h("回调数据格式不对，请调用JsBridge里面的相关方法，来格式化数据。");
        } else {
            t.a("ProtocolHandler", "回调数据格式不对，请调用JsBridge里面的相关方法，来格式化数据。");
        }
    }

    void a(d dVar) {
        if (dVar == null) {
            throw new IllegalArgumentException("JsBridge must not be null.");
        }
        String strI = dVar.i();
        if (this.f2733d == null) {
            this.f2733d = new HashMap();
        }
        if (this.f2733d.get(strI) != null) {
            dVar.e(this.f2733d.get(strI));
        }
        this.f2733d.put(strI, dVar);
    }

    public void b(String str, String str2) {
        i iVar;
        Map<String, List<String>> map = this.c;
        if (map == null) {
            return;
        }
        List<String> list = map.get(str);
        if (cn.mucang.android.core.utils.g.d(list)) {
            m(str2);
            boolean z = false;
            for (String str3 : list) {
                if (!n0.e(str3)) {
                    String strD = d(str3, str2);
                    t.a("ProtocolHandler", str3 + " addOneCallbackData : " + strD);
                    this.b.add(strD);
                    z = true;
                }
            }
            if (!z || (iVar = this.f2732a) == null) {
                return;
            }
            iVar.onProtocolDataChanged();
        }
    }

    public void c(String str, String str2) {
        m(str2);
        String strD = d(str, str2);
        t.a("ProtocolHandler", str + " addOneCallbackData : " + strD);
        this.b.add(strD);
        i iVar = this.f2732a;
        if (iVar != null) {
            iVar.onProtocolDataChanged();
        }
    }

    public String d(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("callback", (Object) str);
            jSONObject.put("data", (Object) str2);
            return jSONObject.toString();
        } catch (Exception e2) {
            t.c("默认替换", e2);
            return null;
        }
    }

    public Collection<d> e() {
        Map<String, d> map = this.f2733d;
        if (map == null) {
            return null;
        }
        return map.values();
    }

    public synchronized String f(String str, String str2, String str3) {
        if (this.f2733d != null && !n0.e(str) && !n0.e(str2)) {
            Uri uri = Uri.parse(str);
            String path = uri.getPath();
            if (path == null) {
                t.a("ProtocolHandler", "function name is null.You must giving a function name.");
                return null;
            }
            d dVar = this.f2733d.get(cn.mucang.android.core.webview.protocol.e.a.c(str));
            if (dVar != null && dVar.h(path) != null) {
                return dVar.c(path, cn.mucang.android.core.webview.protocol.e.a.d(uri.buildUpon().appendQueryParameter("___key_web_view_tag", str3).toString(), str2));
            }
            return d.f("未找到：" + str, Videoio.CAP_PROP_XI_TRG_SOURCE);
        }
        return null;
    }

    public void h(String str) {
        if (n0.e(str)) {
            return;
        }
        String path = Uri.parse(str).getPath();
        if (path == null) {
            t.a("ProtocolHandler", "function name is null.You must giving a function name.");
            return;
        }
        d dVar = this.f2733d.get(cn.mucang.android.core.webview.protocol.e.a.c(str));
        if (dVar == null || dVar.h(path) == null) {
            return;
        }
        dVar.c(path, cn.mucang.android.core.webview.protocol.e.a.d(str, ""));
    }

    public synchronized void i(String str, h hVar, String str2) {
        if (hVar == null) {
            return;
        }
        hVar.d(str2);
        if (cn.mucang.android.core.webview.protocol.e.a.g(str)) {
            if (this.c == null) {
                this.c = new HashMap();
            }
            if (str.startsWith("https:")) {
                str = "http:" + str.substring(6);
            }
            List<String> linkedList = this.c.get(str);
            if (linkedList == null) {
                linkedList = new LinkedList<>();
                this.c.put(str, linkedList);
            }
            if (!linkedList.contains(str2)) {
                linkedList.add(str2);
            }
        } else if (cn.mucang.android.core.webview.protocol.e.a.h(str)) {
            g(str, str2, String.valueOf(hVar.b().hashCode()));
        }
    }

    String k() {
        if (cn.mucang.android.core.utils.g.d(this.b)) {
            return this.b.remove(0);
        }
        return null;
    }

    void l(i iVar) {
        this.f2732a = iVar;
    }
}
