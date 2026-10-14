package cn.mucang.android.core.utils;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.StatFs;
import android.support.v4.media.session.PlaybackStateCompat;
import cn.mucang.android.core.api.upload.FileUploadApi;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<String, String> f2657a;

    static {
        HashMap map = new HashMap();
        f2657a = map;
        map.put("gif", FileUploadApi.TYPE_IMAGE_GIF);
        map.put("jpg", "image/jpeg");
        map.put("jpeg", "image/jpeg");
        map.put("png", FileUploadApi.TYPE_IMAGE_PNG);
        map.put("bmp", "image/x-ms-bmp");
    }

    private static boolean a(String str, boolean z) {
        File file = new File(str);
        boolean z2 = false;
        if (!file.exists() || !file.isDirectory()) {
            return false;
        }
        boolean z3 = true;
        for (String str2 : file.list()) {
            String str3 = File.separator;
            String str4 = str.endsWith(str3) ? str + str2 : str + str3 + str2;
            File file2 = new File(str4);
            if (file2.isFile()) {
                z3 = z3 && file2.delete();
            }
            if (file2.isDirectory()) {
                z3 = z3 && g(str4);
            }
        }
        if (!z) {
            return z3;
        }
        if (z3 && file.delete()) {
            z2 = true;
        }
        return z2;
    }

    public static boolean b(String str) {
        return a(str, false);
    }

    public static boolean c(File file, File file2) throws Throwable {
        FileOutputStream fileOutputStream;
        FileChannel channel;
        FileChannel fileChannel;
        if (!file.exists() || !file.isFile() || file2.isDirectory()) {
            return false;
        }
        if (file2.exists()) {
            file2.delete();
        }
        FileInputStream fileInputStream = null;
        channel = null;
        FileChannel channel2 = null;
        fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2);
                try {
                    channel = fileInputStream2.getChannel();
                    try {
                        channel2 = fileOutputStream.getChannel();
                        channel.transferTo(0L, channel.size(), channel2);
                        o.a(fileInputStream2);
                        o.a(channel);
                        o.a(fileOutputStream);
                        o.a(channel2);
                        return true;
                    } catch (IOException e2) {
                        e = e2;
                        fileChannel = channel2;
                        fileInputStream = fileInputStream2;
                        try {
                            t.c("默认替换", e);
                            o.a(fileInputStream);
                            o.a(channel);
                            o.a(fileOutputStream);
                            o.a(fileChannel);
                            return false;
                        } catch (Throwable th) {
                            th = th;
                            o.a(fileInputStream);
                            o.a(channel);
                            o.a(fileOutputStream);
                            o.a(fileChannel);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        fileChannel = channel2;
                        fileInputStream = fileInputStream2;
                        o.a(fileInputStream);
                        o.a(channel);
                        o.a(fileOutputStream);
                        o.a(fileChannel);
                        throw th;
                    }
                } catch (IOException e3) {
                    e = e3;
                    channel = null;
                    fileInputStream = fileInputStream2;
                    fileChannel = channel;
                    t.c("默认替换", e);
                    o.a(fileInputStream);
                    o.a(channel);
                    o.a(fileOutputStream);
                    o.a(fileChannel);
                    return false;
                } catch (Throwable th3) {
                    th = th3;
                    channel = null;
                    fileInputStream = fileInputStream2;
                    fileChannel = channel;
                    o.a(fileInputStream);
                    o.a(channel);
                    o.a(fileOutputStream);
                    o.a(fileChannel);
                    throw th;
                }
            } catch (IOException e4) {
                e = e4;
                fileOutputStream = null;
                channel = null;
            } catch (Throwable th4) {
                th = th4;
                fileOutputStream = null;
                channel = null;
            }
        } catch (IOException e5) {
            e = e5;
            fileOutputStream = null;
            channel = null;
        } catch (Throwable th5) {
            th = th5;
            fileOutputStream = null;
            channel = null;
        }
    }

    public static boolean d(String str, String str2) {
        return c(new File(str), new File(str2));
    }

    public static boolean e(File file) {
        if (file == null || !file.exists() || !file.isDirectory()) {
            return false;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isFile()) {
                    file2.delete();
                } else if (file2.getName() != "." && file2.getName() != "..") {
                    e(file2);
                }
            }
        }
        return file.delete();
    }

    public static boolean f(File file) {
        if (file != null && file.exists() && file.isFile()) {
            return file.delete();
        }
        return false;
    }

    public static boolean g(String str) {
        File file = new File(str);
        if (file.exists()) {
            return file.isFile() ? file.delete() : a(str, true);
        }
        return false;
    }

    public static boolean h(String str) {
        if (n0.e(str)) {
            return false;
        }
        return new File(str).exists();
    }

    public static long i(String str) {
        try {
            if (n0.e(str) || !new File(str).exists()) {
                return 0L;
            }
            StatFs statFs = new StatFs(str);
            return statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong();
        } catch (Exception e2) {
            t.c("默认替换", e2);
            return 0L;
        }
    }

    public static byte[] j(File file) throws Throwable {
        FileInputStream fileInputStream;
        Throwable th;
        ByteArrayOutputStream byteArrayOutputStream;
        if (file == null) {
            return null;
        }
        try {
            fileInputStream = new FileInputStream(file);
            try {
                byteArrayOutputStream = new ByteArrayOutputStream(1024);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i = fileInputStream.read(bArr);
                        if (i == -1) {
                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                            o.a(fileInputStream);
                            o.a(byteArrayOutputStream);
                            return byteArray;
                        }
                        byteArrayOutputStream.write(bArr, 0, i);
                    }
                } catch (IOException unused) {
                    o.a(fileInputStream);
                    o.a(byteArrayOutputStream);
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    o.a(fileInputStream);
                    o.a(byteArrayOutputStream);
                    throw th;
                }
            } catch (IOException unused2) {
                byteArrayOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                byteArrayOutputStream = null;
            }
        } catch (IOException unused3) {
            byteArrayOutputStream = null;
            fileInputStream = null;
        } catch (Throwable th4) {
            fileInputStream = null;
            th = th4;
            byteArrayOutputStream = null;
        }
    }

    public static String k(String str) {
        int iLastIndexOf = str.lastIndexOf(".");
        return (iLastIndexOf < 0 || iLastIndexOf >= str.length() + (-1)) ? "" : str.substring(iLastIndexOf + 1).toUpperCase();
    }

    public static String l(String str) {
        if (str.endsWith("/")) {
            str = str.substring(0, str.length() - 1);
        }
        int iLastIndexOf = str.lastIndexOf("/");
        return (iLastIndexOf <= 0 || iLastIndexOf >= str.length() + (-1)) ? str : str.substring(iLastIndexOf + 1);
    }

    public static String m(long j, int i) {
        if (j < 0) {
            throw new IllegalArgumentException("size cannot be negative value");
        }
        if (j < 1024) {
            return String.format("%dB", Long.valueOf(j));
        }
        if (j < PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            return String.format("%." + i + "fK", Float.valueOf((j * 1.0f) / 1024.0f));
        }
        if (j < 1073741824) {
            return String.format("%." + i + "fM", Float.valueOf((j * 1.0f) / 1048576.0f));
        }
        if (j < 1099511627776L) {
            return String.format("%." + i + "fG", Float.valueOf((j * 1.0f) / 1.0737418E9f));
        }
        if (j < 1125899906842624L) {
            return String.format("%." + i + "fT", Float.valueOf((j * 1.0f) / 1.0995116E12f));
        }
        return String.format("%." + i + "fP", Float.valueOf((j * 1.0f) / 1.1258999E15f));
    }

    public static boolean n(String str) {
        return new File(str).mkdirs();
    }

    public static void o(Context context, Intent intent, String str, File file, boolean z) {
        if (file == null) {
            return;
        }
        try {
            intent.setDataAndType(s(context, file), str);
            if (Build.VERSION.SDK_INT >= 24) {
                intent.addFlags(1);
                if (z) {
                    intent.addFlags(2);
                }
            }
        } catch (Exception e2) {
            t.a("FileUtils", e2.toString());
        }
    }

    public static String p(String str) {
        return q(str, "utf-8");
    }

    public static String q(String str, String str2) throws Throwable {
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(str), str2));
            try {
                String line = bufferedReader2.readLine();
                o.a(bufferedReader2);
                return line;
            } catch (Exception unused) {
                bufferedReader = bufferedReader2;
                o.a(bufferedReader);
                return "";
            } catch (Throwable th) {
                th = th;
                bufferedReader = bufferedReader2;
                o.a(bufferedReader);
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static boolean r(String str, String str2) {
        File file = new File(str);
        File file2 = new File(str2);
        if (file.exists()) {
            return file.renameTo(file2);
        }
        return false;
    }

    public static Uri s(Context context, File file) {
        if (Build.VERSION.SDK_INT < 24) {
            return Uri.fromFile(file);
        }
        return androidx.core.a.b.e(context, context.getPackageName() + ".file.provider", file);
    }
}
