package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f15428a;

    public interface a {
        int getNumber();
    }

    public interface b<T extends a> {
        T a(int i);
    }

    static {
        byte[] bArr = new byte[0];
        f15428a = bArr;
        ByteBuffer.wrap(bArr);
    }

    public static boolean a(byte[] bArr) {
        return u.e(bArr);
    }

    public static String b(byte[] bArr) {
        try {
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("UTF-8 not supported?", e2);
        }
    }
}
