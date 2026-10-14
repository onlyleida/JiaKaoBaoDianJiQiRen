package com.iflytek.cloud;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Process;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.alivc.live.pusher.logreport.core.AliLiveInfoUtils;
import com.iflytek.cloud.a.f.d;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.idata.extension.IFlyCollectorExt;
import com.iflytek.msc.MSC;
import com.iflytek.msc.MSCSessionInfo;
import com.iflytek.speech.SpeechComponent;
import com.iflytek.speech.UtilityConfig;
import com.tencent.bugly.Bugly;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class SpeechUtility extends d {
    public static final d.a DEF_ENGINE_MODE = d.a.MSC;
    public static final String TAG_RESOURCE_CONTENT = "tag_rescontent";
    public static final String TAG_RESOURCE_RESULT = "result";
    public static final String TAG_RESOURCE_RET = "ret";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static SpeechUtility f12141a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f12142d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a f12144f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected d.a f12145g;
    private ArrayList<SpeechComponent> b = new ArrayList<>();
    private int c = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f12143e = false;

    private class a extends BroadcastReceiver {
    }

    class b extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f12146a = "";
        Context b;

        b() {
        }

        public void a(String str) {
            this.f12146a = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            IFlyCollectorExt iFlyCollectorExt = IFlyCollectorExt.getInstance(this.b.getApplicationContext());
            iFlyCollectorExt.setAppId("5d2386c983");
            iFlyCollectorExt.setSubId(this.f12146a);
        }

        public void a(Context context) {
            this.b = context;
        }
    }

    private SpeechUtility(Context context, String str) throws SpeechError {
        this.f12142d = null;
        this.f12145g = DEF_ENGINE_MODE;
        this.f12142d = context.getApplicationContext();
        super.setParameter(SpeechConstant.PARAMS, str);
        MSC.loadLibrary(this.mSessionParams.a(SpeechConstant.LIB_NAME, SpeechConstant.MODE_MSC));
        DebugLog.updateJniLogStatus();
        setParameter(SpeechConstant.PARAMS, str);
        this.f12145g = d.a.MSC;
        int iD = d();
        if (iD != 0) {
            throw new SpeechError(iD);
        }
        b();
        String parameter = getParameter("appid");
        try {
            String parameter2 = getParameter("enable_sunflower");
            if (TextUtils.isEmpty(parameter2) || !parameter2.equals(Bugly.SDK_IS_DEV)) {
                b bVar = new b();
                bVar.a(parameter);
                bVar.a(context.getApplicationContext());
                bVar.start();
            }
        } catch (Exception unused) {
            DebugLog.LogW("userLog creating failed");
        }
        String parameter3 = getParameter("lxy_tp_dc");
        if (!TextUtils.isEmpty(parameter3)) {
            Bugly.SDK_IS_DEV.equals(parameter3);
        }
        DebugLog.LogD("DC init enable=" + parameter3);
    }

    private void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        PackageManager packageManager = this.f12142d.getPackageManager();
        Intent intent = new Intent(str);
        intent.setPackage(UtilityConfig.COMPONENT_PKG);
        List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 224);
        if (listQueryIntentServices == null || listQueryIntentServices.size() <= 0) {
            return;
        }
        for (ResolveInfo resolveInfo : listQueryIntentServices) {
            SpeechComponent speechComponentC = c(resolveInfo.serviceInfo.packageName);
            if (speechComponentC != null) {
                try {
                    for (String str2 : resolveInfo.serviceInfo.metaData.getString(UtilityConfig.METADATA_KEY_ENGINE_TYPE).split(",")) {
                        speechComponentC.addEngine(str2);
                    }
                } catch (Exception e2) {
                    DebugLog.LogE(e2);
                }
            }
        }
    }

    private void b() {
        if (checkServiceInstalled()) {
            a(UtilityConfig.ACTION_SPEECH_RECOGNIZER);
            a(UtilityConfig.ACTION_SPEECH_SYNTHESIZER);
            a(UtilityConfig.ACTION_SPEECH_UNDERSTANDER);
            a(UtilityConfig.ACTION_TEXT_UNDERSTANDER);
            a(UtilityConfig.ACTION_SPEECH_WAKEUP);
        }
    }

    public static synchronized SpeechUtility createUtility(Context context, String str) {
        synchronized (d.sSync) {
            if (f12141a == null) {
                com.iflytek.cloud.b.a aVar = new com.iflytek.cloud.b.a();
                aVar.d(str);
                if (aVar.a(SpeechConstant.FORCE_LOGIN, false) || a(context.getApplicationContext())) {
                    try {
                        f12141a = new SpeechUtility(context, str);
                    } catch (SpeechError e2) {
                        DebugLog.LogE("init failed");
                        DebugLog.LogE(e2);
                    }
                } else {
                    DebugLog.LogE("init failed, please call this method in your main process!");
                    f12141a = null;
                }
            }
        }
        return f12141a;
    }

    private int d() {
        if (!MSC.isLoaded()) {
            return 21002;
        }
        DebugLog.LogD("SpeechUtility start login");
        SpeechError speechErrorA = new com.iflytek.cloud.a.g.b(this.f12142d, this.mSessionParams).a(this.mSessionParams.a("usr"), this.mSessionParams.a("pwd"));
        if (speechErrorA == null) {
            return 0;
        }
        return speechErrorA.getErrorCode();
    }

    private boolean e() {
        if (MSC.isLoaded()) {
            return com.iflytek.cloud.a.g.a.a();
        }
        return true;
    }

    public static synchronized SpeechUtility getUtility() {
        return f12141a;
    }

    protected boolean c() {
        try {
            return this.f12142d.getPackageManager().getPackageInfo(UtilityConfig.COMPONENT_PKG, 0) != null;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public boolean checkServiceInstalled() {
        boolean z = false;
        int i = -1;
        try {
            PackageInfo packageInfo = this.f12142d.getPackageManager().getPackageInfo(UtilityConfig.COMPONENT_PKG, 0);
            if (packageInfo != null) {
                z = true;
                i = packageInfo.versionCode;
            }
        } catch (Throwable unused) {
        }
        if (z != this.f12143e || this.c != i) {
            this.f12143e = z;
            this.c = i;
            if (SpeechRecognizer.getRecognizer() != null) {
                SpeechRecognizer.getRecognizer().a(this.f12142d);
            }
            if (SpeechSynthesizer.getSynthesizer() != null) {
                SpeechSynthesizer.getSynthesizer().a(this.f12142d);
            }
            if (SpeechUnderstander.getUnderstander() != null) {
                SpeechUnderstander.getUnderstander().a(this.f12142d);
            }
            if (TextUnderstander.getTextUnderstander() != null) {
                TextUnderstander.getTextUnderstander().a(this.f12142d);
            }
        }
        return z;
    }

    @Override // com.iflytek.cloud.a.f.d
    public boolean destroy() {
        boolean zE;
        if (f12141a != null) {
            super.destroy();
            zE = e();
        } else {
            zE = true;
        }
        if (zE) {
            a aVar = this.f12144f;
            if (aVar != null) {
                this.f12142d.unregisterReceiver(aVar);
            }
            DebugLog.LogD("SpeechUtility destory success");
            synchronized (d.sSync) {
                f12141a = null;
            }
        }
        return zE;
    }

    public String getComponentUrl() {
        StringBuffer stringBuffer = new StringBuffer(UtilityConfig.COMPONENT_URL);
        UtilityConfig.appendHttpParam(stringBuffer, "key", URLEncoder.encode(Base64.encodeToString(UtilityConfig.getComponentUrlParam(this.f12142d).getBytes(), 0)));
        UtilityConfig.appendHttpParam(stringBuffer, "version", AliLiveInfoUtils.ALIVC_CONAN_VERSION);
        return stringBuffer.toString();
    }

    public d.a getEngineMode() {
        return this.f12145g;
    }

    @Override // com.iflytek.cloud.a.f.d
    public String getParameter(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (this.mSessionParams.b(str)) {
            return super.getParameter(str);
        }
        if (!MSC.isLoaded()) {
            return null;
        }
        try {
            if (str.equals("ver_msc") || str.equals("ver_asr") || str.equals("ver_tts") || str.equals("ver_ivw")) {
                byte[] bytes = str.getBytes("utf-8");
                MSCSessionInfo mSCSessionInfo = new MSCSessionInfo();
                String str2 = new String(MSC.QMSPGetVersion(bytes, mSCSessionInfo), "utf-8");
                if (mSCSessionInfo.errorcode == 0) {
                    return str2;
                }
            } else {
                byte[] bytes2 = str.getBytes("utf-8");
                MSCSessionInfo mSCSessionInfo2 = new MSCSessionInfo();
                if (MSC.QMSPGetParam(bytes2, mSCSessionInfo2) == 0) {
                    return new String(mSCSessionInfo2.buffer, "utf-8");
                }
            }
        } catch (Exception e2) {
            DebugLog.LogS(e2);
        } catch (UnsatisfiedLinkError e3) {
            DebugLog.LogS(e3);
        }
        return null;
    }

    public String getPlusLocalInfo(String str) throws JSONException {
        String string;
        JSONObject jSONObject = new JSONObject();
        if (!checkServiceInstalled()) {
            jSONObject.put(TAG_RESOURCE_RET, 21001);
            return jSONObject.toString();
        }
        if (getServiceVersion() < 97) {
            jSONObject.put(TAG_RESOURCE_RET, ErrorCode.ERROR_VERSION_LOWER);
            return jSONObject.toString();
        }
        if (10000 <= getServiceVersion() && getServiceVersion() <= 11000) {
            jSONObject.put(TAG_RESOURCE_RET, ErrorCode.ERROR_SYSTEM_PREINSTALL);
            return jSONObject.toString();
        }
        Cursor cursorQuery = this.f12142d.getContentResolver().query(Uri.parse("content://com.iflytek.vflynote.providers.LocalResourceProvider"), null, str, null, null);
        int columnIndex = cursorQuery.getColumnIndex(TAG_RESOURCE_CONTENT);
        if (cursorQuery.moveToFirst()) {
            string = cursorQuery.getString(columnIndex);
            Log.v("SpeechUtility", string);
        } else {
            string = "";
        }
        cursorQuery.close();
        if (TextUtils.isEmpty(string)) {
            jSONObject.put(TAG_RESOURCE_RET, ErrorCode.ERROR_INVALID_RESULT);
            return jSONObject.toString();
        }
        jSONObject.put(TAG_RESOURCE_RET, 0);
        jSONObject.put(TAG_RESOURCE_RESULT, new JSONObject(string));
        return jSONObject.toString();
    }

    public int getServiceVersion() {
        if (this.c < 0) {
            try {
                PackageInfo packageInfo = this.f12142d.getPackageManager().getPackageInfo(UtilityConfig.COMPONENT_PKG, 0);
                if (packageInfo != null) {
                    this.c = packageInfo.versionCode;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return this.c;
    }

    public int openEngineSettings(String str) {
        String str2 = UtilityConfig.COMPONENT_PKG;
        try {
            Intent intent = new Intent();
            intent.setPackage(UtilityConfig.COMPONENT_PKG);
            if ("tts".equals(str) && b(UtilityConfig.SETTINGS_ACTION_TTS)) {
                str2 = UtilityConfig.SETTINGS_ACTION_TTS;
            } else if ("asr".equals(str) && b(UtilityConfig.SETTINGS_ACTION_ASR)) {
                str2 = UtilityConfig.SETTINGS_ACTION_ASR;
            } else if (b(UtilityConfig.SETTINGS_ACTION_MAIN)) {
                str2 = UtilityConfig.SETTINGS_ACTION_MAIN;
            }
            intent.setAction(str2);
            intent.addFlags(268435456);
            this.f12142d.startActivity(intent);
            return 0;
        } catch (Exception e2) {
            DebugLog.LogE(e2);
            return 21002;
        }
    }

    public String[] queryAvailableEngines() {
        this.b.clear();
        b();
        ArrayList arrayList = new ArrayList();
        Iterator<SpeechComponent> it = this.b.iterator();
        while (it.hasNext()) {
            arrayList.addAll(it.next().getEngines());
        }
        String[] strArr = new String[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            strArr[i] = (String) arrayList.get(i);
        }
        return strArr;
    }

    @Override // com.iflytek.cloud.a.f.d
    public boolean setParameter(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        super.setParameter(str, str2);
        if (!MSC.isLoaded() || SpeechConstant.PARAMS.equals(str)) {
            return true;
        }
        try {
            return MSC.QMSPSetParam(str.getBytes("utf-8"), str2.getBytes("utf-8")) == 0;
        } catch (Exception e2) {
            DebugLog.LogE(e2);
            return false;
        } catch (UnsatisfiedLinkError e3) {
            DebugLog.LogE(e3);
            return false;
        }
    }

    private SpeechComponent c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        boolean z = false;
        Iterator<SpeechComponent> it = this.b.iterator();
        while (it.hasNext()) {
            if (str.equals(it.next().getPackageName())) {
                z = true;
                break;
            }
        }
        if (z) {
            return null;
        }
        SpeechComponent speechComponent = new SpeechComponent(str);
        this.b.add(speechComponent);
        return speechComponent;
    }

    private boolean b(String str) {
        PackageManager packageManager = this.f12142d.getPackageManager();
        Intent intent = new Intent(str);
        intent.setPackage(UtilityConfig.COMPONENT_PKG);
        return packageManager.queryIntentActivities(intent, 1).size() > 0;
    }

    private static boolean a(Context context) {
        try {
            int iMyPid = Process.myPid();
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager != null) {
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
                    if (runningAppProcessInfo.pid == iMyPid) {
                        DebugLog.LogD("process name:" + runningAppProcessInfo.processName);
                        if (context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).packageName.equals(runningAppProcessInfo.processName)) {
                            DebugLog.LogD("process name:" + runningAppProcessInfo.processName + "is own process");
                            return true;
                        }
                    }
                }
            }
        } catch (Exception e2) {
            DebugLog.LogE(e2);
        }
        return false;
    }
}
