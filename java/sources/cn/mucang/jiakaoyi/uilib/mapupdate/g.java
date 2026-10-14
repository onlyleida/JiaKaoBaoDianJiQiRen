package cn.mucang.jiakaoyi.uilib.mapupdate;

import cn.mucang.android.core.utils.o;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.zip.GZIPInputStream;

/* JADX INFO: loaded from: classes5.dex */
public class g {
    public static File a(File file, File file2) throws Throwable {
        FileOutputStream fileOutputStream;
        BufferedInputStream bufferedInputStream;
        GZIPInputStream gZIPInputStream;
        if (file2 != null) {
            if (file2.exists()) {
                file2.delete();
            }
            file2.createNewFile();
        }
        GZIPInputStream gZIPInputStream2 = null;
        gZIPInputStream2 = null;
        gZIPInputStream2 = null;
        FileOutputStream fileOutputStream2 = null;
        try {
            fileOutputStream = new FileOutputStream(file2);
            try {
                bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                try {
                    gZIPInputStream = new GZIPInputStream(bufferedInputStream);
                    try {
                        byte[] bArr = new byte[262144];
                        while (true) {
                            int i = gZIPInputStream.read(bArr);
                            if (i < 0) {
                                o.a(gZIPInputStream);
                                o.a(bufferedInputStream);
                                o.a(fileOutputStream);
                                return file2;
                            }
                            fileOutputStream.write(bArr, 0, i);
                        }
                    } catch (Exception e2) {
                        e = e2;
                        fileOutputStream2 = fileOutputStream;
                        try {
                            f.o("解压异常 : " + file + " , " + q0.d(e));
                            e.printStackTrace();
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            fileOutputStream = fileOutputStream2;
                            gZIPInputStream2 = gZIPInputStream;
                            o.a(gZIPInputStream2);
                            o.a(bufferedInputStream);
                            o.a(fileOutputStream);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        gZIPInputStream2 = gZIPInputStream;
                        o.a(gZIPInputStream2);
                        o.a(bufferedInputStream);
                        o.a(fileOutputStream);
                        throw th;
                    }
                } catch (Exception e3) {
                    e = e3;
                    gZIPInputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    o.a(gZIPInputStream2);
                    o.a(bufferedInputStream);
                    o.a(fileOutputStream);
                    throw th;
                }
            } catch (Exception e4) {
                e = e4;
                bufferedInputStream = null;
                gZIPInputStream = null;
            } catch (Throwable th4) {
                th = th4;
                bufferedInputStream = null;
            }
        } catch (Exception e5) {
            e = e5;
            bufferedInputStream = null;
            gZIPInputStream = null;
        } catch (Throwable th5) {
            th = th5;
            fileOutputStream = null;
            bufferedInputStream = null;
        }
    }

    public static String b(File file) throws Throwable {
        return c(file, "UTF-8");
    }

    public static String c(File file, String str) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        BufferedInputStream bufferedInputStream;
        GZIPInputStream gZIPInputStream;
        GZIPInputStream gZIPInputStream2 = null;
        gZIPInputStream2 = null;
        gZIPInputStream2 = null;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                try {
                    gZIPInputStream = new GZIPInputStream(bufferedInputStream);
                    try {
                        byte[] bArr = new byte[262144];
                        while (true) {
                            int i = gZIPInputStream.read(bArr);
                            if (i < 0) {
                                String string = byteArrayOutputStream.toString(str);
                                o.a(gZIPInputStream);
                                o.a(bufferedInputStream);
                                o.a(byteArrayOutputStream);
                                return string;
                            }
                            byteArrayOutputStream.write(bArr, 0, i);
                        }
                    } catch (Exception e2) {
                        e = e2;
                        byteArrayOutputStream2 = byteArrayOutputStream;
                        try {
                            f.o("解压异常 : " + file + " , " + q0.d(e));
                            e.printStackTrace();
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            byteArrayOutputStream = byteArrayOutputStream2;
                            gZIPInputStream2 = gZIPInputStream;
                            o.a(gZIPInputStream2);
                            o.a(bufferedInputStream);
                            o.a(byteArrayOutputStream);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        gZIPInputStream2 = gZIPInputStream;
                        o.a(gZIPInputStream2);
                        o.a(bufferedInputStream);
                        o.a(byteArrayOutputStream);
                        throw th;
                    }
                } catch (Exception e3) {
                    e = e3;
                    gZIPInputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    o.a(gZIPInputStream2);
                    o.a(bufferedInputStream);
                    o.a(byteArrayOutputStream);
                    throw th;
                }
            } catch (Exception e4) {
                e = e4;
                bufferedInputStream = null;
                gZIPInputStream = null;
            } catch (Throwable th4) {
                th = th4;
                bufferedInputStream = null;
            }
        } catch (Exception e5) {
            e = e5;
            bufferedInputStream = null;
            gZIPInputStream = null;
        } catch (Throwable th5) {
            th = th5;
            byteArrayOutputStream = null;
            bufferedInputStream = null;
        }
    }
}
