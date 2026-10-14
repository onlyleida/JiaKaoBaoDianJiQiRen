package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.jiakaoyi.uilib.socket.model.CallStatusModel;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class j extends t<CallStatusModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public CallStatusModel a(int i, ByteBuffer byteBuffer) {
        return new CallStatusModel(byteBuffer.get());
    }
}
