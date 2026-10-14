package com.iflytek.idata.extension;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class a implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b.a f12460a = new C0244a();
    protected Context b;
    private boolean c;

    public a(Context context, boolean z) {
        this.b = context;
        this.c = z;
    }

    private boolean b() {
        SharedPreferences sharedPreferencesB;
        if (this.c || (sharedPreferencesB = com.iflytek.idata.extension.d.b.b(this.b)) == null) {
            return true;
        }
        return System.currentTimeMillis() - sharedPreferencesB.getLong("last_check_time", 0L) > 604800000;
    }

    @Override // java.lang.Runnable
    public void run() {
        a();
    }

    private void a() {
        try {
            SystemClock.sleep(10000L);
            if (b() && com.iflytek.idata.extension.d.b.a(this.b)) {
                b bVar = new b();
                bVar.b(Constant.DEFAULT_SECURITY_VERIFY_TIMEOUT);
                bVar.a(1);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("appid", IFlyCollectorExt.getInstance(this.b).getAppId());
                jSONObject.put("ver", IFlyCollectorExt.getInstance(this.b).a());
                jSONObject.put("impl", 2);
                jSONObject.put("pkg", this.b.getPackageName());
                bVar.a("https://logconf.iflytek.com/hotupdate", null, jSONObject.toString().getBytes("utf-8"));
                bVar.b(this.f12460a);
            }
        } catch (Throwable unused) {
            com.iflytek.idata.extension.d.a.c("Collector", "exception occur while update");
        }
    }

    /* JADX INFO: renamed from: com.iflytek.idata.extension.a$a, reason: collision with other inner class name */
    class C0244a implements b.a {
        C0244a() {
        }

        @Override // com.iflytek.idata.extension.b.a
        public void a(b bVar, byte[] bArr) {
            if (bArr != null) {
                try {
                    a.this.a(new JSONObject(new String(bArr, "utf-8")));
                } catch (Exception e2) {
                    a(e2);
                }
            }
        }

        @Override // com.iflytek.idata.extension.b.a
        public void a(Exception exc) {
            com.iflytek.idata.extension.d.a.b("Collector", "update error:" + exc);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONObject jSONObject) {
        if ("yes".equalsIgnoreCase(jSONObject.optString("update"))) {
            String strOptString = jSONObject.optString(SocialConstants.PARAM_SEND_MSG);
            if (!TextUtils.isEmpty(strOptString)) {
                a(Base64.decode(strOptString, 0));
            }
        } else {
            com.iflytek.idata.extension.d.a.a("Collector", "no need to update");
        }
        SharedPreferences.Editor editorEdit = com.iflytek.idata.extension.d.b.b(this.b).edit();
        editorEdit.putLong("last_check_time", System.currentTimeMillis());
        editorEdit.apply();
    }

    private void a(byte[] bArr) {
        BufferedOutputStream bufferedOutputStream;
        IFlyCollectorExt iFlyCollectorExt = IFlyCollectorExt.getInstance(this.b);
        iFlyCollectorExt.c();
        File file = new File(iFlyCollectorExt.b(), com.iflytek.idata.extension.d.b.a());
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                bufferedOutputStream = new BufferedOutputStream(fileOutputStream2);
                try {
                    bufferedOutputStream.write(bArr);
                    a(bufferedOutputStream);
                    a(fileOutputStream2);
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    try {
                        th.printStackTrace();
                    } finally {
                        a(bufferedOutputStream);
                        a(fileOutputStream);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedOutputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedOutputStream = null;
        }
    }

    private static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }
}
