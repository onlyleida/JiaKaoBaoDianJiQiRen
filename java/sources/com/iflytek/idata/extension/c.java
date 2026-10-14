package com.iflytek.idata.extension;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.mobile.auth.gatewayauth.Constant;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f12467a;
    private b.a b = new a();

    c(Context context) {
        this.f12467a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        IFlyCollectorExt iFlyCollectorExt;
        byte[] bArrD;
        try {
            if (!com.iflytek.idata.extension.d.b.a(this.f12467a) || (bArrD = (iFlyCollectorExt = IFlyCollectorExt.getInstance(this.f12467a)).d()) == null) {
                return;
            }
            b bVar = new b();
            bVar.b(Constant.DEFAULT_SECURITY_VERIFY_TIMEOUT);
            bVar.a(1);
            StringBuilder sb = new StringBuilder();
            sb.append("product=freelog&appid=" + iFlyCollectorExt.getAppId());
            String subId = iFlyCollectorExt.getSubId();
            if (!TextUtils.isEmpty(subId)) {
                sb.append("&subid=" + subId);
            }
            sb.append("&size=" + bArrD.length + "&platform=android&source=daas&pv=1.1");
            bVar.a("https://log.iflytek.com/log", sb.toString(), bArrD);
            bVar.a(this.b);
            bVar.a();
        } catch (Throwable th) {
            com.iflytek.idata.extension.d.a.c("Collector", "exception occur while upload:" + th.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        try {
            JSONObject jSONObjectOptJSONObject = new JSONObject(str).optJSONObject("rsp");
            if (jSONObjectOptJSONObject != null) {
                String strOptString = jSONObjectOptJSONObject.optString("des");
                if (!TextUtils.isEmpty(strOptString)) {
                    SharedPreferences sharedPreferencesB = com.iflytek.idata.extension.d.b.b(this.f12467a);
                    String string = sharedPreferencesB.getString("ifly_dynamic_business_conf", "");
                    SharedPreferences.Editor editorEdit = sharedPreferencesB.edit();
                    if ("no".equals(strOptString)) {
                        if (!TextUtils.isEmpty(string)) {
                            editorEdit.putString("ifly_dynamic_business_conf", "");
                            editorEdit.apply();
                        }
                    } else if (!strOptString.equals(string)) {
                        editorEdit.putString("ifly_dynamic_business_conf", strOptString);
                        editorEdit.apply();
                    }
                }
                String strOptString2 = jSONObjectOptJSONObject.optString("ver");
                if (TextUtils.isEmpty(strOptString2) || strOptString2.equals(IFlyCollectorExt.getInstance(this.f12467a).a())) {
                    return;
                }
                new Thread(new com.iflytek.idata.extension.a(this.f12467a, true)).start();
            }
        } catch (Throwable th) {
            com.iflytek.idata.extension.d.a.b("Collector", "parse result error:" + th.toString());
        }
    }

    class a implements b.a {
        a() {
        }

        @Override // com.iflytek.idata.extension.b.a
        public void a(b bVar, byte[] bArr) {
            if (bArr != null) {
                try {
                    String str = new String(bArr, "utf-8");
                    if (b.a(str)) {
                        return;
                    }
                    com.iflytek.idata.extension.d.a.a("Collector", "upload success");
                    c.this.a(str);
                } catch (Throwable th) {
                    a(new Exception(th));
                }
            }
        }

        @Override // com.iflytek.idata.extension.b.a
        public void a(Exception exc) {
            com.iflytek.idata.extension.d.a.b("Collector", "update error:" + exc);
        }
    }
}
