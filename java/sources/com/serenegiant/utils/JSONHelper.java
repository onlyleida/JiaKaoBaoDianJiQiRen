package com.serenegiant.utils;

import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class JSONHelper {
    private static final boolean DEBUG = false;
    private static final String TAG = "JSONHelper";

    public static boolean getBoolean(JSONObject jSONObject, String str, boolean z) throws JSONException {
        if (!jSONObject.has(str)) {
            return z;
        }
        try {
            return jSONObject.getBoolean(str);
        } catch (Exception unused) {
            try {
                return jSONObject.getInt(str) != 0;
            } catch (JSONException unused2) {
                if (jSONObject.getDouble(str) != 0.0d) {
                    return true;
                }
            }
        }
    }

    public static int getInt(JSONObject jSONObject, String str, int i) throws JSONException {
        if (!jSONObject.has(str)) {
            return i;
        }
        try {
            try {
                return jSONObject.getInt(str);
            } catch (JSONException unused) {
                return Integer.parseInt(jSONObject.getString(str));
            }
        } catch (Exception unused2) {
            return jSONObject.getBoolean(str) ? 1 : 0;
        }
    }

    public static long getLong(JSONObject jSONObject, String str, long j) throws JSONException {
        if (!jSONObject.has(str)) {
            return j;
        }
        try {
            try {
                return jSONObject.getLong(str);
            } catch (JSONException unused) {
                return Long.parseLong(jSONObject.getString(str));
            }
        } catch (Exception unused2) {
            return jSONObject.getBoolean(str) ? 1L : 0L;
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0015 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:9:0x0013 A[RETURN, SYNTHETIC] */
    public static boolean optBoolean(JSONObject jSONObject, String str, boolean z) {
        if (!jSONObject.has(str)) {
            return z;
        }
        try {
            return jSONObject.getBoolean(str);
        } catch (Exception unused) {
            try {
                try {
                    if (jSONObject.getInt(str) != 0) {
                        return true;
                    }
                    return false;
                } catch (JSONException e2) {
                    Log.w(TAG, e2);
                    return z;
                }
            } catch (JSONException unused2) {
                if (jSONObject.getDouble(str) != 0.0d) {
                    return true;
                }
                return false;
            }
        }
    }

    public static int optInt(JSONObject jSONObject, String str, int i) {
        if (!jSONObject.has(str)) {
            return i;
        }
        try {
            try {
                try {
                    return jSONObject.getInt(str);
                } catch (Exception e2) {
                    Log.w(TAG, e2);
                    return i;
                }
            } catch (JSONException unused) {
                return Integer.parseInt(jSONObject.getString(str));
            }
        } catch (Exception unused2) {
            return jSONObject.getBoolean(str) ? 1 : 0;
        }
    }

    public static long optLong(JSONObject jSONObject, String str, long j) {
        if (!jSONObject.has(str)) {
            return j;
        }
        try {
            try {
                try {
                    return jSONObject.getLong(str);
                } catch (JSONException unused) {
                    return Long.parseLong(jSONObject.getString(str));
                }
            } catch (Exception unused2) {
                return jSONObject.getBoolean(str) ? 1L : 0L;
            }
        } catch (Exception e2) {
            Log.w(TAG, e2);
            return j;
        }
    }
}
