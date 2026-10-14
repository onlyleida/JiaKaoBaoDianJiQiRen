package com.iflytek.cloud.b;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.alivc.live.pusher.logreport.core.AliLiveInfoUtils;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.Setting;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SpeechUtility;
import com.iflytek.cloud.Version;
import com.iflytek.cloud.msc.util.FileUtil;
import com.iflytek.cloud.msc.util.j;
import com.iflytek.cloud.msc.util.k;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.mobile.auth.BuildConfig;
import com.tencent.bugly.Bugly;
import com.tencent.connect.common.Constants;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes4.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f12295a = "xiaoyan";
    private static String b;

    public static String a(Context context, com.iflytek.cloud.a.f.a aVar) throws SpeechError {
        if (context == null) {
            throw new SpeechError(ErrorCode.ERROR_INVALID_PARAM);
        }
        a aVarClone = aVar.getParam().clone();
        b = aVarClone.a(SpeechConstant.NET_TYPE, b);
        b(context, aVarClone);
        aVarClone.a("timeout", "20000", false);
        aVarClone.a("auth", "1", false);
        aVarClone.b("msc.ver", Version.getVersion());
        aVarClone.a("mac", com.iflytek.cloud.msc.util.a.b(context).a("net.mac"), false);
        aVarClone.a("dvc", a(context), false);
        aVarClone.b("unique_id", k.d(context));
        aVarClone.a(com.iflytek.cloud.msc.util.a.f(context));
        a(aVarClone);
        aVarClone.a(b.c);
        return aVarClone.toString();
    }

    public static void b(Context context, a aVar) {
        if (TextUtils.isEmpty(aVar.a(SpeechConstant.NET_TYPE)) && !TextUtils.isEmpty(b)) {
            aVar.a(SpeechConstant.NET_TYPE, b, false);
            return;
        }
        if (context == null) {
            aVar.a(SpeechConstant.NET_TYPE, "none", false);
            return;
        }
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                aVar.a(SpeechConstant.NET_TYPE, "none", false);
            } else {
                aVar.a(SpeechConstant.NET_TYPE, j.b(activeNetworkInfo), false);
                aVar.a("net_subtype", a.g(j.a(activeNetworkInfo)), false);
            }
        } catch (SecurityException e2) {
            DebugLog.LogI("appendNetProxyParam exceptoin: " + e2.getLocalizedMessage());
        } catch (Throwable th) {
            DebugLog.LogE(th);
        }
    }

    public static String c(Context context, String str, com.iflytek.cloud.a.f.a aVar) {
        if (str.equals("oneshot")) {
            return a(context, aVar.getParam().a(SpeechConstant.CLOUD_GRAMMAR), aVar);
        }
        a aVarClone = aVar.getParam().clone();
        int iA = aVarClone.a(SpeechConstant.IVW_NET_MODE, 0);
        if (iA == 0) {
            aVarClone.a(SpeechConstant.IVW_NET_MODE, "0", true);
        } else if (2 == iA || 1 == iA || j.b(context)) {
            aVarClone.a(SpeechConstant.IVW_NET_MODE, "1", true);
        } else {
            aVarClone.a(SpeechConstant.IVW_NET_MODE, "0", true);
        }
        aVarClone.a(b.c);
        return aVarClone.toString();
    }

    public static String d(Context context, a aVar) {
        a aVarClone = aVar.clone();
        a(context, aVarClone);
        SpeechUtility utility = SpeechUtility.getUtility();
        if (utility != null) {
            aVarClone.b("appid", utility.getParameter("appid"));
        }
        aVarClone.a(com.iflytek.cloud.msc.util.a.f(context));
        aVarClone.a("dvc", a(context), false);
        aVarClone.a(SpeechConstant.AUDIO_FORMAT_AUE, "raw", false);
        aVarClone.a(b.c);
        return aVarClone.toString();
    }

    public static String e(Context context, com.iflytek.cloud.a.f.a aVar) {
        a aVarClone = aVar.getParam().clone();
        b(context, aVarClone);
        a(context, aVarClone);
        aVarClone.a("ssm", "1", false);
        int sampleRate = aVar.getSampleRate();
        aVarClone.b("auf=audio/L16;rate", Integer.toString(sampleRate));
        if (sampleRate == 16000) {
            aVarClone.a(SpeechConstant.AUDIO_FORMAT_AUE, "speex-wb", false);
        } else {
            aVarClone.a(SpeechConstant.AUDIO_FORMAT_AUE, "speex", false);
        }
        aVarClone.a(SpeechConstant.VOICE_NAME, aVarClone.a(SpeechConstant.VOICE_NAME, f12295a), true);
        aVarClone.a(SpeechConstant.TEXT_ENCODING, aVar.getTextEncoding(), false);
        b(aVarClone);
        aVarClone.a(b.c);
        return aVarClone.toString();
    }

    public static String d(Context context, String str, com.iflytek.cloud.a.f.a aVar) {
        a aVarClone = aVar.getParam().clone();
        b(context, aVarClone);
        aVarClone.a("sub", "mfv", false);
        aVarClone.a("prot_ver", "50", false);
        aVarClone.a("mver", AliLiveInfoUtils.ALIVC_CONAN_VERSION, false);
        if ("verify".equals(aVarClone.a("sst"))) {
            aVarClone.a("scene_mode", "vfy", false);
        } else {
            aVarClone.a("scene_mode", "gen", false);
        }
        aVarClone.a(b.c);
        return aVarClone.toString();
    }

    public static String c(Context context, com.iflytek.cloud.a.f.a aVar) {
        a aVarClone = aVar.getParam().clone();
        b(context, aVarClone);
        aVarClone.b(SpeechConstant.RESULT_TYPE, "json");
        aVarClone.b("rse", aVar.getResultEncoding());
        aVarClone.b(SpeechConstant.TEXT_ENCODING, aVar.getTextEncoding());
        aVarClone.a("ssm", "1", false);
        aVarClone.a(SpeechConstant.SUBJECT, SpeechConstant.ENG_IVP, false);
        int sampleRate = aVar.getSampleRate();
        aVarClone.a("auf=audio/L16;rate", Integer.toString(sampleRate), false);
        if (sampleRate == 16000) {
            aVarClone.a(SpeechConstant.AUDIO_FORMAT_AUE, "speex-wb;10", false);
        } else {
            aVarClone.a(SpeechConstant.AUDIO_FORMAT_AUE, "speex", false);
        }
        aVarClone.a(SpeechConstant.VAD_BOS, "3000", false);
        aVarClone.a(SpeechConstant.VAD_EOS, "700", false);
        aVarClone.a(b.c);
        return aVarClone.toString();
    }

    public static String b(Context context, String str, com.iflytek.cloud.a.f.a aVar) {
        a param = aVar.getParam();
        b(context, param);
        param.a(SpeechConstant.RESULT_TYPE, "json", false);
        param.a("rse", "gb2312", false);
        param.a(SpeechConstant.TEXT_ENCODING, aVar.getTextEncoding(), false);
        param.a(SpeechConstant.VAD_ENABLE, Bugly.SDK_IS_DEV, false);
        param.a("ssm", "1", false);
        param.a("sub", "ist", false);
        int sampleRate = aVar.getSampleRate();
        param.a("auf=audio/L16;rate", Integer.toString(sampleRate), false);
        if (sampleRate == 16000) {
            param.a(SpeechConstant.AUDIO_FORMAT_AUE, "speex-wb", false);
        } else {
            param.a(SpeechConstant.AUDIO_FORMAT_AUE, "speex", false);
        }
        return param.toString();
    }

    private static void a(a aVar) {
        if (aVar == null || Setting.getLogLevel() == Setting.LOG_LEVEL.none) {
            return;
        }
        String logPath = Setting.getLogPath();
        if (TextUtils.isEmpty(logPath)) {
            logPath = "/sdcard/msc/msc.log";
        }
        int i = -1;
        if (Setting.getLogLevel() == Setting.LOG_LEVEL.detail) {
            i = 31;
        } else if (Setting.getLogLevel() == Setting.LOG_LEVEL.normal) {
            i = 15;
        } else if (Setting.getLogLevel() == Setting.LOG_LEVEL.low) {
            i = 7;
        }
        FileUtil.makeDir(logPath);
        aVar.b(BuildConfig.FLAVOR_type, logPath);
        aVar.b("lvl", "" + i);
        aVar.a("output", "1", false);
    }

    public static String d(Context context, com.iflytek.cloud.a.f.a aVar) {
        a aVarClone = aVar.getParam().clone();
        b(context, aVarClone);
        a(context, aVarClone);
        aVarClone.a("ssm", "1", false);
        aVarClone.a(SpeechConstant.RESULT_TYPE, "json", false);
        aVarClone.a("rse", aVar.getResultEncoding(), false);
        aVarClone.a(SpeechConstant.TEXT_ENCODING, aVar.getTextEncoding(), false);
        aVarClone.a(b.c);
        return aVarClone.toString();
    }

    public static void a(Context context, a aVar) {
        aVar.b("act_name", com.iflytek.cloud.msc.util.a.a(context));
    }

    public static String b(Context context, com.iflytek.cloud.a.f.a aVar) {
        a aVarClone = aVar.getParam().clone();
        b(context, aVarClone);
        a(context, aVarClone);
        aVarClone.a("ssm", "1", false);
        int sampleRate = aVar.getSampleRate();
        aVarClone.a("auf=audio/L16;rate", Integer.toString(sampleRate), false);
        if (sampleRate == 16000) {
            aVarClone.a(SpeechConstant.AUDIO_FORMAT_AUE, "speex-wb", false);
        } else {
            aVarClone.a(SpeechConstant.AUDIO_FORMAT_AUE, "speex", false);
        }
        aVarClone.a(SpeechConstant.TEXT_ENCODING, aVar.getTextEncoding(), false);
        aVarClone.a("plev", "1", false);
        aVarClone.a(SpeechConstant.ACCENT, "mandarin", false);
        aVarClone.a(SpeechConstant.DOMAIN, "ise", false);
        aVarClone.a(SpeechConstant.SUBJECT, "ise", false);
        aVarClone.a(SpeechConstant.RESULT_TYPE, "xml", false);
        aVarClone.a(SpeechConstant.VAD_BOS, "5000", false);
        aVarClone.a(SpeechConstant.VAD_EOS, "1800", false);
        aVarClone.a("vad_speech_timeout", "2147483647", false);
        aVarClone.a(b.c);
        return aVarClone.toString();
    }

    public static String c(Context context, a aVar) {
        a aVarClone = aVar.clone();
        aVarClone.b("appid", SpeechUtility.getUtility().getParameter("appid"));
        aVarClone.a(com.iflytek.cloud.msc.util.a.f(context));
        aVarClone.a("dvc", a(context), false);
        aVarClone.a(b.c);
        return aVarClone.toString();
    }

    public static String a(Context context, String str, com.iflytek.cloud.a.f.a aVar) {
        a aVarClone = aVar.getParam().clone();
        aVarClone.f(SpeechConstant.CLOUD_GRAMMAR);
        b(context, aVarClone);
        a(context, aVarClone);
        aVarClone.a(SpeechConstant.LANGUAGE, "zh_cn", false);
        aVarClone.a(SpeechConstant.ACCENT, "mandarin", false);
        aVarClone.a(SpeechConstant.RESULT_TYPE, "json", false);
        aVarClone.a("rse", aVar.getResultEncoding(), false);
        aVarClone.a(SpeechConstant.TEXT_ENCODING, aVar.getTextEncoding(), false);
        aVarClone.a("ssm", "1", false);
        aVarClone.a("msc.skin", "0", false);
        if (TextUtils.isEmpty(str)) {
            aVarClone.a(SpeechConstant.SUBJECT, "iat", false);
        } else {
            aVarClone.a(SpeechConstant.SUBJECT, "asr", false);
        }
        int sampleRate = aVar.getSampleRate();
        aVarClone.a("auf=audio/L16;rate", Integer.toString(sampleRate), false);
        if (sampleRate == 16000) {
            aVarClone.a(SpeechConstant.AUDIO_FORMAT_AUE, "speex-wb", false);
        } else {
            aVarClone.a(SpeechConstant.AUDIO_FORMAT_AUE, "speex", false);
        }
        aVarClone.a(SpeechConstant.VAD_BOS, Integer.toString(a(aVar)), false);
        aVarClone.a(SpeechConstant.VAD_EOS, Integer.toString(b(aVar)), false);
        if (aVarClone.a(SpeechConstant.DVC_INFO, false)) {
            b(context, aVarClone);
            aVarClone.a("dvc", a(context), false);
            aVarClone.b("unique_id", k.d(context));
            String strB = com.iflytek.cloud.msc.util.a.b(com.iflytek.cloud.msc.util.a.c(context));
            String strE = com.iflytek.cloud.msc.util.a.e(context);
            aVarClone.a("user_agent", strB, false);
            aVarClone.a("device_type", strE, false);
            aVarClone.a(com.iflytek.cloud.msc.util.a.f(context));
        }
        aVarClone.a(b.c);
        return aVarClone.toString();
    }

    private static void b(a aVar) {
        SpeechUtility utility = SpeechUtility.getUtility();
        if (utility == null) {
            return;
        }
        String parameter = utility.getParameter("ver_tts");
        if (aVar.b("speed_increase")) {
            return;
        }
        int iA = aVar.a(SpeechConstant.SPEED, 50);
        if (iA <= 100) {
            aVar.b(SpeechConstant.SPEED, "" + iA);
            aVar.b("speed_increase", "1");
            return;
        }
        if (100 < iA && iA <= 150 && (TextUtils.isEmpty(parameter) || parameter.contains("5.5."))) {
            aVar.b(SpeechConstant.SPEED, "" + (iA - 50));
            aVar.b("speed_increase", "2");
            return;
        }
        if (100 >= iA || iA > 200) {
            return;
        }
        aVar.b(SpeechConstant.SPEED, "" + (iA - 100));
        aVar.b("speed_increase", Constants.VIA_TO_TYPE_QZONE);
    }

    public static int b(com.iflytek.cloud.a.f.a aVar) {
        if (aVar == null || !aVar.isLongInput()) {
            return 700;
        }
        return Videoio.CAP_GSTREAMER;
    }

    public static String a(Context context) {
        if (context == null) {
            return BuildConfig.COMMON_MODULE_COMMIT_ID;
        }
        a aVarB = com.iflytek.cloud.msc.util.a.b(context);
        String strA = aVarB.a("os.imsi") + "|" + aVarB.a("os.imei");
        if (strA.length() < 10) {
            strA = aVarB.a("net.mac");
        }
        if (TextUtils.isEmpty(strA) || strA.length() <= 0) {
            return null;
        }
        return strA;
    }

    public static String a() {
        return SpeechUtility.getUtility().getParameter("appid");
    }

    public static boolean a(String str) {
        return str != null && (str.contains("sms") || str.contains("iat"));
    }

    public static int a(com.iflytek.cloud.a.f.a aVar) {
        return (aVar == null || !aVar.isLongInput()) ? 4000 : 5000;
    }
}
