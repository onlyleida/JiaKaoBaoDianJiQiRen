package cn.mucang.android.jiakaoyi.framework.tts.i;

import android.os.Environment;
import cn.mucang.android.account.AccountManager;
import cn.mucang.android.core.utils.m;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.framework.utils.SchoolDeviceUtil;
import cn.mucang.android.jiakaoyi.framework.utils.p0;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f3519a = {"aac", "wav", "mp3", "ogg", "rm", "wma"};

    public static File a(int i, File file) {
        String[] strArr = f3519a;
        int length = strArr.length;
        File file2 = null;
        int i2 = 0;
        while (i2 < length) {
            File file3 = new File(file + "/" + i + "." + strArr[i2]);
            if (file3.exists()) {
                return file3;
            }
            i2++;
            file2 = file3;
        }
        return file2;
    }

    public static String b() {
        if (!Environment.getExternalStorageState().equals("mounted")) {
            return null;
        }
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory.exists()) {
            return externalStorageDirectory.getAbsolutePath();
        }
        return null;
    }

    public static File c(String str) {
        return new File(m() + str + ".aac");
    }

    public static File d(String str) {
        return new File(m() + str + ".mp3");
    }

    public static String e() {
        return m() + "pcm/";
    }

    public static File f(String str) {
        return new File(e() + str + ".pcm");
    }

    public static File g() {
        if (AppUtils.k() || SchoolDeviceUtil.f3622a.a()) {
            return new File(n() + DeviceUtils.c() + "/" + p0.b());
        }
        if (AccountManager.h().g() == null || n0.e(AccountManager.h().g().getMucangId())) {
            return null;
        }
        return new File(n() + Math.abs(AccountManager.h().g().getMucangId().hashCode()) + "/" + p0.b());
    }

    public static File h(String str) {
        File fileG = g();
        if (fileG == null) {
            return null;
        }
        if (!m.h(fileG.getAbsolutePath())) {
            m.n(fileG.getAbsolutePath());
        }
        File file = new File(fileG, str);
        if (file.exists()) {
            return file;
        }
        return null;
    }

    public static boolean i(long j, int i) {
        File file = new File(l() + j + "/" + i);
        return file.exists() && file.listFiles().length > 0;
    }

    public static File j(String str) {
        String str2;
        int iLastIndexOf = str.lastIndexOf("/") + 1;
        if (iLastIndexOf < str.length()) {
            String strSubstring = str.substring(iLastIndexOf);
            int iLastIndexOf2 = strSubstring.lastIndexOf(".");
            if (iLastIndexOf2 > 0) {
                str2 = str.hashCode() + strSubstring.substring(iLastIndexOf2);
            } else {
                str2 = str.hashCode() + "";
            }
        } else {
            str2 = str.hashCode() + "";
        }
        return new File(k() + str2);
    }

    public static String k() {
        String str = b() + "/mcJkyVF/online/";
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str;
    }

    public static String l() {
        String str = b() + "/mcJkyVF/" + AppUtils.a() + "/pack/";
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str;
    }

    public static String m() {
        String str = b() + "/mcJkyVF/synth/";
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str;
    }

    public static String n() {
        String str = b() + "/mcJkyVF/" + AppUtils.a() + "/user/";
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str;
    }
}
