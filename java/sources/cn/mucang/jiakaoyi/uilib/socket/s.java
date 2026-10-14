package cn.mucang.jiakaoyi.uilib.socket;

import com.google.common.base.Ascii;
import java.nio.ByteBuffer;
import java.util.zip.CRC32;

/* JADX INFO: loaded from: classes5.dex */
public class s {
    public static long a(byte[] bArr) {
        CRC32 crc32 = new CRC32();
        crc32.update(bArr);
        return crc32.getValue();
    }

    public static byte[] b(String str) {
        return c(str.getBytes(), Ascii.DLE);
    }

    public static byte[] c(byte[] bArr, byte b) {
        try {
            int length = bArr.length + 1 + 4;
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length + 4 + 2);
            byteBufferAllocate.put((byte) 49);
            byteBufferAllocate.put((byte) 50);
            byteBufferAllocate.put((byte) 51);
            byteBufferAllocate.put((byte) 52);
            byteBufferAllocate.putShort((short) length);
            byteBufferAllocate.put(b);
            byteBufferAllocate.put(bArr);
            byteBufferAllocate.putInt((int) a(bArr));
            return byteBufferAllocate.array();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
