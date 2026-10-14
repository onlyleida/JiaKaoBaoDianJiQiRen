package cn.mucang.android.jiakaoyi.framework.utils;

import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes2.dex */
public class t0 {
    public static boolean a(File file) {
        return file != null && (!file.exists() ? !file.mkdirs() : !file.isDirectory());
    }

    public static boolean b(File file) {
        if (file == null) {
            return false;
        }
        if (file.exists()) {
            return file.isFile();
        }
        if (!a(file.getParentFile())) {
            return false;
        }
        try {
            return file.createNewFile();
        } catch (IOException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static File c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return new File(str);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0051  */
    /* JADX WARN: Code duplicated, block: B:30:0x0056  */
    private static boolean d(File file, List<File> list, ZipFile zipFile, ZipEntry zipEntry, String str) throws Throwable {
        BufferedOutputStream bufferedOutputStream;
        BufferedInputStream bufferedInputStream;
        Throwable th;
        File file2 = new File(file, str);
        list.add(file2);
        if (zipEntry.isDirectory()) {
            return a(file2);
        }
        if (!b(file2)) {
            return false;
        }
        try {
            bufferedInputStream = new BufferedInputStream(zipFile.getInputStream(zipEntry));
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2));
                try {
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int i = bufferedInputStream.read(bArr);
                        if (i == -1) {
                            bufferedInputStream.close();
                            bufferedOutputStream.close();
                            return true;
                        }
                        bufferedOutputStream.write(bArr, 0, i);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (bufferedInputStream != null) {
                        bufferedInputStream.close();
                    }
                    if (bufferedOutputStream != null) {
                        bufferedOutputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                bufferedOutputStream = null;
                th = th;
                if (bufferedInputStream != null) {
                    bufferedInputStream.close();
                }
                if (bufferedOutputStream != null) {
                    bufferedOutputStream.close();
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            bufferedOutputStream = null;
            bufferedInputStream = null;
        }
    }

    public static List<File> e(File file, File file2) throws IOException {
        return g(file, file2, null);
    }

    public static List<File> f(String str, String str2) throws IOException {
        return h(str, str2, null);
    }

    public static List<File> g(File file, File file2, String str) throws IOException {
        if (file == null || file2 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = Build.VERSION.SDK_INT >= 24 ? new ZipFile(file, Charset.forName("GBK")) : new ZipFile(file);
        Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
        try {
            if (TextUtils.isEmpty(str)) {
                while (enumerationEntries.hasMoreElements()) {
                    ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                    String strReplace = zipEntryNextElement.getName().replace("\\", "/");
                    if (strReplace.contains("../")) {
                        Log.e("ZipUtils", "entryName: " + strReplace + " is dangerous!");
                    } else if (!d(file2, arrayList, zipFile, zipEntryNextElement, strReplace)) {
                        zipFile.close();
                        return arrayList;
                    }
                }
            } else {
                while (enumerationEntries.hasMoreElements()) {
                    ZipEntry zipEntryNextElement2 = enumerationEntries.nextElement();
                    String strReplace2 = zipEntryNextElement2.getName().replace("\\", "/");
                    if (strReplace2.contains("../")) {
                        Log.e("ZipUtils", "entryName: " + strReplace2 + " is dangerous!");
                    } else if (strReplace2.contains(str) && !d(file2, arrayList, zipFile, zipEntryNextElement2, strReplace2)) {
                        zipFile.close();
                        return arrayList;
                    }
                }
            }
            zipFile.close();
            return arrayList;
        } catch (Throwable th) {
            zipFile.close();
            throw th;
        }
    }

    public static List<File> h(String str, String str2, String str3) throws IOException {
        return g(c(str), c(str2), str3);
    }
}
