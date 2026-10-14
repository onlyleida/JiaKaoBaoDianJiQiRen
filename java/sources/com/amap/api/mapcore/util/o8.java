package com.amap.api.mapcore.util;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class o8 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private m5 f11049a;

    public o8(String str) {
        this.f11049a = null;
        try {
            m5.b bVar = new m5.b(str, "1.0", "1.0.0");
            bVar.b(new String[]{"info"});
            this.f11049a = bVar.c();
        } catch (gb unused) {
        }
    }

    private static m5 a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            String strOptString = jSONObject.optString("a");
            String strOptString2 = jSONObject.optString("b");
            String strOptString3 = jSONObject.optString("c");
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("d");
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                arrayList.add(jSONArrayOptJSONArray.getString(i));
            }
            m5.b bVar = new m5.b(strOptString, strOptString2, strOptString);
            bVar.a(strOptString3);
            bVar.b((String[]) arrayList.toArray(new String[0]));
            return bVar.c();
        } catch (Throwable unused) {
            return null;
        }
    }

    private List<m5> c(JSONArray jSONArray) {
        if (jSONArray.length() == 0) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            m5 m5VarA = null;
            try {
                m5VarA = a(jSONArray.getJSONObject(i));
            } catch (JSONException unused) {
            }
            if (m5VarA != null) {
                arrayList.add(m5VarA);
            }
        }
        return arrayList;
    }

    private JSONArray d(List<m5> list) {
        if (list.size() == 0) {
            return new JSONArray();
        }
        JSONArray jSONArray = new JSONArray();
        Iterator<m5> it = list.iterator();
        while (it.hasNext()) {
            jSONArray.put(e(it.next()));
        }
        return jSONArray;
    }

    private static JSONObject e(m5 m5Var) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("a", m5Var.a());
            jSONObject.put("b", m5Var.e());
            jSONObject.put("c", m5Var.g());
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; m5Var.k() != null && i < m5Var.k().length; i++) {
                jSONArray.put(m5Var.k()[i]);
            }
            jSONObject.put("d", jSONArray);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    public final List<m5> b(Context context) {
        try {
            return c(new JSONArray(r6.a(context, this.f11049a, "rbck")));
        } catch (JSONException unused) {
            return new ArrayList();
        }
    }

    public final void f(Context context, m5 m5Var) {
        if (m5Var == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(m5Var);
        String string = d(arrayList).toString();
        if (TextUtils.isEmpty(string)) {
            return;
        }
        r6.b(context, this.f11049a, "rbck", string);
    }
}
