package cn.mucang.sundial.android.tcp.utils;

import cn.mucang.android.core.http.a;
import cn.mucang.android.core.utils.j;
import cn.mucang.android.core.utils.o;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import kotlin.Metadata;
import kotlin.text.t;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\u001a+\u0010\u0006\u001a\u00020\u00052\b\u0010\u0001\u001a\u0004\u0018\u00010\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0000¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"", "url", "Ljava/io/File;", "path", "md5", "", "downloadURLToFile", "(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)J", "base_release"}, k = 2, mv = {1, 1, 15})
public final class UtilsKt {
    public static final long downloadURLToFile(String str, File file, String str2) throws Throwable {
        FileOutputStream fileOutputStream;
        InputStream inputStream = null;
        try {
            try {
                InputStream inputStreamV = a.q().v(str);
                try {
                    fileOutputStream = new FileOutputStream(file);
                    try {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        if (str2 == null) {
                            j.d(inputStreamV, fileOutputStream);
                        } else {
                            byte[] bArr = new byte[8192];
                            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                            while (true) {
                                int i = inputStreamV.read(bArr);
                                if (i == -1) {
                                    break;
                                }
                                fileOutputStream.write(bArr, 0, i);
                                messageDigest.update(bArr, 0, i);
                            }
                            String strA = j.a(messageDigest.digest());
                            if (!t.p(str2, strA, true)) {
                                throw new IOException("md5不一致,md5=" + str2 + ",realMd5=" + strA);
                            }
                        }
                        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                        o.a(inputStreamV);
                        o.a(fileOutputStream);
                        return jCurrentTimeMillis2;
                    } catch (IOException e2) {
                        e = e2;
                        throw e;
                    } catch (Exception e3) {
                        e = e3;
                        cn.mucang.android.core.utils.t.c("默认替换", e);
                        throw new IOException(e.getMessage());
                    } catch (Throwable th) {
                        th = th;
                        inputStream = inputStreamV;
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
}
