package com.unity3d.splash.services.c.a;

import android.text.TextUtils;
import com.unity3d.splash.services.core.log.DeviceLog;
import java.util.ArrayList;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private JSONObject f14368a;

    private synchronized Object b(String str) {
        String[] strArrSplit = str.split("\\.");
        JSONObject jSONObject = this.f14368a;
        if (str.length() == 0) {
            return jSONObject;
        }
        for (int i = 0; i < strArrSplit.length; i++) {
            if (!jSONObject.has(strArrSplit[i])) {
                return null;
            }
            try {
                jSONObject = jSONObject.getJSONObject(strArrSplit[i]);
            } catch (Exception e2) {
                DeviceLog.f("Couldn't read JSONObject: " + strArrSplit[i], e2);
                return null;
            }
        }
        return jSONObject;
    }

    private synchronized String e(String str) {
        ArrayList arrayList;
        arrayList = new ArrayList(Arrays.asList(str.split("\\.")));
        arrayList.remove(arrayList.size() - 1);
        return TextUtils.join(".", arrayList.toArray());
    }

    public synchronized boolean a(String str) {
        JSONObject jSONObject;
        if (this.f14368a == null) {
            DeviceLog.e("Data is NULL, readStorage probably not called");
            return false;
        }
        String[] strArrSplit = str.split("\\.");
        return (!(b(e(str)) instanceof JSONObject) || (jSONObject = (JSONObject) b(e(str))) == null || jSONObject.remove(strArrSplit[strArrSplit.length - 1]) == null) ? false : true;
    }

    public synchronized Object c(String str) throws JSONException {
        JSONObject jSONObject;
        Object obj = null;
        if (this.f14368a == null) {
            DeviceLog.e("Data is NULL, readStorage probably not called");
            return null;
        }
        String[] strArrSplit = str.split("\\.");
        if (!(b(e(str)) instanceof JSONObject) || (jSONObject = (JSONObject) b(e(str))) == null) {
            return null;
        }
        try {
            if (jSONObject.has(strArrSplit[strArrSplit.length - 1])) {
                obj = jSONObject.get(strArrSplit[strArrSplit.length - 1]);
            }
        } catch (Exception e2) {
            DeviceLog.f("Error getting data", e2);
        }
        return obj;
    }

    public synchronized JSONObject d() {
        return this.f14368a;
    }

    public synchronized boolean f() {
        boolean z;
        if (this.f14368a == null) {
            this.f14368a = new JSONObject();
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    public synchronized void g(JSONObject jSONObject) {
        this.f14368a = jSONObject;
    }
}
