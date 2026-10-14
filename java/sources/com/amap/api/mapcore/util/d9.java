package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import com.amap.api.maps.MapsInitializer;
import com.autonavi.amap.mapcore.AMapEngineUtils;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import com.iflytek.speech.VoiceWakeuperAidl;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class d9 extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f10685a;
    WeakReference<IAMapDelegate> b;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f10686a;
        final /* synthetic */ String b;
        final /* synthetic */ boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f10687d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f10688e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f10689f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f10690g;

        a(String str, String str2, boolean z, String str3, String str4, String str5, String str6) {
            this.f10686a = str;
            this.b = str2;
            this.c = z;
            this.f10687d = str3;
            this.f10688e = str4;
            this.f10689f = str5;
            this.f10690g = str6;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!TextUtils.isEmpty(this.f10686a) && !TextUtils.isEmpty(this.b)) {
                boolean z = this.c;
                String str = AMapEngineUtils.LOGO_CUSTOM_ICON_DAY_NAME;
                String str2 = this.b;
                String str3 = this.f10686a;
                String str4 = this.f10687d;
                if (z) {
                    u9.d dVar = new u9.d(str2, str3, str4, str);
                    dVar.g("amap_web_logo", "md5_day");
                    new u9(d9.this.f10685a, dVar, r3.u0()).a();
                }
                WeakReference<IAMapDelegate> weakReference = d9.this.b;
                if (weakReference != null && weakReference.get() != null) {
                    d9.this.b.get().changeLogoIconStyle(str, z, 0);
                }
            }
            if (TextUtils.isEmpty(this.f10688e) || TextUtils.isEmpty(this.f10689f)) {
                return;
            }
            boolean z2 = this.c;
            String str5 = AMapEngineUtils.LOGO_CUSTOM_ICON_NIGHT_NAME;
            String str6 = this.f10689f;
            String str7 = this.f10688e;
            String str8 = this.f10690g;
            if (z2) {
                u9.d dVar2 = new u9.d(str6, str7, str8, str5);
                dVar2.g("amap_web_logo", "md5_night");
                new u9(d9.this.f10685a, dVar2, r3.u0()).a();
            }
            WeakReference<IAMapDelegate> weakReference2 = d9.this.b;
            if (weakReference2 == null || weakReference2.get() == null) {
                return;
            }
            d9.this.b.get().changeLogoIconStyle(str5, z2, 1);
        }
    }

    public d9(Context context, IAMapDelegate iAMapDelegate) {
        this.b = null;
        this.f10685a = context;
        this.b = new WeakReference<>(iAMapDelegate);
    }

    private void b(Context context, m5 m5Var, d5.a aVar) {
        JSONObject jSONObject;
        if (aVar == null || (jSONObject = aVar.v) == null) {
            return;
        }
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("16V");
            boolean zX = d5.x(jSONObjectOptJSONObject.optString("di", ""), false);
            String strOptString = jSONObjectOptJSONObject.optString("dis", "");
            boolean zX2 = d5.x(jSONObjectOptJSONObject.optString("able", ""), false);
            boolean zX3 = d5.x(jSONObjectOptJSONObject.optString("isFilter", ""), true);
            if (!zX || n5.D(strOptString)) {
                n6.a(m5Var).b(context, zX2, zX3);
            }
        } catch (Throwable unused) {
        }
    }

    private void c(d5.a aVar) {
        try {
            d5.a.C0187a c0187a = aVar.w;
            if (c0187a != null) {
                o3.a(this.f10685a, "maploc", "ue", Boolean.valueOf(c0187a.f10667a));
                JSONObject jSONObject = c0187a.b;
                int iOptInt = jSONObject.optInt("fn", 1000);
                int iOptInt2 = jSONObject.optInt("mpn", 0);
                int i = 30;
                if (iOptInt2 > 500) {
                    iOptInt2 = 500;
                }
                if (iOptInt2 >= 30) {
                    i = iOptInt2;
                }
                t7.b(iOptInt, d5.x(jSONObject.optString("igu"), false));
                o3.a(this.f10685a, "maploc", "opn", Integer.valueOf(i));
            }
        } catch (Throwable th) {
            e6.r(th, "AuthUtil", "loadConfigDataUploadException");
        }
    }

    private void d(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("16G");
            boolean zX = d5.x(jSONObjectOptJSONObject.optString("able", ""), false);
            boolean zX2 = d5.x(jSONObjectOptJSONObject.optString("removeCache", ""), false);
            boolean zX3 = d5.x(jSONObjectOptJSONObject.optString("uploadInfo", ""), false);
            i3.a(zX);
            i3.d(zX2);
            i3.f(zX3);
        } catch (Throwable unused) {
        }
    }

    @Override // java.lang.Thread
    public void interrupt() {
        super.interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        JSONObject jSONObjectOptJSONObject;
        WeakReference<IAMapDelegate> weakReference;
        WeakReference<IAMapDelegate> weakReference2;
        JSONObject jSONObject;
        JSONObject jSONObject2;
        JSONObject jSONObjectOptJSONObject2;
        JSONObject jSONObject3;
        JSONObject jSONObjectOptJSONObject3;
        JSONObject jSONObject4;
        m5 m5VarU0;
        JSONObject jSONObject5;
        JSONObject jSONObjectOptJSONObject4;
        WeakReference<IAMapDelegate> weakReference3;
        try {
            if (MapsInitializer.getNetWorkEnable()) {
                i5.a().c(this.f10685a);
                StringBuilder sb = new StringBuilder();
                sb.append("14S");
                sb.append(VoiceWakeuperAidl.PARAMS_SEPARATE);
                sb.append("11K");
                sb.append(VoiceWakeuperAidl.PARAMS_SEPARATE);
                sb.append("001");
                sb.append(VoiceWakeuperAidl.PARAMS_SEPARATE);
                sb.append("14M");
                sb.append(VoiceWakeuperAidl.PARAMS_SEPARATE);
                sb.append("14L");
                sb.append(VoiceWakeuperAidl.PARAMS_SEPARATE);
                sb.append("16V");
                sb.append(VoiceWakeuperAidl.PARAMS_SEPARATE);
                sb.append("14Z");
                sb.append(VoiceWakeuperAidl.PARAMS_SEPARATE);
                sb.append("154");
                sb.append(VoiceWakeuperAidl.PARAMS_SEPARATE);
                sb.append("156");
                sb.append(VoiceWakeuperAidl.PARAMS_SEPARATE);
                sb.append("15C");
                sb.append(VoiceWakeuperAidl.PARAMS_SEPARATE);
                sb.append("16G");
                try {
                    WeakReference<IAMapDelegate> weakReference4 = this.b;
                    if (weakReference4 != null && weakReference4.get() != null) {
                        IAMapDelegate iAMapDelegate = this.b.get();
                        if (iAMapDelegate.getAMapExtraInterfaceManager() != null) {
                            sb.append(iAMapDelegate.getAMapExtraInterfaceManager().h());
                        }
                    }
                } catch (Throwable unused) {
                }
                d5.a aVarA = d5.a(this.f10685a, r3.u0(), sb.toString(), null);
                boolean z = true;
                if (d5.f10655a != 1 && aVarA != null && (weakReference3 = this.b) != null && weakReference3.get() != null) {
                    Message messageObtainMessage = this.b.get().getMainHandler().obtainMessage();
                    messageObtainMessage.what = 2;
                    String str = aVarA.f10661a;
                    if (str != null) {
                        messageObtainMessage.obj = str;
                    }
                    this.b.get().getMainHandler().sendMessage(messageObtainMessage);
                }
                if (aVarA != null && (jSONObject5 = aVarA.v) != null && (jSONObjectOptJSONObject4 = jSONObject5.optJSONObject("154")) != null && d5.x(jSONObjectOptJSONObject4.getString("able"), true)) {
                    String strOptString = jSONObjectOptJSONObject4.optString("mc");
                    String strOptString2 = jSONObjectOptJSONObject4.optString("si");
                    if (!TextUtils.isEmpty(strOptString)) {
                        h3.c(this.f10685a, "approval_number", "mc", strOptString);
                    }
                    if (!TextUtils.isEmpty(strOptString2)) {
                        h3.c(this.f10685a, "approval_number", "si", strOptString2);
                    }
                }
                if (aVarA != null && aVarA.w != null && (m5VarU0 = r3.u0()) != null) {
                    m5VarU0.d(aVarA.w.f10667a);
                }
                if (aVarA != null) {
                    c(aVarA);
                }
                if (aVarA != null) {
                    try {
                        JSONObject jSONObject6 = aVarA.v;
                        if (jSONObject6 != null && (jSONObjectOptJSONObject = jSONObject6.optJSONObject("14M")) != null && jSONObjectOptJSONObject.has("able") && d5.x(jSONObjectOptJSONObject.getString("able"), true)) {
                            if (System.currentTimeMillis() - h3.a(this.f10685a, "Map3DCache", "time", 0L).longValue() > (jSONObjectOptJSONObject.has("time") ? Math.max(60, jSONObjectOptJSONObject.getInt("time")) : 2592000) * 1000 && (weakReference = this.b) != null && weakReference.get() != null) {
                                this.b.get().clearTileCache();
                            }
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
                if (aVarA != null && (jSONObject4 = aVarA.v) != null) {
                    try {
                        JSONObject jSONObjectOptJSONObject5 = jSONObject4.optJSONObject("14L");
                        if (jSONObjectOptJSONObject5 != null && jSONObjectOptJSONObject5.has("able")) {
                            boolean zX = d5.x(jSONObjectOptJSONObject5.getString("able"), false);
                            WeakReference<IAMapDelegate> weakReference5 = this.b;
                            if (weakReference5 != null && weakReference5.get() != null) {
                                IAMapDelegate iAMapDelegate2 = this.b.get();
                                if (zX) {
                                    z = false;
                                }
                                iAMapDelegate2.setHideLogoEnble(z);
                            }
                        }
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                    }
                }
                if (aVarA != null && (jSONObject3 = aVarA.v) != null && (jSONObjectOptJSONObject3 = jSONObject3.optJSONObject("156")) != null) {
                    b3.f(d5.x(jSONObjectOptJSONObject3.optString("able"), false));
                }
                if (aVarA != null && aVarA.v != null) {
                    b(this.f10685a, r3.u0(), aVarA);
                }
                if (aVarA != null && (jSONObject2 = aVarA.v) != null && (jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("15C")) != null) {
                    boolean zX2 = d5.x(jSONObjectOptJSONObject2.optString("able"), false);
                    q3.a().b(new a(jSONObjectOptJSONObject2.optString("logo_day_md5"), jSONObjectOptJSONObject2.optString("logo_day_url"), zX2, jSONObjectOptJSONObject2.optString("logo_day_ipv6_url"), jSONObjectOptJSONObject2.optString("logo_night_md5"), jSONObjectOptJSONObject2.optString("logo_night_url"), jSONObjectOptJSONObject2.optString("logo_night_ipv6_url")));
                }
                if (aVarA != null) {
                    try {
                        if (aVarA.v != null && (weakReference2 = this.b) != null && weakReference2.get() != null) {
                            IAMapDelegate iAMapDelegate3 = this.b.get();
                            if (iAMapDelegate3.getAMapExtraInterfaceManager() != null) {
                                iAMapDelegate3.getAMapExtraInterfaceManager().g(aVarA.v);
                            }
                        }
                    } catch (Throwable unused2) {
                    }
                }
                if (aVarA != null && (jSONObject = aVarA.v) != null) {
                    d(jSONObject);
                }
                e6.g(this.f10685a, r3.u0());
                interrupt();
                WeakReference<IAMapDelegate> weakReference6 = this.b;
                if (weakReference6 == null || weakReference6.get() == null) {
                    return;
                }
                this.b.get().setRunLowFrame(false);
            }
        } catch (Throwable th3) {
            interrupt();
            e6.r(th3, "AMapDelegateImpGLSurfaceView", "mVerfy");
            th3.printStackTrace();
        }
    }
}
