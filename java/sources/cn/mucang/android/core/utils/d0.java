package cn.mucang.android.core.utils;

import android.os.Build;
import android.text.TextUtils;
import f.a.a.a.p010s.PrivacyAgreementSetting;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes.dex */
public class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile String f2647a;
    private static volatile String b;

    public static String a() {
        if (!PrivacyAgreementSetting.d()) {
            PrivacyAgreementSetting.c("getVersion");
            return "";
        }
        if (f2647a == null) {
            synchronized (d0.class) {
                if (f2647a == null) {
                    d();
                }
            }
        }
        return f2647a;
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0053: MOVE (r0 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:17:0x0053 */
    public static String b(String str) throws Throwable {
        BufferedReader bufferedReader;
        Closeable closeable;
        Closeable closeable2 = null;
        try {
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop " + str).getInputStream()), 1024);
                try {
                    String line = bufferedReader.readLine();
                    o.a(bufferedReader);
                    return line;
                } catch (Exception e2) {
                    e = e2;
                    t.e("RomUtil", "Unable to read prop " + str, e);
                    o.a(bufferedReader);
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                closeable2 = closeable;
                o.a(closeable2);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            bufferedReader = null;
        } catch (Throwable th2) {
            th = th2;
            o.a(closeable2);
            throw th;
        }
    }

    public static String c() {
        if (!PrivacyAgreementSetting.d()) {
            PrivacyAgreementSetting.c("getVersion");
            return "";
        }
        if (b == null) {
            synchronized (d0.class) {
                if (b == null) {
                    d();
                }
            }
        }
        return b;
    }

    private static void d() {
        if (e("EMUI", "ro.build.version.emui") || e("OPPO", "ro.build.version.opporom") || e("VIVO", "ro.vivo.os.version") || e("SMARTISAN", "ro.smartisan.version")) {
            return;
        }
        if (!TextUtils.isEmpty(b("ro.miui.ui.version.name"))) {
            f2647a = "MIUI";
            b = b("ro.build.version.incremental");
            return;
        }
        String str = Build.DISPLAY;
        if (str.toUpperCase().contains("FLYME")) {
            f2647a = "FLYME";
            b = str;
        } else {
            b = String.valueOf(Build.VERSION.SDK_INT);
            f2647a = Build.MANUFACTURER.toUpperCase();
        }
    }

    private static boolean e(String str, String str2) throws Throwable {
        String strB = b(str2);
        if (TextUtils.isEmpty(strB)) {
            return false;
        }
        f2647a = str;
        b = strB;
        return true;
    }
}
