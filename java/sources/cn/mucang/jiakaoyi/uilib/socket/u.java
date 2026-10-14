package cn.mucang.jiakaoyi.uilib.socket;

import cn.mucang.jiakaoyi.uilib.socket.model.CmdModel;
import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<Integer, byte[]> f9693a = new HashMap();

    public static boolean a() {
        return t.a().K(s.c(new byte[0], Ascii.DC4));
    }

    public static boolean b() {
        return t.b().K(s.c(new byte[0], Ascii.DC2));
    }

    public static boolean c(cn.mucang.android.jiakaoyi.signal.ai.a aVar) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
        byteBufferAllocate.putInt(aVar.f5208a);
        byteBufferAllocate.putInt(aVar.b);
        byteBufferAllocate.putInt(aVar.c);
        byteBufferAllocate.putInt(aVar.f5209d);
        byte[] bArrY = y(byteBufferAllocate.array(), 3);
        if (bArrY == null) {
            return true;
        }
        return t.a().h() ? t.a().L((byte) 52, bArrY) : t.a().K(s.c(bArrY, (byte) -62));
    }

    public static boolean d(long j) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.putLong(j);
        return t.a().K(s.c(byteBufferAllocate.array(), (byte) 86));
    }

    public static boolean e(long j, long j2) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
        byteBufferAllocate.putLong(j);
        byteBufferAllocate.putLong(j2);
        return t.a().K(s.c(byteBufferAllocate.array(), (byte) 83));
    }

    public static boolean f(long j, byte b) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(9);
        byteBufferAllocate.putLong(j);
        byteBufferAllocate.put(b);
        return t.a().K(s.c(byteBufferAllocate.array(), (byte) 84));
    }

    public static boolean g(long j, long j2, byte b, byte b2) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(18);
        byteBufferAllocate.putLong(j);
        byteBufferAllocate.putLong(j2);
        byteBufferAllocate.put(b);
        byteBufferAllocate.put(b2);
        return t.a().K(s.c(byteBufferAllocate.array(), (byte) 85));
    }

    public static boolean h(int i, int i2, byte b) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(9);
        byteBufferAllocate.putInt(i);
        byteBufferAllocate.putInt(i2);
        byteBufferAllocate.put(b);
        return t.a().K(s.c(byteBufferAllocate.array(), (byte) -106));
    }

    public static boolean i(long j, byte b, int i) {
        if (j <= 0) {
            return false;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("考场id:" + j + ",基站id:" + i + ",科目:" + ((int) b));
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(13);
        byteBufferAllocate.putLong(j);
        byteBufferAllocate.put(b);
        byteBufferAllocate.putInt(i);
        return t.b().K(s.c(byteBufferAllocate.array(), (byte) 33));
    }

    public static boolean j(byte[] bArr, byte b) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArr.length + 4 + 1);
        byteBufferAllocate.putInt(bArr.length);
        byteBufferAllocate.put(bArr);
        byteBufferAllocate.put(b);
        cn.mucang.android.jiakaoyi.framework.log.f.o("上报给服务器挡位数据：" + byteBufferAllocate.array());
        return t.a().K(s.c(byteBufferAllocate.array(), (byte) 115));
    }

    public static boolean k(int i, boolean z) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(3);
        byteBufferAllocate.putShort((short) i);
        byteBufferAllocate.put((byte) (!z ? 1 : 0));
        return t.a().K(s.c(byteBufferAllocate.array(), (byte) 114));
    }

    public static boolean l(double d2, double d3, int i, byte b, byte b2) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(19);
        byteBufferAllocate.putDouble(d2);
        byteBufferAllocate.putDouble(d3);
        byteBufferAllocate.put((byte) i);
        byteBufferAllocate.put(b);
        byteBufferAllocate.put(b2);
        return t.b().K(s.c(byteBufferAllocate.array(), (byte) 32));
    }

    public static boolean m(String str) {
        if (!t.a().h()) {
            return false;
        }
        return t.a().L((byte) 50, str.getBytes(StandardCharsets.UTF_8));
    }

    public static boolean n(int i) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(2);
        byteBufferAllocate.putShort((short) i);
        return t.a().K(s.c(byteBufferAllocate.array(), (byte) -108));
    }

    public static boolean o(int i, int i2) {
        try {
            byte[] bytes = new JSONObject().put("status", i2).toString().getBytes(StandardCharsets.UTF_8);
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bytes.length + 8);
            byteBufferAllocate.putInt(i);
            byteBufferAllocate.putInt(bytes.length);
            byteBufferAllocate.put(bytes);
            return t.a().K(s.c(byteBufferAllocate.array(), (byte) 40));
        } catch (JSONException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static boolean p(String str) {
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bytes.length);
        byteBufferAllocate.put(bytes);
        return t.a().K(s.c(byteBufferAllocate.array(), (byte) 53));
    }

    public static boolean q(String str) {
        return t.a().K(s.c(str.getBytes(StandardCharsets.UTF_8), (byte) 54));
    }

    public static boolean r(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return false;
        }
        byte[] bArrY = y(byteBuffer.array(), 2);
        if (bArrY == null) {
            return true;
        }
        return t.a().h() ? t.a().L((byte) 49, bArrY) : t.a().K(s.c(bArrY, UnsignedBytes.MAX_POWER_OF_TWO));
    }

    public static boolean s(String str) {
        return t.b().K(s.c(str.getBytes(StandardCharsets.UTF_8), (byte) 37));
    }

    public static boolean t(boolean z) {
        return t.a().K(s.c(new byte[]{z ? (byte) 1 : (byte) 0}, (byte) -112));
    }

    public static boolean u(String str, CmdModel cmdModel) {
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bytes.length + 4);
        byteBufferAllocate.putInt(cmdModel.id);
        byteBufferAllocate.put(bytes);
        return t.a().K(s.c(byteBufferAllocate.array(), (byte) 48));
    }

    public static boolean v(int i) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.putInt(i);
        return t.a().K(s.c(byteBufferAllocate.array(), (byte) 112));
    }

    public static boolean w(int i) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.putInt(i);
        return t.a().K(s.c(byteBufferAllocate.array(), (byte) 40));
    }

    public static boolean x(int i, String str) {
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bytes.length + 8);
        byteBufferAllocate.putInt(i);
        byteBufferAllocate.putInt(bytes.length);
        byteBufferAllocate.put(bytes);
        return t.a().K(s.c(byteBufferAllocate.array(), (byte) 40));
    }

    private static byte[] y(byte[] bArr, int i) {
        Map<Integer, byte[]> map = f9693a;
        if (Arrays.equals(bArr, map.get(Integer.valueOf(i)))) {
            return null;
        }
        map.put(Integer.valueOf(i), bArr);
        return bArr;
    }
}
