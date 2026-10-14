package com.serenegiant.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.preference.PreferenceManager;
import cn.mucang.android.core.api.verify.ErrorDialogParams;
import com.mobile.auth.gatewayauth.Constant;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class CrashExceptionHandler implements Thread.UncaughtExceptionHandler {
    static final String LOG_NAME = "crashrepo.txt";
    static final String MAIL_TO = "t_saki@serenegiant.com";
    private final Thread.UncaughtExceptionHandler mHandler;
    private final WeakReference<Context> mWeakContext;
    private final WeakReference<PackageInfo> mWeakPackageInfo;

    private CrashExceptionHandler(Context context) {
        this.mWeakContext = new WeakReference<>(context);
        try {
            this.mWeakPackageInfo = new WeakReference<>(context.getPackageManager().getPackageInfo(context.getPackageName(), 0));
            this.mHandler = Thread.getDefaultUncaughtExceptionHandler();
        } catch (PackageManager.NameNotFoundException e2) {
            throw new RuntimeException(e2);
        }
    }

    private JSONObject getBuildInfo() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("BRAND", Build.BRAND);
        jSONObject.put("MODEL", Build.MODEL);
        jSONObject.put("DEVICE", Build.DEVICE);
        jSONObject.put("MANUFACTURER", Build.MANUFACTURER);
        jSONObject.put("VERSION.SDK_INT", Build.VERSION.SDK_INT);
        jSONObject.put("VERSION.RELEASE", Build.VERSION.RELEASE);
        return jSONObject;
    }

    private JSONObject getExceptionInfo(Throwable th) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(Constant.PROTOCOL_WEBVIEW_NAME, th.getClass().getName());
        jSONObject.put("cause", th.getCause());
        jSONObject.put(ErrorDialogParams.EXTRA_MESSAGE, th.getMessage());
        JSONArray jSONArray = new JSONArray();
        for (StackTraceElement stackTraceElement : th.getStackTrace()) {
            jSONArray.put("at " + LogUtils.getMetaInfo(stackTraceElement));
        }
        jSONObject.put("stacktrace", jSONArray);
        return jSONObject;
    }

    private JSONObject getPackageInfo() throws JSONException {
        PackageInfo packageInfo = this.mWeakPackageInfo.get();
        JSONObject jSONObject = new JSONObject();
        if (packageInfo != null) {
            jSONObject.put("packageName", packageInfo.packageName);
            jSONObject.put("versionCode", packageInfo.versionCode);
            jSONObject.put("versionName", packageInfo.versionName);
        }
        return jSONObject;
    }

    private JSONObject getPreferencesInfo() throws JSONException {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.mWeakContext.get());
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, ?> entry : defaultSharedPreferences.getAll().entrySet()) {
            jSONObject.put(entry.getKey(), entry.getValue());
        }
        return jSONObject;
    }

    public static void registerCrashHandler(Context context) {
        Thread.setDefaultUncaughtExceptionHandler(new CrashExceptionHandler(context));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.PrintWriter] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) throws Throwable {
        PrintWriter printWriter;
        Context context = this.mWeakContext.get();
        if (context != null) {
            ?? r1 = 0;
            PrintWriter printWriter2 = null;
            PrintWriter printWriter3 = null;
            try {
                try {
                    PrintWriter printWriter4 = new PrintWriter(context.openFileOutput(LOG_NAME, 0));
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("Build", getBuildInfo());
                        jSONObject.put("PackageInfo", getPackageInfo());
                        jSONObject.put("Exception", getExceptionInfo(th));
                        String str = "SharedPreferences";
                        jSONObject.put("SharedPreferences", getPreferencesInfo());
                        printWriter4.print(jSONObject.toString());
                        printWriter4.flush();
                        printWriter4.close();
                        r1 = str;
                    } catch (FileNotFoundException e2) {
                        e = e2;
                        printWriter2 = printWriter4;
                        e.printStackTrace();
                        r1 = printWriter2;
                        printWriter = printWriter2;
                        if (printWriter2 != null) {
                            printWriter.close();
                            r1 = printWriter;
                        }
                    } catch (JSONException e3) {
                        e = e3;
                        printWriter3 = printWriter4;
                        e.printStackTrace();
                        r1 = printWriter3;
                        if (printWriter3 != null) {
                            printWriter = printWriter3;
                            printWriter.close();
                            r1 = printWriter;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        r1 = printWriter4;
                        if (r1 != 0) {
                            r1.close();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (FileNotFoundException e4) {
                e = e4;
            } catch (JSONException e5) {
                e = e5;
            }
        }
        try {
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.mHandler;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(thread, th);
            }
        } catch (Exception unused) {
        }
    }
}
