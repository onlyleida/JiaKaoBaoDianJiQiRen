package com.amap.api.mapcore.util;

import android.content.Context;
import com.amap.api.maps.AMapException;
import com.amap.api.maps.offlinemap.OfflineMapProvince;
import com.iflytek.cloud.SpeechUtility;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class j0 extends a1<String, List<OfflineMapProvince>> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f10932d;

    public j0(Context context, String str) {
        super(context, str);
    }

    @Override // com.amap.api.mapcore.util.a1
    protected String a() {
        return "015";
    }

    @Override // com.amap.api.mapcore.util.a1
    protected JSONObject b(d5.a aVar) {
        JSONObject jSONObject;
        if (aVar == null || (jSONObject = aVar.v) == null) {
            return null;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("015");
        if (!jSONObjectOptJSONObject.has(SpeechUtility.TAG_RESOURCE_RESULT)) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put(SpeechUtility.TAG_RESOURCE_RESULT, new JSONObject().put("offlinemap_with_province_vfour", jSONObjectOptJSONObject));
                return jSONObject2;
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return jSONObjectOptJSONObject;
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
    public List<OfflineMapProvince> d(JSONObject jSONObject) throws AMapException {
        try {
            if (this.f10932d != null) {
                z0.p(jSONObject.toString(), this.f10932d);
            }
        } catch (Throwable th) {
            e6.r(th, "OfflineUpdateCityHandlerAbstract", "loadData jsonInit");
            th.printStackTrace();
        }
        try {
            Context context = this.f10932d;
            if (context != null) {
                return z0.g(jSONObject, context);
            }
            return null;
        } catch (JSONException e2) {
            e6.r(e2, "OfflineUpdateCityHandlerAbstract", "loadData parseJson");
            e2.printStackTrace();
            return null;
        }
    }

    public void i(Context context) {
        this.f10932d = context;
    }
}
