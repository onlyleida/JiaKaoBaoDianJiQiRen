package com.iflytek.cloud.util;

import android.text.TextUtils;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.mobile.auth.gatewayauth.Constant;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* JADX INFO: loaded from: classes4.dex */
public class UserWords {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Hashtable<String, ArrayList<String>> f12443a;

    public UserWords() {
        this.f12443a = null;
        this.f12443a = new Hashtable<>();
    }

    private boolean a(ArrayList<String> arrayList, String str) {
        if (arrayList == null || arrayList.contains(str)) {
            return false;
        }
        arrayList.add(str);
        return true;
    }

    public ArrayList<String> getKeys() {
        Hashtable<String, ArrayList<String>> hashtable = this.f12443a;
        if (hashtable == null || hashtable.isEmpty()) {
            return null;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<String> it = this.f12443a.keySet().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public ArrayList<String> getWords() {
        return getWords("default");
    }

    public boolean hasKey(String str) {
        return this.f12443a.containsKey(str);
    }

    public boolean putWord(String str) {
        return putWord("default", str);
    }

    public boolean putWords(ArrayList<String> arrayList) {
        return putWords("default", arrayList);
    }

    public String toString() {
        return a();
    }

    public ArrayList<String> getWords(String str) {
        return this.f12443a.get(str);
    }

    public boolean putWord(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        ArrayList<String> words = getWords(str);
        if (words != null) {
            a(words, str2);
            return true;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        a(arrayList, str2);
        this.f12443a.put(str, arrayList);
        return true;
    }

    public boolean putWords(String str, ArrayList<String> arrayList) {
        if (TextUtils.isEmpty(str) || arrayList == null) {
            return false;
        }
        ArrayList<String> words = getWords(str);
        if (words != null) {
            a(words, arrayList);
            return true;
        }
        ArrayList<String> arrayList2 = new ArrayList<>();
        a(arrayList2, arrayList);
        this.f12443a.put(str, arrayList2);
        return true;
    }

    private boolean a(ArrayList<String> arrayList, ArrayList<String> arrayList2) {
        if (arrayList == null || arrayList2 == null) {
            return false;
        }
        Iterator<String> it = arrayList2.iterator();
        while (it.hasNext()) {
            a(arrayList, it.next());
        }
        return true;
    }

    public UserWords(String str) {
        this.f12443a = null;
        this.f12443a = new Hashtable<>();
        a(str);
    }

    private void a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                DebugLog.LogD("userword is null...");
                return;
            }
            JSONArray jSONArray = new JSONObject(new JSONTokener(str)).getJSONArray("userword");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = (JSONObject) jSONArray.get(i);
                JSONArray jSONArray2 = jSONObject.getJSONArray("words");
                ArrayList<String> arrayList = new ArrayList<>();
                for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                    String string = jSONArray2.get(i2).toString();
                    if (!arrayList.contains(string)) {
                        arrayList.add(string);
                    }
                }
                this.f12443a.put(jSONObject.get(Constant.PROTOCOL_WEBVIEW_NAME).toString(), arrayList);
            }
        } catch (JSONException e2) {
            DebugLog.LogE(e2);
        }
    }

    private String a() {
        try {
            if (this.f12443a == null) {
                DebugLog.LogD("mwords is null...");
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            for (Map.Entry<String, ArrayList<String>> entry : this.f12443a.entrySet()) {
                JSONObject jSONObject2 = new JSONObject();
                JSONArray jSONArray2 = new JSONArray();
                Iterator<String> it = entry.getValue().iterator();
                while (it.hasNext()) {
                    jSONArray2.put(it.next());
                }
                jSONObject2.put("words", jSONArray2);
                jSONObject2.put(Constant.PROTOCOL_WEBVIEW_NAME, entry.getKey());
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("userword", jSONArray);
            return jSONObject.toString();
        } catch (JSONException e2) {
            DebugLog.LogE(e2);
            return null;
        }
    }
}
