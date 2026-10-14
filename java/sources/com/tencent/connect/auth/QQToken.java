package com.tencent.connect.auth;

import android.annotation.TargetApi;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import com.tencent.connect.common.Constants;
import com.tencent.open.log.SLog;
import com.tencent.open.utils.f;
import com.tencent.open.utils.i;
import com.tencent.open.utils.l;
import com.tencent.open.web.security.JniInterface;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class QQToken {
    public static final int AUTH_QQ = 2;
    public static final int AUTH_QZONE = 3;
    public static final int AUTH_WEB = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static SharedPreferences f13959g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f13960a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f13961d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f13962e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.tencent.open.utils.a f13963f;

    public QQToken(String str) {
        this.f13960a = str;
    }

    @TargetApi(11)
    private static synchronized SharedPreferences a() {
        if (f13959g == null) {
            f13959g = f.a().getSharedPreferences("token_info_file", 0);
        }
        return f13959g;
    }

    @Deprecated
    private static String b(String str) {
        return Base64.encodeToString(l.i(str), 2);
    }

    @Deprecated
    private static String c(String str) {
        return Base64.encodeToString(l.i(str), 2) + "_spkey";
    }

    public String getAccessToken() {
        return this.b;
    }

    public String getAppId() {
        return this.f13960a;
    }

    public int getAuthSource() {
        return this.f13961d;
    }

    public long getExpireTimeInSecond() {
        return this.f13962e;
    }

    public String getOpenId() {
        return this.c;
    }

    public String getOpenIdWithCache() {
        String openId = getOpenId();
        try {
            if (TextUtils.isEmpty(openId)) {
                JSONObject jSONObjectLoadSession = loadSession(this.f13960a);
                if (jSONObjectLoadSession != null) {
                    openId = jSONObjectLoadSession.getString("openid");
                    if (!TextUtils.isEmpty(openId)) {
                        setOpenId(openId);
                    }
                }
                SLog.i("QQToken", "getOpenId from Session openId = " + openId + " appId = " + this.f13960a);
            } else {
                SLog.i("QQToken", "getOpenId from field openId = " + openId + " appId = " + this.f13960a);
            }
        } catch (Exception e2) {
            SLog.i("QQToken", "getLocalOpenIdByAppId " + e2.toString());
        }
        return openId;
    }

    public boolean isSessionValid() {
        return this.b != null && System.currentTimeMillis() < this.f13962e;
    }

    public JSONObject loadSession(String str) {
        try {
            if (this.f13963f == null) {
                this.f13963f = new com.tencent.open.utils.a(f.a());
            }
            return a(str, this.f13963f);
        } catch (Exception e2) {
            SLog.i("QQToken", "login loadSession" + e2.toString());
            return null;
        }
    }

    public void removeSession(String str) {
        SharedPreferences.Editor editorEdit = a().edit();
        editorEdit.remove(c(str));
        editorEdit.remove(c(str));
        editorEdit.remove(a(str));
        editorEdit.apply();
        SLog.i("QQToken", "removeSession sucess");
    }

    public boolean saveSession(JSONObject jSONObject) {
        try {
            if (this.f13963f == null) {
                this.f13963f = new com.tencent.open.utils.a(f.a());
            }
            return a(this.f13960a, jSONObject, this.f13963f);
        } catch (Exception e2) {
            SLog.i("QQToken", "login saveSession" + e2.toString());
            return false;
        }
    }

    public void setAccessToken(String str, String str2) throws NumberFormatException {
        this.b = str;
        this.f13962e = 0L;
        if (str2 != null) {
            this.f13962e = System.currentTimeMillis() + (Long.parseLong(str2) * 1000);
        }
    }

    public void setAppId(String str) {
        this.f13960a = str;
    }

    public void setAuthSource(int i) {
        this.f13961d = i;
    }

    public void setOpenId(String str) {
        this.c = str;
    }

    private static synchronized JSONObject a(String str, com.tencent.open.utils.a aVar) {
        String strB;
        if (f.a() == null) {
            SLog.i("QQToken", "loadJsonPreference context null");
            return null;
        }
        if (str == null) {
            SLog.i("QQToken", "loadJsonPreference prefKey is null");
            return null;
        }
        String string = a().getString(a(str), "");
        if (TextUtils.isEmpty(string)) {
            if (!JniInterface.isJniOk) {
                i.a(AuthAgent.SECURE_LIB_FILE_NAME, AuthAgent.SECURE_LIB_NAME, 5);
                JniInterface.loadSo();
            }
            if (!JniInterface.isJniOk) {
                SLog.i("QQToken", "loadJsonPreference jni load fail SECURE_LIB_VERSION=5");
                return null;
            }
            String strC = c(str);
            String string2 = a().getString(strC, "");
            try {
                if (TextUtils.isEmpty(string2)) {
                    String strB2 = b(str);
                    String string3 = a().getString(strB2, "");
                    try {
                        if (TextUtils.isEmpty(string3)) {
                            SLog.i("QQToken", "loadJsonPreference oldDesValue null");
                            return null;
                        }
                        try {
                            strB = JniInterface.d1(string3);
                            if (TextUtils.isEmpty(strB)) {
                                SLog.i("QQToken", "loadJsonPreference decodeResult d1 empty");
                                a().edit().remove(strB2).apply();
                                return null;
                            }
                            a(str, new JSONObject(strB), aVar);
                            a().edit().remove(strB2).apply();
                        } catch (Exception e2) {
                            SLog.e("QQToken", "Catch Exception", e2);
                            a().edit().remove(strB2).apply();
                            return null;
                        }
                    } catch (Throwable th) {
                        a().edit().remove(strB2).apply();
                        throw th;
                    }
                } else {
                    try {
                        strB = JniInterface.d2(string2);
                        a(str, new JSONObject(strB), aVar);
                        a().edit().remove(strC).apply();
                    } catch (Exception e3) {
                        SLog.e("QQToken", "Catch Exception", e3);
                        a().edit().remove(strC).apply();
                        return null;
                    }
                }
            } catch (Throwable th2) {
                a().edit().remove(strC).apply();
                throw th2;
            }
            throw th;
        }
        strB = aVar.b(string);
        try {
            JSONObject jSONObject = new JSONObject(strB);
            SLog.i("QQToken", "loadJsonPreference sucess");
            return jSONObject;
        } catch (Exception e4) {
            SLog.i("QQToken", "loadJsonPreference decode " + e4.toString());
            return null;
        }
    }

    private static synchronized boolean a(String str, JSONObject jSONObject, com.tencent.open.utils.a aVar) {
        if (f.a() == null) {
            SLog.i("QQToken", "saveJsonPreference context null");
            return false;
        }
        if (str != null && jSONObject != null) {
            try {
                String string = jSONObject.getString(Constants.PARAM_EXPIRES_IN);
                if (!TextUtils.isEmpty(string)) {
                    jSONObject.put(Constants.PARAM_EXPIRES_TIME, System.currentTimeMillis() + (Long.parseLong(string) * 1000));
                    String strA = a(str);
                    String strA2 = aVar.a(jSONObject.toString());
                    if (strA.length() > 6 && strA2 != null) {
                        a().edit().putString(strA, strA2).commit();
                        SLog.i("QQToken", "saveJsonPreference sucess");
                        return true;
                    }
                    SLog.i("QQToken", "saveJsonPreference keyEncode or josnEncode null");
                    return false;
                }
                SLog.i("QQToken", "expires is null");
                return false;
            } catch (Exception e2) {
                SLog.e("QQToken", "saveJsonPreference exception:" + e2.toString());
                return false;
            }
        }
        SLog.i("QQToken", "saveJsonPreference prefKey or jsonObject null");
        return false;
    }

    private static String a(String str) {
        return Base64.encodeToString(l.i(str), 2) + "_aes_google";
    }
}
