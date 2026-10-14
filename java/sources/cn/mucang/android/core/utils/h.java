package cn.mucang.android.core.utils;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes.dex */
public class h {
    /* JADX WARN: Not initialized variable reg: 3, insn: 0x0037: MOVE (r1 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:26:0x0037 */
    public static byte[] a(byte[] bArr) throws Throwable {
        Closeable closeable;
        GZIPOutputStream gZIPOutputStream;
        Closeable closeable2 = null;
        if (bArr != null) {
            try {
                if (bArr.length != 0) {
                    try {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                        try {
                            gZIPOutputStream.write(bArr);
                            gZIPOutputStream.finish();
                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                            o.a(gZIPOutputStream);
                            return byteArray;
                        } catch (IOException e2) {
                            e = e2;
                            t.c("默认替换", e);
                            o.a(gZIPOutputStream);
                            return null;
                        } catch (OutOfMemoryError e3) {
                            e = e3;
                            t.c("默认替换", e);
                            o.a(gZIPOutputStream);
                            return null;
                        }
                    } catch (IOException e4) {
                        e = e4;
                        gZIPOutputStream = null;
                    } catch (OutOfMemoryError e5) {
                        e = e5;
                        gZIPOutputStream = null;
                    } catch (Throwable th) {
                        th = th;
                        o.a(closeable2);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                closeable2 = closeable;
            }
        }
        return null;
    }
}
