package cn.mucang.android.jiakaoyi.signal.com.u.b;

import cn.mucang.android.jiakaoyi.signal.communicate.v;

/* JADX INFO: loaded from: classes3.dex */
public class a implements cn.mucang.android.jiakaoyi.signal.com.u.a {
    @Override // cn.mucang.android.jiakaoyi.signal.com.u.a
    public short a() {
        return (short) 0;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.u.a
    public byte[] b(byte[] bArr, int i, int i2, int i3, boolean z, short s, boolean z2) {
        v vVar = new v(true);
        vVar.c((byte) 126);
        vVar.c((byte) -94);
        vVar.c((byte) 0);
        vVar.c((byte) 0);
        vVar.c((byte) i3);
        vVar.d(bArr);
        vVar.c((byte) 126);
        return vVar.b();
    }
}
