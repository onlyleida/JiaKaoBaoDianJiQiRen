package org.extra.tools;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.alibaba.fastjson.support.spring.FastJsonJsonView;
import com.google.common.net.HttpHeaders;
import com.iflytek.cloud.SpeechUtility;
import com.tencent.connect.common.Constants;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONObject;
import org.libpag.PAG;

/* JADX INFO: loaded from: classes6.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicReference<a> f16230a = new AtomicReference<>(a.Unreported);

    private enum a {
        Unreported,
        Reporting,
        Reported
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.f();
        }
    }

    private static boolean b(String str, String str2, String str3, String str4) {
        boolean z = false;
        try {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL("https://otheve.beacon.qq.com/analytics/v2_upload").openConnection();
            httpsURLConnection.setConnectTimeout(2000);
            httpsURLConnection.setReadTimeout(5000);
            httpsURLConnection.setDoOutput(true);
            httpsURLConnection.setRequestMethod(Constants.HTTP_POST);
            httpsURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, FastJsonJsonView.DEFAULT_CONTENT_TYPE);
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(httpsURLConnection.getOutputStream(), "UTF-8");
            BufferedWriter bufferedWriter = new BufferedWriter(outputStreamWriter);
            bufferedWriter.write(c(str, str2, str3, str4));
            bufferedWriter.flush();
            bufferedWriter.close();
            outputStreamWriter.close();
            httpsURLConnection.connect();
            if (httpsURLConnection.getResponseCode() == 200) {
                StringBuilder sb = new StringBuilder();
                InputStreamReader inputStreamReader = new InputStreamReader(httpsURLConnection.getInputStream(), "UTF-8");
                BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    sb.append(line);
                }
                bufferedReader.close();
                inputStreamReader.close();
                if (new JSONObject(sb.toString()).optInt(SpeechUtility.TAG_RESOURCE_RESULT) == 200) {
                    z = true;
                }
            }
            httpsURLConnection.disconnect();
        } catch (Throwable unused) {
        }
        return z;
    }

    private static String c(String str, String str2, String str3, String str4) {
        return "{\"appVersion\":\"\",\"sdkId\":\"\",\"sdkVersion\":\"" + str + "\",\"mainAppKey\":\"0DOU0K0WD05SLYU3\",\"platformId\":\"\",\"common\":{\"A2\":\"pag_sdk_report\"},\"events\":[{\"eventCode\":\"pag_sdk_report\",\"eventTime\":\"" + System.currentTimeMillis() + "\",\"mapValue\":{\"appName\":\"" + str2 + "\",\"appID\":\"" + str3 + "\",\"appPlatform\":\"Android\",\"previousSDKVersion\":\"" + str4 + "\"}}]}";
    }

    public static void d() {
        ThreadPoolExecutor threadPoolExecutor;
        Throwable th;
        AtomicReference<a> atomicReference = f16230a;
        if (atomicReference.get() != a.Unreported) {
            return;
        }
        atomicReference.set(a.Reporting);
        try {
            threadPoolExecutor = new ThreadPoolExecutor(2, 4, 1L, TimeUnit.SECONDS, new ArrayBlockingQueue(2));
            try {
                threadPoolExecutor.execute(new b());
                threadPoolExecutor.shutdown();
            } catch (Throwable th2) {
                th = th2;
                try {
                    th.printStackTrace();
                } finally {
                    threadPoolExecutor.shutdown();
                }
            }
        } catch (Throwable th3) {
            threadPoolExecutor = null;
            th = th3;
        }
    }

    private static String e() {
        return new SimpleDateFormat("yyyy-MM").format(new Date());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f() {
        Context contextA = ContextProvider.a();
        if (contextA == null) {
            f16230a.set(a.Unreported);
            return;
        }
        String strSDKVersion = PAG.SDKVersion();
        if (TextUtils.isEmpty(strSDKVersion)) {
            f16230a.set(a.Unreported);
            return;
        }
        SharedPreferences sharedPreferences = contextA.getSharedPreferences("pag_reporter", 0);
        String string = "";
        String string2 = sharedPreferences.getString("last_pag_version", "");
        String string3 = sharedPreferences.getString("pag_report_time", "");
        String strE = e();
        if (strSDKVersion.equals(string2) && strE.equals(string3)) {
            f16230a.set(a.Reported);
            return;
        }
        String packageName = contextA.getPackageName();
        if (TextUtils.isEmpty(packageName)) {
            f16230a.set(a.Unreported);
            return;
        }
        PackageManager packageManager = contextA.getPackageManager();
        try {
            string = packageManager.getPackageInfo(packageName, 0).applicationInfo.loadLabel(packageManager).toString();
        } catch (Throwable unused) {
        }
        if (packageManager.checkPermission("android.permission.INTERNET", packageName) != 0) {
            f16230a.set(a.Unreported);
        } else {
            if (!b(strSDKVersion, string, packageName, string2)) {
                f16230a.set(a.Unreported);
                return;
            }
            sharedPreferences.edit().putString("last_pag_version", strSDKVersion).apply();
            sharedPreferences.edit().putString("pag_report_time", strE).apply();
            f16230a.set(a.Reported);
        }
    }
}
