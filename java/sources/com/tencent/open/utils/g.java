package com.tencent.open.utils;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import com.tencent.connect.common.Constants;
import com.tencent.open.log.SLog;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Map<String, g> f14156a = Collections.synchronizedMap(new HashMap());
    private static String b = null;
    private Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f14157d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private JSONObject f14158e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f14159f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f14160g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f14161h = true;

    private g(Context context, String str) {
        this.c = null;
        this.f14157d = null;
        this.c = context.getApplicationContext();
        this.f14157d = str;
        a();
        b();
    }

    private void b() {
        if (this.f14160g != 0) {
            d("update thread is running, return");
            return;
        }
        this.f14160g = 1;
        final Bundle bundle = new Bundle();
        bundle.putString("appid", this.f14157d);
        bundle.putString("appid_for_getting_config", this.f14157d);
        bundle.putString("status_os", Build.VERSION.RELEASE);
        bundle.putString("status_machine", Build.MODEL);
        bundle.putString("status_version", Build.VERSION.SDK);
        bundle.putString("sdkv", Constants.SDK_VERSION);
        bundle.putString("sdkp", "a");
        new Thread() { // from class: com.tencent.open.utils.g.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    g.this.a(l.d(HttpUtils.openUrl2(g.this.c, "https://cgi.connect.qq.com/qqconnectopen/openapi/policy_conf", Constants.HTTP_GET, bundle).f14174a));
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                g.this.f14160g = 0;
            }
        }.start();
    }

    private String c(String str) {
        InputStream inputStreamOpen;
        BufferedReader bufferedReader;
        StringBuffer stringBuffer;
        String str2;
        String string = "";
        try {
            try {
                if (this.f14157d != null) {
                    str2 = str + "." + this.f14157d;
                } else {
                    str2 = str;
                }
                inputStreamOpen = this.c.openFileInput(str2);
                while (true) {
                    try {
                        try {
                            try {
                                String line = bufferedReader.readLine();
                                if (line == null) {
                                    break;
                                }
                                stringBuffer.append(line);
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        } catch (IOException e3) {
                            e3.printStackTrace();
                            inputStreamOpen.close();
                            bufferedReader.close();
                        }
                    } catch (Throwable th) {
                        try {
                            inputStreamOpen.close();
                            bufferedReader.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                        throw th;
                    }
                }
            } catch (IOException e5) {
                e5.printStackTrace();
                return "";
            }
        } catch (FileNotFoundException unused) {
            inputStreamOpen = this.c.getAssets().open(str);
        }
        bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpen, Charset.forName("UTF-8")));
        stringBuffer = new StringBuffer();
        string = stringBuffer.toString();
        inputStreamOpen.close();
        bufferedReader.close();
        return string;
    }

    private void d(String str) {
        if (this.f14161h) {
            SLog.v("openSDK_LOG.OpenConfig", str + "; appid: " + this.f14157d);
        }
    }

    public static g a(Context context, String str) {
        g gVar;
        synchronized (f14156a) {
            SLog.v("openSDK_LOG.OpenConfig", "getInstance begin");
            if (str != null) {
                b = str;
            }
            if (str == null && (str = b) == null) {
                str = "0";
            }
            gVar = f14156a.get(str);
            if (gVar == null) {
                gVar = new g(context, str);
                f14156a.put(str, gVar);
            }
            SLog.v("openSDK_LOG.OpenConfig", "getInstance end");
        }
        return gVar;
    }

    private void a() {
        try {
            this.f14158e = new JSONObject(c("com.tencent.open.config.json"));
        } catch (JSONException unused) {
            this.f14158e = new JSONObject();
        }
    }

    public boolean b(String str) {
        d("get " + str);
        c();
        Object objOpt = this.f14158e.opt(str);
        if (objOpt == null) {
            return false;
        }
        if (objOpt instanceof Integer) {
            return !objOpt.equals(0);
        }
        if (objOpt instanceof Boolean) {
            return ((Boolean) objOpt).booleanValue();
        }
        return false;
    }

    private void a(String str, String str2) {
        try {
            if (this.f14157d != null) {
                str = str + "." + this.f14157d;
            }
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(this.c.openFileOutput(str, 0), Charset.forName("UTF-8"));
            outputStreamWriter.write(str2);
            outputStreamWriter.flush();
            outputStreamWriter.close();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    private void c() {
        int iOptInt = this.f14158e.optInt("Common_frequency");
        if (iOptInt == 0) {
            iOptInt = 1;
        }
        if (SystemClock.elapsedRealtime() - this.f14159f >= iOptInt * 3600000) {
            b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONObject jSONObject) {
        d("cgi back, do update");
        this.f14158e = jSONObject;
        a("com.tencent.open.config.json", jSONObject.toString());
        this.f14159f = SystemClock.elapsedRealtime();
    }

    public int a(String str) {
        d("get " + str);
        c();
        return this.f14158e.optInt(str);
    }
}
