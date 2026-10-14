package cn.mucang.android.core.utils;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import cn.mucang.android.core.config.MucangConfig;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.StringReader;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes.dex */
public class j {
    static {
        new HashMap();
    }

    public static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            sb.append(String.format("%02x", Byte.valueOf(b)));
        }
        return sb.toString();
    }

    public static void b(Cursor cursor) {
        if (cursor != null) {
            try {
                cursor.close();
            } catch (Exception e2) {
                t.n("HadesLee", null, e2);
            }
        }
    }

    public static void c(SQLiteDatabase sQLiteDatabase) {
        try {
            if (Build.VERSION.SDK_INT >= 11 && sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                sQLiteDatabase.releaseReference();
            }
        } catch (Exception e2) {
            t.n("HadesLee", null, e2);
        }
    }

    public static void d(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[8192];
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, i);
            }
        }
    }

    public static File e(String str) {
        File fileStreamPath = MucangConfig.getContext().getFileStreamPath(str);
        if (fileStreamPath != null) {
            try {
                fileStreamPath.getParentFile().mkdirs();
                fileStreamPath.createNewFile();
            } catch (Exception e2) {
                t.c("默认替换", e2);
            }
        }
        return fileStreamPath;
    }

    public static void f(File file) {
        try {
            if (file.isFile()) {
                if (file.delete()) {
                    return;
                }
                file.deleteOnExit();
                return;
            }
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                for (File file2 : fileArrListFiles) {
                    f(file2);
                }
            }
            file.delete();
        } catch (Exception e2) {
            t.c("默认替换", e2);
        }
    }

    public static void g(String str, File file, String str2) throws Throwable {
        FileOutputStream fileOutputStream;
        InputStream inputStream = null;
        try {
            try {
                InputStream inputStreamX = cn.mucang.android.core.http.a.q().x(str);
                try {
                    fileOutputStream = new FileOutputStream(file);
                    try {
                        if (str2 == null) {
                            d(inputStreamX, fileOutputStream);
                        } else {
                            byte[] bArr = new byte[8192];
                            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                            while (true) {
                                int i = inputStreamX.read(bArr);
                                if (i == -1) {
                                    break;
                                }
                                fileOutputStream.write(bArr, 0, i);
                                messageDigest.update(bArr, 0, i);
                            }
                            String strA = a(messageDigest.digest());
                            if (!str2.equalsIgnoreCase(strA)) {
                                throw new IOException("md5不一致,md5=" + str2 + ",realMd5=" + strA);
                            }
                        }
                        o.a(inputStreamX);
                        o.a(fileOutputStream);
                    } catch (IOException e2) {
                        e = e2;
                        throw e;
                    } catch (Exception e3) {
                        e = e3;
                        t.c("默认替换", e);
                        throw new IOException(e.getMessage());
                    } catch (Throwable th) {
                        th = th;
                        inputStream = inputStreamX;
                        o.a(inputStream);
                        o.a(fileOutputStream);
                        throw th;
                    }
                } catch (IOException e4) {
                    e = e4;
                } catch (Exception e5) {
                    e = e5;
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = null;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e6) {
            throw e6;
        } catch (Exception e7) {
            e = e7;
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
        }
    }

    public static void h(File file, File file2) throws IOException {
        InputStream inputStream;
        ZipFile zipFile = new ZipFile(file);
        try {
            try {
                Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                while (enumerationEntries.hasMoreElements()) {
                    ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                    if (!zipEntryNextElement.getName().contains("../")) {
                        File file3 = new File(file2, zipEntryNextElement.getName());
                        file3.getParentFile().mkdirs();
                        if (zipEntryNextElement.isDirectory()) {
                            file3.mkdirs();
                        } else {
                            FileOutputStream fileOutputStream = null;
                            InputStream inputStream2 = null;
                            try {
                                FileOutputStream fileOutputStream2 = new FileOutputStream(file3);
                                try {
                                    inputStream2 = zipFile.getInputStream(zipEntryNextElement);
                                    d(inputStream2, fileOutputStream2);
                                    o.a(fileOutputStream2);
                                    o.a(inputStream2);
                                } catch (Throwable th) {
                                    th = th;
                                    inputStream = inputStream2;
                                    fileOutputStream = fileOutputStream2;
                                    o.a(fileOutputStream);
                                    o.a(inputStream);
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                inputStream = null;
                            }
                        }
                    }
                }
                zipFile.close();
            } catch (SecurityException e2) {
                throw new IOException(e2);
            }
        } catch (Throwable th3) {
            zipFile.close();
            throw th3;
        }
    }

    public static DisplayMetrics i() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) MucangConfig.getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v2 */
    public static String j(Context context, String str) throws Throwable {
        InputStream inputStreamOpen;
        ?? r0 = 0;
        try {
            try {
                inputStreamOpen = context.getAssets().open(str);
                try {
                    String strR = r(inputStreamOpen, "UTF-8");
                    o.a(inputStreamOpen);
                    return strR;
                } catch (Exception e2) {
                    e = e2;
                    t.c("默认替换", e);
                    o.a(inputStreamOpen);
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                r0 = context;
                o.a(r0);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            inputStreamOpen = null;
        } catch (Throwable th2) {
            th = th2;
            o.a(r0);
            throw th;
        }
    }

    public static String k(String str) {
        return j(MucangConfig.getContext(), str);
    }

    public static List<String> l(String str) throws Throwable {
        ArrayList arrayList = new ArrayList();
        BufferedReader bufferedReader = null;
        try {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new StringReader(str));
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line == null) {
                            break;
                        }
                        arrayList.add(line);
                    } catch (Exception e2) {
                        e = e2;
                        bufferedReader = bufferedReader2;
                        t.c("默认替换", e);
                        o.a(bufferedReader);
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        o.a(bufferedReader);
                        throw th;
                    }
                }
                o.a(bufferedReader2);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e3) {
            e = e3;
        }
        return arrayList;
    }

    public static List<String> m(String str, String str2) throws Throwable {
        String strO = o(str, str2);
        return !n0.e(strO) ? l(strO) : Collections.emptyList();
    }

    public static String n(File file) throws Throwable {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                try {
                    String strR = r(fileInputStream, "UTF-8");
                    o.a(fileInputStream);
                    return strR;
                } catch (Exception e2) {
                    e = e2;
                    t.c("默认替换", e);
                    o.a(fileInputStream);
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                fileInputStream2 = fileInputStream;
                o.a(fileInputStream2);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            o.a(fileInputStream2);
            throw th;
        }
    }

    public static String o(String str, String str2) throws Throwable {
        InputStream inputStreamP;
        InputStream inputStream = null;
        try {
            inputStreamP = p(str, str2);
            try {
                try {
                    String strR = r(inputStreamP, "UTF-8");
                    o.a(inputStreamP);
                    return strR;
                } catch (Exception e2) {
                    e = e2;
                    t.c("默认替换", e);
                    o.a(inputStreamP);
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                inputStream = inputStreamP;
                o.a(inputStream);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            inputStreamP = null;
        } catch (Throwable th2) {
            th = th2;
            o.a(inputStream);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016 A[Catch: Exception -> 0x0023, TRY_LEAVE, TryCatch #0 {Exception -> 0x0023, blocks: (B:4:0x0006, B:6:0x0010, B:7:0x0016), top: B:13:0x0006 }] */
    public static InputStream p(String str, String str2) {
        InputStream fileInputStream;
        File fileA = m0.a(str);
        if (fileA != null) {
            try {
                if (fileA.length() > 0) {
                    fileInputStream = new FileInputStream(fileA);
                } else {
                    fileInputStream = MucangConfig.getContext().getAssets().open(str2);
                }
            } catch (Exception e2) {
                t.c("默认替换", e2);
                return null;
            }
        } else {
            fileInputStream = MucangConfig.getContext().getAssets().open(str2);
        }
        return fileInputStream;
    }

    public static String q(InputStream inputStream) {
        return r(inputStream, "UTF-8");
    }

    public static String r(InputStream inputStream, String str) {
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, str));
            char[] cArr = new char[1024];
            while (true) {
                int i = bufferedReader.read(cArr);
                if (i == -1) {
                    break;
                }
                sb.append(cArr, 0, i);
            }
        } catch (Exception e2) {
            t.c("默认替换", e2);
        }
        return sb.toString();
    }

    public static void s(String str, File file) throws Throwable {
        BufferedWriter bufferedWriter = null;
        try {
            try {
                BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), "UTF-8"));
                try {
                    bufferedWriter2.write(str);
                    bufferedWriter2.flush();
                    o.a(bufferedWriter2);
                } catch (Exception e2) {
                    e = e2;
                    bufferedWriter = bufferedWriter2;
                    t.c("默认替换", e);
                    o.a(bufferedWriter);
                } catch (Throwable th) {
                    th = th;
                    bufferedWriter = bufferedWriter2;
                    o.a(bufferedWriter);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    public static void t(byte[] bArr, File file) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            fileOutputStream.write(bArr);
        } finally {
            fileOutputStream.close();
        }
    }

    public static void u(String str) {
        ClipboardManager clipboardManager = (ClipboardManager) MucangConfig.getContext().getSystemService("clipboard");
        if (clipboardManager != null) {
            clipboardManager.setPrimaryClip(ClipData.newPlainText(null, str));
        }
    }
}
