package com.iflytek.cloud.a.f;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.speech.UtilityConfig;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    JSONObject f12263a = new JSONObject();
    long b = 0;
    long c = 0;

    public void a(com.iflytek.cloud.b.a aVar) {
        this.c = System.currentTimeMillis();
        this.b = SystemClock.elapsedRealtime();
        a("app_start", com.iflytek.cloud.msc.util.d.a(this.c), false);
        String strA = aVar.a(UtilityConfig.KEY_CALLER_APPID);
        if (!TextUtils.isEmpty(strA)) {
            a("app_caller_appid", strA, false);
        }
        String strA2 = com.iflytek.cloud.msc.util.a.b((Context) null).a("app.ver.code");
        if (TextUtils.isEmpty(strA2)) {
            return;
        }
        a("app_cver", strA2, false);
    }

    public synchronized void a(String str) {
        a(str, SystemClock.elapsedRealtime() - this.b, false);
    }

    public synchronized void a(String str, long j, boolean z) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                if (!z) {
                    this.f12263a.put(str, j);
                } else {
                    JSONArray jSONArrayOptJSONArray = this.f12263a.optJSONArray(str);
                    if (jSONArrayOptJSONArray == null) {
                        jSONArrayOptJSONArray = new JSONArray();
                        this.f12263a.put(str, jSONArrayOptJSONArray);
                    }
                    if (jSONArrayOptJSONArray != null) {
                        jSONArrayOptJSONArray.put(j);
                    }
                }
            } catch (JSONException e2) {
                DebugLog.LogE(e2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void a(String str, String str2, boolean z) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            if (!z) {
                this.f12263a.put(str, str2);
            } else {
                JSONArray jSONArrayOptJSONArray = this.f12263a.optJSONArray(str);
                if (jSONArrayOptJSONArray == null) {
                    jSONArrayOptJSONArray = new JSONArray();
                    this.f12263a.put(str, jSONArrayOptJSONArray);
                }
                if (jSONArrayOptJSONArray != null) {
                    jSONArrayOptJSONArray.put(str2);
                }
            }
        } catch (JSONException e2) {
            DebugLog.LogE(e2);
        }
    }

    public synchronized String a() {
        return this.f12263a.toString();
    }
}
