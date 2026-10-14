package cn.mucang.android.core.webview.protocol.bridge;

import cn.mucang.android.core.api.verify.ErrorDialogParams;
import cn.mucang.android.core.webview.core.MucangWebView;
import com.alibaba.fastjson.JSONObject;
import com.amap.api.maps.model.MyLocationStyle;

/* JADX INFO: loaded from: classes.dex */
public abstract class j0 {
    protected MucangWebView webView;

    public j0(MucangWebView mucangWebView) {
        this.webView = mucangWebView;
    }

    protected JSONObject buildCallbackData(Object obj, boolean z, int i, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("data", obj);
            jSONObject.put(MyLocationStyle.ERROR_CODE, (Object) Integer.valueOf(i));
            jSONObject.put("success", (Object) Boolean.valueOf(z));
            jSONObject.put(ErrorDialogParams.EXTRA_MESSAGE, (Object) str);
        } catch (Exception e2) {
            cn.mucang.android.core.utils.t.c("默认替换", e2);
        }
        return jSONObject;
    }

    protected void buildCallbackData(JSONObject jSONObject, Object obj, boolean z, int i, String str) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("data", obj);
            jSONObject.put(MyLocationStyle.ERROR_CODE, (Object) Integer.valueOf(i));
            jSONObject.put("success", (Object) Boolean.valueOf(z));
            jSONObject.put(ErrorDialogParams.EXTRA_MESSAGE, (Object) str);
        } catch (Exception e2) {
            cn.mucang.android.core.utils.t.c("默认替换", e2);
        }
    }
}
