package androidx.core.a;

import android.accounts.AccountManager;
import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.AppOpsManager;
import android.app.DownloadManager;
import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.app.SearchManager;
import android.app.UiModeManager;
import android.app.WallpaperManager;
import android.app.admin.DevicePolicyManager;
import android.app.job.JobScheduler;
import android.app.usage.UsageStatsManager;
import android.appwidget.AppWidgetManager;
import android.bluetooth.BluetoothManager;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.RestrictionsManager;
import android.content.pm.LauncherApps;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.hardware.ConsumerIrManager;
import android.hardware.SensorManager;
import android.hardware.camera2.CameraManager;
import android.hardware.display.DisplayManager;
import android.hardware.input.InputManager;
import android.hardware.usb.UsbManager;
import android.location.LocationManager;
import android.media.AudioManager;
import android.media.MediaRouter;
import android.media.projection.MediaProjectionManager;
import android.media.session.MediaSessionManager;
import android.media.tv.TvInputManager;
import android.net.ConnectivityManager;
import android.net.nsd.NsdManager;
import android.net.wifi.WifiManager;
import android.net.wifi.p2p.WifiP2pManager;
import android.nfc.NfcManager;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Bundle;
import android.os.DropBoxManager;
import android.os.PowerManager;
import android.os.Process;
import android.os.UserManager;
import android.os.Vibrator;
import android.os.storage.StorageManager;
import android.print.PrintManager;
import android.telecom.TelecomManager;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.CaptioningManager;
import android.view.inputmethod.InputMethodManager;
import android.view.textservice.TextServicesManager;
import com.iflytek.cloud.SpeechConstant;
import java.io.File;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f925a = new Object();
    private static TypedValue b;

    /* JADX INFO: renamed from: androidx.core.a.a$a, reason: collision with other inner class name */
    static class C0020a {
        static void a(Context context, Intent[] intentArr, Bundle bundle) {
            context.startActivities(intentArr, bundle);
        }

        static void b(Context context, Intent intent, Bundle bundle) {
            context.startActivity(intent, bundle);
        }
    }

    static class b {
        static File[] a(Context context) {
            return context.getExternalCacheDirs();
        }

        static File[] b(Context context, String str) {
            return context.getExternalFilesDirs(str);
        }

        static File[] c(Context context) {
            return context.getObbDirs();
        }
    }

    static class c {
        static File a(Context context) {
            return context.getCodeCacheDir();
        }

        static Drawable b(Context context, int i) {
            return context.getDrawable(i);
        }

        static File c(Context context) {
            return context.getNoBackupFilesDir();
        }
    }

    static class d {
        static int a(Context context, int i) {
            return context.getColor(i);
        }

        static ColorStateList b(Context context, int i) {
            return context.getColorStateList(i);
        }

        static <T> T c(Context context, Class<T> cls) {
            return (T) context.getSystemService(cls);
        }

        static String d(Context context, Class<?> cls) {
            return context.getSystemServiceName(cls);
        }
    }

    static class e {
        static Context a(Context context) {
            return context.createDeviceProtectedStorageContext();
        }

        static File b(Context context) {
            return context.getDataDir();
        }

        static boolean c(Context context) {
            return context.isDeviceProtectedStorage();
        }
    }

    private static final class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final HashMap<Class<?>, String> f926a;

        static {
            HashMap<Class<?>, String> map = new HashMap<>();
            f926a = map;
            int i = Build.VERSION.SDK_INT;
            if (i >= 22) {
                map.put(SubscriptionManager.class, "telephony_subscription_service");
                map.put(UsageStatsManager.class, "usagestats");
            }
            if (i >= 21) {
                map.put(AppWidgetManager.class, "appwidget");
                map.put(BatteryManager.class, "batterymanager");
                map.put(CameraManager.class, "camera");
                map.put(JobScheduler.class, "jobscheduler");
                map.put(LauncherApps.class, "launcherapps");
                map.put(MediaProjectionManager.class, "media_projection");
                map.put(MediaSessionManager.class, "media_session");
                map.put(RestrictionsManager.class, "restrictions");
                map.put(TelecomManager.class, "telecom");
                map.put(TvInputManager.class, "tv_input");
            }
            if (i >= 19) {
                map.put(AppOpsManager.class, "appops");
                map.put(CaptioningManager.class, "captioning");
                map.put(ConsumerIrManager.class, "consumer_ir");
                map.put(PrintManager.class, "print");
            }
            if (i >= 18) {
                map.put(BluetoothManager.class, SpeechConstant.BLUETOOTH);
            }
            if (i >= 17) {
                map.put(DisplayManager.class, "display");
                map.put(UserManager.class, "user");
            }
            if (i >= 16) {
                map.put(InputManager.class, "input");
                map.put(MediaRouter.class, "media_router");
                map.put(NsdManager.class, "servicediscovery");
            }
            map.put(AccessibilityManager.class, "accessibility");
            map.put(AccountManager.class, "account");
            map.put(ActivityManager.class, "activity");
            map.put(AlarmManager.class, "alarm");
            map.put(AudioManager.class, "audio");
            map.put(ClipboardManager.class, "clipboard");
            map.put(ConnectivityManager.class, "connectivity");
            map.put(DevicePolicyManager.class, "device_policy");
            map.put(DownloadManager.class, "download");
            map.put(DropBoxManager.class, "dropbox");
            map.put(InputMethodManager.class, "input_method");
            map.put(KeyguardManager.class, "keyguard");
            map.put(LayoutInflater.class, "layout_inflater");
            map.put(LocationManager.class, "location");
            map.put(NfcManager.class, "nfc");
            map.put(NotificationManager.class, "notification");
            map.put(PowerManager.class, "power");
            map.put(SearchManager.class, "search");
            map.put(SensorManager.class, "sensor");
            map.put(StorageManager.class, "storage");
            map.put(TelephonyManager.class, "phone");
            map.put(TextServicesManager.class, "textservices");
            map.put(UiModeManager.class, "uimode");
            map.put(UsbManager.class, "usb");
            map.put(Vibrator.class, "vibrator");
            map.put(WallpaperManager.class, "wallpaper");
            map.put(WifiP2pManager.class, "wifip2p");
            map.put(WifiManager.class, "wifi");
            map.put(WindowManager.class, "window");
        }
    }

    public static int a(Context context, String str) {
        if (str != null) {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        }
        throw new IllegalArgumentException("permission is null");
    }

    public static Context b(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return e.a(context);
        }
        return null;
    }

    public static int c(Context context, int i) {
        return Build.VERSION.SDK_INT >= 23 ? d.a(context, i) : context.getResources().getColor(i);
    }

    public static ColorStateList d(Context context, int i) {
        return androidx.core.a.f.f.c(context.getResources(), i, context.getTheme());
    }

    public static File e(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return e.b(context);
        }
        String str = context.getApplicationInfo().dataDir;
        if (str != null) {
            return new File(str);
        }
        return null;
    }

    public static Drawable f(Context context, int i) {
        int i2;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 21) {
            return c.b(context, i);
        }
        if (i3 >= 16) {
            return context.getResources().getDrawable(i);
        }
        synchronized (f925a) {
            if (b == null) {
                b = new TypedValue();
            }
            context.getResources().getValue(i, b, true);
            i2 = b.resourceId;
        }
        return context.getResources().getDrawable(i2);
    }

    public static File[] g(Context context) {
        return Build.VERSION.SDK_INT >= 19 ? b.a(context) : new File[]{context.getExternalCacheDir()};
    }

    public static File[] h(Context context, String str) {
        return Build.VERSION.SDK_INT >= 19 ? b.b(context, str) : new File[]{context.getExternalFilesDir(str)};
    }

    public static <T> T i(Context context, Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 23) {
            return (T) d.c(context, cls);
        }
        String strJ = j(context, cls);
        if (strJ != null) {
            return (T) context.getSystemService(strJ);
        }
        return null;
    }

    public static String j(Context context, Class<?> cls) {
        return Build.VERSION.SDK_INT >= 23 ? d.d(context, cls) : f.f926a.get(cls);
    }

    public static boolean k(Context context, Intent[] intentArr, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            C0020a.a(context, intentArr, bundle);
            return true;
        }
        context.startActivities(intentArr);
        return true;
    }

    public static void l(Context context, Intent intent, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            C0020a.b(context, intent, bundle);
        } else {
            context.startActivity(intent);
        }
    }
}
