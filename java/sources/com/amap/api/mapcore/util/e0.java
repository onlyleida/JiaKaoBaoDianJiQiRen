package com.amap.api.mapcore.util;

import android.content.Context;
import com.amap.api.maps.AMapException;
import java.util.Hashtable;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class e0 extends a1<String, d0> {
    public e0(Context context, String str) {
        super(context, str);
    }

    @Override // com.amap.api.mapcore.util.a1
    protected String a() {
        return "016";
    }

    @Override // com.amap.api.mapcore.util.a1
    protected JSONObject b(d5.a aVar) {
        JSONObject jSONObject;
        if (aVar == null || (jSONObject = aVar.v) == null) {
            return null;
        }
        return jSONObject.optJSONObject("016");
    }

    @Override // com.amap.api.mapcore.util.a1
    protected Map<String, String> e() {
        Hashtable hashtable = new Hashtable(16);
        hashtable.put("mapver", this.f10431a);
        return hashtable;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amap.api.mapcore.util.a1
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public d0 d(JSONObject jSONObject) throws AMapException {
        d0 d0Var = new d0();
        try {
            String strOptString = jSONObject.optString("update", "");
            if (strOptString.equals("0")) {
                d0Var.b(false);
            } else if (strOptString.equals("1")) {
                d0Var.b(true);
            }
            d0Var.a(jSONObject.optString("version", ""));
        } catch (Throwable th) {
            e6.r(th, "OfflineInitHandlerAbstract", "loadData parseJson");
        }
        return d0Var;
    }
}
