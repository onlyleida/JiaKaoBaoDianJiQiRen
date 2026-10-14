package com.amap.api.mapcore.util;

import android.content.Context;
import java.util.Hashtable;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class c8 extends u4<String, a> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f10623h;
    private int[] i;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f10624a = false;
    }

    public c8(Context context, String str) {
        super(context, str);
        this.f10623h = true;
        this.i = new int[]{10000, 0, 10018, 10019, 10020, 10021, 10022, 10023};
        this.f11236g = "/feedback";
        this.isPostFlag = false;
        this.f10623h = true;
    }

    @Override // com.amap.api.mapcore.util.k7
    public String getIPV6URL() {
        return r3.B(getURL());
    }

    @Override // com.amap.api.mapcore.util.r2, com.amap.api.mapcore.util.k7
    public Map<String, String> getParams() {
        Hashtable hashtable = new Hashtable(16);
        hashtable.put("key", c5.j(this.f11235f));
        if (this.f10623h) {
            hashtable.put("pname", "3dmap");
        }
        String strA = f5.a();
        String strD = f5.d(this.f11235f, strA, n5.u(hashtable));
        hashtable.put("ts", strA);
        hashtable.put("scode", strD);
        return hashtable;
    }

    @Override // com.amap.api.mapcore.util.k7
    public String getURL() {
        return "http://restapi.amap.com/v4" + this.f11236g;
    }

    @Override // com.amap.api.mapcore.util.k7
    public boolean isSupportIPV6() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amap.api.mapcore.util.u4
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public a g(String str) throws ft {
        try {
            JSONObject jSONObject = new JSONObject(str);
            int iOptInt = -1;
            if (jSONObject.has("errcode")) {
                iOptInt = jSONObject.optInt("errcode");
                jSONObject.optString("errmsg");
                jSONObject.optString("errdetail");
            }
            a aVar = new a();
            aVar.f10624a = false;
            for (int i : this.i) {
                if (i == iOptInt) {
                    aVar.f10624a = true;
                    break;
                }
            }
            return aVar;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }
}
