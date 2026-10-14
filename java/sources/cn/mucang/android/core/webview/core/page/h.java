package cn.mucang.android.core.webview.core.page;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.webview.protocol.bridge.k0;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.amap.api.fence.GeoFence;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2771a;
    private String b;

    public h() {
    }

    public String a(String str) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put(GeoFence.BUNDLE_KEY_FENCESTATUS, (Object) this.f2771a);
            String str2 = this.b;
            if (str2 != null) {
                jSONObject2.put("data", JSON.parse(str2));
            }
            jSONObject.put(k0.KEY_CALLBACK_NAME, (Object) str);
            jSONObject.put("callbackData", (Object) jSONObject2);
        } catch (JSONException e2) {
            t.c("e", e2);
        }
        return jSONObject.toString();
    }

    public void b(String str) {
        this.b = str;
    }

    public h(String str, String str2) {
        this.f2771a = str;
        this.b = str2;
    }
}
