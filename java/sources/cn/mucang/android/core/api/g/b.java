package cn.mucang.android.core.api.g;

import android.util.Base64;
import cn.mucang.android.core.utils.f;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes.dex */
public class b {
    public static String a(String str, String str2) {
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        byte[] bArrA = f.a(str2);
        byte[] bArrB = f.b(bytes);
        byte[] bArr = new byte[bytes.length + bArrB.length + bArrA.length];
        int i = 0;
        for (byte b : bytes) {
            bArr[i] = (byte) (b ^ bArrA[0]);
            i++;
        }
        System.arraycopy(bArrB, 0, bArr, bytes.length, bArrB.length);
        System.arraycopy(bArrA, 0, bArr, bytes.length + bArrB.length, bArrA.length);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream, 1024);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.finish();
            gZIPOutputStream.close();
            return new String(Base64.encode(byteArrayOutputStream.toByteArray(), 2), StandardCharsets.UTF_8);
        } catch (IOException e2) {
            throw new RuntimeException("内容编码 gzip 失败", e2);
        }
    }
}
