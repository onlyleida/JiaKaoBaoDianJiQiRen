package cn.mucang.android.download;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Environment;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.m;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import com.google.common.primitives.UnsignedBytes;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes.dex */
public class c {
    public static boolean a(String str) {
        File externalFilesDir;
        if (n0.e(str)) {
            return false;
        }
        String parent = null;
        if (("mounted".equals(Environment.getExternalStorageState()) || !Environment.isExternalStorageRemovable()) && (externalFilesDir = MucangConfig.getContext().getExternalFilesDir(null)) != null) {
            parent = externalFilesDir.getParent();
        }
        return (parent != null && str.startsWith(parent)) || str.startsWith(MucangConfig.getContext().getFilesDir().getParent());
    }

    public static Bitmap b(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            return ((BitmapDrawable) packageManager.getApplicationInfo(context.getPackageName(), 0).loadIcon(packageManager)).getBitmap();
        } catch (Exception e2) {
            t.c("DownloadManager", e2);
            return null;
        }
    }

    public static File c() {
        File file = null;
        try {
            file = new File(MucangConfig.getContext().getExternalFilesDir(null), "download");
        } catch (Exception e2) {
            t.c("Exception", e2);
        }
        return file == null ? new File(MucangConfig.getContext().getFilesDir(), "download") : file;
    }

    public static String d(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf != -1) {
            return str.substring(iLastIndexOf);
        }
        return null;
    }

    public static String e(Context context, String str) {
        try {
            PackageInfo packageArchiveInfo = context.getPackageManager().getPackageArchiveInfo(str, 1);
            if (packageArchiveInfo != null) {
                return packageArchiveInfo.applicationInfo.packageName;
            }
            return null;
        } catch (Exception e2) {
            t.c("DownloadManager", e2);
            return null;
        }
    }

    public static boolean f(String str) {
        int length;
        if (str == null || (length = str.length()) > 10 || str.charAt(0) != '.') {
            return false;
        }
        for (int i = 1; i < length; i++) {
            char cCharAt = str.charAt(i);
            if ((cCharAt < 'a' || cCharAt > 'z') && ((cCharAt < 'A' || cCharAt > 'Z') && (cCharAt < '0' || cCharAt > '9'))) {
                return false;
            }
        }
        return true;
    }

    public static String g(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b : bArrDigest) {
                stringBuffer.append(String.format("%02x", Integer.valueOf(b & UnsignedBytes.MAX_VALUE)));
            }
            return stringBuffer.toString();
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    public static boolean h(Context context, String str, String str2) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(268435456);
            m.o(context, intent, "application/vnd.android.package-archive", new File(str2), false);
            context.startActivity(intent);
            return true;
        } catch (Exception e2) {
            t.c("DownloadManager", e2);
            return false;
        }
    }
}
