package cn.mucang.android.jiakaoyi.engine.trace.upload;

import cn.mucang.android.core.utils.o;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.util.zip.ZipOutputStream] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r3v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    public static boolean a(String str) throws Throwable {
        ?? r1;
        boolean z = false;
        ?? r2 = 0;
        r2 = 0;
        try {
            try {
                File file = new File(str);
                ?? IsDirectory = file.isDirectory();
                try {
                    if (IsDirectory != 0) {
                        ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(str + ".zip")));
                        b(zipOutputStream, file, "");
                        IsDirectory = zipOutputStream;
                    } else {
                        ZipOutputStream zipOutputStream2 = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(str.substring(0, str.lastIndexOf(".")) + ".zip")));
                        d(zipOutputStream2, file);
                        IsDirectory = zipOutputStream2;
                    }
                    r2 = IsDirectory;
                    r2.flush();
                    r2.closeEntry();
                    z = true;
                    r1 = r2;
                } catch (Exception e2) {
                    e = e2;
                    r2 = IsDirectory;
                    e.printStackTrace();
                    r1 = r2;
                } catch (Throwable th) {
                    th = th;
                    r2 = IsDirectory;
                    o.a(r2);
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
            }
            o.a(r1);
            return z;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static void b(ZipOutputStream zipOutputStream, File file, String str) {
        for (File file2 : file.listFiles()) {
            if (!file2.isDirectory()) {
                c(zipOutputStream, file2, str);
            } else if (str.equals("")) {
                b(zipOutputStream, file2, file2.getName());
            } else {
                b(zipOutputStream, file2, str + File.separator + file2.getName());
            }
        }
    }

    public static void c(ZipOutputStream zipOutputStream, File file, String str) {
        ZipEntry zipEntry;
        try {
            if (str.equals("")) {
                zipEntry = new ZipEntry(file.getName());
            } else {
                zipEntry = new ZipEntry(str + File.separator + file.getName());
            }
            zipOutputStream.putNextEntry(zipEntry);
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            byte[] bArr = new byte[65536];
            while (true) {
                int i = bufferedInputStream.read(bArr);
                if (i == -1) {
                    bufferedInputStream.close();
                    return;
                }
                zipOutputStream.write(bArr, 0, i);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v9 */
    private static void d(ZipOutputStream zipOutputStream, File file) throws Throwable {
        int i;
        ?? r0 = 0;
        BufferedInputStream bufferedInputStream = null;
        try {
            try {
                zipOutputStream.putNextEntry(new ZipEntry(file.getName()));
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file));
                try {
                    byte[] bArr = new byte[65536];
                    while (true) {
                        i = bufferedInputStream2.read(bArr);
                        if (i == -1) {
                            break;
                        } else {
                            zipOutputStream.write(bArr, 0, i);
                        }
                    }
                    o.a(bufferedInputStream2);
                    r0 = i;
                } catch (Exception e2) {
                    e = e2;
                    bufferedInputStream = bufferedInputStream2;
                    e.printStackTrace();
                    o.a(bufferedInputStream);
                    r0 = bufferedInputStream;
                } catch (Throwable th) {
                    th = th;
                    r0 = bufferedInputStream2;
                    o.a(r0);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e3) {
            e = e3;
        }
    }
}
