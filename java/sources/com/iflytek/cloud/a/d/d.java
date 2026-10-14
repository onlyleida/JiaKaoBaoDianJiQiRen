package com.iflytek.cloud.a.d;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.RequestListener;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SpeechEvent;
import com.iflytek.cloud.SpeechUtility;
import com.iflytek.cloud.msc.util.e;
import com.iflytek.cloud.msc.util.f;
import com.iflytek.cloud.msc.util.i;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.cloud.util.AudioDetector;
import com.iflytek.cloud.util.FileDownloadListener;
import com.iflytek.msc.MSC;
import com.iflytek.msc.MSCSessionInfo;
import java.io.UnsupportedEncodingException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* JADX INFO: loaded from: classes4.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f12201a = "http://wke.openspeech.cn/wakeup/";
    private Context b;
    private i c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private f f12203e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RequestListener f12202d = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public i.a f12204f = new a();

    class a implements i.a {
        a() {
        }

        @Override // com.iflytek.cloud.msc.util.i.a
        public void a(i iVar, byte[] bArr) {
            try {
                String str = new String(bArr, "utf-8");
                DebugLog.LogS("updateInfo:" + str);
                JSONObject jSONObject = new JSONObject(str);
                try {
                    com.iflytek.cloud.msc.util.b.a(d.this.b).b("ivw_netval", Integer.valueOf((String) jSONObject.remove("netval")).intValue());
                } catch (Exception e2) {
                    DebugLog.LogE(e2);
                }
                int i = jSONObject.getInt(SpeechUtility.TAG_RESOURCE_RET);
                if (i == 0) {
                    if (d.this.f12202d != null) {
                        d.this.f12202d.onBufferReceived(bArr);
                    }
                    onError(null);
                    return;
                }
                String string = jSONObject.getString("sid");
                DebugLog.LogD("query ivw res sid:" + string);
                if (d.this.f12202d != null) {
                    Bundle bundle = new Bundle();
                    bundle.putString(SpeechEvent.KEY_EVENT_SESSION_ID, string);
                    d.this.f12202d.onEvent(20001, bundle);
                }
                onError(new SpeechError(i));
            } catch (Exception e3) {
                DebugLog.LogE(e3);
                onError(new SpeechError(ErrorCode.ERROR_INVALID_RESULT));
            }
        }

        @Override // com.iflytek.cloud.msc.util.i.a
        public void onError(SpeechError speechError) {
            if (speechError != null) {
                DebugLog.LogD("query resource error. errorcode:" + speechError.getErrorCode());
            } else {
                DebugLog.LogS("query resource succeed");
            }
            if (d.this.f12202d != null) {
                d.this.f12202d.onCompleted(speechError);
            }
        }
    }

    public d(Context context) {
        this.b = null;
        this.c = null;
        this.f12203e = null;
        this.b = context;
        this.f12203e = f.a(context);
        this.c = new i();
    }

    public static synchronized JSONObject c(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return b(str, "");
        }
        JSONObject jSONObjectB = b(str, "");
        if (jSONObjectB == null) {
            return null;
        }
        JSONObject jSONObjectB2 = b(str2, "");
        if (jSONObjectB2 == null) {
            return jSONObjectB;
        }
        return a(jSONObjectB, jSONObjectB2);
    }

    public static boolean b(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject != null) {
            if (jSONObject2 == null) {
                return true;
            }
            try {
                if (!jSONObject.getString("resver").equalsIgnoreCase("unkown")) {
                    if (jSONObject2.getString("resver").equalsIgnoreCase("unkown")) {
                        return true;
                    }
                    if (com.iflytek.cloud.msc.util.d.b("appid", jSONObject, jSONObject2) && com.iflytek.cloud.msc.util.d.b("resid", jSONObject, jSONObject2) && com.iflytek.cloud.msc.util.d.b("restype", jSONObject, jSONObject2) && com.iflytek.cloud.msc.util.d.b("wakelist", jSONObject, jSONObject2) && jSONObject.getLong("restime") > jSONObject2.getLong("restime")) {
                        return true;
                    }
                }
            } catch (JSONException e2) {
                DebugLog.LogE(e2);
            }
        }
        return false;
    }

    public int a(JSONObject jSONObject, RequestListener requestListener) throws Throwable {
        if (jSONObject == null) {
            return ErrorCode.ERROR_INVALID_DATA;
        }
        if (requestListener != null) {
            try {
                this.f12202d = requestListener;
            } catch (Exception e2) {
                DebugLog.LogE(e2);
                return ErrorCode.ERROR_NET_EXCEPTION;
            }
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("header", com.iflytek.cloud.b.c.c(this.b, new com.iflytek.cloud.b.a()));
        jSONObject2.put("info", jSONObject);
        DebugLog.LogS("post data:" + jSONObject2);
        byte[] bArrB = e.b(jSONObject2.toString().getBytes());
        this.c.a(1);
        this.c.a(f12201a, null, bArrB);
        this.c.a(this.f12204f);
        return 0;
    }

    public static JSONObject b(String str, String str2) {
        MSCSessionInfo mSCSessionInfo = new MSCSessionInfo();
        try {
            DebugLog.LogD("getIvwResInfo resPath: " + str);
            int iQIVWGetResInfo = MSC.QIVWGetResInfo(str.getBytes(), str2.getBytes(), mSCSessionInfo);
            if (iQIVWGetResInfo != 0) {
                DebugLog.LogE("read ivw resoure error:" + iQIVWGetResInfo);
                return null;
            }
            try {
                String str3 = new String(mSCSessionInfo.buffer, "utf-8");
                DebugLog.LogS("resInfo:" + new String(mSCSessionInfo.buffer));
                return a(str, str3);
            } catch (UnsupportedEncodingException e2) {
                DebugLog.LogE(e2);
                return null;
            }
        } catch (Exception unused) {
            DebugLog.LogE("get res info error");
            return null;
        } catch (UnsatisfiedLinkError unused2) {
            DebugLog.LogE("get res info error, unsatisfiedlinkerror");
            return null;
        }
    }

    public int a(String str, String str2, String str3, FileDownloadListener fileDownloadListener) {
        return (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) ? ErrorCode.ERROR_INVALID_PARAM : this.f12203e.a(str, str2, str3, fileDownloadListener);
    }

    public void a() {
        i iVar = this.c;
        if (iVar != null) {
            iVar.a();
            this.c = null;
        }
        this.f12202d = null;
    }

    private static JSONObject a(String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("respath", str);
            JSONObject jSONObject2 = new JSONObject(new JSONTokener(str2));
            JSONObject jSONObject3 = jSONObject2.getJSONObject("athinfo");
            jSONObject.put("appid", jSONObject3.getString("appid"));
            jSONObject.put("resid", jSONObject3.getString("resid"));
            String string = jSONObject3.getString("restype");
            jSONObject.put("restype", string);
            if (!"d".equalsIgnoreCase(string)) {
                jSONObject.put("uid", jSONObject3.getString("uid"));
                jSONObject.put("expiredate", jSONObject3.getString("expiredate"));
            }
            JSONArray jSONArray = jSONObject2.getJSONObject("ivwword").getJSONArray("words");
            String str3 = "";
            for (int i = 0; i < jSONArray.length(); i++) {
                str3 = (((str3 + jSONArray.getJSONObject(i).getString("text")) + ":") + jSONArray.getJSONObject(i).getInt(AudioDetector.THRESHOLD)) + ",";
            }
            jSONObject.put("wakelist", str3.substring(0, str3.length() - 1));
            try {
                jSONObject.put("resver", jSONObject2.getString("resver"));
            } catch (JSONException unused) {
                jSONObject.put("resver", "unkown");
            }
            try {
                jSONObject.put("restime", jSONObject2.getLong("restime"));
            } catch (JSONException unused2) {
                jSONObject.put("restime", 0L);
            }
            jSONObject.put("wakever", SpeechUtility.getUtility() != null ? SpeechUtility.getUtility().getParameter("ver_ivw") : "");
            DebugLog.LogS("root:" + jSONObject.toString());
            return jSONObject;
        } catch (JSONException unused3) {
            DebugLog.LogD("compose resinfo error");
            return null;
        }
    }

    private static JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            if (jSONObject.getString("resver").equalsIgnoreCase("unkown")) {
                DebugLog.LogS("user ivw resver unkown");
                return null;
            }
            if (!jSONObject2.getString("resver").equalsIgnoreCase("unkown") && jSONObject.getString("resver").equalsIgnoreCase(jSONObject2.getString("resver"))) {
                return (com.iflytek.cloud.msc.util.d.b("appid", jSONObject, jSONObject2) && com.iflytek.cloud.msc.util.d.b("resid", jSONObject, jSONObject2) && com.iflytek.cloud.msc.util.d.b("restype", jSONObject, jSONObject2) && com.iflytek.cloud.msc.util.d.b("wakelist", jSONObject, jSONObject2) && com.iflytek.cloud.msc.util.d.a("restime", jSONObject, jSONObject2)) ? jSONObject2 : jSONObject;
            }
            DebugLog.LogS("cfg ivw resver unkown or unequal");
            return jSONObject;
        } catch (JSONException e2) {
            DebugLog.LogE(e2);
            return null;
        }
    }
}
