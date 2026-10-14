package cn.mucang.android.core.utils;

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.StringWriter;
import java.io.Writer;

/* JADX INFO: loaded from: classes.dex */
public class o {
    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception e2) {
                t.c("默认替换", e2);
            }
        }
    }

    private static void b(InputStream inputStream, Writer writer, String str) throws IOException {
        if (n0.e(str)) {
            str = "utf-8";
        }
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, str);
        char[] cArr = new char[8192];
        while (true) {
            int i = inputStreamReader.read(cArr);
            if (-1 == i) {
                return;
            } else {
                writer.write(cArr, 0, i);
            }
        }
    }

    public static String c(File file) throws IOException {
        return d(file, "utf-8");
    }

    public static String d(File file, String str) throws Throwable {
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                String strE = e(fileInputStream2, str);
                a(fileInputStream2);
                return strE;
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                a(fileInputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static String e(InputStream inputStream, String str) throws IOException {
        StringWriter stringWriter = new StringWriter();
        try {
            b(inputStream, stringWriter, str);
            return stringWriter.toString();
        } finally {
            a(stringWriter);
        }
    }

    public static void f(InputStream inputStream, File file) throws Throwable {
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                g(inputStream, fileOutputStream2);
                a(fileOutputStream2);
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                a(fileOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void g(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[8192];
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                outputStream.flush();
                return;
            }
            outputStream.write(bArr, 0, i);
        }
    }
}
