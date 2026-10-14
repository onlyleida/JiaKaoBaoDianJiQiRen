package com.iflytek.cloud.msc.util;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.webkit.WebView;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.mobile.auth.gatewayauth.Constant;
import java.lang.reflect.Field;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String[][] f12350a = {new String[]{"=", ":"}, new String[]{",", "_"}};
    public static String[][] b = {new String[]{"os.manufact", Build.MANUFACTURER}, new String[]{"os.model", Build.MODEL}, new String[]{"os.product", Build.PRODUCT}, new String[]{"os.display", Build.DISPLAY}, new String[]{"os.host", Build.HOST}, new String[]{"os.id", Build.ID}, new String[]{"os.device", Build.DEVICE}, new String[]{"os.board", Build.BOARD}, new String[]{"os.brand", Build.BRAND}, new String[]{"os.user", Build.USER}, new String[]{"os.type", Build.TYPE}};
    private static String[][] c = {new String[]{"os.cpu", "CPU_ABI"}, new String[]{"os.cpu2", "CPU_ABI2"}, new String[]{"os.serial", "SERIAL"}, new String[]{"os.hardware", "HARDWARE"}, new String[]{"os.bootloader", "BOOTLOADER"}, new String[]{"os.radio", "RADIO"}};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static com.iflytek.cloud.b.a f12351d = new com.iflytek.cloud.b.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f12352e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f12353f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static String f12354g = null;

    /* JADX INFO: renamed from: com.iflytek.cloud.msc.util.a$a, reason: collision with other inner class name */
    class C0241a implements Handler.Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f12355a;

        C0241a(Context context) {
            this.f12355a = context;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            String unused = a.f12353f = new WebView(this.f12355a).getSettings().getUserAgentString();
            DebugLog.LogS("user agent: " + a.f12353f);
            return false;
        }
    }

    public static synchronized com.iflytek.cloud.b.a b(Context context) {
        if (f12352e) {
            return f12351d;
        }
        g(context);
        return f12351d;
    }

    private static String c(String str) {
        try {
            Field field = Build.class.getField(str);
            if (field != null) {
                return field.get(new Build()).toString();
            }
        } catch (Exception unused) {
        }
        return Constant.VENDOR_UNKNOWN;
    }

    public static String d(Context context) {
        try {
            String networkOperatorName = ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
            return !TextUtils.isEmpty(networkOperatorName) ? networkOperatorName : "";
        } catch (Throwable unused) {
        }
    }

    public static String e(Context context) {
        if (TextUtils.isEmpty(f12354g)) {
            try {
                int i = context.getResources().getConfiguration().screenLayout & 15;
                if (i >= 3) {
                    f12354g = "tablet";
                } else if (i >= 1) {
                    f12354g = "handset";
                } else {
                    f12354g = "unknow";
                }
            } catch (Throwable th) {
                DebugLog.LogE(th);
            }
        }
        DebugLog.LogS("get device type: " + f12354g);
        return f12354g;
    }

    public static com.iflytek.cloud.b.a f(Context context) {
        com.iflytek.cloud.b.a aVarB = b(context);
        com.iflytek.cloud.b.a aVar = new com.iflytek.cloud.b.a();
        aVar.a(aVarB, "app.name");
        aVar.a(aVarB, "app.path");
        aVar.a(aVarB, "app.pkg");
        aVar.a(aVarB, "app.ver.name");
        aVar.a(aVarB, "app.ver.code");
        aVar.a(aVarB, "os.system");
        aVar.a(aVarB, "os.resolution");
        aVar.a(aVarB, "os.density");
        aVar.a(aVarB, "net.mac");
        aVar.a(aVarB, "os.imei");
        aVar.a(aVarB, "os.imsi");
        aVar.a(aVarB, "os.version");
        aVar.a(aVarB, "os.release");
        aVar.a(aVarB, "os.incremental");
        aVar.a(aVarB, "os.android_id");
        aVar.a(aVarB, "carrier");
        aVar.a(aVarB, b[0][0]);
        aVar.a(aVarB, b[1][0]);
        aVar.a(aVarB, b[2][0]);
        aVar.a(aVarB, b[3][0]);
        return aVar;
    }

    private static void g(Context context) {
        int i;
        int i2;
        try {
            f12351d.a();
            f12351d.b("os.system", "Android");
            a(f12351d, context);
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            f12351d.b("os.resolution", displayMetrics.widthPixels + Marker.ANY_MARKER + displayMetrics.heightPixels);
            f12351d.b("os.density", "" + displayMetrics.density);
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            try {
                try {
                    f12351d.b("os.imei", telephonyManager.getDeviceId());
                    while (true) {
                        String[][] strArr = b;
                        if (i >= strArr.length) {
                            break;
                        }
                        f12351d.b(strArr[i][0], strArr[i][1]);
                        i++;
                    }
                    while (true) {
                        String[][] strArr2 = c;
                        if (i2 >= strArr2.length) {
                            f12351d.b("carrier", d(context));
                            f12351d.d();
                            f12352e = true;
                            return;
                        }
                        f12351d.b(c[i2][0], c(strArr2[i2][1]));
                        i2++;
                    }
                } catch (SecurityException unused) {
                    DebugLog.LogD("Failed to get did Info:SecurityException");
                } catch (Throwable unused2) {
                    DebugLog.LogD("Failed to get did Info:other exception");
                }
                f12351d.b("os.imsi", telephonyManager.getSubscriberId());
            } catch (SecurityException unused3) {
                DebugLog.LogD("Failed to get sbid Info:SecurityException");
            } catch (Throwable unused4) {
                DebugLog.LogD("Failed to get sbid Info:other exception");
            }
            String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
            if (!TextUtils.isEmpty(string)) {
                f12351d.b("os.android_id", string);
            }
            f12351d.b("os.version", Build.VERSION.SDK);
            f12351d.b("os.release", Build.VERSION.RELEASE);
            f12351d.b("os.incremental", Build.VERSION.INCREMENTAL);
            i = 0;
            i2 = 0;
        } catch (Exception unused5) {
            DebugLog.LogD("Failed to get prop Info");
            f12352e = false;
        } catch (Throwable unused6) {
            DebugLog.LogD("Failed to get property Info");
            f12352e = false;
        }
    }

    public static void a(com.iflytek.cloud.b.a aVar, Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 0);
            aVar.b("app.ver.name", packageInfo.versionName);
            aVar.b("app.ver.code", "" + packageInfo.versionCode);
            aVar.b("app.pkg", applicationInfo.packageName);
            aVar.b("app.path", applicationInfo.dataDir);
            aVar.b("app.name", applicationInfo.loadLabel(context.getPackageManager()).toString());
        } catch (Exception unused) {
        }
    }

    public static String c(Context context) {
        if (TextUtils.isEmpty(f12353f)) {
            try {
                new Handler(context.getMainLooper(), new C0241a(context)).sendEmptyMessage(1);
            } catch (Throwable th) {
                DebugLog.LogE(th);
            }
        }
        DebugLog.LogS("get user agent: " + f12353f);
        return f12353f;
    }

    public static String b(String str) {
        DebugLog.LogS("check and replace src: " + str);
        if (str != null) {
            int i = 0;
            while (true) {
                String[][] strArr = f12350a;
                if (i >= strArr.length) {
                    break;
                }
                str = str.replace(strArr[i][0], strArr[i][1]);
                i++;
            }
        } else {
            str = null;
        }
        DebugLog.LogS("check and replace result: " + str);
        return str;
    }

    public static String a(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        try {
            int i = Build.VERSION.SDK_INT;
            boolean z = context.getPackageManager().checkPermission("android.permission.GET_TASKS", context.getPackageName()) == 0;
            if (i < 23 && z) {
                try {
                    return activityManager.getRunningTasks(1).get(0).topActivity.getClassName();
                } catch (Exception unused) {
                }
            }
            return "";
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }
}
