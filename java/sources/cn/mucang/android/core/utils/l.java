package cn.mucang.android.core.utils;

import android.bluetooth.BluetoothAdapter;
import android.os.Build;
import android.os.Environment;
import com.mobile.auth.gatewayauth.Constant;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f2655a = -1;
    private static boolean b = false;

    public static boolean a() {
        if (f2655a < 0) {
            String str = Build.PRODUCT;
            int i = (str.contains("sdk") || str.contains("Andy") || str.contains("ttVM_Hdragon") || str.contains("google_sdk") || str.contains("Droid4X") || str.contains("nox") || str.contains("sdk_x86") || str.contains("sdk_google") || str.contains("vbox86p")) ? 1 : 0;
            String str2 = Build.MANUFACTURER;
            if (str2.equals(Constant.VENDOR_UNKNOWN) || str2.equals("Genymotion") || str2.contains("Andy") || str2.contains("MIT") || str2.contains("nox") || str2.contains("TiantianVM")) {
                i++;
            }
            String str3 = Build.BRAND;
            if (str3.equals("generic") || str3.equals("generic_x86") || str3.equals("TTVM") || str3.contains("Andy")) {
                i++;
            }
            String str4 = Build.DEVICE;
            if (str4.contains("generic") || str4.contains("generic_x86") || str4.contains("Andy") || str4.contains("ttVM_Hdragon") || str4.contains("Droid4X") || str4.contains("nox") || str4.contains("generic_x86_64") || str4.contains("vbox86p")) {
                i++;
            }
            String str5 = Build.MODEL;
            if (str5.equals("sdk") || str5.equals("google_sdk") || str5.contains("Droid4X") || str5.contains("TiantianVM") || str5.contains("Andy") || str5.equals("Android SDK built for x86_64") || str5.equals("Android SDK built for x86")) {
                i++;
            }
            String str6 = Build.HARDWARE;
            if (str6.equals("goldfish") || str6.equals("vbox86") || str6.contains("nox") || str6.contains("ttVM_x86")) {
                i++;
            }
            String str7 = Build.FINGERPRINT;
            if (str7.contains("generic/sdk/generic") || str7.contains("generic_x86/sdk_x86/generic_x86") || str7.contains("Andy") || str7.contains("ttVM_Hdragon") || str7.contains("generic_x86_64") || str7.contains("generic/google_sdk/generic") || str7.contains("vbox86p") || str7.contains("generic/vbox86p/vbox86p")) {
                i++;
            }
            if ((!b) & z.a("android.permission.READ_EXTERNAL_STORAGE")) {
                try {
                    if (new File(Environment.getExternalStorageDirectory().toString() + File.separatorChar + "windows" + File.separatorChar + "BstSharedFolder").exists()) {
                        i += 10;
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                b = true;
            }
            if (!c()) {
                i += 4;
            }
            if (b()) {
                i += 4;
            }
            f2655a = i;
        }
        return f2655a > 3;
    }

    private static boolean b() {
        try {
            return Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class).invoke(null, "ro.kernel.qemu").equals("1");
        } catch (Exception e2) {
            t.e("core", "systemProperties", e2);
            return false;
        }
    }

    private static boolean c() {
        return BluetoothAdapter.getDefaultAdapter() != null;
    }
}
