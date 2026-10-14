package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.jiakaoyi.uilib.socket.model.GearSetModel;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class f extends t<GearSetModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public GearSetModel a(int i, ByteBuffer byteBuffer) {
        short s = byteBuffer.getShort();
        byte[] bArr = new byte[byteBuffer.getInt()];
        byteBuffer.get(bArr);
        return new GearSetModel(s, byteBuffer.get(), bArr);
    }
}
