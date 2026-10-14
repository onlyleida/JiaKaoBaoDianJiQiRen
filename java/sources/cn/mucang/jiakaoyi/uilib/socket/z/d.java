package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.jiakaoyi.uilib.socket.model.CmdModel;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class d extends t<CmdModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public CmdModel a(int i, ByteBuffer byteBuffer) {
        byte b = byteBuffer.get();
        int i2 = byteBuffer.getInt();
        byte[] bArr = new byte[byteBuffer.getInt()];
        byteBuffer.get(bArr);
        return new CmdModel(new String(bArr), b, i2);
    }
}
