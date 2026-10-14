package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.jiakaoyi.uilib.socket.model.ReLoginModel;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class u extends t<ReLoginModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ReLoginModel a(int i, ByteBuffer byteBuffer) {
        ReLoginModel reLoginModel = new ReLoginModel(i);
        reLoginModel.port = byteBuffer.getShort();
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        reLoginModel.host = new String(bArr);
        cn.mucang.android.core.utils.t.h("MCSocketManager", "收到切换socket的指令:" + reLoginModel.host + ", " + reLoginModel.port);
        return reLoginModel;
    }
}
