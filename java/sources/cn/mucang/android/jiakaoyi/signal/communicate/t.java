package cn.mucang.android.jiakaoyi.signal.communicate;

import cn.mucang.android.jiakaoyi.signal.utils.CRCUtil;

/* JADX INFO: loaded from: classes3.dex */
public class t {
    public static byte[] a(byte b, byte[] bArr) {
        int length = ((bArr.length + 9) + 1) - 4;
        v vVar = new v(true);
        vVar.c((byte) -91);
        vVar.c((byte) 90);
        vVar.c((byte) length);
        vVar.c(b);
        vVar.d(bArr);
        v vVar2 = new v(true);
        vVar2.c(b);
        vVar2.d(bArr);
        int iA = CRCUtil.a(vVar2.b());
        cn.mucang.android.core.utils.t.h("debugCrc", "发送的crc:" + Integer.toHexString(iA) + " type:" + ((int) b));
        vVar.f(iA);
        vVar.c((byte) -61);
        vVar.c((byte) -61);
        return vVar.b();
    }
}
